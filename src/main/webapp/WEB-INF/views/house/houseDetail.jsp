<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="b" value="${house[0] }" />
<c:set var="h" value="${house.get(1) }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쉐어하우스 상세조회</title>
    <link rel="stylesheet" href="/thrifty/resources/css/house/houseModal.css">
    <link rel="stylesheet" href="/thrifty/resources/css/house/houseDetail.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
</head>
<body>
  <jsp:include page="../common/header.jsp"></jsp:include> 
    <div class="wrap">
    <div id="sharetitle"><h1>${b.title }</h1></div>
    <div class="img-bx">
		<c:forEach var="rimg" items="${h.roomList[0].imgList }">
      		<div>
          	  <img src="/thrifty/resources/images/house/${rimg.changeName}">
        	</div>
       	</c:forEach>
    </div>

    <div id="img-select">
       <c:forEach var="r" items="${h.roomList }">
       <div><button roomNo="${r.roomNo }" onclick="selectRoom(this);">${r.division }</button></div>
       </c:forEach>
    </div>

    <div id="nav">
        <div><p>방 정보</p></div>
        <div><p>지점 소개</p></div>
        <div><p>제공 서비스</p></div>
        <div><p>입주절차</p></div>
    </div>

    <div id="state">
        <table >
            <tr>
                <th>입주신청</th>
                <th>구분</th>
                <th>성별</th>
                <th>타입</th>
                <th>면적</th>
                <th>보증금</th>
                <th>월임대료</th>
                <th>관리비</th>
                <th>계약종료일</th>
            </tr>
            
             <c:forEach var="r" items="${h.roomList }">
		            <tr>
		                <td>
		                   <c:if test="${r.recruitsNum > r.recruitsCurr}">
		                   <button roomNo="${r.roomNo }" roomName="${r.division }" onclick="tour(this);">투어신청</button>
		                	</c:if>
		                	 <c:if test="${r.recruitsNum == r.recruitsCurr}">
		                   <button disabled>입주완료</button>
		                	</c:if>
		                </td>
		                <td>${r.division }</td>
		                <td>${r.gender }</td>
		                <td>${r.type }</td>
		                <td>${r.area }</td>
		                <td>${r.deposit }</td>
		                <td>${r.rent }</td>
		                <td>${r.cost }</td>
		                <td>${r.contrat }</td>
		            </tr>
              </c:forEach>
        </table>
    </div>
    <div id="information">
        <div>${h.information }</div>
    </div>
    <div id="location">위치
        <div>map</div>
    </div>
    <div id="procedure">입주절차
        <div id="procedure1">
            <div class="circle" id="circle1">
               <div >
                <img src="e.jpg">
                <h3>01</h3>
                <p>입주 신청</p>
               </div>
            </div>
            <img class="arrowimg" id="arrow1" src="right-arrow.png">
            <div class="circle" id="circle2">
                <div>
                 <img src="e.jpg">
                 <h3>02</h3>
                 <p>지점투어</p>
                </div>
             </div>
             <img class="arrowimg" id="arrow2" src="right-arrow.png">
             <div class="circle" id="circle3">
                <div>
                 <img src="e.jpg">
                 <h3>03</h3>
                 <p>계약서 작성</p>
                </div>
             </div>
             <img class="arrowimg" id="arrow3" src="right-arrow.png">
             <div class="circle" id="circle4">
                <div>
                 <img src="e.jpg">
                 <h3>04</h3>
                 <p>입주 완료</p>
                </div>
             </div>
        </div>
        <div id="procedure2">
            <div>
                <span>tq</span><br>
                <span>tq</span><br>
                <span>tq</span>
            </div>
            <div>
                <span>tq</span><br>
                <span>tq</span><br>
                <span>tq</span>
            </div>
        </div>

    </div>
    <div id="back">
    	<c:if test="${loginUser.userNo == b.userNo }">
    	<div onclick="location.href='/thrifty/sharehouse/updateHouse?boardNo=${b.boardNo}'" style="cursor:pointer;"><p>수정하기</p></div>
    	</c:if>
        <div onclick="location.href='/thrifty/sharehouse/';" style="cursor:pointer;"><p>전체지점보기</p></div>
    </div>
    </div>

    <div>footer</div>

    <script>
    $(document).ready(function(){
            $('.img-bx').slick({
                dots: true,
                dotsClass: 'dots_custom',
                prevArrow : "<button type='button' class='slick-prev'><img src='left-arrow.png'></button>",
				nextArrow : "<button type='button' class='slick-next'><img src='right-arrow.png'></button>"
                
            });
        });
    
        
        function selectRoom(e){
    		let roomNo = $(e).attr('roomNo');
	        $.ajax({
				url : "/thrifty/sharehouse/selectRoomImg?roomNo="+roomNo,
				dataType : 'json',
				success : function(result){
					console.log(result);
					let imgList = "";
					result.forEach(function(ri){
						imgList += `
							<div>
				            <img src="/thrifty/resources/images/house/\${ri.changeName}">
				        	</div>
				        `;
					})
					$('.img-bx').slick('slickRemove', null, null, true);
					$('.img-bx').html(imgList);
					$('.img-bx').slick('refresh');
				}
			}) 
        }
        
        function tour(e){
        	let hName =$('#sharetitle').text();
        	let rName = $(e).attr('roomName');
        	let roomNo = $(e).attr('roomNo');
        	appform(hName, rName, roomNo);
        }
      </script>
      <jsp:include page="houseModal.jsp"></jsp:include>
<script src="/thrifty/resources/js/house/houseModal.js"></script>
</body>


</html>