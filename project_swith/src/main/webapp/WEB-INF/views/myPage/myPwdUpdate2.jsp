<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE  html>
<html>
<head>
<title>Caja</title>
<meta charset="utf-8">
<!-- CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/caja/css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/caja/css/social-icons.css" type="text/css" media="screen">
<link rel="stylesheet" href="" type="text/css" media="screen" id="css-skins">
<!--[if IE 8]><link rel="stylesheet" type="text/css" media="screen" href="css/ie8-hacks.css"><![endif]-->
<!-- ENDS CSS -->
<!-- GOOGLE FONTS -->
<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:light' rel='stylesheet' type='text/css'>
<!-- JS -->
<script src="<%=request.getContextPath()%>/resources/caja/js/jquery-1.5.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/caja/js/jquery-ui-1.8.13.custom.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/caja/js/easing.js"></script>
<script src="<%=request.getContextPath()%>/resources/caja/js/jquery.scrollTo-1.4.2-min.js"></script>
<script src="<%=request.getContextPath()%>/resources/caja/js/slides.min.jquery.js"></script>
<script src="<%=request.getContextPath()%>/resources/caja/js/moveForm.js"></script>
<script src="<%=request.getContextPath()%>/resources/caja/js/custom.js"></script>
<!--[if IE]><script src="js/html5.js"></script><![endif]-->
<!--[if IE 6]><script src="js/DD_belatedPNG.js"></script><![endif]-->
<!-- ENDS JS -->
<!-- Swiper -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<!-- End Swiper -->
<!-- tabs -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/caja/css/tabs.css" type="text/css" media="screen">
<script src="<%=request.getContextPath()%>/resources/caja/js/tabs.js"></script>
<!-- ENDS tabs -->
<!-- prettyPhoto -->
<script src="<%=request.getContextPath()%>/resources/caja/js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/caja/js/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen">
<!-- ENDS prettyPhoto -->
<!-- superfish -->
<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/caja/css/superfish.css">
<script src="<%=request.getContextPath()%>/resources/caja/js/superfish-1.4.8/js/hoverIntent.js"></script>
<script src="<%=request.getContextPath()%>/resources/caja/js/superfish-1.4.8/js/superfish.js"></script>
<script src="<%=request.getContextPath()%>/resources/caja/js/superfish-1.4.8/js/supersubs.js"></script>
<!-- ENDS superfish -->
<!-- poshytip -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/caja/js/poshytip-1.0/src/tip-twitter/tip-twitter.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/caja/js/poshytip-1.0/src/tip-yellowsimple/tip-yellowsimple.css" type="text/css">
<script src="<%=request.getContextPath()%>/resources/caja/js/poshytip-1.0/src/jquery.poshytip.min.js"></script>
<!-- ENDS poshytip -->
<!-- ENDS caja -->
</head>
<body>
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/header.jsp"/>
<!-- SECTION -->
<jsp:include page="/WEB-INF/views/myPwdUpdate.jsp"/>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>