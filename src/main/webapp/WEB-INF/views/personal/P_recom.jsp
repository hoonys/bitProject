<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/pheader.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- 이거 넣으면 알림창이 안뜬다.<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="/resources/personal/css/bootstrap-slider.css" rel="stylesheet">
<script src="/resources/personal/js/bootstrap-slider.js"></script>

 <style>
.material-icons:hover {
   color: #56c0e0;
}
#slider_job .slider-selection {/*바 색상*/
	background: #56c0e0;
}
#slider_region .slider-selection {
	background: #56c0e0;
}
#slider_employstatus .slider-selection {
	/*background: #c0c6d3; 예쁜회색*/
	background: #56c0e0;
}
#slider_levelofeducation .slider-selection {
	background: #56c0e0;
}
#slider_lastcareer .slider-selection {
	background:#56c0e0;
}
.slider.slider-horizontal{
	 width:90%;
 }

.slider-handle {
	line-height: 20px;
	font-size: 20px;
	content: ''; /*unicode star character*/
	background:rgba(34,34,34,0.8); 
 }

</style>
<!-- Main content -->
<form role="form">
		<input type='hidden' id='userid' name='id' value="${PUserVO.id}">
</form>
<!--  스크랩한채용공고 페이지 -->
<div class="col-md-9" style="padding-top:20px;">
	<h1 class="ci_name">${PUserVO.pname}</h1><h4>님에게 추천드리는 채용 공고</h4>
	<br>
	
	<div style='width:100%; border: 1px solid #c0c6d3; padding: 30px;'>
		<ul style="list-style-type: circle;">
			<li>[${PUserVO.pname}]님이 공개한 이력서와 항목 중요도를 기반으로 추천된 채용공고입니다.</li>
			<li>이력서는 기본적으로 비공개로 저장되며, 이력서 관리 페이지에서 하나의 이력서만 공개로 설정이 가능합니다.</li>
			<li>이력서를 <b>공개</b>하신 회원님께 해당 이력서를 기반으로  <b>추천 공고 서비스</b>를 무료로 제공합니다.</li>
			<li>공개된 이력서에서 <b>[희망 구직정보 - 희망 근무지, 희망직종], 최종학력, 최종경력</b>을 입력하시면<br>더 정확한 추천 공고 서비스를 이용하실 수 있습니다.<br></li>
			<li>다른 채용공고를 추천받고 싶을 경우 항목 중요도를 조절해 다른 채용공고들을 추천받을 수 있습니다.</li>
		</ul>
		<br>※ RecruIT 채용정보 등록 규정상 부적합한 이력서로 판별된 경우, 별도 통보 없이 이력서가 비공개/삭제 처리될 수 있습니다.<br>
	</div>
	
	<div class="container"
		style="width:100%; border: 1px solid #c0c6d3; padding: 10px 20px 20px 20px; margin-top: 30px; margin-bottom: 10px; background-color:#dfe2e9;">
		<h4>
			<i class="fa fa-bar-chart" style="font-size: 36px;"></i>&nbsp;&nbsp;
			항목 중요도 조절
		</h4>
		<ul>
			<li><p>추천 받을 때, 중요하게 생각하는 요소에 따라 각 점수를 1~5 사이에서 조절해주세요.</p></li>
		</ul>

		<div class="container col-md-8" style="width: 100%; background-color: #dfe2e9;">
			<i id="icon_job" class="material-icons" 
			style="cursor: pointer;" onclick="add_job();">business</i>
			&emsp;&emsp;&emsp;<input id="slider_job" type="text" data-provide="slider"
			data-slider-min="0"	data-slider-max="5" data-slider-step="1"
			data-slider-value="2" style="float:right; width:85%;"/>
		</div>
		<span style="line-height:200%">직무 중요도 : <span id="val_job">${PreferenceVO.pref_job}</span></span>
		
 		<br>
		<div class="container" style="width: 100%; background-color: #dfe2e9;">
			<i id="icon_region" class="material-icons" style="cursor: pointer;"
				onclick="add_region();">location_on</i>
			&emsp;&emsp;&emsp;<input id="slider_region" type="text" data-provide="slider"
			data-slider-min="0" data-slider-max="5" data-slider-step="1"
			data-slider-value="5" style="float:right; width:85%;" />
		</div>
		<span style="line-height:200%">지역 중요도 : <span id="val_region">${PreferenceVO.pref_region}</span></span>

		<br>
		<div class="container" style="width: 100%; background-color: #dfe2e9;">
			<i id="icon_employstatus" class="material-icons"
				style="cursor: pointer;" onclick="add_employstatus();">people</i>
			&emsp;&emsp;&emsp;<input id="slider_employstatus" type="text" data-provide="slider"
			data-slider-min="0" data-slider-max="5" data-slider-step="1"
			data-slider-value="5" style="float:right; width:85%;" />
		</div>
		<span style="line-height:200%">근무형태 중요도 : <span id="val_employstatus">${PreferenceVO.pref_employstatus}</span></span>
		<br>
		
		<div class="container" style="width: 100%; background-color: #dfe2e9;">
			<i id="icon_levelofeducation" class="material-icons"
				style="cursor: pointer;" onclick="add_levelofeducation();">school</i>
			&emsp;&emsp;&emsp;<input id="slider_levelofeducation" type="text" data-provide="slider"
				data-slider-min="0" data-slider-max="5" data-slider-step="1"
				data-slider-value="3" style="float:right; width:85%;"/>
		</div>
		<span style="line-height:200%">학력 중요도 : <span id="val_levelofeducation">${PreferenceVO.pref_levelofeducation}</span></span>
		
		<div class="container" style="width: 100%; background-color: #dfe2e9;">
			<i id="icon_lastcareer" class="material-icons"
				style="cursor: pointer;" onclick="add_lastcareer();">work</i>
			&emsp;&emsp;&emsp;<input id="slider_lastcareer" type="text" data-provide="slider"
			data-slider-min="0" data-slider-max="5" data-slider-step="1"
			data-slider-value="3" style="float:right; width:85%;"/>
		</div>
		<span style="line-height:200%">경력 중요도 : <span id="val_lastcareer">${PreferenceVO.pref_lastcareer}</span></span>
		<br> 
	</div><!-- container end -->


	<div class="container" style="width:100%; margin-top:10px; padding: 20px 0px 20px 0px;">
		<div class="table-responsive">
			<table class="table table-bordered">
				<tr>
					<th style="text-align: center; vertical-align:middle; background-color:#dfe2e9;">이력서 번호</th>
					<th style="text-align: center; vertical-align:middle; background-color:#dfe2e9;">이력서 제목</th>
					<th style="text-align: center; vertical-align:middle; background-color:#dfe2e9;">직무1v</th>
					<th style="text-align: center; vertical-align:middle; background-color:#dfe2e9;">직무2v</th>
					<th style="text-align: center; vertical-align:middle; background-color:#dfe2e9;">지역1w1</th>
					<th style="text-align: center; vertical-align:middle; background-color:#dfe2e9;">지역2w2</th>
					<th style="text-align: center; vertical-align:middle; background-color:#dfe2e9;">근무형태 x</th>
					<th style="text-align: center; vertical-align:middle; background-color:#dfe2e9;">학력 y</th>
					<th style="text-align: center; vertical-align:middle; background-color:#dfe2e9;">경력 z</th>
				</tr>
				
				<tr>
					<td style="text-align: center; vertical-align:middle;">${MyResume.bno}</td>
					<td style="text-align: center; vertical-align:middle;">${MyResume.title}</td>
					<td style="text-align: center; vertical-align:middle;">${MyResume.v1}</td>
					<td style="text-align: center; vertical-align:middle;">${MyResume.v2}</td>
					<td style="text-align: center; vertical-align:middle;">${MyResume.w1}</td>
					<td style="text-align: center; vertical-align:middle;">${MyResume.w2}</td>
					<td style="text-align: center; vertical-align:middle;">${MyResume.x}</td>
					<td style="text-align: center; vertical-align:middle;">${MyResume.y}</td>
					<td style="text-align: center; vertical-align:middle;">${MyResume.z}</td>
				</tr>
			</table>
		</div>
	</div>
	
	<div class="container" style="width: 100%; padding: 20px 0px 0px 0px;">
		<div class="table-responsive">
			<table class="table table-bordered">
				<tr>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">공고 번호</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">회사명</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">공고 제목</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">직무1v</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">직무2v</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">지역1w1</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">지역2w2</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">근무형태 x</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">학력 y</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb; ">경력 z</th>
					<th style="text-align: center; vertical-align:middle; background-color:#bbdefb;">관리</th>
				</tr>
				
				<c:choose>
				
				<c:when test="${CRecruitVOList eq null}">
					<tr>
						<td style="text-align: center; vertical-align:middle;"></td>
						<td style="text-align: center; vertical-align:middle;"></td>
						<td style="text-align: center; vertical-align:middle;">공개된 이력서가 없어 추천이 불가능합니다.<br>추천 서비스를 이용하려면 이력서를 공개로 설정해주세요. </td>
						<td style="text-align: center; vertical-align:middle;"></td>
						<td style="text-align: center; vertical-align:middle;"></td>
						<td style="text-align: center; vertical-align:middle;"></td>
						<td style="text-align: center; vertical-align:middle;"><span class="glyphicon glyphicon-star"></span></td>
					</tr>
				</c:when>
				
				<c:otherwise>
					<c:forEach items="${CRecruitVOList}" var="CoordinateVO" varStatus="status">
						<tr>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.bno}</td>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.cid}</td>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.title}</td>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.v1}</td>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.v2}</td>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.w1}</td>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.w2}</td>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.x}</td>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.y}</td>
							<td style="text-align: center; vertical-align:middle;">${CoordinateVO.z}</td>
							<td style="text-align: center; vertical-align:middle;"><span class="glyphicon glyphicon-star"></span></td>
						</tr>
					</c:forEach>
				</c:otherwise>
				</c:choose>
			</table>
		</div>
	</div>

<script>

$(document).ready(function (){

	$("#val_job").html(${PreferenceVO.pref_job});
	$("#slider_job").attr("data-slider-value",(${PreferenceVO.pref_job}));
	
	$("#val_region").html(${PreferenceVO.pref_region});
	$("#slider_region").attr("data-slider-value",(${PreferenceVO.pref_region}));
	
	$("#val_employstatus").html(${PreferenceVO.pref_employstatus});
	$("#slider_employstatus").attr("data-slider-value",(${PreferenceVO.pref_employstatus}));
	
	$("#val_levelofeducation").html(${PreferenceVO.pref_levelofeducation});
	$("#slider_levelofeducation").attr("data-slider-value",(${PreferenceVO.pref_levelofeducation}));
	
	$("#val_lastcareer").html(${PreferenceVO.pref_lastcareer});
	$("#slider_lastcareer").attr("data-slider-value",(${PreferenceVO.pref_lastcareer})); 	

	
	$("#slider_job").slider({	
		id: "slider_job" ,
		formatter: function(value) {
			return value;
		}
	}).on('change', function(){
      var newvalue = parseInt($(this).val());
      var oldvalue = parseInt($("#val_job").text());
      
     // var val_job = ${PreferenceVO.pref_job};
      var val_region = ${PreferenceVO.pref_region};
      var val_employstatus = ${PreferenceVO.pref_employstatus};
      var val_levelofeducation = ${PreferenceVO.pref_levelofeducation};
      var val_lastcareer = ${PreferenceVO.pref_lastcareer};
      
      if(newvalue!=oldvalue){
    	 $("#val_job").text(newvalue);
    	 
    	 $.ajax({
       	  type:'POST',
       	  url: '/personal/recom_modify',
       	  headers:{
       		  "Content-Type" : "application/json; charset=UTF-8",
       		  "X-HTTP-Method-Override" : "POST"
       	  },
       	  dataType: 'text',
       	  data:JSON.stringify({
				pref_job : newvalue,
				pref_region : val_region,
				pref_employstatus : val_employstatus,
				pref_levelofeducation : val_levelofeducation,
				pref_lastcareer : val_lastcareer
       	  }),
       	  success : function(result){
       		  if(result=='success'){
       			  location.href="/personal/recom";
       		  }
       	  }//success end
         });//ajax end
      }//if end
    });
	
	$("#slider_region").slider({ 
		id: "slider_region",
		formatter: function(value) {
			return value;
		}
	}).on('change', function(){
      var newvalue = parseInt($(this).val());
      var oldvalue = parseInt($("#val_region").text());
      
      var val_job = ${PreferenceVO.pref_job};
      //var val_region = ${PreferenceVO.pref_region};
      var val_employstatus = ${PreferenceVO.pref_employstatus};
      var val_levelofeducation = ${PreferenceVO.pref_levelofeducation};
      var val_lastcareer = ${PreferenceVO.pref_lastcareer};
      
      if(newvalue!=oldvalue){
    	 $("#val_region").text(newvalue);

    	 $.ajax({
       	  type:'POST',
       	  url: '/personal/recom_modify',
       	  headers:{
       		  "Content-Type" : "application/json; charset=UTF-8",
       		  "X-HTTP-Method-Override" : "POST"
       	  },
       	  dataType: 'text',
       	  data:JSON.stringify({
				pref_job : val_job,
				pref_region : newvalue,
				pref_employstatus : val_employstatus,
				pref_levelofeducation : val_levelofeducation,
				pref_lastcareer : val_lastcareer
       	  }),
       	  success : function(result){
       		  if(result=='success'){
       			location.href="/personal/recom";
       		  }
       	  }//success end
         });//ajax end
      }//if end
    });
	
	$("#slider_employstatus").slider({	
		id: "slider_employstatus",
	}).on('change', function(){
      var newvalue = parseInt($(this).val());
      var oldvalue = parseInt($("#val_employstatus").text());
      
      var val_job = ${PreferenceVO.pref_job};
      var val_region = ${PreferenceVO.pref_region};
      //var val_employstatus = ${PreferenceVO.pref_employstatus};
      var val_levelofeducation = ${PreferenceVO.pref_levelofeducation};
      var val_lastcareer = ${PreferenceVO.pref_lastcareer};
      
      if(newvalue!=oldvalue){
    	 $("#val_employstatus").text(newvalue);
    	 
    	 $.ajax({
       	  type:'POST',
       	  url: '/personal/recom_modify',
       	  headers:{
       		  "Content-Type" : "application/json; charset=UTF-8",
       		  "X-HTTP-Method-Override" : "POST"
       	  },
       	  dataType: 'text',
       	  data:JSON.stringify({
       		
       		pref_job : val_job,
	       	pref_region : val_region,
	 		pref_employstatus : newvalue,
	 		pref_levelofeducation : val_levelofeducation,
	 		pref_lastcareer : val_lastcareer
 		  
       	  }),
       	  success : function(result){
       		  if(result=='success'){
       			  location.href="/personal/recom";
       		  }
       	  }//success end
         });//ajax end
      }//if end
    });

	$("#slider_levelofeducation").slider({ 
		id: "slider_levelofeducation",
		formatter: function(value) {
			return value;
		}
	}).on('change', function(){
      var newvalue = parseInt($(this).val());
      var oldvalue = parseInt($("#val_levelofeducation").text());
      
      var val_job = ${PreferenceVO.pref_job};
      var val_region = ${PreferenceVO.pref_region};
      var val_employstatus = ${PreferenceVO.pref_employstatus};
      //var val_levelofeducation = ${PreferenceVO.pref_levelofeducation};
      var val_lastcareer = ${PreferenceVO.pref_lastcareer};
      
      if(newvalue!=oldvalue){
    	 $("#val_levelofeducation").text(newvalue);
    	 
    	 $.ajax({
       	  type:'POST',
       	  url: '/personal/recom_modify',
       	  headers:{
       		  "Content-Type" : "application/json; charset=UTF-8",
       		  "X-HTTP-Method-Override" : "POST"
       	  },
       	  dataType: 'text',
       	  data:JSON.stringify({
       		pref_job : val_job,
       		pref_region : val_region,
	 		pref_employstatus : val_employstatus,
	 		pref_levelofeducation : newvalue,
	 		pref_lastcareer : val_lastcareer
       	  }),
       	  success : function(result){
       		  if(result=='success'){
       			  location.href="/personal/recom";
       		  }
       	  }//success end
         });//ajax end
      }//if end
    });

	$("#slider_lastcareer").slider({	
		id: "slider_lastcareer",
		formatter: function(value) {
			return value;
		}
	}).on('change', function(){
      var newvalue = parseInt($(this).val());
      var oldvalue = parseInt($("#val_lastcareer").text());
      
      var val_job = ${PreferenceVO.pref_job};
      var val_region = ${PreferenceVO.pref_region};
      var val_employstatus = ${PreferenceVO.pref_employstatus};
      var val_levelofeducation = ${PreferenceVO.pref_levelofeducation};
      //var val_lastcareer = ${PreferenceVO.pref_lastcareer};
      
      if(newvalue!=oldvalue){
    	 $("#val_lastcareer").text(newvalue);
    	 
    	 $.ajax({
          	  type:'POST',
          	  url: '/personal/recom_modify',
          	  headers:{
          		  "Content-Type" : "application/json; charset=UTF-8",
          		  "X-HTTP-Method-Override" : "POST"
          	  },
          	  dataType: 'text',
          	  data:JSON.stringify({
           		pref_job : val_job,
           		pref_region : val_region,
           		pref_employstatus : val_employstatus,
           		pref_levelofeducation : val_levelofeducation,
           		pref_lastcareer : newvalue
          	  }),
          	  success : function(result){
          		  if(result=='success'){
          			  location.href="/personal/recom";
          		  }
          	  }//success end
            });//ajax end
      }//if end
    });
	
});//document ready end

/* function add_job() {
	var bar_job = document.getElementById("bar_job");
	//회색 #c0c6d3;
	//하늘색 #56c0e0;
	
	$("#icon_job").css("color", "#56c0e0");
	$("#icon_region").css("color", "#333333");
	$("#icon_employstatus").css("color", "#333333");
	$("#icon_levelofeducation").css("color", "#333333");
	$("#icon_lastcareer").css("color", "#333333");
	
}
function add_region() {
	var bar_region = document.getElementById("bar_region");
	
	
	$("#icon_job").css("color", "#333333");
	$("#icon_region").css("color", "#56c0e0");
	$("#icon_employstatus").css("color", "#333333");
	$("#icon_levelofeducation").css("color", "#333333");
	$("#icon_lastcareer").css("color", "#333333");
	
}
function add_employstatus() {
	var bar_employstatus = document.getElementById("bar_employstatus");
	
	$("#icon_job").css("color", "#333333");
	$("#icon_region").css("color", "#333333");
	$("#icon_employstatus").css("color", "#56c0e0");
	$("#icon_evelofeducation").css("color", "#333333");
	$("#icon_lastcareer").css("color", "#333333");
	
}
function add_levelofeducation() {
	var bar_levelofeducation = document.getElementById("bar_levelofeducation");
	
	$("#icon_job").css("color", "#333333");
	$("#icon_region").css("color", "#333333");
	$("#icon_employstatus").css("color", "#333333");
	$("#icon_levelofeducation").css("color", "#56c0e0");
	$("#icon_lastcareer").css("color", "#333333");
	
}
function add_lastcareer() {
	var bar_lastcareer = document.getElementById("bar_lastcareer");
	
	$("#icon_job").css("color", "#333333");
	$("#icon_region").css("color", "#333333");
	$("#icon_employstatus").css("color", "#333333");
	$("#icon_levelofeducation").css("color", "#333333");
	$("#icon_lastcareer").css("color", "#56c0e0");
	
} */
</script>
</div>
<%@include file="../include/cfooter.jsp"%>
