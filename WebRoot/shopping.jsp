<%@ page language="java" import="java.util.*,entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>我的购物车</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/carts.css">
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/shopping.css">
    <!--[if lt IE 9]>
            <script src="lib/html5shiv/html5shiv.min.js"></script>
            <script src="lib/respond/respond.min.js"></script>
            <![endif]-->
</head>
<body>
    <!-- 头部区域 -->
    <header id="header">
        <!-- <div class="topbar hidden-sm hidden-xs"> -->
        <div class="topbar visible-md visible-lg">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 text-center">
                        <a href="#" class="mobile-link">
            <i class="icon-mobilephone"></i>
            <span>手机商城</span>
            <i class="glyphicon glyphicon-chevron-down"></i>
            <img src="img/qqq.jpg"height="136"width="120"alt="扫一扫">
            </a>
                    </div>
                    <div class="col-md-4 text-center">
                        <i class="icon-telephone"></i>
                        <span>4006-89-4006（服务时间：9:00-21:00）</span>
                    </div>
                    <div class="col-md-2 text-center">
                        <a href="#">我的钱包</a>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="index.jsp" class="btn btn-link btn-sm">谷维商城</a>
                        <a href="/ProjectOne/AccessServlet" class="btn btn-link btn-sm">首页</a>
            <span class="glyphicon glyphicon-shopping-cart"></span>
            <span class="badge"></span>
            </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section class="cartMain">
        <div class="cartMain_hd">
            <ul class="order_lists cartTop">
                <li class="list_chk">
                    <!--所有商品全选-->
                    <input type="checkbox" id="all" class="whole_check">
                    <label for="all"></label>
                    全选
                </li>
                <li class="list_con">商品信息</li>
                <li class="list_price">单价</li>
                <li class="list_amount">数量</li>
                <li class="list_sum">金额</li>
                <li class="list_op">操作</li>
            </ul>
        </div>

		<!--当商品店铺不同是重新创建一个盒子  -->
		<c:forEach var="infos" items="${StoreLists }" >
			<div class="cartBox">
            <div class="shop_info">
                <div class="all_check">
                    <!--店铺全选-->
                    <input type="checkbox" id="shop_a" class="shopChoice">
                    <label for="shop_a" class="shop"></label>
                </div>
                <div class="shop_name">
                   	 店铺：<a href="javascript:;">${infos.shop_store_name}</a>
                </div>
            </div>
	            <c:forEach var="lists" items="${infos.shop_Infos }">
	            	<div class="order_content">
	                <ul class="order_lists">
	                    <li class="list_chk">
	                        <input type="checkbox" id="checkbox_2" class="son_check">
	                        <label for="checkbox_2"></label>
	                    </li>
	                    <li class="list_con">
	                        <div class="list_img"><a href="javascript:;"><img src="${lists.shop_img }" alt=""></a></div>
	                        <div class="list_text"><a href="javascript:;">${lists.shop_desc}</a></div>
	                    </li>
	                   
	                    <li class="list_price">
	                        	<p class="price">￥${lists.shop_price}</p>
	                    </li>
	                    <li class="list_amount">
	                        <div class="amount_box">
	                            <a href="javascript:;" class="reduce reSty">-</a>
		                        <input type="text" value="${lists.shop_count}" class="sum" >
	                            <a href="javascript:;" class="plus">+</a>
	                        </div>
	                    </li>
	                    <li class="list_sum">
	                        <p class="sum_price">￥${lists.shop_money}</p>
	                    </li>
	                    <li class="list_op">
	                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
	                    </li>
	                </ul>
	            </div>
	            </c:forEach>
       		 </div>
		</c:forEach>
       

        <!-- <div class="cartBox">
            <div class="shop_info">
                <div class="all_check">
                    <input type="checkbox" id="shop_b" class="shopChoice">
                    <label for="shop_b" class="shop"></label>
                </div>
                <div class="shop_name">
                   	 店铺：<a href="javascript:;">卷卷旗舰店</a>
                </div>
            </div>
            <div class="order_content">
                <ul class="order_lists">
                    <li class="list_chk">
                        <input type="checkbox" id="checkbox_4" class="son_check">
                        <label for="checkbox_4"></label>
                    </li>
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="img/4.png" alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a></div>
                    </li>
                  
                    <li class="list_price">
                        <p class="price">￥1980</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="1" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥1980</p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
                <ul class="order_lists">
                    <li class="list_chk">
                        <input type="checkbox" id="checkbox_5" class="son_check">
                        <label for="checkbox_5"></label>
                    </li>
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="img/5.png" alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a></div>
                    </li>
                   
                    <li class="list_price">
                        <p class="price">￥480</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="1" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥480</p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
            </div>
        </div>
 -->
        <!-- <div class="cartBox">
            <div class="shop_info">
                <div class="all_check">
                    店铺全选
                    <input type="checkbox" id="shop_c" class="shopChoice">
                    <label for="shop_c" class="shop"></label>
                </div>
                <div class="shop_name">
                    店铺：<a href="javascript:;">卷卷旗舰店</a>
                </div>
            </div>
            <div class="order_content">
                <ul class="order_lists">
                    <li class="list_chk">
                        <input type="checkbox" id="checkbox_8" class="son_check">
                        <label for="checkbox_8"></label>
                    </li>
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="img/1.png" alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a></div>
                    </li>
                    
                    <li class="list_price">
                        <p class="price">￥1980</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="1" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥1980</p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
                <ul class="order_lists">
                    <li class="list_chk">
                        <input type="checkbox" id="checkbox_9" class="son_check">
                        <label for="checkbox_9"></label>
                    </li>
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="img/1.png" alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a></div>
                    </li>
                    
                    <li class="list_price">
                        <p class="price">￥480</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="1" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥480</p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
            </div>
        </div> -->
        
        <!--底部-->
        <div class="bar-wrapper">
            <div class="bar-right">
                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
                <div class="totalMoney">共计: <strong class="total_text" id="moneycount">0.00</strong></div>
                <div class="calBtn"><a onclick="commit()">结算</a></div>
            </div>
        </div>
    </section>
    <section class="model_bg"></section>
    <section class="my_model">
        <p class="title">删除宝贝<span class="closeModel">X</span></p>
        <p>您确认要删除该宝贝吗？</p>
        <div class="opBtn">
        	<a href="javascript:;" class="dialog-sure" onclick="deleteShop()">确定</a>
        	<a href="javascript:;" class="dialog-close">关闭</a>
        </div>
    </section>
	
    <script src="js/jquery.min.js"></script>
    <script src="js/carts.js"></script>
	<script src="lib/jquery/jquery.js"></script>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
<script>
	function commit(){
		var moneyCount=document.getElementById("moneycount").innerHTML;
		location.href="/ProjectOne/ByNowCommitServlet?money="+moneyCount.substring(1);
	}
	function deleteShop(){
		
	}
</script>
