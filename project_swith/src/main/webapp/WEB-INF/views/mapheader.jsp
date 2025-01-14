<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header -->
<header>
        <div id="header">
            <div class="logo">
                <a href="#" class="logo_a"><img src="<%=request.getContextPath()%>/resources/caja/img/logo04.png" class="logo_img"></a>
            </div>
            <div class="content_bar">
                <div class="content_bar_div">
                    <ul class="content_bar_list">
                        <li class="content_item">
                            <a href="#" class="content_item_a">
                                <center>
<%--                                     <img src="<%=request.getContextPath()%>/resources/map/images/지도홈로고.jpg" class="map_home_logo"> --%>
                                </center>
                                <span class="map_home">지도 홈</span>
                            </a>
                        </li>
                        <li class="content_item">
                            <a href="#" class="content_item_a">
                                <center>
<%--                                     <img src="<%=request.getContextPath()%>/resources/map/images/loadsearchlogo.jpg" class="load_search_logo"> --%>
                                </center>
                                <span class="load_search">길찾기</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="empty_space">
            	<div class="oil_info">

            	</div>
            </div>
            <div class="login_button">
            	<c:choose>
                  	<c:when test="${empty user_info}">
                    	<a href="<%=request.getContextPath()%>/login"><span>로그인</span></a>
                   	</c:when>
                   	<c:otherwise>
	                    <a href="<%=request.getContextPath()%>/mypage"><span>마이페이지</span></a>
                   	</c:otherwise>
                </c:choose>
            </div>
        </div>
    </header>
<!-- ENDS header -->