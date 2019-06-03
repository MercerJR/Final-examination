为了写清楚自己实现了的功能和运行时的注意事项，这个文档都改了几次了  
第一次传的时候忘传war包了，之后用压缩包的方式传上来的，有两个压缩包，因为github网页上传只允许25MB一下的文件，所以我就分成了两个压缩包传  

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
  
也可直接进入网页测试（加好友只有在postman上测试）：localhost:8087,即可进入登陆页面，登陆成功后，将跳转到大厅主页，然后可在里面创建房间，加入指定房间，进入房间后，会自动生成一个随机名，然后可以在里面聊天；       前端都是网上找的，然后根据自己的代码对前端进行了修改；  

附加功能：  
1.在房间里聊天；


其他想说的：  
这次作业第一天一直在写创建和加入房间，为了提高效果和能够测试，在网上找了一个前端，前端也很多坑，前端改了很久，然后又围绕前端对我的后端代码改了很久，今天才开始实现在房间里下五子棋的功能，也是找了个前端，围绕着前端在改在写，想实现效果更好一些，但Bug太多了，就只有放弃了那个前端页面，所以下棋这个功能算是没有实现了。  
                    怎么说呢，还是算尽力了吧，写了很多东西，只是效果的确不怎么样。不管能不能进网校，在网校学习的日子我也学会了很多东西，学的是代码和知识，但得到的绝不仅仅只是知识，还有各种自学的方法，以及对一个问题深究的韧劲。在网校学习是第一次这种主要靠自己自学的学习过程吧，之前并没有过这样的经历，也没有任何写代码的基础，所以学了一年了，还是非常的菜哈哈哈，不过以后一定会继续加油的，不管能不能继续留在网校。  
                    最后，无论结果怎么样，在这里说一句：谢谢红岩网校，谢谢各位给我们上课的学长学姐，真心的感谢你们抽出休息时间来给我们讲课，答疑，这些日子真的麻烦你们了，你们辛苦了。
