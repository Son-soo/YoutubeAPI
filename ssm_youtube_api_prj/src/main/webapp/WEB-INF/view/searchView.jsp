<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!-- saved from url=(0022)https://m.youtube.com/ -->
<html darker-dark-theme="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Boot Application</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="apple-itunes-app"
	content="app-id=544007664, app-argument=https://m.youtube.com/?referring_app=com.apple.mobilesafari-smartbanner, affiliate-data=ct=smart_app_banner_polymer&amp;pt=9008">
<meta http-equiv="origin-trial" content="AkuDtizgaqsWtz909tK/MSnhDoRICXd2JKdA47HeZYlS+MW2XB0EKjMID7ukmXx5kqRMx3/kCsZyPiFrZIrbuQEAAABveyJvcmlnaW4iOiJodHRwczovL20ueW91dHViZS5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY4ODA4MzE5OSwiaXNTdWJkb21haW4iOnRydWV9 ">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no,">
<meta name="google-site-verification"
	content="Wq-n-QaxUP6b3GbKML3-IfS6tPC3lK5rHmsxmuMAktw">
<meta id="theme-meta" name="theme-color" content="rgb(15, 15, 15)">
<link rel="icon" href="https://m.youtube.com/static/favicon.ico"
	type="image/x-icon">
<title>홈 - YouTube</title>
<meta name="description" content="친구, 가족을 비롯해 전 세계 사람들과 동영상 공유">
<meta name="keywords" content="동영상, 공유, 카메라폰, 동영상폰, 무료, 올리기">
<link rel="canonical" href="https://www.youtube.com/">
<meta property="og:url" content="https://www.youtube.com/">
<meta property="twitter:url" content="https://www.youtube.com/">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		$("#yapiButton").click(function(){
			
		    $.ajax({
		    	type: "GET" ,
		        url : "/yapi/v1/search?queryTerm='"+ $(".searchbox-input").val() +"'",
		        dataType : "json",
		        error: function(err){
		            console.log(err);
		        },
		        success: function(data){resultHtml(data);},
		        
		    });
		});
	});   
		        
		        function resultHtml(data){
		        	var html = "<table border = '1'>";
		        	html += "<tr>";
		        	html += "<th>비디오</th>";
		        	html += "<th>비디오아이디</th>";
		        	html += "<th>영상제목</th>";
		        	html += "<th>썸네일</th>";
		        	html += "</tr>";		
		        	
		        	$.each(data, function(key, value){
		        		html += "<tr align = 'center'>";
		        		html += "<td>" + value.id.kind + "</td>";
		        		html += "<td>" + value.id.videoId + "</td>";
		        		html += "<td><a href='https://www.youtube.com/watch?v='" + value.id.videoId + "'>" + value.snippet.title + "</td>";	        	
		        		html += "<td><a href='https://www.youtube.com/watch?v='" + value.id.videoId + "'><img src='" + value.snippet.thumbnails.default.url + "' alt=''/></td>";
		        		html += "</tr>";
		        	});
		        	
		        	
		        	html += "</table>";
		        	$("#gird").empty();
		        	$("#gird").append(html);
		        	
		        } 
		        	
		        	/* $.each(data, function(key, value){
		        		html += "<tr align = 'center'>";
		        		html += "<td>" + value.kind + "</td>";
		        		html += "<td>" + value.videoId + "</td>";
		        		html += "<td>" + value.title + "</td>";
		        		html += "<td>" + value.thumbnailsturl + "</td>";
		        		if(value.kind == 1){
		        			html += "<td>급행간선</td>";
		        		}else if(value.LINE_KIND == 2){
		        			html += "<td>간선</td>";
		        		}else if(value.LINE_KIND == 3){
		        			html += "<td>지선</td>";
		        		}else if(value.LINE_KIND == 4){
		        			html += "<td>마을버스</td>";
		        		}		
		        		html += "</tr>";
		        	});
		        	
		        	
		        	html += "</table>";
		        	$("#display").empty();
		        	$("#display").append(html);
		        	
		        } */
		        
		        	
		        	
		        	//console.log(data);
		        	/* alert("#json[0] videoId" + json[0].videoId);
		        	alert("#json[0] title" + json[0].title);
		        	alert("#json[0] thumbnails" + json[0].thumbnails);
		            
		        	 for(i=0; i<json.length; i++){
		                    
		        		 $("#demo").append(videoId + " "); 
						 $("#demo").append(title + " ");
						 $("#demo").append(thumbnails + " ");
		                }
		        	
		            $.each(data, function(videoId, title, Thumbnails) { 
						$("#demo").append(videoId + " "); 
						$("#demo").append(title + " ");
						$("#demo").append(thumbnails + " "); */
		            
		            
		            //console.log(data);
		            //todo 
		     

    
/* $(".icon-button").click(function(){
    
    $.ajax({
        
    	type: 'GET' ,
        url : "/yapi/v1/search  https://www.googleapis.com/youtube/v3/search?",
        dataType : "json",
        success : function(data){
            
            $("keyword").html("<tr><th>번호</th><th>이름</th><th>나이</th><th>사는곳</th></tr>");
            var show = "";
            
            $.each(data,function(index, item){
           
                show += "<tr><td>"+(index+1)+"</td>";
                show += "<td>"+item.name+"</td>";
                show += "<td>"+item.age+"</td>";
                show += "<td>"+item.loc+"</td></tr>";
                                     
            });
            $("table").append(show);
        }
    });
}); 
});  */
    
    

 
</script>


<style name="www-roboto" nonce="r81p_bIQoaNZ_9uM3mEQRg">
@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 500;
	src:
		url(//fonts.gstatic.com/s/roboto/v18/KFOlCnqEu92Fr1MmEU9fBBc9AMP6lQ.ttf)
		format('truetype');
	font-display: optional;
}

@font-face {
	font-family: 'Roboto';
	font-style: normal;
	font-weight: 400;
	src:
		url(//fonts.gstatic.com/s/roboto/v18/KFOmCnqEu92Fr1Mu4mxPKTU1Kg.ttf)
		format('truetype');
	font-display: optional;
}

@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 500;
	src:
		url(//fonts.gstatic.com/s/roboto/v18/KFOjCnqEu92Fr1Mu51S7ACc6CsHYl4BO.ttf)
		format('truetype');
	font-display: optional;
}

@font-face {
	font-family: 'Roboto';
	font-style: italic;
	font-weight: 400;
	src:
		url(//fonts.gstatic.com/s/roboto/v18/KFOkCnqEu92Fr1Mu51xIIzcXKMny.ttf)
		format('truetype');
	font-display: optional;
}
</style>
<link id="css-3528432548" rel="stylesheet"
	href="/resources/static/mobile-polymer-player-svg-ias-mweb.css"
	nonce="r81p_bIQoaNZ_9uM3mEQRg" data-loaded="true">


	
</head>
<body lang="ko-KR" dir="ltr" class="" has-pivot-bar="true"
	has-safe-area-in-max="false" has-player-custom-control="true"
	shorts-player="false">
	<style nonce="r81p_bIQoaNZ_9uM3mEQRg">
lazy-list ytm-media-item {
	display: block;
	padding: 0;
	min-width: 0;
	overflow: hidden
}

lazy-list ytm-media-item .media-item-thumbnail-container {
	padding: 0 12px
}

lazy-list ytm-media-item .details {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	flex-grow: 1;
	min-width: 0;
	padding-left: 0;
	margin-top: 4px;
	margin-bottom: 8px
}

ytm-media-item .upper-details {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	flex-grow: 1;
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	margin-bottom: 8px
}

lazy-list ytm-media-item .details.fresh-feeds-separators {
	margin-bottom: 0
}

lazy-list ytm-media-item .media-channel {
	margin-top: 8px
}

ytm-media-item .upper-details .media-channel, ytm-media-item[use-vertical-layout] .upper-details .media-channel
	{
	margin-top: 0
}

lazy-list ytm-media-item .media-item-metadata {
	margin-top: 8px
}

lazy-list .item ytm-media-item {
	margin-top: 0;
	margin-bottom: 12px
}

lazy-list ytm-media-item .video-thumbnail-container-large {
	margin: 0 -12px
}

ytm-media-item {
	display: block;
	padding: 0 12px;
	min-width: 0
}

ytm-media-item[use-vertical-layout] {
	padding: 0
}

ytm-media-item[use-vertical-layout] .media-item-metadata {
	margin-top: 8px
}

ytm-media-item[use-vertical-layout] .upper-details .media-item-metadata
	{
	margin-top: 0;
	-webkit-align-self: center;
	align-self: center
}

ytm-media-item[use-vertical-layout] .media-channel {
	margin-top: 8px
}

ytm-media-item>a {
	display: block
}

.media-item-thumbnail-container {
	position: relative
}

.media-item-thumbnail-container.fresh-feeds-rounding {
	border-radius: 12px;
	overflow: hidden
}

.media-item-animated-thumbnail {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%
}

.inline-byline-channel-name {
	margin-bottom: 3px
}

.media-item-metadata {
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	flex-grow: 1;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	flex-direction: column;
	min-width: 0
}

.media-item-top-badges ytm-metadata-badge-renderer {
	display: block
}

.media-icon, .media-icon {
	width: 40px;
	height: 40px
}

.media-channel {
	-webkit-flex-shrink: 0;
	flex-shrink: 0
}

.media-item-info, ytm-media-item .details {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	flex-grow: 1;
	min-width: 0
}

.media-item-info {
	-webkit-box-align: start;
	-webkit-align-items: flex-start;
	align-items: flex-start;
	margin-left: 12px
}

.media-item-info[no-channel-avatar=true], .details.feature-phone-minimal-lockups .media-item-info,
	.details.small-lockup {
	margin-left: 0;
	margin-right: 0
}

.media-item-headline-placeholder {
	height: 16px;
	max-width: 300px;
	margin-bottom: 8px;
	background-color: rgba(0, 0, 0, 0.1);
	border-radius: 2px
}

.media-item-headline-placeholder:nth-child(2) {
	width: 120px;
	margin-bottom: 8px
}

.media-item-endorsement-container {
	background-color: #fff;
	color: #606060;
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	justify-content: space-between
}

.media-item-endorsement-container.fresh-feeds-endorsements {
	margin-bottom: -4px;
	background-color: transparent;
	color: #0f0f0f
}

.media-item-endorsement-container:after {
	content: "";
	border-bottom: 24px solid rgba(0, 0, 0, 0.05);
	border-left: 24px solid rgba(0, 0, 0, 0)
}

.media-item-endorsement-container.fresh-feeds-endorsements:after {
	border: none
}

.media-item-endorsement-container:not (.fresh-feeds-endorsements )>.media-item-secondary-headline
	{
	font-weight: 400;
	padding: 8px 12px;
	margin: 0
}

.media-item-endorsement-container.fresh-feeds-endorsements>.media-item-secondary-headline
	{
	padding-top: 8px
}

.media-item-endorsement-container:not (.fresh-feeds-endorsements )>.media-item-secondary-headline>span
	{
	font-size: 1.4rem;
	overflow: hidden;
	line-height: 1.25;
	text-overflow: ellipsis;
	-webkit-box-orient: vertical;
	display: -webkit-box;
	max-height: 2.5em;
	-webkit-line-clamp: 2
}

.media-item-endorsement-container.fresh-feeds-endorsements>.media-item-secondary-headline>span
	{
	-webkit-box-orient: vertical;
	display: -webkit-box;
	overflow: hidden;
	text-overflow: ellipsis;
	max-height: 3.2rem;
	-webkit-line-clamp: 2;
	line-clamp: 2
}

.media-item-endorsement-container.fresh-feeds-endorsements>.media-item-secondary-headline>span>strong
	{
	font-weight: 700
}

.media-item-subhead-placeholder {
	height: 16px;
	width: 120px;
	margin-bottom: 3px;
	background-color: rgba(0, 0, 0, 0.1);
	border-radius: 2px
}

.media-item-menu {
	-webkit-flex-shrink: 0;
	flex-shrink: 0
}

.media-item-byline {
	unicode-bidi: -webkit-isolate;
	unicode-bidi: isolate
}

ytm-media-item .details.feature-phone-minimal-lockups .media-channel {
	display: none
}

ytm-media-item .details {
	margin-top: 12px;
	margin-bottom: 24px
}

ytm-media-item .details.fresh-feeds-separators {
	margin-bottom: 0
}

ytm-media-item[use-vertical-layout] .details {
	margin-top: 4px
}

ytm-browse lazy-list ytm-item-section-renderer:first-of-type ytm-media-item
	{
	margin: 0
}

ytm-browse ytm-item-section-renderer:first-of-type ytm-media-item {
	margin: -12px 0 0
}

ytm-media-item .video-thumbnail-overlay-side {
	width: 33%
}

@media ( max-width :549px) and (orientation:portrait) {
	lazy-list ytm-media-item .details {
		padding-left: 12px
	}
	lazy-list ytm-media-item.no-full-bleed .details {
		padding-left: 0
	}
	lazy-list ytm-media-item.no-full-bleed {
		padding: 0 12px
	}
	lazy-list ytm-media-item.big-shorts-singleton .media-item-thumbnail-container
		{
		padding: 0
	}
	lazy-list ytm-media-item.big-shorts-singleton .video-thumbnail-container-large
		{
		margin: 0
	}
}

@media ( min-width :550px) and (orientation:portrait) {
	ytm-browse ytm-item-section-renderer:first-of-type ytm-promoted-video-renderer ytm-media-item
		{
		margin-top: 0
	}
	lazy-list ytm-media-item {
		padding: 0 12px
	}
	lazy-list .item ytm-media-item {
		margin-top: 12px
	}
	lazy-list ytm-media-item .media-item-thumbnail-container {
		padding: 0
	}
	lazy-list ytm-media-item .video-thumbnail-container-large {
		margin: 0
	}
}

@media ( min-aspect-ratio :13/9) and (orientation:landscape) , ( min-width
	:931px) and (orientation:landscape) {
	ytm-media-item
	:not
	 
	(
	[
	use-vertical-layout
	]
	 
	){
	display
	:
	 
	-webkit-box
	;
	
		
	display
	:
	 
	-webkit-flex
	;
	
		
	display
	:
	 
	flex
	;
	
		
	min-width
	:
	 
	0
}

ytm-media-item:not ([use-vertical-layout] )
	.media-item-thumbnail-container {
	-webkit-flex-shrink: 0;
	flex-shrink: 0
}

ytm-media-item:not ([use-vertical-layout] )
	.video-thumbnail-container-large {
	width: 200px;
	height: 112px;
	padding-bottom: 0
}

ytm-media-item:not ([use-vertical-layout] ) .details {
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	flex-direction: column;
	margin: 0 12px;
	min-width: 0;
	width: 100%
}

ytm-media-item:not ([use-vertical-layout] ) .media-item-info {
	-webkit-box-flex: 0;
	-webkit-flex-grow: 0;
	flex-grow: 0
}

ytm-media-item:not ([use-vertical-layout] ) .media-item-metadata {
	margin-bottom: 2px;
	max-height: 70px;
	overflow: hidden;
	min-width: 0
}

ytm-media-item[use-vertical-layout] h3 {
	margin-bottom: 8px
}

ytm-media-item:not ([use-vertical-layout] ) .media-channel {
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	flex-grow: 1;
	-webkit-box-ordinal-group: 2;
	-webkit-order: 1;
	order: 1;
	width: 100%
}

ytm-media-item:not ([use-vertical-layout] ) .media-item-extra-endpoint {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	flex-grow: 1
}

lazy-list ytm-media-item {
	padding: 0 12px
}

lazy-list .item ytm-media-item {
	margin-top: 12px
}

lazy-list ytm-media-item .media-item-thumbnail-container {
	padding: 0
}

lazy-list ytm-media-item .media-channel {
	margin-top: 0
}

lazy-list ytm-media-item .media-item-metadata {
	margin-top: 0
}

ytm-browse
 
ytm-item-section-renderer
:first-of-type
 
ytm-media-item
:not
 
(
[
use-vertical-layout
]

		
){
margin-top
:
 
0
}
ytm-browse
 
lazy-list
 
ytm-item-section-renderer
:first-of-type
 
ytm-media-item
:not

		
(
[
use-vertical-layout
]
 
){
margin-top
:
 
12
px

	
}
ytm-browse
 
lazy-list
 
ytm-item-section-renderer
:first-of-type
 
ytm-promoted-video-renderer
 
ytm-media-item
:not

		
(
[
use-vertical-layout
]
 
){
margin-top
:
 
0
}
lazy-list ytm-media-item .video-thumbnail-container-large {
	margin: 0
}

ytm-media-item:not ([use-vertical-layout] ) .media-item-info {
	margin-left: 0
}

}
@media ( max-width :930px) and (orientation:landscape) {
	lazy-list ytm-media-item {
		padding: 0 12px
	}
	lazy-list .item ytm-media-item {
		margin-top: 12px
	}
	ytm-browse
	 
	lazy-list
	 
	ytm-item-section-renderer
	:first-of-type
	 
	ytm-promoted-video-renderer
	 
	ytm-media-item
	:not
	
		
	(
	[
	use-vertical-layout
	]
	 
	){
	margin-top
	:
	 
	12
	px
	
	
}

}
@media ( max-width :299px) and (orientation:landscape) , ( max-width
	:299px) and (orientation:portrait) {
	ytm-media-item {
		padding: 0 8px
	}
	ytm-media-item .details {
		margin-top: 12px;
		margin-bottom: 12px
	}
	ytm-browse ytm-item-section-renderer:first-of-type ytm-media-item {
		margin-top: 8px
	}
	lazy-list ytm-media-item {
		padding: 0 8px
	}
	lazy-list .item ytm-media-item {
		margin-bottom: 0
	}
	lazy-list ytm-media-item .media-item-thumbnail-container {
		padding: 0
	}
	lazy-list ytm-media-item .media-item-metadata {
		margin-top: 0
	}
	lazy-list ytm-media-item .details {
		margin-top: 12px;
		margin-bottom: 4px;
		padding-left: 0
	}
	ytm-browse lazy-list ytm-media-item .details {
		margin-bottom: 0
	}
	ytm-browse lazy-list ytm-item-section-renderer:first-of-type ytm-media-item
		{
		margin-top: 8px
	}
	lazy-list ytm-media-item .video-thumbnail-container-large {
		margin: 0
	}
	ytm-browse
	 
	lazy-list
	 
	ytm-item-section-renderer
	:first-of-type
	 
	ytm-promoted-video-renderer
	 
	ytm-media-item
	:not
	
		
	(
	[
	use-vertical-layout
	]
	 
	){
	margin-top
	:
	 
	8
	px
	
	
}

}
@media ( max-width :299px) and (orientation:portrait) {
	lazy-list .item ytm-media-item {
		margin-top: 8px
	}
}

@media ( min-width :300px) and (max-width:330px) {
	lazy-list ytm-media-item {
		padding: 0 12px
	}
	lazy-list ytm-media-item .media-item-thumbnail-container {
		padding: 0
	}
	lazy-list ytm-media-item .video-thumbnail-container-large {
		margin: 0
	}
	ytm-browse
	 
	lazy-list
	 
	ytm-item-section-renderer
	:first-of-type
	 
	ytm-promoted-video-renderer
	 
	ytm-media-item
	:not
	
		
	(
	[
	use-vertical-layout
	]
	 
	){
	margin-top
	:
	 
	0
}

}
ytm-media-item.small-lockup {
	margin-right: 0;
	padding-left: 0;
	width: 160px
}

ytm-media-item.small-lockup .media-item-headline {
	font-weight: 400
}

@
-webkit-keyframes spinner { 0%{
	-webkit-transform: rotate(0deg)
}

100%{
-webkit-transform


:rotate(1turn)


}
}
@
keyframes spinner { 0%{
	-webkit-transform: rotate(0deg);
	transform: rotate(0deg)
}

100%{
-webkit-transform


:rotate(1turn)


;
transform


:rotate(1turn)


}
}
.spinner {
	display: block;
	box-sizing: border-box;
	margin: 12px auto;
	width: 32px;
	height: 32px;
	border-radius: 50%;
	border: 2px solid #eee;
	border-top-color: #666;
	-webkit-animation: spinner .8s linear infinite;
	animation: spinner .8s linear infinite
}

.spinner
:not
 
(
[
hidden
]
 
){
color
:
 
#333
;

	
font-size
:
 
1
.6rem


}
html {
	color: #0f0f0f;
	background-color: #fff;
	font-size: 10px;
	font-family: Roboto, Arial, sans-serif
}

html[darker-dark-theme] {
	background-color: #fff
}

body {
	margin: 0;
	padding: 0;
	padding: 0 env(safe-area-inset-right) env(safe-area-inset-bottom)
		env(safe-area-inset-left);
	font-size: 1.2rem;
	overflow-x: hidden
}

[hidden][hidden] {
	display: none;
	visibility: hidden
}

ytm-app>.spinner {
	margin-top: 100px
}

ytm-header {
	display: block
}

header {
	height: 48px
}

.player-container {
	position: absolute;
	top: 48px;
	right: 0;
	right: env(safe-area-inset-right);
	left: 0;
	left: env(safe-area-inset-left);
	overflow: hidden;
	z-index: 2;
	direction: ltr
}

[has-player-custom-control=true] .player-container {
	overflow: visible !important
}

.player-container.inline-player-hidden, #player.inline-player-hidden {
	opacity: 0;
	pointer-events: none
}

.player-container.inline-feed {
	-webkit-transform: translateY(0);
	transform: translateY(0);
	-webkit-transform-origin: top;
	transform-origin: top;
	-webkit-transition-duration: 0s;
	transition-duration: 0s
}

.player-container.inline-feed #player, .player-container.inline-feed #player-thumbnail-overlay
	{
	border-radius: 12px;
	overflow: hidden;
	-webkit-transition-duration: 0s;
	transition-duration: 0s
}

.player-container.inline-feed #player-control-container {
	opacity: 0;
	-webkit-transition-duration: 0s;
	transition-duration: 0s
}

.player-container.pop-out {
	-webkit-transform: scale(1) translateY(-4px);
	transform: scale(1) translateY(-4px);
	-webkit-transition: -webkit-transform .3s ease-in-out;
	transition: -webkit-transform .3s ease-in-out;
	transition: transform .3s ease-in-out;
	transition: transform .3s ease-in-out, -webkit-transform .3s ease-in-out
}

.player-container.pop-out #player, .player-container.pop-out #player-thumbnail-overlay
	{
	border-radius: 0;
	-webkit-transition: border-radius .3s ease-in-out;
	transition: border-radius .3s ease-in-out
}

.player-container.pop-out #player-control-container {
	opacity: 1;
	-webkit-transition: opacity .3s ease-in;
	transition: opacity .3s ease-in
}

.player-size {
	position: relative;
	width: 100%;
	padding-bottom: 56.25%;
	overflow: hidden;
	background-color: #000
}

.player-api {
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	-webkit-box-align: center;
	-webkit-align-items: center;
	align-items: center;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	justify-content: center
}

.player-api[hidden], .player-api[playable=false], .player-api[loading=true]
	{
	display: none
}

#player.inline-on-thumbnail {
	padding: 0;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0
}

.html5-video-player {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0
}

ytm-app {
	display: block;
	overflow-x: hidden
}

[has-soft-bar=true] ytm-app {
	padding-bottom: 30px
}

[has-pivot-bar=true] ytm-app {
	padding-bottom: 48px
}

ytm-header.sticky-player, ytm-header-bar.sticky-player,
	ytm-mobile-topbar-renderer.sticky-player {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	z-index: 4;
	padding: 0;
	padding: 0 env(safe-area-inset-right) 0 env(safe-area-inset-left)
}

ytm-header-bar.sticky-player.out, ytm-mobile-topbar-renderer.sticky-player.out
	{
	top: -48px;
	-webkit-transition: -webkit-transform 195ms cubic-bezier(.4, 0, 1, 1);
	transition: -webkit-transform 195ms cubic-bezier(.4, 0, 1, 1);
	transition: transform 195ms cubic-bezier(.4, 0, 1, 1);
	transition: transform 195ms cubic-bezier(.4, 0, 1, 1), -webkit-transform
		195ms cubic-bezier(.4, 0, 1, 1);
	-webkit-transition-property: all;
	transition-property: all
}

ytm-header-bar.sticky-player.in, ytm-mobile-topbar-renderer.sticky-player.in
	{
	top: 0;
	-webkit-transition: -webkit-transform 225ms cubic-bezier(0, 0, .2, 1);
	transition: -webkit-transform 225ms cubic-bezier(0, 0, .2, 1);
	transition: transform 225ms cubic-bezier(0, 0, .2, 1);
	transition: transform 225ms cubic-bezier(0, 0, .2, 1), -webkit-transform
		225ms cubic-bezier(0, 0, .2, 1);
	-webkit-transition-property: all;
	transition-property: all
}

.player-container.sticky-player {
	position: fixed;
	top: 48px;
	right: 0;
	right: env(safe-area-inset-right);
	left: 0;
	left: env(safe-area-inset-left);
	overflow: hidden;
	z-index: 2
}

.player-container.header-in-player, .player-container.sticky-player.header-in-player
	{
	top: 0
}

ytm-app.sticky-player {
	display: block;
	padding-top: 48px
}

ytm-app.sticky-player.header-in-player {
	padding-top: 0
}

@media ( min-width :931px) and (orientation:landscape) {
	.player-container, .player-container.sticky-player {
		right: 256px
	}
	.player-placeholder-wrapper {
		width: calc(100% - 256px)
	}
}

@media ( min-width :1280px) and (orientation:landscape) {
	.player-container, .player-container.sticky-player {
		right: 500px
	}
	.player-placeholder-wrapper {
		width: calc(100% - 500px)
	}
}

@media ( max-width :930px) and (orientation:landscape) {
	.player-size {
		padding-bottom: calc(56.25% - 96px)
	}
}

@media ( max-width :299px) and (orientation:landscape) , ( max-width
	:299px) and (orientation:portrait) {
	.player-size {
		padding-bottom: 56.25%
	}
}

@media ( max-width :320px) and (max-height:240px) and
	(orientation:landscape) {
	.player-size {
		padding-bottom: 56.25%
	}
}

@media ( min-width :550px) and (orientation:portrait) , ( min-width
	:931px) and (orientation:landscape) {
	ytm-app {
		padding-top: 48px
	}
	ytm-header, ytm-header-bar, ytm-mobile-topbar-renderer {
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
		z-index: 4
	}
}

.content-error {
	font-size: 1.4rem;
	padding: 12px;
	text-align: center
}

#player-thumbnail-overlay {
	position: absolute;
	top: 0;
	object-fit: cover;
	min-height: 0
}

#player-container-id[playable=true] #player-thumbnail-overlay {
	visibility: hidden
}

body.loading.page-shorts #header, body.loading.page-shorts .player-placeholder-wrapper
	{
	display: none
}

body.page-shorts #player-container-id, body.page-shorts #player {
	height: 100%;
	top: 0
}

.cbox, .vbox, .center {
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	-webkit-box-align: center;
	-webkit-align-items: center;
	align-items: center
}

.vbox {
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	flex-direction: column
}

.center {
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	justify-content: center
}

.cover {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	width: 100%;
	min-height: 100%;
	margin: auto
}

img.custom-thumbnail.video-thumbnail-img {
	object-fit: scale-down;
	max-height: 100%;
	max-width: 100%
}

.video-thumbnail-container-large, .video-thumbnail-container-compact,
	.video-thumbnail-container-vertical {
	position: relative;
	-webkit-flex-shrink: 0;
	flex-shrink: 0;
	overflow: hidden
}

.video-thumbnail-bg {
	background-color: rgba(0, 0, 0, 0.1)
}

.video-thumbnail-container-large {
	padding-bottom: 56.25%
}

.video-thumbnail-container-compact {
	width: 160px;
	height: 90px
}

.custom-thumbnail-background-container {
	position: absolute;
	width: 180px;
	height: 180px
}

.custom-thumbnail-background-container .custom-thumbnail {
	opacity: .7;
	-webkit-filter: blur(30px);
	filter: blur(30px)
}

.video-thumbnail-container-compact-rounded {
	border-radius: 8px
}

.original-aspect-ratio img {
	height: 100%;
	width: auto
}

.video-thumbnail-container-vertical {
	width: 148px;
	height: 248px
}

@media ( max-width :549px) and (orientation:portrait) {
	.is-shorts
	 
	.video-thumbnail-container-vertical
	:not
	 
	(
	.no-full-bleed
	 
	){
	-
	-shorts-grid-width
	:
	 
	calc
	(33
	.3333333333vw
	 
	-
	var
	(-
	 
	-ytm-rich-item-margin
	,
	2
	px
	)
	*
	2);
	
		
	width
	:
	 
	var
	(-
	 
	-shorts-grid-width
	);
	
		
	height
	:
	 
	calc
	(var(-
	 
	-shorts-grid-width
	)/
	.5625
	)
	
	
}

.is-shorts
 
.is-slim-short
 
.video-thumbnail-container-vertical
:not
 
(
.no-full-bleed

		
){
height
:
 
calc
(var(-
 
-shorts-grid-width
)/
.75
)

	
}
.big-shorts-singleton .video-thumbnail-container-large {
	padding-bottom: 125%
}

.big-shorts-singleton .video-thumbnail-container-large img {
	object-fit: none
}

}
@media ( max-width :587px) {
	.is-shorts .video-thumbnail-container-vertical.no-full-bleed { -
		-shorts-grid-width: calc(33.3333333333vw - 4px - var(- -ytm-rich-item-margin, 2px)*2);
		width: var(- -shorts-grid-width);
		height: calc(var(- -shorts-grid-width)/.5625)
	}
	.is-shorts .is-slim-short .video-thumbnail-container-vertical.no-full-bleed
		{
		height: calc(var(- -shorts-grid-width)/.75)
	}
}

.mini-thumbnail .video-thumbnail-container-vertical {
	width: var(- -mini-thumbnail-width, auto);
	height: var(- -mini-thumbnail-height, auto)
}

.video-thumbnail-container-vertical img {
	object-fit: cover
}

@media ( max-width :549px) and (orientation:portrait) {
	ytm-item-section-renderer:first-of-type .video-thumbnail-container-large
		{
		margin-top: 0
	}
	.video-thumbnail-container-large {
		margin: -13px -12px 0;
		padding-top: 13px
	}
}

@media ( max-width :299px) and (orientation:portrait) {
	.video-thumbnail-container-large {
		margin: 0;
		padding-top: 0
	}
}

@media ( max-width :299px) and (orientation:landscape) , ( max-width
	:299px) and (orientation:portrait) {
	.video-thumbnail-container-vertical {
		width: 110px;
		height: 183px
	}
}

.video-thumbnail-container-large.rounded-thumbnail.fresh-feeds-rounding
	{
	border-radius: 12px
}

@media ( min-width :550px) and (orientation:portrait) , ( min-width
	:931px) and (orientation:landscape) {
	.video-thumbnail-container-large.rounded-thumbnail {
		border-radius: 12px
	}
}

@media ( min-aspect-ratio :13/9) and (orientation:landscape) , ( min-width
	:931px) and (orientation:landscape) {
	.video-thumbnail-container-large.rounded-thumbnail {
		border-radius: 12px
	}
}

html[darker-dark-theme] header.ghost-header {
	background-color: #fff;
	box-shadow: 0 4px 2px -2px rgba(0, 0, 0, .2)
}

ytm-pivot-bar-renderer {
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	-webkit-justify-content: space-around;
	justify-content: space-around;
	position: fixed;
	bottom: 0;
	left: 0;
	right: 0;
	padding: 0;
	padding: 0 env(safe-area-inset-right) env(safe-area-inset-bottom)
		env(safe-area-inset-left);
	z-index: 3;
	height: 48px;
	border-top: 1px solid rgba(0, 0, 0, 0.1);
	background: #fff;
	color: #0f0f0f;
	font-size: 1.1rem
}

html[darker-dark-theme] ytm-pivot-bar-renderer {
	background: #fff
}

.details {
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	margin-top: 12px
}

.item {
	margin-top: 12px;
	display: block
}

.item:last-child {
	margin-bottom: 12px
}

@media ( max-width :299px) and (orientation:landscape) , ( max-width
	:299px) and (orientation:portrait) {
	.item {
		margin-top: 8px
	}
}

ytm-item-section-renderer {
	display: block;
	border-bottom: 1px solid rgba(0, 0, 0, 0.1)
}

@media ( max-width :299px) and (orientation:landscape) , ( max-width
	:299px) and (orientation:portrait) {
	ytm-item-section-renderer.feature-phone-minimal-lockups .icon-button {
		padding: 0 0 0 8px;
		width: 24px;
		height: 24px
	}
}

ytm-profile-icon {
	display: inline-block;
	overflow: hidden;
	-webkit-flex-shrink: 0;
	flex-shrink: 0;
	border-radius: 50%;
	background-color: rgba(0, 0, 0, 0.1)
}

.compact-media-item {
	padding: 0 12px;
	display: -webkit-box;
	display: -webkit-flex;
	display: flex
}

.compact-media-item-image {
	-webkit-flex-shrink: 0;
	flex-shrink: 0
}

.compact-media-item-metadata {
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	flex-grow: 1;
	min-width: 0;
	overflow: visible
}

.compact-media-item-metadata-content {
	display: block;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	flex-grow: 1;
	min-width: 0;
	overflow: hidden;
	padding: 0 8px
}

.compact-media-item-headline-placeholder {
	height: 16px;
	max-width: 300px;
	margin-bottom: 8px;
	background-color: rgba(0, 0, 0, 0.1);
	border-radius: 2px
}

.compact-media-item-subhead-placeholder {
	height: 16px;
	width: 120px;
	margin-bottom: 3px;
	background-color: rgba(0, 0, 0, 0.1);
	border-radius: 2px
}

ytm-rich-grid-renderer {
	display: block;
	margin: 0 16px
}

.rich-grid-renderer-contents {
	margin: 16px -8px 0 -8px
}

@media ( max-width :587px) {
	ytm-rich-grid-renderer {
		margin: 0
	}
	.rich-grid-renderer-contents {
		margin: 0
	}
	ytm-rich-grid-renderer.no-full-bleed {
		margin: 0 12px
	}
	ytm-rich-grid-renderer.no-full-bleed .rich-grid-renderer-contents {
		margin: 0 -6px 0 -6px
	}
}

@media ( max-width :299px) and (orientation:landscape) , ( max-width
	:299px) and (orientation:portrait) {
	ytm-rich-grid-renderer.no-full-bleed {
		margin: 0 8px
	}
	ytm-rich-grid-renderer.no-full-bleed .rich-grid-renderer-contents {
		margin: 0 -4px
	}
}

ytm-rich-item-renderer {
	display: inline-block;
	vertical-align: top;
	margin: 0 8px
}

@media ( max-width :587px) {
	ytm-rich-item-renderer {
		margin: 0;
		width: 100%
	}
	ytm-rich-item-renderer.no-full-bleed {
		margin-left: 4px;
		margin-right: 4px;
		width: calc(100% - 8px)
	}
	ytm-rich-item-renderer ytm-media-item .video-thumbnail-container-large {
		display: block;
		margin: 0;
		padding: 0
	}
	ytm-rich-item-renderer ytm-media-item .video-thumbnail-container-large.fresh-feeds-rounding
		{
		border-radius: 12px
	}
	ytm-rich-item-renderer ytm-media-item .video-thumbnail-container-large:before
		{
		display: block;
		content: "";
		width: 100%;
		padding-top: 56.25%
	}
	ytm-rich-item-renderer ytm-media-item .details {
		margin-bottom: 16px;
		margin-left: 12px
	}
	ytm-rich-item-renderer .compact-media-item-headline-placeholder {
		max-width: 95%
	}
}

@media ( min-width :588px) {
	ytm-rich-item-renderer {
		width: calc(50% - 16px)
	}
}

@media ( min-width :874px) {
	ytm-rich-item-renderer {
		width: calc(33.3% - 16px)
	}
}

@media ( min-width :1160px) {
	ytm-rich-item-renderer {
		width: calc(25% - 16px)
	}
}

@media ( max-width :299px) and (orientation:landscape) , ( max-width
	:299px) and (orientation:portrait) {
	ytm-rich-item-renderer {
		margin: 8px;
		width: calc(100% - 16px)
	}
	ytm-rich-item-renderer ytm-media-item .details {
		margin-bottom: 0;
		margin-left: 0
	}
	ytm-rich-item-renderer.no-full-bleed {
		margin: 0 4px
	}
}

ytm-video-with-context-renderer.feed-item {
	margin-bottom: 16px
}

sentinel {
	
}
</style>

	<div id="player-container-id" class="player-container sticky-player ">
		<img
			src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAeAAAAFoCAYAAACPNyggAAAOn0lEQVR4Xu3VsQnDQBBFwd3AakTuv8UTOHQuXjJXwC0MH97OzBmPAAECBAgQeFVgd+ecM/f9nev6zArwq94+J0CAAAECPwEBNgQCBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBAQYBsgQIAAAQKBgAAH6E4SIECAAAEBtgECBAgQIBAICHCA7iQBAgQIEBBgGyBAgAABAoGAAAfoThIgQIAAAQG2AQIECBAgEAgIcIDuJAECBAgQEGAbIECAAAECgYAAB+hOEiBAgAABAbYBAgQIECAQCAhwgO4kAQIECBD4D/ADV99NUy08rgcAAAAASUVORK5CYII="
			width="100%" height="100%" id="player-thumbnail-overlay" alt="">
		<div id="player" class="player-api player-size" hidden=""
			loading="true">
			<div
				class="html5-video-player ytp-hide-controls ytp-exp-bottom-control-flexbox ytp-exp-ppp-update ytp-mweb-player unstarted-mode ytp-hide-info-bar ytp-small-mode ytp-tiny-mode"
				tabindex="" id="movie_player"
				data-version="/s/player/36754c51/player-plasma-ias-phone-ko_KR.vflset/base.js"
				aria-label="YouTube 동영상 플레이어">
				<div class="html5-video-container" data-layer="0">
					<video tabindex="-1" class="video-stream html5-main-video"
						controlslist="nodownload"></video>
				</div>
				<button
					class="ytp-unmute ytp-popup ytp-button ytp-unmute-animated ytp-unmute-shrink"
					data-layer="2" style="display: none;">
					<div class="ytp-unmute-inner">
						<div class="ytp-unmute-icon">
							<svg height="100%" version="1.1" viewBox="0 0 36 36" width="100%">
								<use class="ytp-svg-shadow" href="#ytp-id-1"></use>
								<path class="ytp-svg-fill"
									d="m 21.48,17.98 c 0,-1.77 -1.02,-3.29 -2.5,-4.03 v 2.21 l 2.45,2.45 c .03,-0.2 .05,-0.41 .05,-0.63 z m 2.5,0 c 0,.94 -0.2,1.82 -0.54,2.64 l 1.51,1.51 c .66,-1.24 1.03,-2.65 1.03,-4.15 0,-4.28 -2.99,-7.86 -7,-8.76 v 2.05 c 2.89,.86 5,3.54 5,6.71 z M 9.25,8.98 l -1.27,1.26 4.72,4.73 H 7.98 v 6 H 11.98 l 5,5 v -6.73 l 4.25,4.25 c -0.67,.52 -1.42,.93 -2.25,1.18 v 2.06 c 1.38,-0.31 2.63,-0.95 3.69,-1.81 l 2.04,2.05 1.27,-1.27 -9,-9 -7.72,-7.72 z m 7.72,.99 -2.09,2.08 2.09,2.09 V 9.98 z"
									id="ytp-id-1"></path></svg>
						</div>
						<div class="ytp-unmute-text">탭하여 음소거 해제</div>
						<div class="ytp-unmute-box"></div>
					</div>
				</button>
				<div class="ytp-cued-thumbnail-overlay" data-layer="4" style="">
					<div class="ytp-cued-thumbnail-overlay-image"></div>
					<button class="ytp-large-play-button ytp-button" aria-label="재생">
						<svg height="100%" version="1.1" viewBox="0 0 68 48" width="100%">
							<path class="ytp-large-play-button-bg"
								d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z"
								fill="#f00"></path>
							<path d="M 45,24 27,14 27,34" fill="#fff"></path></svg>
					</button>
				</div>
				<div class="ytp-paid-content-overlay" aria-live="assertive"
					aria-atomic="true" data-layer="4">
					<a class="ytp-paid-content-overlay-link" target="_blank"
						style="display: none;"><div
							class="ytp-paid-content-overlay-icon"></div>
						<div class="ytp-paid-content-overlay-text"></div>
						<div class="ytp-paid-content-overlay-chevron"></div></a>
				</div>
			</div>
		</div>
		<div id="player-control-container" hidden=""></div>
		<div id="player-endscreen-container" hidden=""></div>
		<div id="player-shorts-container" hidden=""></div>
	</div>
	 <ytm-app id="app" class="sticky-player "> <ytm-mobile-topbar-renderer
		id="header-bar" class="sticky-player in">
	<header class="mobile-topbar-header cbox" data-mode="browse"
		data-has-rounded-searchbox="true">

		<ytm-searchbox class="mobile-topbar-header-content search-mode">
		<form action="https://m.youtube.com/results"
			class="searchbox-form cbox">
			<div class="searchbox-input-wrapper">
				<input class="searchbox-input title" name="search"
					placeholder="YouTube 검색" autocomplete="off" autocorrect="off"
					spellcheck="true" type="text" style="width: 300px; height: 25px; margin-left: 10px;"><input type="submit"
					hidden="">
				<input type="button" id="yapiButton" value="버튼"/>
				<!-- <button class="icon-button " aria-label="YouTube 검색"
					aria-haspopup="false">
					<c3-icon> <svg xmlns="http://www.w3.org/2000/svg"
						enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24"
						width="24">
						<path
							d="M20.87,20.17l-5.59-5.59C16.35,13.35,17,11.75,17,10c0-3.87-3.13-7-7-7s-7,3.13-7,7s3.13,7,7,7c1.75,0,3.35-0.65,4.58-1.71 l5.59,5.59L20.87,20.17z M10,16c-3.31,0-6-2.69-6-6s2.69-6,6-6s6,2.69,6,6S13.31,16,10,16z"></path></svg></c3-icon>
				</button> -->
			</div>
			<div class="searchbox-voice-search-wrapper"></div>
		</form>
		<div class="searchbox-dropdown"
			data-has-modern-search-suggest-behavior=""></div>
		</ytm-searchbox>
	</header></ytm-mobile-topbar-renderer> 
	
	<div id="gird">

	</div>
	<!-- <div class="page-container">
		<ytm-browse> <ytm-single-column-browse-results-renderer
			class=" ">
		<div>
			<div tab-identifier="FEwhat_to_watch">
				<ytm-rich-grid-renderer class=" ">
				<div class="rich-grid-renderer-header rich-grid-sticky-header">
				</div>
				<div class="rich-grid-renderer-contents">
					<ytm-rich-item-renderer
						class="fresh-feeds-dismissals fresh-feeds-separators fresh-feeds-24px-vertical-margin">
					<ytm-promoted-video-renderer class=" feed-item">
					<ytm-media-item class="" use-vertical-layout="true">
					<a class=" media-item-thumbnail-container" aria-hidden="true"
						href="https://m.youtube.com/watch?v=ZcurtuMQZ2A&amp;pp=CkkIERAIQhdYdUE2Wk0tR0ZLZVF2Y0FQbzZ1UGdBc4oDKSADKAIwBjgIShMIz63dkLas_gIVJ0gPAh2j1QOwUgYIBTABWAFoAXAV"><div
							class="video-thumbnail-container-large center rounded-thumbnail">
							<div class="cover video-thumbnail-img video-thumbnail-bg"></div>
							<img alt=""
								class="cover video-thumbnail-img yt-core-image--fill-parent-height yt-core-image--fill-parent-width yt-core-image yt-core-image--content-mode-scale-aspect-fill yt-core-image--loaded"
								src="/resources/static/hq720.jpg">
							<div class="video-thumbnail-overlay-bottom-group">
								<ytm-thumbnail-overlay-time-status-renderer
									class="fresh-feeds-timestamps" data-style="DEFAULT">
								<span class="icon-text"><span
									class="yt-core-attributed-string" aria-label="4분 4초"
									role="text">4:04</span></span></ytm-thumbnail-overlay-time-status-renderer>
							</div>
						</div></a>
					<div class="details fresh-feeds-separators">
						<div class="media-channel">
							<a href="https://m.youtube.com/user/enjoypizzahut"><ytm-profile-icon
									class="media-icon" aria-hidden="false"> <img
									alt="" src="/resources/static/channels4_profile.jpg"></ytm-profile-icon></a><a
								class="media-item-extra-endpoint" aria-hidden="true"
								href="https://m.youtube.com/watch?v=ZcurtuMQZ2A&amp;pp=CkkIERAIQhdYdUE2Wk0tR0ZLZVF2Y0FQbzZ1UGdBc4oDKSADKAIwBjgIShMIz63dkLas_gIVJ0gPAh2j1QOwUgYIBTABWAFoAXAV"></a>
						</div>
					</div>
					</ytm-media-item></ytm-promoted-video-renderer></ytm-rich-item-renderer>
					
				</div>
				</ytm-rich-grid-renderer>
			</div>
		</div>
		</ytm-single-column-browse-results-renderer></ytm-browse>
	</div> -->
	<div class="error-container"></div>
	<div class="spinner" hidden=""></div>
	<panel-container></panel-container> <bottom-sheet-container></bottom-sheet-container>
	</ytm-app> 
</body>
</html>

