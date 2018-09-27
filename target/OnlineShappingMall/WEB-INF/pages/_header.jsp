<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%> 
<div class="header-container">
 
    <div class="site-name">Bindu Online Shop</div>
    <%System.out.println("------------------------"+request.getAttribute("userPrincipal")); %>
 
    <div class="header-bar">
        <c:if test="${pageContext.request.userPrincipal.name != null}">
        Hello
           <a href="<%=request.getContextPath() %>/accountInfo">
                ${pageContext.request.userPrincipal.name} </a>
         &nbsp;|&nbsp;
           <a href="<%=request.getContextPath() %>/logout">Logout</a>
 
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name == null}">
            <a href="<%=request.getContextPath() %>/login">Login</a>
        </c:if>
    </div>
</div>