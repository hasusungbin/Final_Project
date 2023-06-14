<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/thrifty/resources/css/part_time_job/part_time_job_list.css" rel="stylesheet">
<style>
    *{
        /* border: 1px solid blue !important; */
        box-sizing: border-box;
    }
    body{
        margin: 0;
    }
    #wrapper{
        min-width: 1180px;
    }

    #header{
        height: 140px;
    }
    #body{
        padding: 40px;
        display: flex;
        justify-content: center;
    }

    #body-left{
        display: inline-block;
        width: 20%;
        min-width: 350px;
        min-height: 900px;
        background-color: rgb(0, 60, 120);
        margin-right: 10px;
    }
    #body-right{
        margin-left: 10px;
        width: 50%;
        min-width: 700px;
        min-height: 950px;
    }

    #footer{
        
    }

</style>
</head>
<body>
    <div id="wrapper">
		<jsp:include page="../common/header.jsp"/>
        <div id="body"  style="padding-top: 150px;">
            <jsp:include page="../common/boardBodyLeftPTJ.jsp"/>
            <div id="body-right">
                <div id="ptj-header">
					<c:choose>
                		<c:when test="${filter.scNo eq null or filter.scNo eq '' }">
		                    <div id="body-right-title"><h1>[대타 / 심부름]</h1></div>
                		</c:when>
                		<c:otherwise>
                			<c:forEach var="location" items="${locationList}">
                				<c:if test="${location.locationNo eq filter.lNo}">
	                				<div id="body-right-title">[${subCategory.categorySName}]</div>                				
                				</c:if>
                			</c:forEach>
                		</c:otherwise>
                	</c:choose>
                </div>
                <div style="width:100%; height:50px;" id="write-board">
                	<p>메인 > 심부름/대타 </p>
                	<c:if test="${loginUser != null }">
	                	<button id="write-btn">게시글 작성하기</button>
                	</c:if>
                </div>
                <hr style="width: 100%;  margin-top: 15px;">
                <div id="ptj-allBody" style="height: 1000px;">
                	<c:forEach var="ptj"  items="${list}" >
	                			<div style="width: 200px; height: 300px;" class="list-detail" onclick="location.href = '${contextPath}/ptj/detail?bNo=${ptj.boardNo }'">
		               				<c:choose>
		               					<c:when test="${ptj.isEnd eq 'N' }">
				               				<img src="${contextPath }/${ptj.imgPath }" style="height: 170px; width: 200px; border-radius: 10px;"/>		               						
		               					</c:when>
		               					<c:otherwise>
		               						<img src="${contextPath }/resources/images/ptj/end.jpg" style="height: 170px; width: 200px; border-radius: 10px;"/>
		               					</c:otherwise>
		               				</c:choose>
		       						<p style="text-align: center;">제목 :${ptj.board.title }</p>
		       						<p style="text-align: center;">내용 :${ptj.board.content }</p>
		       						<p style="text-align: center;">지역 :${ptj.location.locationName }</p>
		           				</div>
       				</c:forEach>
                </div>
                <div id="body-right-footer">
                    <div id="paging-btns">
                    	<c:choose>
		                  <c:when test="${ pi.currentPage eq 1 }">
		                     <div>&lt;</div>
		                  </c:when>
		                  <c:otherwise>
		                     <div><a href="/thrifty/ptj/ptjList?currPage=${filter.currPage-1}&scNo=${filter.scNo}&location=${filter.lNo}">&lt;</a></div>
		                  </c:otherwise>               
		               </c:choose>
		               <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
	                  	<div><a href="/thrifty/ptj/ptjList?currPage=${item}&scNo=${filter.scNo}&location=${filter.lNo}">${item}</a></div>
	               		</c:forEach>
	               		<c:choose>
		                  <c:when test="${ pi.currentPage eq pi.maxPage }">
		                     <div>&gt;</div>
		                  </c:when>
		                  <c:otherwise>
		                     <div><a href="/thrifty/ptj/ptjList?currPage=${filter.currPage+1}&scNo=${filter.scNo}&location=${filter.lNo}">&gt;</a></div>
		                  </c:otherwise>
		                </c:choose>	               
                    </div>
                </div>
            </div>
        </div>

        <div id="footer">

        </div>
    </div>
<script>
   	document.getElementById('write-btn').addEventListener("click",function(){
        location.href = "<%= request.getContextPath() %>/ptj/ptjEnrollForm";
   	})
   	
   	/* function a(boardNo) {
	   		location.href = "${contextPath}/ptj/ptjDetail/"+boardNo;
   	} */
   	

</script>
</body>
</html>