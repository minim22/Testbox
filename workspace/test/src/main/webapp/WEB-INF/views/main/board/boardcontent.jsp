<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bootstrap css연결 -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<!-- jquery 연결 -->
<script src="http://code.jquery.com/jquery-1.6.2.min.js" type="text/javascript"></script>
<title>상세페이지</title>
<style type="text/css">
body {
	line-height: 2em;
	font-family: "맑은 고딕";
}

ul, li {
	list-style: none;
	text-align: center;
	padding: 0;
	margin: 0;
}

#content {
	margin: 0 auto;
	width: 800px;
	margin-top:10px;
}

#board2 {
	width:800px;
	border-bottom: 1px solid #d1d1d1;
	border-top: 2px solid #8ec8d5;
}

#board2 .board_th02 {
	border-bottom: 1px solid #d1d1d1;
	color: #565655;
	background: #f0fbfd;
	font: bold 12px Gulim, Dotum, verdana, tahoam, arial;
	line-height: 27px;
	padding: 0 10px;
}

#board2 strong {
	font-weight: bold;
	padding-left: 10px;
	padding-right: 30px;
	display: inline-block;
}

#board2 td {
	padding: 0 10px;
}

#board2 .info_field {
	color: #848484;
	font: bold 11px Dotum, verdana, tahoma, arial;
	border-bottom: 1px solid #d1d1d1;
	padding-left: 15px;
	line-height: 27px;
}

#board2 .info_field li {
	display: inline-block;
	float: left;
}

#board2 .info_field strong {
	font-weight: 100;
	padding-left: 15px;
	padding-right: 30px;
	display: inline-block;
}

#board2 .file_field a, .board2 .file_field a:link, .board2 .file_field a:hover,
	.board2 .file_field a:visited {
	color: #0f88e8;
	text-decoration: underline;
	font-weight: 100;
}

#board2 .info_field img {
	vertical-align: middle;
}

#board2 li.file_field {
	float: right;
}

#board2 .title_viewBoard {
	padding-left: 15px;
}

#board3 {
	width:800px;
	border-bottom: 1px solid #d1d1d1;
	border-top: 1px solid #D5D5D5;
}

#board3 .board_th02 {
	border-bottom: 1px solid #d1d1d1;
	color: #565655;
	background: #F6F6F6;
	font: bold 12px Gulim, Dotum, verdana, tahoam, arial;
	line-height: 27px;
	padding: 0 10px;
}

#board3 strong {
	font-weight: bold;
	padding-left: 10px;
	padding-right: 30px;
	display: inline-block;
}

#board3 td {
	padding: 0 10px;
}

#board3 .info_field {
	color: #848484;
	font: bold 11px Dotum, verdana, tahoma, arial;
	border-bottom: 1px solid #d1d1d1;
	padding-left: 15px;
	line-height: 27px;
}

#board3 .info_field li {
	display: inline-block;
	float: left;
}

#board3 .info_field strong {
	font-weight: 100;
	padding-left: 15px;
	padding-right: 30px;
	display: inline-block;
}

#board3 .file_field a, .board3 .file_field a:link, .board3 .file_field a:hover,
	.board3 .file_field a:visited {
	color: #0f88e8;
	text-decoration: underline;
	font-weight: 100;
}

#board3 .info_field img {
	vertical-align: middle;
}

#board3 li.file_field {
	float: right;
}

#board3 .title_viewBoard {
	padding-left: 15px;
}

/*textbox*/
.textinput{
	font-size:12px;
	height:26px;
	margin-top:3px;
}

/*글내용*/
#board_content span{
	padding-left:5px;
	font-weight: bold;
	font-size: 12px;
}
#board_content strong{
	font-weight: 100;
	padding-left: 10px;
	padding-right: 30px;
	display: inline-block;
}

/*버튼*/

.btns{
	width:270px;
	float:right;
	padding-right:0;
	margin:10px 0px 20px 0px;
}

.btnlist {
	font-weight:bold;
	text-decoration:none;
	font-family:Arial;
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	background:#97f1f7;
	background:-o-linear-gradient(90deg, #97f1f7, #3b9ceb);
	background:-moz-linear-gradient( center top, #97f1f7 5%, #3b9ceb 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #97f1f7), color-stop(1, #3b9ceb) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#97f1f7', endColorstr='#3b9ceb');
	background:-webkit-linear-gradient(#97f1f7, #3b9ceb);
	background:-ms-linear-gradient(#97f1f7, #3b9ceb);
	background:linear-gradient(#97f1f7, #3b9ceb);
	text-indent:0px;
	-moz-border-radius:25px 25px 25px 0;
	-webkit-border-radius:25px 25px 25px 0;
	border-radius:25px 25px 25px 0;
	text-align:center;
	vertical-align:middle;
	display:inline-block;
	font-size:12px;
	color:#ffffff;
	width:80px;
	height:30px;
	text-shadow:#6daac2 2px 2px 0px;
	border-color:#659dab;
	border-width:2px;
	border-style:solid;
}

.btnlist:active {
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	position:relative;
	top:3px
}

.btnlist:hover {
	background:#3b9ceb;
	background:-o-linear-gradient(90deg, #3b9ceb, #97f1f7);
	background:-moz-linear-gradient( center top, #3b9ceb 5%, #97f1f7 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #3b9ceb), color-stop(1, #97f1f7) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3b9ceb', endColorstr='#97f1f7');
	background:-webkit-linear-gradient(#3b9ceb, #97f1f7);
	background:-ms-linear-gradient(#3b9ceb, #97f1f7);
	background:linear-gradient(#3b9ceb, #97f1f7);
}

.btndelete {
	font-weight:bold;
	text-decoration:none;
	font-family:Arial;
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	background:#97f1f7;
	background:-o-linear-gradient(90deg, #97f1f7, #3b9ceb);
	background:-moz-linear-gradient( center top, #97f1f7 5%, #3b9ceb 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #97f1f7), color-stop(1, #3b9ceb) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#97f1f7', endColorstr='#3b9ceb');
	background:-webkit-linear-gradient(#97f1f7, #3b9ceb);
	background:-ms-linear-gradient(#97f1f7, #3b9ceb);
	background:linear-gradient(#97f1f7, #3b9ceb);
	text-indent:0px;
	-moz-border-radius:25px 25px 25px 0;
	-webkit-border-radius:25px 25px 25px 0;
	border-radius:25px 25px 25px 0;
	text-align:center;
	vertical-align:middle;
	display:inline-block;
	font-size:12px;
	color:#ffffff;
	width:80px;
	height:30px;
	text-shadow:#6daac2 2px 2px 0px;
	border-color:#659dab;
	border-width:2px;
	border-style:solid;
}

.btndelete:active {
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	position:relative;
	top:3px
}

.btndelete:hover {
	background:#3b9ceb;
	background:-o-linear-gradient(90deg, #3b9ceb, #97f1f7);
	background:-moz-linear-gradient( center top, #3b9ceb 5%, #97f1f7 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #3b9ceb), color-stop(1, #97f1f7) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3b9ceb', endColorstr='#97f1f7');
	background:-webkit-linear-gradient(#3b9ceb, #97f1f7);
	background:-ms-linear-gradient(#3b9ceb, #97f1f7);
	background:linear-gradient(#3b9ceb, #97f1f7);
}

.btnedit {
	font-weight:bold;
	text-decoration:none;
	font-family:Arial;
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	background:#97f1f7;
	background:-o-linear-gradient(90deg, #97f1f7, #3b9ceb);
	background:-moz-linear-gradient( center top, #97f1f7 5%, #3b9ceb 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #97f1f7), color-stop(1, #3b9ceb) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#97f1f7', endColorstr='#3b9ceb');
	background:-webkit-linear-gradient(#97f1f7, #3b9ceb);
	background:-ms-linear-gradient(#97f1f7, #3b9ceb);
	background:linear-gradient(#97f1f7, #3b9ceb);
	text-indent:0px;
	-moz-border-radius:25px 25px 25px 0;
	-webkit-border-radius:25px 25px 25px 0;
	border-radius:25px 25px 25px 0;
	text-align:center;
	vertical-align:middle;
	display:inline-block;
	font-size:12px;
	color:#ffffff;
	width:80px;
	height:30px;
	text-shadow:#6daac2 2px 2px 0px;
	border-color:#659dab;
	border-width:2px;
	border-style:solid;
}

.btnedit:active {
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	position:relative;
	top:3px
}

.btnedit:hover {
	background:#3b9ceb;
	background:-o-linear-gradient(90deg, #3b9ceb, #97f1f7);
	background:-moz-linear-gradient( center top, #3b9ceb 5%, #97f1f7 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #3b9ceb), color-stop(1, #97f1f7) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3b9ceb', endColorstr='#97f1f7');
	background:-webkit-linear-gradient(#3b9ceb, #97f1f7);
	background:-ms-linear-gradient(#3b9ceb, #97f1f7);
	background:linear-gradient(#3b9ceb, #97f1f7);
}

/*댓글버튼*/

.btncomment{
	width:220px;
	float:right;
	padding: 10px 0px 10px 0px;
}
.commentwrite {
	text-decoration:none;
	font-family:Arial;
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	background:#838a8a;
	background:-o-linear-gradient(90deg, #838a8a, #cccccc);
	background:-moz-linear-gradient( center top, #838a8a 5%, #cccccc 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #838a8a), color-stop(1, #cccccc) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#838a8a', endColorstr='#cccccc');
	background:-webkit-linear-gradient(#838a8a, #cccccc);
	background:-ms-linear-gradient(#838a8a, #cccccc);
	background:linear-gradient(#838a8a, #cccccc);
	text-indent:0px;
	-moz-border-radius:25px;
	-webkit-border-radius:25px;
	border-radius:25px;
	text-align:center;
	vertical-align:middle;
	display:inline-block;
	font-size:12px;
	color:#ffffff;
	width:70px;
	height:30px;
	text-shadow:#6daac2 2px 2px 0px;
	border-color:#a1a1a1;
	border-width:1px;
	border-style:solid;
	font-weight:bold;
}

.commentwrite:active {
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	position:relative;
	top:3px
}

.commentwrite:hover {
	background:#cccccc;
	background:-o-linear-gradient(90deg, #cccccc, #838a8a);
	background:-moz-linear-gradient( center top, #cccccc 5%, #838a8a 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #cccccc), color-stop(1, #838a8a) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#cccccc', endColorstr='#838a8a');
	background:-webkit-linear-gradient(#cccccc, #838a8a);
	background:-ms-linear-gradient(#cccccc, #838a8a);
	background:linear-gradient(#cccccc, #838a8a);
}
.commentremove {
	text-decoration:none;
	font-family:Arial;
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	background:#838a8a;
	background:-o-linear-gradient(90deg, #838a8a, #cccccc);
	background:-moz-linear-gradient( center top, #838a8a 5%, #cccccc 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #838a8a), color-stop(1, #cccccc) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#838a8a', endColorstr='#cccccc');
	background:-webkit-linear-gradient(#838a8a, #cccccc);
	background:-ms-linear-gradient(#838a8a, #cccccc);
	background:linear-gradient(#838a8a, #cccccc);
	text-indent:0px;
	-moz-border-radius:25px;
	-webkit-border-radius:25px;
	border-radius:25px;
	text-align:center;
	vertical-align:middle;
	display:inline-block;
	font-size:12px;
	color:#ffffff;
	width:70px;
	height:30px;
	text-shadow:#6daac2 2px 2px 0px;
	border-color:#a1a1a1;
	border-width:1px;
	border-style:solid;
	font-weight:bold;
}

.commentremove:active {
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	position:relative;
	top:3px
}

.commentremove:hover {
	background:#cccccc;
	background:-o-linear-gradient(90deg, #cccccc, #838a8a);
	background:-moz-linear-gradient( center top, #cccccc 5%, #838a8a 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #cccccc), color-stop(1, #838a8a) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#cccccc', endColorstr='#838a8a');
	background:-webkit-linear-gradient(#cccccc, #838a8a);
	background:-ms-linear-gradient(#cccccc, #838a8a);
	background:linear-gradient(#cccccc, #838a8a);
}
.commentedit {
	text-decoration:none;
	font-family:Arial;
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 3px 2px;
	background:#838a8a;
	background:-o-linear-gradient(90deg, #838a8a, #cccccc);
	background:-moz-linear-gradient( center top, #838a8a 5%, #cccccc 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #838a8a), color-stop(1, #cccccc) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#838a8a', endColorstr='#cccccc');
	background:-webkit-linear-gradient(#838a8a, #cccccc);
	background:-ms-linear-gradient(#838a8a, #cccccc);
	background:linear-gradient(#838a8a, #cccccc);
	text-indent:0px;
	-moz-border-radius:25px;
	-webkit-border-radius:25px;
	border-radius:25px;
	text-align:center;
	vertical-align:middle;
	display:inline-block;
	font-size:12px;
	color:#ffffff;
	width:70px;
	height:30px;
	text-shadow:#6daac2 2px 2px 0px;
	border-color:#a1a1a1;
	border-width:1px;
	border-style:solid;
	font-weight:bold;
}

.commentedit:active {
	box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	o-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-moz-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	-webkit-box-shadow:inset #ffffff 0px 5px 8px -1px,#d6d6d6 1px 0 2px;
	position:relative;
	top:3px
}

.commentedit:hover {
	background:#cccccc;
	background:-o-linear-gradient(90deg, #cccccc, #838a8a);
	background:-moz-linear-gradient( center top, #cccccc 5%, #838a8a 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #cccccc), color-stop(1, #838a8a) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#cccccc', endColorstr='#838a8a');
	background:-webkit-linear-gradient(#cccccc, #838a8a);
	background:-ms-linear-gradient(#cccccc, #838a8a);
	background:linear-gradient(#cccccc, #838a8a);
}
</style>
<script>
	$(document).ready(function(){
		 $("#btnlist").click(function(){
			 alert("목록페이지로 이동");
			 location.href='boardmain.htm';
		 });
		 
		 $("#btnedit").click(function(){
			 alert("수정페이지로 이동");
			 location.href='boardedit.htm?board_num=${vo.board_num}';
		 });
		 
		 $("#btndelete").click(function(){
			 alert("삭제페이지로 이동");
			 location.href='boardremove.htm?board_num=${vo.board_num}';
		 });
		 
		 /*댓글삭제*/
		 $("#commentremove").click(function(){
			 alert("댓글삭제");
			 //location.href='boardremove.htm?board_num=${vo.board_num}';
		 });
		 
		 $("#commentedit").click(function(){
			 alert("댓글수정");
			 //location.href='boardedit.htm?board_num=${vo.board_num}';
		 });
		 
		}
	)
</script>
</head>
<body>

	<!-- navigation 부분 -->
	<div id="header">
		<ul class="nav nav-tabs">
			<li><a href="/main/main/main.htm">Home</a></li>
			<li class="active"><a href="boardmain.htm">게시판</a></li>
		</ul>
	</div>

	<!-- content부분 -->
	<div id="content">
		<form action="" method="get">
			<table id="board2">
				<tbody>
					<tr>
						<td class="board_th02 title_viewBoard">
							<span>글제목</span>
							<strong>
								${vo.board_title}
							</strong>
						</td>
					<tr>
						<td class="info_field">
							<ul>
								<li>글번호<strong>${vo.board_num}</strong></li>
								<li>작성일<strong>${vo.board_date}</strong></li>
								<li>조회수<strong>${vo.readcount}</strong></li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<div id="board_content">
								<span>글내용</span> 
								<strong>
										${vo.board_content}
								</strong>
							</div>
						</td>
					</tr> 
				</tbody>
			</table>
			<div class="btns">
				<input type="button" class="btndelete" id="btndelete" value="삭제"/>
				<input type="button" class="btnedit" id="btnedit" value="수정"/>
				<input type="button" class="btnlist" id="btnlist" value="목록"/>
			</div>
		</form>
		
		<form action="" method="post">
			<!-- 댓글 -->
			<div>
				<table id="board3">
					<tbody>
						<tr>
							<td class="board_th02 title_viewBoard">
								<span>작성자</span>
								<strong>
									<input type="text" class="textinput" size="20%" name="comment_writer"/>
								</strong>
								<span>패스워드</span>
								<strong>
									<input type="password" class="textinput" size="20%" name="comment_passwrod"/>
								</strong>
							</td>
						<tr>
							<td class="board_th02 title_viewBoard">
								<span>글내용</span>
								<strong>
									<textarea rows="5" cols="95" name="comment_content"></textarea>
								</strong>
								<div class="btncomment">
									<input type="button" class="commentwrite" id="commentremove" value="삭제"/>
									<input type="button" class="commentwrite" id="commentedit" value="수정"/>
									<input type="submit" class="commentwrite" id="commentwrite" value="저장"/>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
	</div>

</body>
</html>