<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
<!DOCTYPE html> 
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
<script src="/mainresources/bootstrap/vendor/jquery/jquery-3.2.1.min.js"></script>
<script>
jQuery.browser = {};
(function () {
    jQuery.browser.msie = false;
    jQuery.browser.version = 0;
    if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
        jQuery.browser.msie = true;
        jQuery.browser.version = RegExp.$1;
    }
})();
</script>
<!-- css -->
<tiles:insertAttribute name="css" /> 
<title>5DUCKU</title> 
</head> 
<body>
		<!-- nav  -->
		<tiles:insertAttribute name="nav" /> 
	
		<!-- content -->
		<tiles:insertAttribute name="body" /> 

		<!-- footer -->
		<tiles:insertAttribute name="footer" />
		
		<!-- import js  -->
		<tiles:insertAttribute name="js" />  
		
</body> 
</html>
