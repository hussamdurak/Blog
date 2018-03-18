<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" >Hüssam Durak</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href='<s:url value="/"></s:url>'>HOME</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href='<s:url value="/about"></s:url>'>ABOUT</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href='<s:url value="/contact"></s:url>'>CONTACT</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    