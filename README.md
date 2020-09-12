 

基础功能：  
1.登陆  localhost:8087/user/login;（String username,String password）  
2.注册  localhost:8087/user/register;（String username,String password）  
3.申请添加好友 localhost:8087/apply;（String user,String friend）  
4.同意好友请求 localhost:8087/agree;（String user,String friend）  
5.不同意好友请求 localhost:8087/disagree;（String user,String friend）  
6.在大厅里创建房间 （写了前端，可在网页上测试）  
7.加入指定的房间 （写了前端，可在网页上测试）  
8.准备状态（进入房间就自动进入准备状态，系统会提示，两个人都进入后会开始游戏和聊天）  
9.下棋的功能并没有实现完成，但写了后端代码，但也有问题，学长们可以看看然后给下意见；  
ps:  若用postman测试，则可用以上url测试接口，都为均为post；
