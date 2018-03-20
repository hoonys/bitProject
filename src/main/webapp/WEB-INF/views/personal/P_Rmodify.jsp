<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/pheader.jsp"%>
=======

<%@include file="../include/pheader.jsp"%>
>>>>>>> branch 'jbranch3' of https://github.com/LovelyMoonpeel/Recruit.git

<!-- picker : https://lalwr.blogspot.kr/2016/04/bootstrap-datepicker.html -->
<link rel="stylesheet" type="text/css"
	href="/resources/rpjt/datepicker/datepicker3.css" />
<script type="text/javascript"
	src="/resources/rpjt/datepicker/bootstrap-datepicker.js"></script>
<script type="text/javascript"
	src="/resources/rpjt/datepicker/bootstrap-datepicker.kr.js"></script>

<!-- r.추가  -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js">
	
</script>
<!-- Main content -->

<div class="col-md-9">
	<h1>${PUserVO.id}님의이력서수정</h1>
	<form role="form" method="post">
<<<<<<< HEAD
		<!-- r.code 03/15 -->
		<input type="hidden" name="bno" value="${bno}">
		<!-- end of r.code -->
		<input type="hidden" class="form-control" id="userid" name="userid"
			value="${PUserVO.id}"> <input type="hidden"
			class="form-control" id="id" name="id" value="${PUserVO.id}">
		<div class="form-group">
			<label for="pname">이름</label> <input type="text" class="form-control"
				id="pname" name="pname" value="${PUserVO.pname}">
		</div>
		<div class="form-group">
			<label for="img">사진</label>
			<!--  input type="file" class="form-control" id="img" value="${ResumeVO.img}">-->
			<input type="text" class="form-control" id="img"
				value="${ResumeVO.img}">
		</div>
		<div class="form-group">
			<!-- ☆google search : datepicker -->
			<!--   <div class="form-group col-lg-6"> -->
			<label>생년월일</label>
			<div class="input-group date" data-provide="datepicker">
				<input type="text" class="form-control" id="birth" name="birth"
					value="${PUserVO.birth}"> <span class="input-group-addon">
					<i class="glyphicon glyphicon-calendar"></i>
				</span>
			</div>
			<!--  </div>  -->
		</div>
		<div class="form-group">
			<label for="email">이메일</label> <input type="text"
				class="form-control" id="email" name="email"
				value="${PUserVO.email}">
		</div>
		<div class="form-group">
			<label for="teltitle">전화번호(종류)</label> <input type="text"
				class="form-control" id="teltitle" name="teltitle"
				value="${PTelVO.teltitle}">
		</div>
		<div class="form-group">
			<label for="tel">전화번호</label> <input type="text" class="form-control"
				id="tel" name="tel" value="${PTelVO.tel}">
		</div>
		<div class="form-group">
			<label for="webtitle">웹사이트(종류)</label> <input type="text"
				class="form-control" id="webtitle" name="webtitle"
				value="${PWebSiteVO.title}">
		</div>
		<div class="form-group">
			<label for="webadd">웹사이트</label> <input type="text"
				class="form-control" id="webadd" name="webadd"
				value="${PWebSiteVO.webadd}">
		</div>
		<div class="form-group">
			<label for="address">주소</label> <input class="form-control"
				id="address" name="address" value="${ResumeVO.address}"></input>
		</div>
		<div class="form-group">
			<label for="postcode">우편번호</label> <input class="form-control"
				id="postcode" name="postcode" value="${ResumeVO.postcode}"></input>
		</div>

		<!-- r.code 03/13 : 학력/경력 폼 수정-->
		<hr style="border: solid 1px #ccc;">

		<h4>
			<b>학력</b>
		</h4>
		<div id="edu_div"></div>
		<!-- r.code 03/13 : 학력폼을  handlebars(template_edu)로 적용 -->
		<hr style="border: solid 1px #ccc;">
		<h4>
			<b>경력</b>
		</h4>
		<div id="exp_div"></div>
		<!-- r.code 03/13 : 경력폼을  handlebars(template_exp)로 적용 -->
		<hr style="border: solid 1px #ccc;">
		<!-- end of r.code -->

		<div class="form-group">
			<label for="test">자격증명</label> <input class="form-control" id="test"
				name="test" value="${RLicenseVO.test}"></input>
		</div>
		<div class="form-group">
			<label for="publeoffice">발행기관</label> <input class="form-control"
				id="publeoffice" name="publeoffice"
				value="${RLicenseVO.publeoffice}"></input>
		</div>
		<div class="form-group">
			<label for="acquidate">취득일자</label> <input class="form-control"
				id="acquidate" name="acquidate" value="${RLicenseVO.acquidate}"></input>
		</div>
		<div class="form-group">
			<label for="testname">공인인증시험명</label> <input class="form-control"
				id="testname" name="testname" value="${ResumeLanguageVO.test}"></input>
		</div>
		<div class="form-group">
			<label for="score">점수</label> <input class="form-control" id="score"
				name="score" value="${ResumeLanguageVO.score}"></input>
		</div>
		<div class="form-group">
			<label for="lanpubleoffice">발행기관</label> <input class="form-control"
				id="lanpubleoffice" name="lanpubleoffice"
				value="${ResumeLanguageVO.publeoffice}"></input>
		</div>
		<div class="form-group">
			<label for="lanacquidate">취득일자</label> <input class="form-control"
				id="lanacquidate" name="lanacquidate"
				value="${ResumeLanguageVO.acquidate}"></input>
		</div>
		<div class="form-group">
			<label for="jobstateid">구직상태</label> <input class="form-control"
				id="jobstateid" name="jobstateid" value="${ResumeVO.jobstateid}">
		</div>
		<div class="form-group">
			<label for="jobgroupid">희망직종</label> <input class="form-control"
				id="jobgroupid" name="jobgroupid" value="${ResumeVO.jobgroupid}">
		</div>
		<div class="form-group">
			<label for="employstatusid">희망근무형태</label> <input
				class="form-control" id="employstatusid" name="employstatusid"
				value="${ResumeVO.employstatusid}">
		</div>
		<div class="form-group">
			<label for="rgbid">희망근무지(시/도)</label> <input class="form-control"
				id="rgbid" name="rgbid" value="${ResumeVO.rgbid}"></input>
		</div>
		<div class="form-group">
			<label for="rgsid">희망 근무지</label> <input class="form-control"
				id="rgsid" name="rgsid" value="${ResumeVO.rgsid}"></input>
		</div>
		<div class="form-group">
			<label for="salaryid">희망연봉</label> <input class="form-control"
				id="salaryid" name="salaryid" value="${ResumeVO.salaryid}"></input>
		</div>
		<input type="text" class="form-control" id="bno" name="bno"
			value="${ResumeVO.bno}" readonly> <br>
=======
		<br>
			<input type="text" class="form-control" id="bno" name="bno" value="ResumeVO의 bno값 : ${ResumeVO.bno}" readonly> 
			<input type="text" class="form-control" id="userid" name="userid" value="ResumeVO의 userid값  : ${ResumeVO.userid}" readonly> 
			<input type="text" class="form-control" id="id" name="id" value="PUserVO의 id값  : ${PUserVO.id}" readonly>
		<br>	
>>>>>>> branch 'jbranch3' of https://github.com/LovelyMoonpeel/Recruit.git
		<div class="form-group">
			<label for="title">제목</label> <input class="form-control" id="title" name="title" value="${ResumeVO.title}">
		</div>
<<<<<<< HEAD
		<div class="company_info_content">
			<div class="table-responsive">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th class="table-active" scope="row"><label for="pname">이름</label>
							</th>
							<td class="col-sm-4"><input type="text" class="form-control"
								id="pname" name="pname" value="${PUserVO.pname}"></td>
							<th class="table-active" scope="row"><label for="img">사진</label></th>
							<td class="col-sm-4">
								<div id='uploadedList'
									style='width: 127px; height: 152px; border: 1px dotted blue;'>
									<img id='imgsrc' height="150px;" alt="${ResumeVO.img}" />
								</div> <!--  사진 보이는 div  --> <input id='imgsrccheck' type='hidden'
								value="${ResumeVO.img}" /> <!-- db에 있는 file img 이름 받아오는 hidden input -->
								<input type='hidden' id='uploadfilename' name='img'> <!-- db에 올라갈 file img 이름 받아오는 hidden input -->

								<br> <input type='file' id='fileupload'
								accept=".jpg,.jpeg,.png,.gif,.bmp"> <!--파일 업로드 하는 버튼-->

								<input type='hidden' id='xornot' value='0'>
							</td>
						</tr>
						<tr>
							<th class="table-active" scope="row"><label>생년월일</label></th>
							<td>
								<div class="form-group">
									<div class="input-group date" data-provide="datepicker">
										<input type="text" class="form-control" id="" name="birth"
											value="${PUserVO.birth}"> <span
											class="input-group-addon"><i
											class="glyphicon glyphicon-calendar"></i></span>
									</div>
								</div>
							</td>
							<th class="table-active" scope="row"><label for="email">이메일</label></th>
							<td>
								<div class="form-group">
									<input type="text" class="form-control" id="email" name="email"
										value="${PUserVO.email}">
								</div>
							</td>
						</tr>

					</tbody>
				</table>
			</div>
			<!-- ------------------------------------------------------handlebar로 수정1 -->
			<hr style="border: solid 4px #ccc;">
			<h4>
				<b>연락처 목록</b>
			</h4>
			<div id="tel_div"></div>
			<hr style="border: solid 4px #ccc;">

			<!-- a.code 03/19 : 연락처 목록을  handlebars(template_tel)로 적용 -->
			<!-- ------------------------------------------------------handlebar로 수정1 종료 -->
			<!-- ------------------------------------------------------handlebar로 수정2 -->
			<hr style="border: solid 4px #ccc;">
			<h4>
				<b>사이트 목록</b>
			</h4>
			<div id="web_div"></div>
			<hr style="border: solid 4px #ccc;">
			<!-- ------------------------------------------------------handlebar로 수정2 종료 -->
			<!-- ------------------------------------------------------handlebar로 수정3 -->
			<hr style="border: solid 4px #ccc;">
			<h4>
				<b>보유 자격증 목록</b>
			</h4>
			<div id="license_div"></div>
			<hr style="border: solid 4px #ccc;">
			<!-- ------------------------------------------------------handlebar로 수정3 종료 -->
			<!-- ------------------------------------------------------handlebar로 수정4 -->
			<hr style="border: solid 4px #ccc;">
			<h4>
				<b>어학 능력(자격증) 목록</b>
			</h4>
			<div id="language_div"></div>
			<hr style="border: solid 4px #ccc;">
			<!-- ------------------------------------------------------handlebar로 수정4 종료 -->
			<div class="table-responsive">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th class="table-active" colspan="5" scope="row"
								style="text-align: center;">자기소개서</th>
						</tr>
						<tr>
							<td colspan="5" rowspan="2">
								<div class="form-group">
									<textarea class="form-control" rows="13" id="coverletter"
										name="coverletter" style="resize: none;">${ResumeVO.coverletter}</textarea>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<br>
=======
		<div class="form-group">
			<label for="pname">이름</label> <input type="text" class="form-control" id="pname" name="pname" value="${PUserVO.pname}">
		</div>
		<div class="form-group">
			<label for="img">사진</label>
			<input type = 'file' id='fileupload' accept=".jpg,.jpeg,.png,.gif,.bmp">
     		<input type = 'hidden' id='uploadfilename' name = 'img' >
		</div>
		<div class="form-group">
			<!-- ☆google search : datepicker -->
			<!--   <div class="form-group col-lg-6"> -->
			<label>생년월일</label>
			<div class="input-group date" data-provide="datepicker">
				<input type="text" class="form-control" id="" name="birth" value="${PUserVO.birth}"> 
				<span class="input-group-addon">
					<i class="glyphicon glyphicon-calendar"></i>
				</span>
			</div>
			<!--  </div>  -->
		</div>
		<div class="form-group">
			<label for="email">이메일</label> 
			<input type="text" class="form-control" id="email" name="email" value="${PUserVO.email}">
		</div>
		<div class="form-group">
			<label for="teltitle">전화번호(종류)</label> 
			<input type="text" class="form-control" id="teltitle" name="teltitle" value="${PTelVO.teltitle}">
		</div>
		<div class="form-group">
			<label for="tel">전화번호</label> 
			<input type="text" class="form-control" id="tel" name="tel" value="${PTelVO.tel}">
		</div>
		<div class="form-group">
			<label for="webtitle">웹사이트(종류)</label> 
			<input type="text" class="form-control" id="webtitle" name="webtitle" value="${PWebSiteVO.title}">
		</div>
		<div class="form-group">
			<label for="webadd">웹사이트</label> 
			<input type="text" class="form-control" id="webadd" name="webadd" value="${PWebSiteVO.webadd}">
		</div>
		<div class="form-group">
			<label for="address">주소</label> 
			<input class="form-control" id="address" name="address" value="${ResumeVO.address}"></input>
		</div>
		<div class="form-group">
			<label for="postcode">우편번호</label> 
			<input class="form-control"	id="postcode" name="postcode" value="${ResumeVO.postcode}"></input>
		</div>		
		
		<div class="form-group">
			<label for="schoolname">학교명</label> 
			<input class="form-control"	id="schoolname" name="schoolname" value="${ResumeEduVO.schoolname}"></input>
		</div>
		<div class="form-group">
			<label for="major">학과</label> 
			<input class="form-control" id="major" name="major" value="${ResumeEduVO.major}"></input>
		</div>
		<div class="form-group">
			<label for="enterdate">입학일</label> 
			<input class="form-control" id="enterdate" name="enterdate" value="${ResumeEduVO.enterdate}"></input>
		</div>
		<div class="form-group">
			<label for="gradudate">졸업일</label> 
			<input class="form-control" id="gradudate" name="gradudate" value="${ResumeEduVO.gradudate}"></input>
		</div>
		<div class="form-group">
			<label for="edustatus">졸업상태</label> 
			<input class="form-control" id="edustatus" name="edustatus" value="${ResumeEduVO.edustatus}"></input>
		</div>		
		
		<div class="form-group">
			<label for="cname">회사명</label> 
			<input class="form-control" id="cname" name="cname" value="${ResumeCareerVO.cname}"></input>
		</div>
		<div class="form-group">
			<label for="jobdescription">담당업무</label> 
			<input class="form-control" id="jobdescription" name="jobdescription" value="${ResumeCareerVO.jobdescription}"></input>
		</div>
		<div class="form-group">
			<label for="startjob">입사일</label> 
			<input class="form-control" id="startjob" name="startjob" value="${ResumeCareerVO.startjob}"></input>
		</div>
		<div class="form-group">
			<label for="finishjob">퇴사일</label> 
			<input class="form-control" id="finishjob" name="finishjob" value="${ResumeCareerVO.finishjob}"></input>
		</div>
		<div class="form-group">
			<label for="salary">연봉</label> 
			<input class="form-control" id="salary" name="salary" value="${ResumeCareerVO.salary}"></input>
		</div>
				
		<div class="form-group">
			<label for="test">자격증명</label> 
			<input class="form-control" id="test" name="test" value="${RLicenseVO.test}"></input>
		</div>
		<div class="form-group">
			<label for="publeoffice">발행기관</label> 
			<input class="form-control" id="publeoffice" name="publeoffice" value="${RLicenseVO.publeoffice}"></input>
		</div>
		<div class="form-group">
			<label for="acquidate">취득일자</label> 
			<input class="form-control" id="acquidate" name="acquidate" value="${RLicenseVO.acquidate}"></input>
		</div>
		<div class="form-group">
			<label for="testname">공인인증시험명</label> 
			<input class="form-control" id="testname" name="testname" value="${ResumeLanguageVO.test}"></input>
		</div>
		<div class="form-group">
			<label for="score">점수</label> 
			<input class="form-control" id="score" name="score" value="${ResumeLanguageVO.score}"></input>
		</div>
		<div class="form-group">
			<label for="lanpubleoffice">발행기관</label> 
			<input class="form-control" id="lanpubleoffice" name="lanpubleoffice" value="${ResumeLanguageVO.publeoffice}"></input>
		</div>
		<div class="form-group">
			<label for="lanacquidate">취득일자</label> 
			<input class="form-control" id="lanacquidate" name="lanacquidate" value="${ResumeLanguageVO.acquidate}"></input>
		</div>	
						
		<!-- 셀렉션박스만들기!  -->			
		<div class="form-group">
			<label for="jobstateid">구직상태</label> 
			<select class="form-control" name="jobstateid" id="jobstateid"> 
				<c:forEach items="${CodeVOlist }" var="CodeVO">
					<c:if test="${CodeVO.tid == 6 }">
						<option value="${CodeVO.id }" <c:if test="${CodeVO.id == ResumeVO.jobstateid }">selected</c:if> > ${CodeVO.career } </option>
					</c:if>
				</c:forEach>
			</select>
		</div>
      
		<div class="form-group">
		<label for="jobgroupid">희망직종(대분류)</label> 
			<select id="jobGroup" class="form-control" name="jobgroupid">
				<option value="">모집직종</option>
				<c:forEach items="${JobGroupVOlist}" var="JobGroupVO">
					<option value="${JobGroupVO.id}">${JobGroupVO.jobgroup}</option>
				</c:forEach>
			</select> 			
			<label for="jobgroupid">희망직종(소분류)</label> 
			<select id="subjobGroup" class="form-control" name="jobgroupid2">
				<option value="">희망직종(소분류)</option>
			</select>
		</div>    	
      
		<div class="form-group">
		<label for="CodeList4">희망근무형태</label>
			<select class="form-control" name="employstatusid" id="employstatusid"> 
				<c:forEach items="${CodeVOlist }" var="CodeVO">
					<c:if test="${CodeVO.tid == 4 }">
						<option value="${CodeVO.id }" <c:if test="${CodeVO.id == ResumeVO.employstatusid }">selected</c:if> > ${CodeVO.career } </option>
					</c:if>
				</c:forEach>
			</select> 
		</div>

		<div class="form-group">	
		<label for="jobgroupid">희망근무지(시/도)(구현X)</label> 
			<select id="region" class="form-control" name='rgbid'>
				<option value="">희망근무지(시/도)(구현X)</option>
				<c:forEach items="${RegionVOlist}" var="RegionVO">
					<option value="${RegionVO.rgbid}">${RegionVO.rgbname}</option>
				</c:forEach>
			</select>
			<label for="jobgroupid">희망근무지(구현X)</label> 
			<select id="subRegion" class="form-control" name='rgsid'>
				<option value="">희망 근무지</option>
			</select>
		</div>
       
		<div class="form-group">
		<label for="CodeList7">희망연봉</label>
			<select class="form-control" name="salaryid" id="CodeList7">
				<c:forEach items="${CodeVOlist }" var="CodeVO">
					<c:if test="${CodeVO.tid == 7 }">
						<option value="${CodeVO.id }" <c:if test="${CodeVO.id == ResumeVO.salaryid }">selected</c:if> > ${CodeVO.career } </option>
					</c:if>
				</c:forEach>
			</select>
		</div>
      
      <!-- 셀렉션박스만들기 끝!!  -->

		<div class="form-group">
			<label for="coverletter">자기소개서</label>
			<textarea class="form-control" rows="10" id="coverletter" name="coverletter">${ResumeVO.coverletter}</textarea>
		</div>
			
		<button id="btn-success" class="btn btn-success col-md-offset-10" type="submit">등록</button>
		<button id ="write-cancel" class="btn btn-danger" onClick="javascript:self.location='/personal/detail?bno=${ResumeVO.bno}';" type="button">취소</button>
>>>>>>> branch 'jbranch3' of https://github.com/LovelyMoonpeel/Recruit.git
	</form>
	<button id="write-success" class="btn btn-success col-md-offset-10"
		type="submit">등록</button>
	<button id="write-cancel" class="btn btn-danger"
		onClick="javascript:self.location='/personal/detail?bno=${ResumeVO.bno}';"
		type="button">취소</button>
</div>

<script id="template_tel" type="text/x-handlebars-template">
<div class="row">
	<hr style="border: solid 0.5px #ccc;">

	<input type="hidden" class="form-control telid" value="{{telid}}"></input>
	<input type="hidden" class="form-control rid telclass" name="ptelvolist[].rid" value="{{rid}}"></input>
	
	<div class="form-group col-md-3">
		<label for="teltitle">전화번호 (종류)</label> 
		<input class="form-control teltitle telclass" name="ptelvolist[].teltitle" value="{{teltitle}}"></input>
	</div>
	
	<div class="form-group col-md-4">
		<label for="tel">전화번호</label> 
		<input class="form-control tel telclass" name="ptelvolist[].tel" value="{{tel}}"></input>
	</div>
	
	<div class="form-group col-md-2">
		<label>추가/삭제</label>
		<br>
		<button class="btn btn-default btn-sm tel_plus_btn" type="button">
			<i class="glyphicon glyphicon-plus"></i>
		</button>
		<button class="btn btn-default btn-sm tel_minus_btn" type="button"
			onclick="$(this).closest('.row').remove();">
			<i class="glyphicon glyphicon-minus"></i>
		</button>
	</div>
</div>
<!-- end of row -->
</script>

<script id="template_web" type="text/x-handlebars-template">
<div class="row">
	<hr style="border: solid 0.5px #ccc;">
	<input type="hidden" class="form-control webid" value="{{webid}}"></input>
	<input type="hidden" class="form-control webclass rid" name="pwebsitesvolist[].rid" value="{{rid}}"></input>

	<div class="form-group col-md-3">
		<label for="webtitle">사이트 (종류)</label> 
		<input class="form-control webtitle webclass" name= "pwebsitesvolist[].webtitle" value="{{webtitle}}"> </input>
	</div>

	<div class="form-group col-md-4">
		<label for="webadd">주소</label> 
		<input class="form-control webadd webclass" name="pwebsitesvolist[].webadd" value="{{webadd}}"></input>
	</div>

	<div class="form-group col-md-2">
		<label>추가/삭제</label><br />
		<button class="btn btn-default btn-sm web_plus_btn" type="button">
			<i class="glyphicon glyphicon-plus"></i>
		</button>
		<button class="btn btn-default btn-sm web_minus_btn" type="button"
			onclick="$(this).closest('.row').remove();">
			<i class="glyphicon glyphicon-minus"></i>
		</button>
	</div>

</div>
<!-- end of row -->
</script>
<script id="template_license" type="text/x-handlebars-template">
<div class="row">
	<hr style="border: solid 0.5px #ccc;">
	<input type="hidden" class="form-control licenseid" value="{{licenseid}}"></input>
	<input type="hidden" class="form-control rid licenseclass" name="rlicensevolist[].rid" value="{{rid}}"></input>
	
	<div class="form-group col-md-3">
		<label for="licensename">자격증명</label> 
		<input class="form-control licensename licenseclass" name="rlicensevolist[].licensename" value="{{licensename}}"></input>
	</div>

	<div class="form-group col-md-4">
		<label for="publeoffice">발행기관</label> 
		<input class="form-control publeoffice licenseclass" name="rlicensevolist[].publeoffice" value="{{publeoffice}}"></input>
	</div>
	
	<div class="form-group col-md-2">
		<label for="acquidate">취득일자</label> 
		<div class="input-group date" data-provide="datepicker">
			<input type="text" class="form-control acquidate licenseclass"  name="rlicensevolist[].acquidate" value="{{acquidate}}">
			<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		</div>
	</div>

	<div class="form-group col-md-2">
		<label>추가/삭제</label><br/>
		<button class="btn btn-default btn-sm license_plus_btn" type="button">
			<i class="glyphicon glyphicon-plus"></i>
		</button>
		<button class="btn btn-default btn-sm license_minus_btn" type="button"
			onclick="$(this).closest('.row').remove();">
			<i class="glyphicon glyphicon-minus"></i>
		</button>
	</div>

</div>
<!-- end of row -->
</script>

<script id="template_language" type="text/x-handlebars-template">
<div class="row">
	<hr style="border: solid 0.5px #ccc;">
	<input type="hidden" class="form-control resumelangid" value="{{resumelangid}}"></input>
	<input type="hidden" class="form-control rid langclass" name="rlangvolist[].rid" value="{{rid}}"></input>
	
	<div class="form-group col-md-2">
		<label for="lid">언어 선택</label>
		<select class="form-control lid langclass" name="rlangvolist[].lid" value="{{lid}}"></input>
			{{#select lid}}
			<option value="102" selected>선택</option>
			<option value="52">영어</option>
			<option value="53">일본어</option>
			<option value="54">중국어</option>
			<option value="55">그리스어</option>
			<option value="56">네덜란드어</option>
			<option value="57">노르웨이어</option>
			<option value="58">독일어</option>
			<option value="59">러시아어</option>
			<option value="60">루마니아어</option>
			<option value="61">마인어</option>
			<option value="62">몽골어</option>
			<option value="63">미얀마어</option>
			<option value="64">베트남어</option>
			<option value="65">세르비아어</option>
			<option value="66">스웨덴어</option>
			<option value="67">스페인어</option>
			<option value="68">슬로바키아어</option>
			<option value="69">아랍어</option>
			<option value="70">유고어</option>
			<option value="71">이란(페르시아어)</option>
			<option value="72">이탈리아어</option>
			<option value="73">체코어</option>
			<option value="74">태국어</option>
			<option value="75">터키어</option>
			<option value="76">포르투갈어</option>
			<option value="77">폴란드어</option>
			<option value="78">프랑스어</option>
			<option value="79">헝가리어</option>
			<option value="80">히브리어</option>
			<option value="81">히브리어</option>
			<option value="82">그 외</option>
			{{/select}}
		</select>
	</div>

	<div class="form-group col-md-2">
		<label for="test">공인인증시험명</label> 
		<input class="form-control test langclass" name="rlangvolist[].test" value="{{test}}"></input>
	</div>
	
	<div class="form-group col-md-2">
		<label for="score">점수</label> 
		<input class="form-control score langclass" name="rlangvolist[].score" value="{{score}}"></input>
	</div>

	<div class="form-group col-md-2">
		<label for="acquidate">취득일자</label> 
		<div class="input-group date" data-provide="datepicker">
				<input type="text" class="form-control acquidate langclass"  name="rlangvolist[].acquidate" value="{{acquidate}}">
				<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		</div>
	</div>

	<div class="form-group col-md-2">
		<label>추가/삭제</label><br/>
		<button class="btn btn-default btn-sm lang_plus_btn" type="button">
			<i class="glyphicon glyphicon-plus"></i>
		</button>
		<button class="btn btn-default btn-sm lang_minus_btn" type="button"
			onclick="$(this).closest('.row').remove();">
			<i class="glyphicon glyphicon-minus"></i>
		</button>
	</div>
</div>
<!-- end of row -->
</script>


<!--  -------------------------------------------------------------------------- -->

<script id="template_edu" type="text/x-handlebars-template">
<div class="row">
	<hr style="border: solid 0.5px #ccc;">
	<div class="form-group col-md-3">
		<input class="edu" type="hidden" name="listEdu[].resumenum" value="{{resumenum}}">
		<label>입학일</label>
		<div class="input-group date" data-provide="datepicker">
			<input type="text" class="form-control enterdate edu"
				name="listEdu[].enterdate" value="{{enterdate}}"> <span
				class="input-group-addon"> </span>
		</div>
		<!-- <input class="form-control" id="enterdate" name="enterdate" -->
		<!-- value="${ResumeEduVO.enterdate}"></input> -->
	</div>
	<div class="form-group col-md-3">
		<label>졸업일</label>
		<div class="input-group date" data-provide="datepicker">
			<input type="text" class="form-control gradudate edu"
				name="listEdu[].gradudate" value="{{gradudate}}"> <span
				class="input-group-addon"> </span>
		</div>
		<!-- <input class="form-control" id="gradudate" name="gradudate" -->
		<!-- value="${ResumeEduVO.gradudate}"></input> -->
	</div>
	<div class="form-group col-md-5">
		<label for="schoolname">학교명</label> <input class="form-control schoolname edu"
			name="listEdu[].schoolname" value="{{schoolname}}"></input>
	</div>
	<div class="form-group col-md-4">
		<label for="major">학과</label> <input class="form-control major edu"
			name="listEdu[].major" value="{{major}}"></input>
	</div>
	<div class="form-group col-md-3">
		<label for="edustatus">졸업상태</label>
		<select class="form-control edustatus edu" name="listEdu[].edustatus">
			{{#select edustatus}}
			<option value="0" selected>선택</option>
			<option value="15">재학</option>
			<option value="16">졸업</option>
			<option value="17">중퇴</option>
			<option value="18">졸업예정</option>
			<option value="19">휴학</option>
			{{/select}}
		</select>
		<!-- <input class="form-control" id="edustatus" name="edustatus" -->
		<!-- value="${ResumeEduVO.edustatus}"></input> -->
	</div>
	<div class="form-group col-md-2">
		<label>추가/삭제</label><br />
		<button class="btn btn-default edu_plus_btn" type="button">
			<i class="glyphicon glyphicon-plus"></i>
		</button>
		<button class="btn btn-default edu_minus_btn" type="button"
			onclick="$(this).closest('.row').remove();">
			<i class="glyphicon glyphicon-minus"></i>
		</button>
	</div>
</div>
<!-- end of row -->
</script>

<script id="template_exp" type="text/x-handlebars-template">
<div class="row">
	<input class="career" type="hidden" name="listCareer[].resumenum" value="{{resumenum}}">
	<hr style="border: solid 0.5px #ccc;">
	<div class="form-group col-md-3">
		<label>입사일</label>
		<div class="input-group date" data-provide="datepicker">
			<input type="text" class="form-control career" name="listCareer[].startjob"
				value="{{startjob}}"> <span
				class="input-group-addon"> </span>
		</div>
		<!-- <input class="form-control" name="startjob" -->
		<!-- value="${ResumeCareerVO.startjob}"></input> -->
	</div>
	<div class="form-group col-md-3">
		<label>퇴사일</label>
		<div class="input-group date" data-provide="datepicker">
			<input type="text" class="form-control career"
				name="listCareer[].finishjob" value="{{finishjob}}"> <span
				class="input-group-addon"> </span>
		</div>
		<!-- <input class="form-control" name="finishjob" -->
		<!-- value="${ResumeCareerVO.finishjob}"></input> -->
	</div>
	<div class="form-group col-md-5">
		<label for="cname">회사명</label>
		<input class="form-control career" name="listCareer[].cname" value="{{cname}}"></input>
	</div>
	<div class="form-group col-md-4">
		<label for="jobdescription">담당업무</label>
		<input class="form-control career" name="listCareer[].jobdescription" value="{{jobdescription}}">
		</input>
	</div>
	<div class="form-group col-md-3">
		<label for="salary">연봉</label>
		<select class="form-control career" name="listCareer[].salary">
			{{#select salary}}
			<option value="0" selected>선택</option>
			<option value="34">~ 2,000</option>
			<option value="35">2,000 ~ 2,500</option>
			<option value="36">2,500 ~ 3,000</option>
			<option value="37">3,000 ~ 3,500</option>
			<option value="38">3,500 ~ 4,000</option>
			<option value="39">4,000 ~ 4,500</option>
			<option value="40">4,500 ~ 5,000</option>
			<option value="41">5,000 ~ 6,000</option>
			<option value="42">6,000 ~ 6,500</option>
			<option value="43">6,500 ~ 7,000</option>
			<option value="44">7,000 ~ 7,500</option>
			<option value="45">7,500 ~ 8,000</option>
			<option value="46">8,000 ~ 8,500</option>
			<option value="47">8,500 ~ 9,000</option>
			<option value="48">9,000 ~ 9,500</option>
			<option value="49">9,500 ~ 10,000</option>
			<option value="50">10,000 ~ 10,500</option>
			<option value="51">10,500 ~</option>
			{{/select}}
		</select>
		<!-- <input class="form-control" id="salary" name="salary" -->
		<!-- value="${ResumeCareerVO.salary}"></input> -->
	</div>
	<div class="form-group col-md-2">
		<label>추가/삭제</label><br />
		<button class="btn btn-default exp_plus_btn" type="button">
			<i class="glyphicon glyphicon-plus"></i>
		</button>
		<button class="btn btn-default exp_minus_btn" type="button"
			onclick="$(this).closest('.row').remove();">
			<i class="glyphicon glyphicon-minus"></i>
		</button>
	</div>
</div>
<!-- end of row -->
</script>

<script type='text/javascript'>
<<<<<<< HEAD
=======
   $(document).ready(function() {
>>>>>>> branch 'jbranch3' of https://github.com/LovelyMoonpeel/Recruit.git

<<<<<<< HEAD
$(document).ready(function() {
		
		// r.code 03/14 Handlebars Helper 등록
		Handlebars.registerHelper('select', function( value, options ){
	        var $el = $('<select />').html( options.fn(this) );
	        $el.find('[value="' + value + '"]').attr({'selected':'selected'});
	        return $el.html();
	    });

		var formObj = $("form[role = 'form']");
		var xornot = document.getElementById('xornot');
=======
      var formObj = $("form[role = 'form']");
      var xornot = document.getElementById('xornot');
      
      $(function() {
         $('.input-group.date').datepicker({
            calendarWeeks : false,
            todayHighlight : true,
            autoclose : true,
            format : "yyyy-mm-dd",
            language : "kr"
         });
      });
>>>>>>> branch 'jbranch3' of https://github.com/LovelyMoonpeel/Recruit.git

<<<<<<< HEAD
		function datepick() {
			$('.input-group.date').datepicker({
			calendarWeeks : false,
			todayHighlight : true,
			autoclose : true,
			format : "yyyy-mm-dd",
			language : "kr"
			});
		}
		
		$(function() {
			$('.input-group.date').datepicker({
				calendarWeeks : false,
				todayHighlight : true,
				autoclose : true,
				format : "yyyy-mm-dd",
				language : "kr"
			});
		});
=======
      console.log('${PWebSitelist}');
      var imgsrccheck = ('#imgsrccheck');
      
      if($('#imgsrccheck').val()!=""){
         console.log(" val이 널값아님");
         $('#imgsrc').attr("src", 'displayFile?fileName=${ResumeVO.img}');
         var str = "";
         str = 
              "<a href='displayFile?fileName=${ResumeVO.img}' target='_blank'; return false;'>원본 확인"
              +"</a>"
              +"<small data-src=${ResumeVO.img}>X</small>";
           $("#uploadedList").append(str); 
           console.log("uploadedlist에 x버튼 추가");
      }else{
         console.log(" val이 널값이다");
         $('#imgsrc').attr("src", 'displayFile?fileName=/NoImage.png');
         $('#imgsrc').attr("alt", '사진이 등록되지 않았습니다.');
      }
     ////////////img uploadedList start//////////////////////////////////////////////////////////
     // var upload = document.getElementsByTagName('input')[0];
      var upload = document.getElementById('fileupload');
      var uploadedList = document.getElementById('uploadedList');
     
      if (typeof window.FileReader === 'undefined') {
       console.log("window.FileReader 'fail'");
      } else {
       console.log("window.FileReader 'success'");
      }  //fileLeader라는 프로그램 로딩이 제대로 되지 않았을 때
      
      upload.onchange = function (e) {
      
          var file = upload.files[0];
          var reader = new FileReader();
          //p542다시 보기
          $("#uploadedList").empty();
          //reader.onload start
          reader.onload = function (event) {
             var image = new Image();
             image.src = event.target.result;
              
             uploadedList.innerHTML = '';
              // img.width = 200;
             image.height = 150;
             uploadedList.appendChild(image);
          };//reader.onload end
       //img uploadedList에 추가 하는거 end //////////////////////////////////////////////////////////
       
       //img 서버에 저장되도록 ajax start //////////////////////////////////////////////////////////  
             event.preventDefault();
             //var files = event.originalEvent.dataTransfer.files;
             
             console.log("file name");
             console.log(file);
             
             var formData = new FormData();
             
             formData.append("file", file);
             
             $.ajax({
                url:'uploadAjax',
                data: formData,
                dataType : 'text',
                processData : false,
                contentType : false,
                type : 'POST',
                success : function(data){
                    //alert(data);
                     var str = "";
                    
                      console.log(data);
                      
                       str = 
                          "<a href='displayFile?fileName="+getImageLink(data)+"' target='_blank'; return false;'>원본 확인"
                          +"</a>"
                          +"<small data-src="+data+">X</small>";
   
                    $("#uploadedList").append(str); 
                    document.getElementById('uploadfilename').value = getImageLink(data);
                 }//success : function(data){ end
               });//ajax end
         //});//filedrop end
       console.log(file);
       reader.readAsDataURL(file);
      };//upload change end
      
      $("#uploadedList").on("click", "small", function(event){
         event.preventDefault();
         var that = $(this);
         
         console.log($(this));
         
         fileName = $(this).attr("data-src"); //전역변수로 설정하기
         var front = fileName.substring(0, 12);
         var end = fileName.substring(12);
         
         fileName = front + "s_" + end;
         
         $("#fileupload").val("");
         $("#uploadedList").empty();
         //$("#fileupload").remove();
         console.log("img File appended deleted");
         
         $("#xornot").val("1");
         
       /*    $.ajax({
            url:"deleteFile",
            type:"post",
            //data : {fileName:$(this).attr("data-src")},
            data: {fileName:fileName},
            dataType:"text",
            succss:function(result){
               if(result=='deleted'){
                  console.log("img File on server deleted");
                  that.parent("div").remove();
               }
            }
         }); 
           */
      });
      
      function getOriginalName(fileName){
            var idx = fileName.indexOf("_")+1;
            return fileName.substr(idx);
         }
      function getImageLink(fileName){
            var front = fileName.substr(0,12);
            var end = fileName.substr(14);
            
            return front + end;
         }
      
      $("#btn-success").on("click", function() {
         if($("#xornot").val()==0){
            console.log("xornot.val()==0");
            console.log("사진 삭제 안함");
            
            formObj.attr("action", "/personal/Rmodify");
            formObj.attr("method", "post");
            formObj.submit();
            
         }else if($("#xornot").val()==1){
            //삭제 시키기 ajax 실행 후에 Rmodify로 넘어가기
            console.log("xornot.val()==1");
            console.log("사진 삭제함");      
            $.ajax({
               url:"deleteFile",
               type:"post",
               //data : {fileName:$(this).attr("data-src")},
               data: {fileName:fileName},
               dataType:"text",
               succss:function(result){
                  if(result=='deleted'){
                     console.log("img File on server deleted");
                     that.parent("div").remove();
                     
                     /* console.log("ajax뒤로");
                     formObj.attr("action", "/personal/Rmodify");
                     formObj.attr("method", "post");
                     formObj.submit(); */
                  }
               }
            });
            formObj.attr("action", "/personal/Rmodify");
            formObj.attr("method", "post");
            formObj.submit();
>>>>>>> branch 'jbranch3' of https://github.com/LovelyMoonpeel/Recruit.git

<<<<<<< HEAD


		$("#btn-success").on("click", function() {
			formObj.attr("action", "/personal/Rmodify");
			formObj.attr("method", "post");
			numberingListr();
			formObj.submit();
		});

		console.log('${PWebSitelist}');
		var imgsrccheck = ('#imgsrccheck');
		
 		 if($('#imgsrccheck').val()!=""){
			console.log(" val이 널값아님");
			$('#imgsrc').attr("src", 'displayFile?fileName=${ResumeVO.img}');
			var str = "";
			str = 
				  "<a href='displayFile?fileName=${ResumeVO.img}' target='_blank'; return false;'>원본 확인"
				  +"</a>"
				  +"<small data-src=${ResumeVO.img}>X</small>";
			  $("#uploadedList").append(str); 
			  console.log("uploadedlist에 x버튼 추가");
		}else{
			console.log(" val이 널값이다");
			$('#imgsrc').attr("src", 'displayFile?fileName=/NoImage.png');
			$('#imgsrc').attr("alt", '사진이 등록되지 않았습니다.');
		}  
	  ////////////img uploadedList start//////////////////////////////////////////////////////////
 	  // var upload = document.getElementsByTagName('input')[0];
	   var upload = document.getElementById('fileupload');
	   var uploadedList = document.getElementById('uploadedList');
	  
		if (typeof window.FileReader === 'undefined') {
		 console.log("window.FileReader 'fail'");
		} else {
		 console.log("window.FileReader 'success'");
		}  //fileLeader라는 프로그램 로딩이 제대로 되지 않았을 때
		  
	 	  upload.onchange = function (e) {
		
			 var file = upload.files[0];
			 var reader = new FileReader();
			 //p542다시 보기
			 $("#uploadedList").empty();
			 //reader.onload start
			 reader.onload = function (event) {
				 var image = new Image();
				 image.src = event.target.result;
				  
				 uploadedList.innerHTML = '';
				  // img.width = 200;
				 image.height = 150;
				 uploadedList.appendChild(image);
			 };//reader.onload end
		 //img uploadedList에 추가 하는거 end //////////////////////////////////////////////////////////
		 
		 //img 서버에 저장되도록 ajax start //////////////////////////////////////////////////////////  
				 event.preventDefault();
				 //var files = event.originalEvent.dataTransfer.files;
				 
				 console.log("file name");
				 console.log(file);
				 
				 var formData = new FormData();
				 
				 formData.append("file", file);
				 
				 $.ajax({
					 url:'uploadAjax',
					 data: formData,
					 dataType : 'text',
					 processData : false,
					 contentType : false,
					 type : 'POST',
					 success : function(data){
						   var str = "";
						  
						 	console.log(data);
						 	
							  str = 
								  "<a href='displayFile?fileName="+getImageLink(data)+"' target='_blank'; return false;'>원본 확인"
								  +"</a>"
								  +"<small data-src="+data+">X</small>";
	
						  $("#uploadedList").append(str); 
						  document.getElementById('uploadfilename').value = getImageLink(data);
					  }//success : function(data){ end
		 		  });//ajax end
			//});//filedrop end
		 console.log(file);
		 reader.readAsDataURL(file);
		};//upload change end   
		
  		$("#uploadedList").on("click", "small", function(event){
			event.preventDefault();
			var that = $(this);
			
			console.log($(this));
			
			fileName = $(this).attr("data-src"); //전역변수로 설정하기
			var front = fileName.substring(0, 12);
			var end = fileName.substring(12);
			
			fileName = front + "s_" + end;
			
			$("#fileupload").val("");
			$("#uploadedList").empty();
			//$("#fileupload").remove();
			console.log("img File appended deleted");
			console.log("fileName"+fileName);
			
			$("#xornot").val("1");
			console.log($("#xornot").val());
		}); 
		
		function getOriginalName(fileName){
	      	var idx = fileName.indexOf("_")+1;
	      	return fileName.substr(idx);
	      }
		function getImageLink(fileName){
	      	var front = fileName.substr(0,12);
	      	var end = fileName.substr(14);
	      	
	      	return front + end;
	      } 
		 
		$("#write-success").on("click", function() {
			
			console.log("write-success clicked");
			
			  if($("#xornot").val()==0){
				console.log("xornot.val()==0");
				console.log("사진 삭제 안함");
				
				formObj.attr("action", "/personal/Rmodify");
				formObj.attr("method", "post");
				numberingList();
				console.log("사진 삭제 안한 상태에서 submit직전");
				formObj.submit();
				
			}else if($("#xornot").val()==1){
				//삭제 시키기 ajax 실행 후에 Rmodify로 넘어가기
				console.log("xornot.val()==1");
				console.log("사진 삭제함");		
				$.ajax({
					url:"deleteFile",
					type:"post",
					//data : {fileName:$(this).attr("data-src")},
					data: {fileName:fileName},
					dataType:"text",
					succss:function(result){
						if(result=='deleted'){
							console.log("img File on server deleted");
							that.parent("div").remove();
						}
					}
				}); 
				
			 	console.log("사진 삭제한 상태에서 submit직전");
				formObj.attr("action", "/personal/Rmodify");
				formObj.attr("method", "post");
				numberingList();
				formObj.submit(); 
			} 
		});

		
		// r.code 03/14 edu, career 객체번호 붙힘
		function numberingListr() {
			$(".edu").each(function(index){
				var num = 6;
				var name = $(this).attr("name");
				name = name.substring(0, 8) + parseInt(index/num) + name.substring(8);
				$(this).attr("name", name);
				console.log($(this).attr("name"));
			});
				
			$(".career").each(function(index){
				var num = 6;
				var name = $(this).attr("name");
				name = name.substring(0, 11) + parseInt(index/num) + name.substring(11);
				$(this).attr("name", name);
				console.log($(this).attr("name"));
			});
		}

		// edu 추가버튼 이벤트
		$("#edu_div").on("click", ".edu_plus_btn", function(){
			var item = {
					resumenum : ${bno}
				};
			add_edu(item);
		});

		// exp 추가버튼 이벤트
		$("#exp_div").on("click", ".exp_plus_btn", function(){
			var item = {
					resumenum : ${bno}
				};
			add_exp(item);
		});
				

		// add_edu(); // edu 공란 추가
		// add_exp(); // exp 공란 추가

		function add_edu(item) {
			var source_edu = $("#template_edu").html();
			var template_edu = Handlebars.compile(source_edu);
			$("#edu_div").append(template_edu(item));
			datepick();
		}

		function add_exp(item) {
			var source_exp = $("#template_exp").html();
			var template_exp = Handlebars.compile(source_exp);
			$("#exp_div").append(template_exp(item));
			datepick();
		}
		
		function edu_list() {
			var len = (${eduVOlist.size()});
			<c:forEach items="${eduVOlist}" var="eduVO">
				var item = {
						resumenum : ${eduVO.resumenum},
						schoolname : "${eduVO.schoolname}",
						major : "${eduVO.major}",
						enterdate : "${eduVO.enterdate}",
						gradudate : "${eduVO.gradudate}",
						edustatus : ${eduVO.edustatus}
					};
				add_edu(item);
			</c:forEach>
		}
		
		function exp_list() {
			var len = (${careerVOList.size()});
			<c:forEach items="${careerVOList}" var="careerVO">
				var item = {
						resumenum : ${careerVO.resumenum},
						cname : "${careerVO.cname}",
						jobdescription : "${careerVO.jobdescription}",
						startjob : "${careerVO.startjob}",
						finishjob : "${careerVO.finishjob}",
						salary : ${careerVO.salary}
					};
				add_exp(item);
			</c:forEach>
		}		
		edu_list();
		exp_list();
	});
    
		function numberingList() {
 			$(".telclass").each(function(index){
				var num = 3;
				var name = $(this).attr("name");
				name = name.substring(0, 11) + parseInt(index/num) + name.substring(11);
				$(this).attr("name", name);
				console.log($(this).attr("name"));
			});
 			 $(".webclass").each(function(index){
				var num = 3;
				var name = $(this).attr("name");
				name = name.substring(0, 16) + parseInt(index/num) + name.substring(16);
				$(this).attr("name", name);
				console.log($(this).attr("name"));
			}); 
 			 $(".langclass").each(function(index){
 				var num = 6;
 				var name = $(this).attr("name");
 				name = name.substring(0, 12) + parseInt(index/num) + name.substring(12);
 				$(this).attr("name", name);
 				console.log($(this).attr("name"));
 			}); 
 			$(".licenseclass").each(function(index){
 				var num = 4;
 				var name = $(this).attr("name");
 				name = name.substring(0, 15) + parseInt(index/num) + name.substring(15);
 				$(this).attr("name", name);
 				console.log($(this).attr("name"));
 			}); 
		}
		
		// tel 추가버튼 이벤트
		$("#tel_div").on("click", ".tel_plus_btn", function(){
			var item = {
					rid : ${ResumeVO.bno}
				};
			add_tel(item);
		});
		
		function add_tel(item) {
			var source_tel = $("#template_tel").html();
			var template_tel = Handlebars.compile(source_tel);
			$("#tel_div").append(template_tel(item));
		}
		function tel_list() {
			var len = (${PTelVOlist.size()});
			
			<c:forEach items="${PTelVOlist}" var="PTelVO">
				var item = {
						telid : ${PTelVO.telid},
						rid : ${PTelVO.rid},
						teltitle : "${PTelVO.teltitle}", 
						tel : "${PTelVO.tel}" 
				};
				add_tel(item);
			</c:forEach>
		}
		
		//웹 추가 버튼 이벤트
		$("#web_div").on("click", ".web_plus_btn", function(){
			var item = {
					rid : ${ResumeVO.bno}
				};
			add_web(item);
		});
		
		function add_web(item) {
			var source_web = $("#template_web").html();
			var template_web = Handlebars.compile(source_web);
			$("#web_div").append(template_web(item));
		}
		function web_list() {
			var len = (${PWebSiteVOlist.size()});
			
			<c:forEach items="${PWebSiteVOlist}" var="PWebSiteVO">
				var item = {
						
						webid : ${PWebSiteVO.webid},
						rid : ${PWebSiteVO.rid},
						webtitle : "${PWebSiteVO.webtitle}", 
						webadd : "${PWebSiteVO.webadd}"
				};
				add_web(item);
			</c:forEach>
		}
		//자격증 추가 버튼 이벤트
		$("#license_div").on("click", ".license_plus_btn", function(){
			var item = {
					rid : ${ResumeVO.bno}
				};
			add_license(item);
		});
		
		function add_license(item) {
			var source_license = $("#template_license").html();
			var template_license = Handlebars.compile(source_license);
			$("#license_div").append(template_license(item));
		}
		function license_list() {
			var len = (${RLicenselist.size()});
			
			<c:forEach items="${RLicenselist}" var="RLicenseVO">
				var item = {
						
						licenseid : ${RLicenseVO.licenseid},
						rid : ${RLicenseVO.rid},
						licensename : "${RLicenseVO.licensename}", 
						publeoffice : "${RLicenseVO.publeoffice}",
						acquidate : "${RLicenseVO.acquidate}"
				};
				add_license(item);
			</c:forEach>
		}
		//언어 추가 버튼 이벤트
		$("#language_div").on("click", ".lang_plus_btn", function(){
			var item = {
					rid : ${ResumeVO.bno}
				};
			add_language(item);
		});
		
		function add_language(item) {
			var source_language = $("#template_language").html();
			var template_language = Handlebars.compile(source_language);
			$("#language_div").append(template_language(item));
		}
		function language_list() {
			var len = (${RLanguagelist.size()});
			
			<c:forEach items="${RLanguagelist}" var="ResumeLanguageVO">
				var item = {
						resumelangid : ${ResumeLanguageVO.resumelangid},
						rid : ${ResumeLanguageVO.rid},
						lid : ${ResumeLanguageVO.lid},
						test : "${ResumeLanguageVO.test}", 
						score : "${ResumeLanguageVO.score}",
						publeoffice : "${ResumeLanguageVO.publeoffice}",
						acquidate : "${ResumeLanguageVO.acquidate}"
				};
				
				add_language(item);
			</c:forEach>
		}
		
		tel_list();
		web_list();
		license_list();
		language_list(); 
});
=======
         }
      });
   });
   
   $("#region").change(function() {
		var largeNum = $(this).val();
		SubRegion(largeNum)
	})
	$("#jobGroup").change(function() {
		var largeNum = $(this).val();
		SubJobGroup(largeNum);
	})
	function SubJobGroup(largeNum) {
		$.getJSON("/companyAjax/jobGroup/" + largeNum, function(data) {
			var str = "";
			$(data).each(
					function() {
						str += "<option name='jobgruopid' value="+this.id+">"
								+ this.jobgroup + "</option>";
					});
			$("#subjobGroup").html(str);
		})
	}
	function SubRegion(largeNum) {
		$.getJSON("/companyAjax/region/" + largeNum, function(data) {
			var str = "";
			$(data).each(
					function() {
						str += "<option name='rgsid' value="+this.rgsid+">" + this.rgsname
								+ "</option>";
					});
			$("#subRegion").html(str);
		})
	}
>>>>>>> branch 'jbranch3' of https://github.com/LovelyMoonpeel/Recruit.git
</script>
<%@include file="../include/cfooter.jsp"%>