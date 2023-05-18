<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${contextPath}/resources/js/lib/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
        
        .logo {
          text-align: center;
        }
        .wrap1 > * {
            padding: 0;
            margin: 0;
        }
        .gnb {
          display: flex;
          justify-content: space-evenly;
        }
        .login_btn{
          text-align: right;
        }
        
        .wrap1  a {
            color: black;
            text-decoration: none;
        }
        .wrap1 > ul {
            list-style-type: none;
            display: flex;
            width: 1440px;
            margin: 0 auto;
            border-bottom: 1px solid black;
            border-top: 1px solid black;
        }
        .wrap1 > ul > li {
            width: 80px;
            height: 50px;
        }
        .wrap1 > ul > li > a {
            display: block;
            width: 100%;
            height: 100%;
            text-align: center;
            line-height: 50px;
        }
        .wrap1 > ul > li > a:hover {
            border-bottom: 5px solid greenyellow;
        }
        
        .movie_list {
          display: flex;
          flex-wrap: nowrap;
          justify-content: space-between;
          height: 400px;
          width: 100%;
        }
        .movie_list > div {
          height: 100%;
          padding: 10px;
        }
        .movie_list > div > div {
          width: 100%;
          height: 9%;
          text-align: center;
        }
        .movie_list > div > div > strong {
          text-align: center;
        }
        .movie_list > div > a > img {
          height: 90%;
        }
        
</style>

<body>

   <div class="header_wrap">
    <div class="logo">
      <a href="${contextPath}/index">
        <img src="${contextPath}/resources/images/cgvlogo.png">
      </a>
    </div>
    
    <div class="login_btn">
      <button>로그인</button>
    </div>
    
     <div class="wrap1">
          <ul class="gnb">
              <li><a href="${contextPath}/movie/movielist.form">영화</a></li>
              <li><a href="javascript:void(0)">공지사항</a></li>
              <li><a href="${contextPath }/store/store.do">스토어</a></li>
              <li><a href="javascript:void(0)">예매</a></li>
          </ul>
      </div>
      
        
      <div class="movie_list">
        <div>
          <div>
            <strong>NO.1</strong>
          </div>
          <a href="http://www.cgv.co.kr/movies/detail-view/?midx=86883">
            <img src="${contextPath}/resources/images/movieIMG1.jpg">
          </a>
        </div>
        <div>
          <div>
            <strong>NO.2</strong>
          </div>
          <a href="http://www.cgv.co.kr/movies/detail-view/?midx=86996">
            <img src="${contextPath}/resources/images/image2.jpg">
          </a>
        </div>
        <div>
          <div>
            <strong>NO.3</strong>
          </div>
          <a href="http://www.cgv.co.kr/movies/detail-view/?midx=87045">
            <img src="${contextPath}/resources/images/image3.jpg">
          </a>
        </div>
        <div>
          <div>
            <strong>NO.4</strong>
          </div>
          <a href="http://www.cgv.co.kr/movies/detail-view/?midx=86912">
            <img src="${contextPath}/resources/images/image4.jpg">
          </a>
        </div>
        <div>
          <div>
            <strong>NO.5</strong>
          </div>
          <a href="http://www.cgv.co.kr/movies/detail-view/?midx=86912">
            <img src="${contextPath}/resources/images/image4.jpg">
          </a>
        </div>
   </div>
  </div>

</body>
</html>