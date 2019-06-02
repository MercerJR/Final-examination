package com.example.dead.controller;

import com.example.dead.been.Chess;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@ServerEndpoint("/chess")
public class ChessWebSocket {
    private static HashMap<String,ChessWebSocket>playroom = new HashMap<String, ChessWebSocket>();
    private Session session;
    private static int index = 0;
    private int mykey = 0;

    @Autowired
    private Chess chess;

    @OnOpen
    public void OnOpen(Session session){
        this.session = session;
        index++;
        try {
            if(index%2==0){
                ChessWebSocket socket1 = playroom.get((index-1)+"");
                if(socket1!=null){
                    chess.setBout(true);
                    chess.setMessage("系统：游戏开始，请您先落子！");
                    chess.setColor("black");
                    JSONObject json1 = JSONObject.fromObject(chess);
                    socket1.sendMessage(json1.toString());
                    //对先落子的对象发送数据结束
                    chess.setMessage("系统：游戏开始，请等待对手落子！");
                    chess.setBout(false);
                    chess.setColor("white");
                    this.sendMessage(JSONObject.fromObject(chess).toString());
                    //对后出手的发送消息结束
                }else{//偶数时没有查询到与之对应的对手，则其变为奇数，成为等待匹配的人
                    index--;
                    chess.setMessage("系统：等待玩家匹配！");
                    this.sendMessage(JSONObject.fromObject(chess).toString());
                }
            }else{
                chess.setMessage("系统：等待玩家匹配！");
                this.sendMessage(JSONObject.fromObject(chess).toString());
            }
            this.mykey = index;
            playroom.put(mykey+"", this);     //加入map中
            System.out.println(playroom.size());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @OnClose
    public void onClose(){
        playroom.remove(mykey+"");  //从set中删除
        try {
            ChessWebSocket socket = null;
            if(mykey%2==0){
                socket = playroom.get((mykey-1)+"");
            }else{
                socket = playroom.get((mykey+1)+"");
            }
            if(socket!=null){
//                Chess chess = new Chess();
                chess.setMessage("你的对手已离开！");
                socket.sendMessage(JSONObject.fromObject(chess).toString());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @OnMessage
    public void onMessage(String message) {
        System.out.println(message);
        JSONObject json = JSONObject.fromObject(message);
        Chess chess = (Chess) JSONObject.toBean(json,Chess.class);
        try {
            ChessWebSocket socket = null;
            if(mykey%2==0){
                socket = playroom.get((mykey-1)+"");
            }else{
                socket = playroom.get((mykey+1)+"");
            }
            if(socket!=null){
                if(chess.getXy()!=null&&!"".equals(chess.getXy())){//有坐标表示为落子，反之则为发送信息
                    this.sendMessage(message);
                    chess.setBout(true);//对手的bout改为true，表示接下来可以落子
                    chess.setMessage("系统：对方已落子，正在等待您落子！");
                    socket.sendMessage(JSONObject.fromObject(chess).toString());
                }else{//没有坐标表示为单纯的聊天
                    Chess newChess = new Chess();
                    newChess.setMessage("自己："+chess.getMessage());
                    this.sendMessage(JSONObject.fromObject(newChess).toString());
                    newChess.setMessage("对方："+chess.getMessage());
                    socket.sendMessage(JSONObject.fromObject(newChess).toString());
                }
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @OnError
    public void onError(Session session, Throwable error){
        System.out.println("连接断开");
//      error.printStackTrace();
    }


    public void sendMessage(String message) throws IOException {
        this.session.getBasicRemote().sendText(message);
        //this.session.getAsyncRemote().sendText(message);
    }
}
