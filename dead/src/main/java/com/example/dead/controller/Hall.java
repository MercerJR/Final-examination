package com.example.dead.controller;

import com.alibaba.fastjson.JSON;
import com.example.dead.been.Chess;
import com.example.dead.been.Msg;
import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.cache.CacheType;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;


@ServerEndpoint(value = "/hall/{room}")
@Component
public class Hall {

    private Session session;

    private static Map<String,Session> map = new HashMap<String, Session>();

    private static final Map<String, CopyOnWriteArraySet<Session>> playroom = new HashMap<String,CopyOnWriteArraySet<Session>>();

    private static final Map<String, String> users = new ConcurrentHashMap<>();

    private String username;

    @OnOpen
    public void OnOpen(Session session, @PathParam("room") String room_id) throws IOException {
        this.username = randomName();
        if (!playroom.containsKey(room_id) || playroom.get(room_id).size() > 2) {
            // 创建房间不存在时或者人数大于2时，创建一个新的房间
            CopyOnWriteArraySet<Session> room = new CopyOnWriteArraySet<>();
            // 添加用户
            room.add(session);
            playroom.put(room_id, room);

        } else {
            // 房间已存在且人数小于2，直接添加用户到相应的房间
            playroom.get(room_id).add(session);
        }


        Chess chess = new Chess();
        if(playroom.get(room_id).size() == 2){
            chess.setBout(true);
            chess.setMessage("系统消息：游戏开始，请您先落子");
            chess.setColor("black");
            JSONObject json1 = JSONObject.fromObject(chess);
            //先落子的发送数据
            broadcast(room_id,json1.toString());

            chess.setMessage("系统消息：游戏开始，请等待对手落子");
            chess.setBout(false);
            chess.setColor("white");
            //后落子的发送数据
            this.broadcast(room_id,JSONObject.fromObject(chess).toString());
        }else if(playroom.get(room_id).size() == 1 && playroom.get(room_id) != null){
            chess.setMessage("系统消息：等待玩家匹配");
//            this.sendMessage(session,JSONObject.fromObject(chess).toString());
            broadcast(room_id,chess.getMessage());
        }

        users.put(session.getId(), username);

        //向在线的人发在线人列表
        List<Msg> userList = new LinkedList<>();
        playroom.get(room_id)
                .stream()
                .map(Session::getId)
                .forEach(s ->{
                    Msg msg = new Msg();
                    msg.setUsername(username);
                    msg.setContent(users.get(s) + "在线");
                    userList.add(msg);
                        }
                        );
        session.getBasicRemote().sendText(JSON.toJSONString(userList));

        //向房间里的人广播谁上线了
        Msg msg = new Msg();
        msg.setUsername(username);
        msg.setContent(users.get(session.getId()) + "上线了");
        broadcast(room_id,JSON.toJSONString(msg));

//        System.out.println("有新连接加入:"+username+",房间当前在线人数为" + playroom.get(room_id).size());
//        this.session.getAsyncRemote().sendText("欢迎"+username+"成功进入房间(其频道号："+session.getId()+")-->当前在线人数为："+playroom.get(room_id).size());
    }

    @OnMessage
    public void onMessage(String message, Session session,@PathParam("room")String room_id) throws IOException {

        message = users.get(session.getId()) + ":" + message;
        broadcast(room_id,message);


        //以下是我下棋的后端代码，但因为实现不了而且有bug会影响发消息，所以只有直接注释掉了，没办法太惨了
        //以下是我下棋的后端代码，但因为实现不了而且有bug会影响发消息，所以只有直接注释掉了，没办法太惨了

//        System.out.println(message);
//        JSONObject json = JSONObject.fromObject(message);
//        Chess chess = (Chess) JSONObject.toBean(json,Chess.class);
//
//        if(playroom.get(room_id).size() == 2){
            //如果有坐标，则表示为下棋
//            if(chess.getXy()!=null&&!"".equals(chess.getXy())){
//                this.sendMessage(session,message);
//                chess.setBout(true);//对手的bout改为true，表示接下来可以落子
//                chess.setMessage("系统消息：对方已落子，轮到您落子了");
//                broadcast(room_id,chess.getMessage());
//            }else{
                //如果没有坐标，就是聊天
//                broadcast(room_id,message);
//            }
//        }

    }

    @OnClose
    public void onClose(Session session,@PathParam("room") String room_id) {
        playroom.get(room_id).remove(session);
        if(playroom.get(room_id) != null){
            Msg msg = new Msg();
            msg.setUsername(username);
            msg.setContent(users.get(session.getId()) + "下线了");
            broadcast(room_id,JSON.toJSONString(msg));
        }
//        log.info("对方下线了");
//        if(playroom.get(room_id).size() == 0){
//            playroom.remove(room_id);
//        }
//        this.session.getAsyncRemote().sendText(username+"退出房间(其频道号："+session.getId()+")-->当前在线人数为："+playroom.get(room_id).size());
    }


    @OnError
    public void onError(Session session, Throwable error) {
        System.out.println("发生错误");
        error.printStackTrace();
    }


    //给房间里的所有人发消息
    private void broadcast(String room_id, String msg) {
        playroom.get(room_id).forEach(s -> {
            try {
                s.getBasicRemote().sendText(msg);
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
    }

    //网上找的随机名称
    private String randomName() {
        Random random = new Random();
        String str = "";
        int hightPos, lowPos;
        for (int i = 0; i < 4; ++i) {
            hightPos = (176 + Math.abs(random.nextInt(39)));
            lowPos = (161 + Math.abs(random.nextInt(93)));
            byte[] b = new byte[2];
            b[0] = (Integer.valueOf(hightPos)).byteValue();
            b[1] = (Integer.valueOf(lowPos)).byteValue();
            try {
                str += new String(b, "GB2312");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    public void sendMessage(Session session,String message) throws IOException {
        this.session = session;
        session.getBasicRemote().sendText(message);
        //this.session.getAsyncRemote().sendText(message);
    }
}
