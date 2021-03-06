<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp"%>
<%
 response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
<c:set var="randVer"><%= java.lang.Math.round(java.lang.Math.random() * 10000) %></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide{display:none !important;}ng\:form{display:block;}.ng-animate-block-transitions{transition:0s all!important;-webkit-transition:0s all!important;}.ng-hide-add-active,.ng-hide-remove{display:block!important;}</style>

    <link rel="icon" href="<c:url value="/v2/common/images/U_16.png?v=${randVer}"/>">
    <title><decorator:title default="Beauty Circle Official Account Console" /></title>
    <decorator:head />
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/u-backend_files/user-profile-index.css?v=${randVer}"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/u-backend_files/reset.css?v=${randVer}"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/u-backend_files/style.css?v=${randVer}"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/u-backend_files/sidebar-layout.css?v=${randVer}"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/u-backend_files/account-setting-layout.css?v=${randVer}"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/u-backend_files/bootstrap.min.css?v=${randVer}"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/u-backend_files/account-setting-index.css?v=${randVer}"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/css/font-awesome.min.css?v=${randVer}"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/css/msg-index.css?v=${randVer}"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/v2/common/css/profile.css?v=${randVer}"/>">
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script language="javascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.3.min.js"></script>
    <script language="javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.11.4/jquery-ui.min.js"></script>

    <script language="javascript">
      $(document).ready(function(){
        var sPageURI = window.location.pathname;
        var sURLVariables = sPageURI.split('/');
        for (var i = 0; i < sURLVariables.length; i++) 
        {
          var sParameterName = sURLVariables[i];
          if (sParameterName == "editCurrentUser.action") {
            $("#profile").toggleClass("category-item category-item-on");
            break;
          }
          else if (sParameterName == "update-user-tab.action") {
            $("#manageTabs").toggleClass("category-item category-item-on");
            break;
          }
          else if (sParameterName == "circle") {
            $("#circles").toggleClass("category-item category-item-on");
            break;
          }
          else if (sParameterName == "post") {
            $("#posts").toggleClass("category-item category-item-on");
          }
        }
      });
    </script>
  </head>
  <body data-pinterest-extension-installed="cr1.35">
    <div id="container">
      <div id="page" style="padding:0px;width:100%">
        <div id="content">
            <div id="content_main" class="clearfix" style="width:100%">
              <div id="main_panel_container">
                <div id="dashboard">
                  <decorator:body />
                </div>
              <div class="clear"></div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
      </div>
    </div>
    <span style="height: 20px; width: 40px; min-height: 20px; min-width: 40px; position: absolute; opacity: 0.85; z-index: 8675309; display: none; cursor: pointer; top: 454px; left: 917px; background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAUCAYAAAD/Rn+7AAADU0lEQVR42s2WXUhTYRjHz0VEVPRFUGmtVEaFUZFhHxBhsotCU5JwBWEf1EWEEVHQx4UfFWYkFa2biPJiXbUta33OXFtuUXMzJ4bK3Nqay7m5NeZq6h/tPQ+xU20zugjOxR/+7/O8539+5znnwMtNTExwJtMb3L/fiLv3botCSmUjeCaejTOb39AiFothfHxcFIrHY8RksZjBsckJcOIRMfFsHD/SsbExUYpnI8DR0dGUGjSb0byhEJp5Uqg5CTSzc2CQleJbMEj9/ywBcGRkJEk9DQqouEVQT1sK444yWI9UonmTjGqauVLEIlHa9x8lAMbj8SSpp0rwKGMVvg8P46vbg0C7na8z8JsMcgHe7jlEa+edRhiLy8n/TUMfu6EvLElk+U0WtGwrTrdfAGQf5J8iiK4LVzDU28t8JtMSocf8E+l68myaNFXm/6rXslLK7ay5TOunuRvZWpJuvwAYjUaTpOIWoquuAZ219RTaxKYp9BbjycoN5FvL9qH9TBX5rvoGdJythvXYSTxdtRnWylO/ZdqrLsGwszzhWQ593z2KlAwCYCQSSZJ6ehZ0W7bD9VBLgN0NCqr3qR7R2rBrL3pu3Sb/7nDlz2uy6cG0OXk0GTbZXzNp8trsPAQdTj6frlWzN2DcXZGKQQAMh8NJ6rpyHe+PnkCr/CAFdZyvpfpjuvkifLF9wIt1Wwlo0OHie1RvWrKa93RjzfzliTzPKz3ltB0/Tevmwp14wGUgHAzSOoUEwFAolFaaBSuhnslPRkJexUJtZ6v5HtUeLswl33n1BgEY5fvhs9sJ3FAiT+QYyyvoAQJuD0KBAFRTJNAuz5/s3gJgMBhMJwrVFRThM5tY5zUF/A4X1f2fvQTRLCuBreoim0YmAbqNJryvPEXeeq46kaNdkQ/1HCncbJKPs9ZSv2VHGfWsZ2hfkhKAfr8/pdxWKx4wwD69PmVfNSOL+lr2w+gYqHpWDtXt1xQ8AMlWU0e1lqLd/APRHoP8AJqWrQG9gYxcPMsvSJUvAA4MDKTUJ7MZLaVy8v+qT21tcDx/OemePr0RTkNrur4A6PP5xCgBsL+/X4wiQDpuuVxOeL1eMYmYeDY6sOp0z+B0OuHxeEQhxkJMFosJiSO/UinOI/8Pc+l7KKArAT8AAAAASUVORK5CYII=);"></span>
  </body>
</html>