<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>   
 <%@ page isELIgnored="false"%>
 
<div class="menu-container">
  
   <a href="<%=request.getContextPath() %>/">Home</a>
   |
   <a href="<%=request.getContextPath() %>/productList">
      Product List
   </a>
   |
   <a href="<%=request.getContextPath() %>/shoppingCart">
      My Cart
   </a>
   |
   <security:authorize  access="hasAnyRole('ROLE_MANAGER','ROLE_EMPLOYEE')">
     <a href="<%=request.getContextPath() %>/orderList">
         Order List
     </a>
     |
   </security:authorize>
   
   <security:authorize  access="hasRole('ROLE_MANAGER')">
         <a href="<%=request.getContextPath() %>/product">
                        Create Product
         </a>
         |
   </security:authorize>
  
</div>