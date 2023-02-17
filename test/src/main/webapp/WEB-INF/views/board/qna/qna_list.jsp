<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="author" content="colorlib.com">
<link rel="stylesheet" href="/resources/css/board/qna_list.css">
<link rel="stylesheet" href="/resources/css/board/searchbar.css">
<link rel="stylesheet" href="/resources/css/board/style.css"><!-- **스트랩** -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css" integrity="sha512-SbiR/eusphKoMVVXysTKG/7VseWii+Y3FdHrt0EpKgpToZeemhqHeZeLWLhJutz/2ut2Vw1uQEj2MbRF+TVBUA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- ******* -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/common/navbar.jsp" %>
<div id="navArea"></div>

<div class="s003">
	<form name="form1">
		<div class="inner-form">
			<div class="input-field first-wrap">
				<div class="input-select">
					<select id="selectBox" name="option" data-trigger="">
						<option>선택</option>
						<option value="NICKNAME">닉네임</option>
						<option value="SUBJECT">제목</option>
						<option value="CONTENT">내용</option>
						<option value="SUBJECT,CONTENT">제목+내용</option>	  
					</select>
				</div>
			</div>
			<div class="input-field second-wrap">
				<input id="searchh" type="text" placeholder="검색" name="keyword">
			</div>
			<div class="input-field third-wrap"> 
				<button class="btn-search" type="button" id="searchBtn">
					<svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
						<path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
					</svg>
				</button>				
			</div>  
		<input type="hidden" name="page" value="1">
	</div>
</form>
</div>

<div class="content">
	<div class="container">
		<div class="table-responsive custom-table-responsive">
			<table class="table custom-table">
				<thead>
					<tr>
						<th scope="col">
		                	<label class="control control--checkbox">
			                	<input type="checkbox" class="js-check-all"/>
			                	<div class="control__indicator"></div>
		                	</label>
						</th>
						<th scope="col">질문번호</th>
						<th scope="col">작성자</th>
						<th scope="col">제목</th>
						<th scope="col">답변여부</th>
						<th scope="col">생성일자</th>				
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${data}">
		            <tr scope="row">
						<th scope="row">
							<label class="control control--checkbox">
								<input type="checkbox"/>
								<div class="control__indicator"></div>
							</label>
						</th>	
						<td>${list.question_id}</td>
						<td><a href="/qna/list/${list.question_id}">${list.nickname}</a></td>
						<td>${list.q_subject}</td>
						<c:choose>
							<c:when test="${list.answer!=null}"><td>완료</td></c:when>
							<c:otherwise><td>진행중</td></c:otherwise>						
						</c:choose>	
						<td>${list.q_create_date}</td>
					</tr>
					<tr class="spacer"><td colspan="100"></td></tr>				
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>		
		
		<div class="col-md-9">
			
			
			<form name="form2">
			<div id="pagination">
				<ul id="pageUL" class="btn-group pagination">
				    <c:if test="${pageMaker.prev}">
				    <li class="left">
				        <a class="left" href='<c:url value="/qna/list?page=${pageMaker.startPage-1}"/>'><i class="fa fa-chevron-left"></i></a>
				    </li>
				    </c:if>
				    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="pageNum">
				    <li class="curPage">
				        <a href='<c:url value="/qna/list?page=${pageNum}"/>'><i class="fa">${pageNum}</i></a>
				    </li>
				    </c:forEach>
				    <c:if test="${pageMaker.next && pageMaker.endPage >0}">
				    <li class="right">
				        <a class="right" href='<c:url value="/qna/list?page=${pageMaker.endPage+1}"/>'><i class="fa fa-chevron-right"></i></a>
				    </li>
				    </c:if>
				</ul>
			</div>
			
			<input id="pageH" type="hidden" name="page" value="${pageMaker.cri.page}">
			<input id="keywordH" type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
			<input id="optionH" type="hidden" name="option" value="${pageMaker.cri.option}">
			</form>
			
			<input type="button" value="질문등록" onclick="location.href='/qna/create'">
		</div>
	</div>
</div>
<footer>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</footer>
<script src="/resources/js/board/qna_list.js"></script>
<script src="/resources/js/board/searchbar.js"></script>
<script src=https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.min.js></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
<script>
const choices = new Choices('[data-trigger]',
{
  searchEnabled: false,
  itemSelectText: '',
});

</script>
</script>
</body>
</html>