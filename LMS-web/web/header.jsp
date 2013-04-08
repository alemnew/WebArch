<%-- 
    Document   : header
    Created on : Apr 2, 2013, 8:13:46 PM
    Author     : asrese
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <sx:head/>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>${param.title} </title>

        <meta name="keywords" content="" />

        <meta name="description" content="" />
        <link href="css/default.css" rel="stylesheet" type="text/css" media="screen" />
        <!-- for contact us-->
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <link rel="stylesheet" href="css/contactus_validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />

        <link rel="stylesheet" href="css/contactus_template.css" type="text/css" media="screen" title="no title" charset="utf-8" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>

        <script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
        <script src="js/jquery.validationEngine.js" type="text/javascript"></script>
        <!-- contct us end-->
        <!-- Fixed Header-->
        <SCRIPT>
            $(document).ready(function() {
 
                var div = $('#mainmenu');
                var start = $(div).offset().top;
 
                $.event.add(window, "scroll", function() {
                    var p = $(window).scrollTop();
                    $(div).css('position',((p)>start) ? 'fixed' : 'static');
                    $(div).css('top',((p)>start) ? '0px' : '');
                    $(div).css('left',((p)>start) ? '0px' : ''); 
                });
 
            });
            $(document).ready(function() {
 
                var div = $('#sidebar');
                var start = $(div).offset().top;
 
                $.event.add(window, "scroll", function() {
                    var p = $(window).scrollTop();
                    $(div).css('position',((p)>start) ? 'fixed' : 'static');
                    $(div).css('top',((p)>start) ? '65px' : '');
                    $(div).css('left',((p)>start) ? '857px' : ''); 
                });
 
            });
        </SCRIPT>
        <!-- Hide list table -->
        
        <!-- Fixed header end-->
        <!--script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>;
        <script type="text/javascript" >
            $(document).ready(function()
            {

                $(".account").click(function()
                {
                    var X=$(this).attr('id');
                    if(X==1)
                    {
                        $(".submenu").hide();
                        $(this).attr('id', '0'); 
                    }
                    else
                    {
                        $(".submenu").show();
                        $(this).attr('id', '1');
                    }

                });

                //Mouse click on sub menu
                $(".submenu").mouseup(function()
                {
                    return false
                });

                //Mouse click on my account link
                $(".account").mouseup(function()
                {
                    return false
                });


                //Document Click
                $(document).mouseup(function()
                {
                    $(".submenu").hide();
                    $(".account").attr('id', '');
                });
            });
        </script-->
        <script type="text/javascript">
            $(document).ready(function(){ 
                $("#searchtxt").val("Search...").addClass("empty");
                $("#searchtxt").focus(function(){
                    if($(this).val() == "Search...") {
                        $(this).val("").removeClass("empty");;
                    }
                });
                $("#searchtxt").blur(function(){
                    if($(this).val() == "") {
                        $(this).val("Search...").addClass("empty");	
                    }
                });
            });
          
        </script>
    </head>
    <body>
        <!-- start header -->
        <div id="header">

            <!--div class="dropdown">
                <a class="account" >My Account</a>

                <div class="submenu">
                    <ul class="root">
                        <li ><a href="#Dashboard" >Dashboard</a></li>
                        <li ><a href="#Profile" >Profile</a></li>
                        <li ><a href="#settings">Settings</a></li>
                        <li ><a href="#feedback">Send Feedback</a></li>
                    </ul>
                </div>

            </div-->
        </div>
        <!-- end header -->
        <!-- star menu -->
        <div id="mainmenu">
            <ul id="menu">
                <li class="current"><a href="index.jsp">Home</a></li> 
                <li>
                    <a href="#">Publications</a>
                    <ul class="submenu">
                        <li><a href="searchPublication.jsp">Search Publication</a>
                            <ul>
                                <li><a href="">Search by Title</a></li>
                                <li><a href="">Search by Author</a></li>

                            </ul>
                        </li>
                        <li><a href="">Add Publication</a>
                            <ul>
                                <li><a href="">Update Existing</a></li>
                                <li><a href="insertPublication.jsp">Add New Publication</a></li>
                            </ul>
                        </li>
                        <li><a href="">Manage Publication</a></li>
                        <li><a href="">New Arrivals</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">Staffs</a>
                    <ul class="submenu">
                        <li><a href="searchStaff.jsp">Search Staff</a>
                            <ul>
                                <li><a href="">Search by Name</a></li>
                                <li><a href="">Search by Email</a></li>

                            </ul>
                        </li>
                        <li><a href="">Register Staff</a>
                            <ul>
                                <li><a href="">Update Existing</a></li>
                                <li><a href="staffRegistration.jsp">Add New Staff</a></li>
                            </ul>
                        </li>
                        <li><a href="">Manage Staffs</a></li>
                        <li><a href="">New Staffs</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">Users</a>
                    <ul class="submenu">
                        <li><a href="searchUser.jsp">Search User</a>
                            <ul>
                                <li><a href="">Search by Name</a></li>
                                <li><a href="">Search by Email</a></li>

                            </ul>
                        </li>
                        <li><a href="">Register user</a>
                            <ul>
                                <li><a href="">Update Existing</a></li>
                                <li><a href="userRegistration.jsp">Add New User</a></li>
                            </ul>
                        </li>
                        <li><a href="">Manage Users</a></li>
                        <li><a href="">New users</a></li>
                    </ul>
                </li>
                <li><a href="aboutUs.jsp">About us</a></li>
                <li><a href="contactUs.jsp">Contact us</a></li>
                <li id="searchfrm">
                        <form id="searchform2" method="get" action="">
                            <input type="text" size="40" id="searchtxt" class="empty"/>
                        </form>
                </li>
            </ul>
        </div>
        <!-- end menu -->
        <!-- start page -->
        <div id="page">
            <!-- start content -->
            <div id="content">
                <div class="post">
                    <div class="actualcontent">
