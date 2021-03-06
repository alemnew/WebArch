<%-- 
    Document   : login
    Created on : Mar 30, 2013, 3:21:50 PM
    Author     : alemnew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<jsp:include page="header.jsp" flush="ture">
    <jsp:param name="id" value="login.jsp"/>
    <jsp:param name="title" value="MK RC | Login" />
</jsp:include>

<div id="loginbox">
    <div class="elements">
        <div class="avatar"></div>
        <s:form action="authenticateUser">
            <s:if test="hasActionErrors()">
                <s:actionerror/> 
            </s:if>
            <s:textfield key="email" required="*"  labelSeparator="" label="" cssClass="username" placeholder="Username or Email" />
            <s:password key="password" required="*"  labelSeparator="" label="" cssClass="password" placeholder="••••••••" />
            <!--checkbox key="remember" label="Remember?"   cssClass="checkbox" value="1" /-->
            <s:submit value="Login" cssClass="submit"  />
        </s:form>
 </div> 
</div>
<%@include file="footer.jsp" %>