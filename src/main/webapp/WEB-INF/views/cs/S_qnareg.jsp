<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../include/sheader.jsp"%>

<!-- Q&A 등록 페이지 -->
<!-- <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main"> -->
<div class="container col-md-9">



	<h1>Q&A</h1>	
	<form role="form" method="POST">
		<table class="table table-bordered">
			<tr>
				<th>제목</th>
			</tr>
			<tr>
				<td><input class="form-control" type="text" name="title" id="title"
					value="${CsqnaVO.title}" autofocus required></td>
			</tr>
			<tr>
				<th>아이디</th>
			</tr>
			<tr>
				<td><input required class="form-control" type="text" name="user" id="user"
					value="${id}" readonly>
					<input type="hidden" name="userid" value="${id}">			
				</td>
			</tr>
			<tr>
				<th>게시글 비밀번호</th>
			</tr>
			<tr>
				<td><input class="form-control" type="password" name="bpw" id="bpw"
					value="${CsqnaVO.bpw}"></td>
			</tr>
			<tr>
				<th>게시글 비밀번호 확인</th>
			</tr>
			<tr>
				<td><input class="form-control" type="password" name="bpwc" id="bpwc">
				<span id="bpwchk"></span></td>
			</tr>
			<tr>
				<th>내용</th>
			</tr>
			<tr>
				<td><textarea class="form-control" name="content" id="content" rows="10" required style="resize: none;">${CsfaqVO.content}</textarea>
				</td>
			</tr>
		</table>
	<input type="submit" class="btn btn-warning" value="등록">
	<input type="button" class="btn btn-primary" value="취소">
	</form>
	
</div>
<!-- //관리자정보수정 페이지 -->

<!-- 버튼에 대한 스크립트  -->
<script type="text/javascript">

var formObj = $("form[role='form']");

console.log(formObj);

$(".btn-warning").on("click", function(){
	var title = $('#title').val();
	var bpw = $('#bpw').val();
	var bpwc = $('#bpwc').val();
	var content = $('#content').val();	
	
	if(title != "" && content != ""){
		if(bpw == bpwc){
			if(confirm("등록할랭?")){
				formObj.attr("action", "/cs/S_qnareg");
				formObj.submit();
			}
		}else{
			alert("비밀번호를 확인해주세요.");
		}
	}else{
		alert("제목이나 내용을 입력해주세요.");
	}
});

$(".btn-primary").on("click", function(){
	self.location = "/cs/qna";
});

</script>
<!-- //버튼에 대한 스크립트  -->

<!-- 비밀번호 일치 여부  -->
<script>
	/* keyup을 통해 비밀번호가 맞는지 확인하는 작업 */

	var bpwchk = $('#bpwchk');  /* 비밀번호 일치여부 받아 줄 텍스트 */
	
	$('#bpwc').keyup(function(){
		if($('#bpwc').val() != ""){
			if($('#bpw').val() == $('#bpwc').val()){
				document.getElementById("bpwchk").innerHTML = "비밀번호가 일치합니다.";
				bpwchk.attr("style", "color:blue")
			}else{
				document.getElementById("bpwchk").innerHTML = "비밀번호가 일치하지 않습니다.";
				bpwchk.attr("style", "color:red")
			}
		}
	})
	
	$('#bpw').keyup(function(){
		if($('#bpw').val() != ""){
			if($('#bpw').val() == $('#bpwc').val()){
				document.getElementById("bpwchk").innerHTML = "비밀번호가 일치합니다.";
				bpwchk.attr("style", "color:blue")
			}else{
				document.getElementById("bpwchk").innerHTML = "비밀번호가 일치하지 않습니다.";
				bpwchk.attr("style", "color:red")
			}			
		}
	})
</script>
<!-- //비밀번호 일치 여부  -->

<%@include file="../include/cfooter.jsp"%>