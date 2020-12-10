<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>
<style>
/* 네비게이션 바 */
.margin {
	margin-bottom: 45px;
}
.bg-1 {
	background-color: #1abc9c; /* Green */
	color: #ffffff;
}
.bg-2 {
	background-color: #474e5d; /* Dark Blue */
	color: #ffffff;
}
.bg-3 {
	background-color: #ffffff; /* White */
	color: #555555;
}
.navbar {
	padding-top: 1px;
	padding-bottom: 1px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 5px;
}
.navbar-nav  li a:hover {
	color: #1abc9c !important;
}

/* 드롭 서치 */
.dropbtn {
background-color: #fcfcfc;
color: 808080;
padding: 16px;
font-size: 12px;
border: none;
cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #1abc9c;
  color : white;
}

#myInput {
  box-sizing: border-box;
  background-image: url('searchicon.png');
  background-position: 14px 12px;
  background-repeat: no-repeat;
  font-size: 16px;
  padding: 14px 20px 12px 45px;
  border: none;
  border-bottom: 1px solid #ddd;
}

#myInput:focus {outline: 3px solid #ddd;}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f6f6f6;
  min-width: 230px;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.dropdown a:hover {background-color: #ddd;}
.show {display: block;}



</style>
<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">MAIN</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/product/productlist">PRODUCT</a></li>
				<li><a href="/board/boardList">COMMUNITY</a></li>
				
				
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/cart/list"><span class="glyphicon hlyphicon-shopping-cart"></span>CART</a></li>
					
					<c:if test="${member == null}">
			      		<li><a href="/login/register"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
			      </c:if>
			      
			     <c:if test="${member == null}">
			      	<li><a href="/login/login"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
			     </c:if>
			     
			     <c:if test="${member != null}">
			     	<li><a href="/login/logout" role="button"><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>
			     </c:if>
			    </ul>
			</ul>
		</div>
	</div>
	
	
	
<script>
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}
function filterFunction() {
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  div = document.getElementById("myDropdown");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}
</script>

</nav>
