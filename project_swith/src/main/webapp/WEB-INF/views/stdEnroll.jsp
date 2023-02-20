<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  
-->
<link rel="stylesheet" href="css/bootstrap.min.jh.css" type="text/css">
<body_1>
<!-- MAIN -->
<div id="main">
  <!-- wrapper-main -->
  <div class="wrapper">
    <!-- 
    filter
    <ul class="tags">
      <li><span>Categories</span></li>
      <li><a href="#">All</a></li>
      <li class="active"><a href="#"> Photography</a></li>
      <li><a href="#">Logo</a></li>
      <li><a href="#">Webdesign</a></li>
      <li><a href="#">Marketing</a></li>
      <li><a href="#">Gaming</a></li>
      <li><a href="#">Coding</a></li>
    </ul>
    ENDS filter
    search
    <div class="top-search">
      <form  method="get" id="searchform" action="#">
        <div>
          <input type="text" value="Search..." name="s" id="s" onFocus="defaultInput(this,'Search...')" onBlur="clearInput(this,'Search...')">
          <input type="submit" id="searchsubmit" value=" ">
        </div>
      </form>
    </div>
    ENDS search
    -->
    <h1>스터디 등록</h1>
	
	<hr style="margin-top: 0px; margin-bottom: 0px;">
	
	<!-- 알림 -->
	<!-- sockJS -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	
	<div class="container group-register">
	    <form role="form" action="<%=request.getContextPath() %>/stdEnroll" method="post">
	    	
	        <h4 style="margin-top : 3rem; margin-bottom : 3rem;">모임정보입력</h4>
	        <!-- 
	        <div class="form-group">
	            <label for="memberId" hidden="">아이디</label>
	            <input type="text" class="form-control" id="memberId" name="memberId" required="" value="test1@test.com" readonly="readonly" hidden="">
	        </div>
			 -->
	        <div class="form-group">
	            <label for="name">모임명</label>
	            <input type="text" class="form-control" name="study_name" id="study_name" required="">
	        </div>
	
	        <div class="form-group">
	            <label for="category">장소</label>
	            <select class="form-control" id="study_place" name="study_place" required="">
	                <option value="select">-------------</option>
	                <option value="GRCA01">스터디카페?</option>
	                <option value="GRCA02">카페?</option>
	            </select>
	        </div>
	
	        <div class="form-group">
	            <label for="description">간단소개</label>
	            <textarea class="form-control" rows="2" id="study_info" name=study_info required=""></textarea>
	        </div>
	        	
	        <div class="form-group">
	            <label for="info">모임정보 - 모임에 대해 자세히 적어주세요(운영계획, 시간, 장소, 공부할 책제목 등)</label>
	            <textarea class="form-control" rows="20" id="study_detailInfo" name="study_detailInfo" required=""><c:out value="${group.info}"/></textarea>
	        </div>
	
			<div class="form-group">
	            <label for="category">스터디 생성일</label>
	            <input type="date" class="form-control" name="study_create_date" id="study_create_date" required="" placehorder="">
	        </div>
	        <div class="form-group">
	            <label for="category">스터디 종료일</label>
	            <input type="date" class="form-control" name="study_end_date" id="study_end_date" required="" placehorder="">
	        </div>
	        
	        <div class="form-group">
	        <div class="form-row">
	            <div class="col">
	            <label for="sido">시/도</label>
	            <select class="form-control" id="sido" name="sido">
	                <option value="select">선택하세요</option>
	                <option value="seoul">서울특별시</option>
	                <option value="kyung">경기도</option>
	            </select>
	            </div>
	            <div class="col">
	                <label for="sigungu">시/군/구</label>
	                <select class="form-control" id="sigungu" name="area_code">
	                    <option value="select">-------------</option>
	                    <option value="11030">강북구</option>
	                    <option value="11030">강북구</option>
	                    <option value="11030">강북구</option>
	                    <option value="11030">강북구</option>
	                    <option value="11030">강북구</option>
	                    <option value="11030">강북구</option>
	                    <option value="11030">강북구</option>
	                    <option value="11030">강북구</option>
	                    <option value="11031">부천시</option>
	                    <option value="11031">부천시</option>
	                    <option value="11031">부천시</option>
	                    <option value="11031">부천시</option>
	                    <option value="11031">부천시</option>
	                    <option value="11031">부천시</option>
	                    <option value="11031">부천시</option>
	                </select>
	            </div>
	        </div>
	        </div>
	        
	        <script>
	        $("select#sido").on("change", function(){
	        	var token = $("meta[name='_csrf']").attr("content");
	        	var header = $("meta[name='_csrf_header']").attr("content");
	        	var $areaCode = $("select#area_code");
	        	$.ajax({
	        		url : "<%=request.getContextPath()%>/stdEnroll",
	        		, type : "post",
	        		, data : { sido : $(this).val()}
	        		, dataType : "json",
	        		, success : function(data){
	        			if(data != null){
	        				let addAreaCode = "<option value='select'>선택하세요</option>";
	        				for(var i=0; i < data.length; i++){
	        					addAreaCode += "<option value='" + data[i].area_code+"'>" + data[i].sigungu_name+"</option>";
	        				}
	        				$areaCode.html(addAreaCode);
	        			} else{
	        				$areaCode.html("<option value='select'>-------</option>");
	        			}
	        		}
	        		, error : function(request, status, errordata){
	        			alert("error code:" + request.status + "/n"
	        					+ "message : " + request.responseText + "\n"
	        					+ "error :" +errordata + "\n");
	        		}
	        	});
	        });
	        </script>
	
<!-- 	        <p>대표사진</p>
	        <div class="form-group">
	            <div class="uploadDiv">
	            <div class="custom-file">
	            <label for="uploadFile" class="custom-file-label">없음</label>
	            <input type="file" class="form-control custom-file-input" id="uploadFile" name="uploadFile" accept="resources/img/*">
	            <div class="uploadResult">
	                <ul>
	
	                </ul>
	            </div>
	            </div>
	            </div>
	        </div> -->
	
	        <div class="form-group">
	            <label for="tags">태그</label>
	            <select class="form-control" id="tags" name="study_tag">
	                <option value="select">-------------</option>
	                <option value="GRTG01">조용한공부</option>
	                <option value="GRTG02">재밌는수업</option>
	                <option value="GRTG03">KH정보교육원</option>
	                <option value="GRTG04">자바반</option>
	                <option value="GRTG05">P반</option>
	                <option value="GRTG06">자상한강사님</option>
	                <option value="GRTG07">파이널 2팀</option>
	            </select>
	        </div>
	        <script type="text/javascript">
			 CKEDITOR.replace( 'info', {//해당 이름으로 된 textarea에 에디터를 적용
		         width:'100%',
		         height:'400px',
		         filebrowserUploadUrl:  '<c:url value="/fileupload.do" />?${_csrf.parameterName}=${_csrf.token}'
		    });
			</script>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			 <!-- <input type="hidden" name="_csrf" value="5e458943-9ea5-4962-8875-d8542255e5f5"> -->
	        <button type="submit" class="btn btn-primary">등록</button>
	        <button type="reset" class="btn btn-secondary">목록</button>
	        
	    </form>
		<br>
		<br>
	</div>
	
	<!-- 유효성검사 -->
	<script>
	    function validation() {
	        if($('#study_place > option:selected').val() == "select") {
	            alert("카테고리를 선택해주세요");
	            return false;
	        }
	
	        if(getByte($('#study_name').val()) == "") {
	            alert("모임명을 입력해주세요");
	            return false;
	        } else if(getByte($('#study_name').val()) > 70) {
	            alert("모임명을 20자 이하로 작성해주세요");
	            return false;
	        }
	
	        if(getByte($('#study_info').val()) == "") {
	            alert("간단소개를 입력해주세요");
	            return false;
	        } else if(getByte($('#study_info').val()) > 300) {
	            alert("간단소개를 90자 이내로 작성해주세요")
	            return false;
	        }
	
	        if(getByte(CKEDITOR.instances['info'].getData()) == "") { 
	            alert("모임정보를 입력해주세요");
	            return false;
	        } else if(getByte( CKEDITOR.instances['info'].getData()) > 4000) {
	            alert("모임 정보가 너무 깁니다");
	            return false;
	        }
	
	        if($('#sido > option:selected').val() == "select") {
	            alert("지역을 입력해주세요");
	            return false;
	        }
	
	        if($('#sigungu > option:selected').val() == "select") {
	            alert("지역을 입력해주세요");
	            return false;
	        }
	
	        if($('#tags > option:selected').val() == "select") {
	            alert("태그를 입력해주세요");
	            return false;
	        }
	        
	       
	
	        return true;
	    }
	
	    function getByte(str) {
	    	console.log("getByte콘솔----------");
	        let aa = 0;
	        for (let i=0; i<str.length; ++i) {
	            (str.charCodeAt(i) > 127) ? aa += 3 : aa++ ;
	        }
	        return byte;
	    }
	</script>
	
	<script>
	
	    $(document).ready(function(e) {
	
	        let formObj = $("form[role='form']");
	        let regex = new RegExp("(.*?)\.(png|jpg|jpeg|bmp|gif)$");
	        let maxSize = 5242880;
	        let csrfHeaderName = "X-XSRF-TOKEN";
	        let csrfTokenValue = "5e458943-9ea5-4962-8875-d8542255e5f5";
	
	        $("button[type='submit']").on("click", function(e) {
	
	            e.preventDefault();
	
	            console.log("submit clicked");
	
	            if(!validation()) {
	                return;
	            }
	
	            //$("#info").val($("#info").val().replace(/(?:\r\n|\r|\n)/g, '<br/>'));
	            //console.log($("#info").val());
	
	            let str = "";
	
	            $('.uploadResult ul li').each(function(i, obj) {
	
	                let jobj = $(obj);
	
	                console.dir(jobj);
	
	                str += "<input type='hidden' name='attach.fileName' value='"+jobj.data("filename")+"'>";
	                str += "<input type='hidden' name='attach.uuid' value='"+jobj.data("uuid")+"'>";
	                str += "<input type='hidden' name='attach.uploadPath' value='"+jobj.data("path")+"'>";
	                str += "<input type='hidden' name='attach.fileType' value='"+jobj.data("type")+"'>";
	
	            })
	
	            formObj.append(str).submit();
	        })
	
	        $("button[type='reset']").on("click", function(e) {
	            e.preventDefault();
	
	            window.location.href = "/group/list";
	            //formObj.attr("action", '/group/list').attr('method', 'get');
	            //formObj.submit();
	        })
	
	        $("input[type='file']").change(function(e) {
	
	            let formData = new FormData();
	
	            let inputFile = $("input[name='uploadFile']");
	
	            let file = inputFile[0].files[0];
	
	            console.log(file);
	
	            //let files = inputFile[0].files;
	
	            if(!checkExtension(file.name, file.size)) {
	                return false;
	            }
	
	            formData.append("uploadFile", file);
	
	            // for(let i=0; i<files.length; i++) {
	            //
	            //     if(!checkExtension(files[i].name, files[i].size)) {
	            //         return false;
	            //     }
	            //     formData.append("uploadFile", files[i]);
	            // }
	
	            $.ajax({
	                url: '/uploadAjaxAction',
	                processData: false,
	                contentType: false,
	                beforeSend: function(xhr) {
	                    xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	                },
	                data: formData,
	                type: 'POST',
	                dataType:'json',
	                success: function(result) {
	                    console.log(">>>>>>>" + result);
	                    showUploadResult(result);
	                },
	                error: function (result) {
	                    console.log(">>>>>>>" + result);
	                }
	            })
	
	        })
	
	        $(".uploadResult").on("click", "button", function(e) {
	            console.log("delete file");
	
	            let targetFile = $(this).data("file");
	            let type = $(this).data("type");
	
	            let targetLI = $(this).closest("li");
	
	            $('.custom-file-label').html("없음");
	
	            $.ajax({
	                url: '/deleteFile',
	                data: {fileName: targetFile, type:type},
	                beforeSend: function(xhr) {
	                    xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	                },
	                dataType:'text',
	                type: 'POST',
	                success: function(result) {
	                    alert(result);
	                    targetLI.remove();
	                }
	            })
	        })
	
	        function checkExtension(fileName, fileSize) {
	
	            if(fileSize >= maxSize) {
	                alert("파일 사이즈 초과");
	                return false;
	            }
	
	            if(!regex.test(fileName)) {
	                alert("해당 종류의 파일은 업로드 할 수 없습니다.");
	                return false;
	            }
	            return true;
	        }
	
	        function showUploadResult(uploadResult) {
	
	            if(!uploadResult) {
	                return;
	            }
	
	            let uploadUL = $('.uploadResult ul');
	
	            let str = "";
	
	            $(uploadResult).each(function(i, obj) {
	
	                if(obj.image) {
	                    let fileCallPath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
	                    str += "<li data-path='"+obj.uploadPath+"'";
	                    str += "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"'data-type='"+obj.image+"'";
	                    str += "><div>";
	                    //str += "<span> "+obj.fileName+"</span>";
	                    str += "<img src='/display?fileName="+fileCallPath+"'>";
	                    str += "<button type='button' class='btn btn-dark btn-circle' data-file=\'"+fileCallPath+"\' data-type='image'>X</button>";
	                    str += "</div>";
	                    str += "</li>";
	                } else {
	                    return;
	                }
	            })
	
	            uploadUL.html(str);
	        }
	
	    })
	</script>
	
	
	<!-- 시/군/구를 시/도에 맞게 변경-->
	<script>
	     $(document).ready(function() {
	        $('#sido').on("change", function() {
	            let options = $('#sido').val();
	
	           /*  for(let i=1; i<options.length; i++) {
	                options[i].setAttribute("hidden", "hidden");
	            }
	
	            if($('#sido option:selected').val() == "LODO01") {
	                // 서울특별시일때
	                for(let i=0; i<options.length; i++) {
	                    if(options[i].value.substr(0,4) == "LOGU") {
	                        options[i].removeAttribute("hidden");
	                    }
	                }
	            }else if($('#sido option:selected').val() == "LODO02") {
	                // 경기도일때
	                for(let i=0; i<options.length; i++) {
	                    if(options[i].value.substr(0,4) == "LOSI") {
	                        options[i].removeAttribute("hidden");
	                    }
	                }
	            } */
	        })
	    }) 
	</script>
<!-- 	<script>  대표사진
	    // Add the following code if you want the name of the file appear on select
	    $(".custom-file-input").on("change", function() {
	        var fileName = $(this).val().split("\\").pop();
	        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	    });
	</script> -->
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
  </div>
  <!-- ENDS wrapper-main -->
</div>
<!-- ENDS MAIN -->
</body_1>
