<%-- 
    Document   : error
    Created on : Mar 29, 2013, 9:36:56 PM
    Author     : alemnew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<jsp:include page="../header.jsp" flush="ture">
    <jsp:param name="id" value="register_staff.jsp"/>
    <jsp:param name="title" value="MK RC | Error!" />
</jsp:include>
<div class="errorMsg">
    <s:property value="errorMsg" default="Error Occured!"/>
</div>
<%@include  file="../footer.jsp" %>
