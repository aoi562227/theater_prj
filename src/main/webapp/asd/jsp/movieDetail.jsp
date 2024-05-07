
<%@page import="VO.MovieVO"%>
<%@page import="user.DAO.MovieDetailDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Expires" content="-1" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="No-Cache" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="viewport" content="width=1024" />
<meta name="keywords"
	content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작" />
<meta name="description"
	content="영화 그 이상의 다양하고 즐거운 몰입의 경험을 만듭니다. 라이프스타일 플랫폼 CGV" />
<meta property="og:site_name" content="영화 그 이상의 감동. CGV" />
<meta id="ctl00_og_title" property="og:title"
	content="범죄도시4 | 영화 그 이상의 감동. CGV"></meta>

<!-- 24.02 네이버 웹 검색 연관 채널 방식 수정 -->
<script type="application/ld+json">
    {
         "@context": "http://schema.org",
         "@type": "Organization",
         "name": "CGV",
         "url": "https://www.cgv.co.kr",
         "sameAs": [
           "https://www.instagram.com/cgv_korea/",
           "https://www.youtube.com/channel/UCmjUMtUw6wXLrsULdxuXWdg",
           "https://www.facebook.com/CJCGV",
           "https://play.google.com/store/apps/details?id=com.cgv.android.movieapp&pli=1" ]
    }
    </script>

<!-- 무비상세 css -->
<link rel="stylesheet" type="text/css" href="../css/movieDetail.css">
<meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88104/88104_185.jpg"></meta>
<link rel="alternate" href="http://m.cgv.co.kr" />
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="https://img.cgv.co.kr/R2014/images/favicon.ico" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />
<link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css" />
<link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="/common/js/extraTheaters.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.config.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.utils.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.init.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
<script src="https://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick.css" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/icheck/login.timer.js"></script>
<script src="https://img.cgv.co.kr/R2014/js/icheck/icheck.min.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css" />
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/preegg.css" />
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/giftstore.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/commonstore.js"></script>
<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/giftstore/giftstore.css" />
<link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
<script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>
<link href="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jquery.jqplot.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.pieRenderer.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.donutRenderer.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.pointLabels.min.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/Chart.custom.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/amcharts.js"></script>
<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/radar.js"></script>

<style>
/* 별점 아이콘 스타일링 */
.star-rating::before {
	content: '★★★★★';
	letter-spacing: 0.1em;
	color: #ccc; /* 별점의 기본 색상 */
}

/* 실제 별점에 따라 색상을 변경하는 스타일 */
.review-item .star-rating::before {
	content: '★★★★★';
	letter-spacing: 0.1em;
	color: #f7d51d; /* 별점의 색상을 변경하려면 원하는 색상으로 변경 */
}

/* 리뷰 리스트 스타일 */
.review-list {
	margin-top: 20px;
}

.review-item {
	margin-bottom: 10px;
}

.user-id {
	font-weight: bold;
	margin-right: 10px;
}

.review-content {
	margin-top: 5px;
}

/* 별점에 따라 별이 채워지도록 수정 */
.star-rating[data-rating="1"]::before {
	content: '★☆☆☆☆'; /* 1점일 때 */
}

.star-rating[data-rating="2"]::before {
	content: '★★☆☆☆'; /* 2점일 때 */
}

.star-rating[data-rating="3"]::before {
	content: '★★★☆☆'; /* 3점일 때 */
}

.star-rating[data-rating="4"]::before {
	content: '★★★★☆'; /* 4점일 때 */
}

.star-rating[data-rating="5"]::before {
	content: '★★★★★'; /* 5점일 때 */
}
</style>


<script type="text/javascript">
    $(function() {

    }); // ready
</script>



</head>
<body class="">


	<div class="skipnaiv">
		<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
	</div>
	<div id="cgvwrap">
		<!-- header start-->
		<jsp:include page="header.jsp" />
		<!--header end-->


<%
//받은 영화코드 파라미터 저장
String movieCode = request.getParameter("midx");
MovieDetailDAO mdDAO = MovieDetailDAO.getInstance();
MovieVO mVO = mdDAO.selectMovieDetail(movieCode);

String title = mVO.getMovieTitle();
String releaseDate = mVO.getMovieReleaseDate();
String genre = mVO.getMovieGenre();
String rating = mVO.getMovieRating();
String director = mVO.getMovieDirector();
String distributor = mVO.getMovieDistributor();
String runningTime = mVO.getMovieRunningTime();
String mainActor = mVO.getMovieMainActor();
String subActor = mVO.getMovieSubActor();
String description = mVO.getMovieDescription();
String posterPath = mVO.getMoviePosterPath();
String screeningStatus = mVO.getMovieScreeningStatus();
String inputDate = mVO.getMovieInputDate();
String statusClass = null;
//관람 등급 설정
rating = rating.equals("All") ? "전체 관람가" : rating + "이상 관람가";


//상영 상태 설정
if(screeningStatus.equals("Y")){
	screeningStatus = "현재상영중";
    statusClass = "round lightblue";

}else{
	screeningStatus = "미상영작";
    statusClass = "round red";

}
%>
		<!-- Contaniner -->
		<div id="contaniner" class="">
			<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<!-- Contents Area -->
			<div id="contents" class="">
				<!-- Contents Start -->
				<!-- 실컨텐츠 시작 -->
				<div class="wrap-movie-detail" id="select_main">

					<div class="sect-base-movie">
						<h3>
							<strong><%= title %></strong>기본정보
						</h3>
						<div class="box-image">
							<a
								href="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88104/88104_1000.jpg"
								title="포스터 크게 보기 새창" target="_blank"> <span
								class="thumb-image"> <img src="../images/movie/<%=posterPath%>">
									<span class="ico-posterdetail">포스터 크게 보기</span> <!-- 영상물 등급 노출 변경 2022.08.24 -->
									<i class="cgvIcon etc age<%=rating%>"><%=rating %></i> <!--<span class="ico-grade 15"> 15</span> -->
							</span>
							</a>
						</div>
						<div class="box-contents">
							<div class="title">
								<strong><%= title %></strong> <em class="<%=statusClass %>"><span><%=screeningStatus %></span></em>
							</div>
							<div class="score">
								<strong class="percent">예매율&nbsp;<span>93.5%</span></strong>
								<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->

							</div>
							<!-- 떨어지는 얘 이전 요소에 class=on을 넣는다 -->
							<div class="spec">
								<dl>
									<dt>
										감독 :
										<%=director %></dt>
									<dt>
										/ 주연배우 :
										<%=mainActor%>
										/ 조연배우 :
										<%=subActor%>
									</dt>
									<br />


									<dt>
										장르 :
										<%=genre%></dt>
									<dd></dd>
									<dt>/ 기본 정보 :</dt>
									<dd class="on"><%=rating%>,<%=runningTime%></dd>
									<dt>개봉 :</dt>
									<dd class="on"><%=releaseDate%></dd>




								</dl>
							</div>
							<span class="like"> <!-- 예매하기 --> <a
								class="link-reservation"
								href="/ticket/?MOVIE_CD=20035938&MOVIE_CD_GROUP=20035938">예매</a>
								<a class="link-reservation"
								href="/ticket/?MOVIE_CD=20035938&MOVIE_CD_GROUP=20035938">리뷰보기</a>
							</span>

						</div>
					</div>

					<div class="cols-content" id="menu">
						<div class="col-detail">
							<!-- 메뉴가 선택되면 a 에 title="선택" 이라고 넣는다 -->
							<ul class="tab-menu">
								<li class="on"><a title="현재 선택됨"
									href="/movies/detail-view/?midx=88104#menu">주요정보 </a></li>
								<li><a
									href="/movies/detail-view/still-cut.aspx?midx=88104#menu">스틸컷</a></li>
								<li><a href="/movies/detail-view/?midx=88104#commentReg">평점/리뷰</a></li>
								<li class="last"><a
									href="/movies/detail-view/show-times.aspx?midx=88104#menu">상영시간표</a></li>
							</ul>
							<div class="sect-story-movie">
								<%
							    String[] descriptionLines = description.split("[!?\"\\.]");
								for (String line : descriptionLines) {
								%>
								<%=line.trim()%>.<br>
								<%
								}
								%>
							</div>


							<!-- .sect-trailer -->
							<div id="ctl00_PlaceHolderContent_Section_Still_Cut"
								class="sect-stillcut">
								<div class="heading">
									<h4>스틸컷</h4>
									<span class="count"><strong id="stillcut_current">1</strong>/2</span><a
										class="link-more" href="still-cut.aspx?midx=88104">더보기</a>
								</div>
								<div class="slider-wrap">
									<div class="slider" id="still_motion">

										<div class="item-wrap">
											<div class="item">
												<img
													data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000088/88104/88104224996_727.jpg"
													alt="범죄도시4" onerror="errorImage(this)" />
											</div>
										</div>

										<div class="item-wrap">
											<div class="item">
												<img
													data-src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000088/88104/88104224995_727.jpg"
													alt="범죄도시4" onerror="errorImage(this)" />
											</div>
										</div>
										<button type="button" class="btn-prev">이전 페이지 이동</button>
										<button type="button" class="btn-next">다음 페이지 이동</button>
									</div>
								</div>
							</div>
							<div class="paging">
								<ul id="paging_point"></ul>
							</div>
						</div>
					</div>
				</div>
				<div id="reviewTime">
					<h1 class="rowLine">Review</h1>
					<ul class="sort" id="sortTab">
						<li class="sortTab on" id="test"><a
							href="javascript:void(0);" title="현재선택">최신순<span
								class="arrow-down"></span></a></li>
						<li class="sortTab"><a href="javascript:void(0);">추천순<span
								class="arrow-down"></span></a></li>
					</ul>
				</div>
				<script type="text/javascript">
$(function() {
    var sortTabs = $(".sortTab"); // 모든 정렬 탭을 선택합니다.

    // 각 탭에 대해 클릭 이벤트를 추가합니다.
    sortTabs.click(function() {
        // 모든 탭의 클래스를 제거합니다.
        sortTabs.removeClass("on");

        // 클릭된 탭에 클래스를 추가합니다.
        $(this).addClass("on");

        // 클릭된 탭의 화살표 요소를 찾습니다.
        var arrow = $(this).find(".arrow-down");

        // 다른 탭의 화살표를 숨깁니다.
        $(".arrow-down").hide();

        // 클릭된 탭의 화살표를 보여줍니다.
        if (arrow.length > 0) {
            arrow.show();
        }
    });
});
</script>
				<div class="review-list">
					<ul style="margin: 0 auto; width: fit-content;">
					</ul>
				</div>
				<!-- //end review-list-->
			</div>
			<!-- 별점 리뷰함수 -->
			<script>
    $(document).ready(function() {
    	// 페이지 로드 시 별점 데이터를 가져와서 HTML에 채워넣음
    	function fetchStarRatings() {
    	    // 서버로부터 별점 데이터를 가져와서 처리하는 코드
    	    // 예: $.ajax 를 사용하여 API 호출
    	    // 별점 데이터를 가져온 후 아래의 함수 호출: displayStarRatings(starData);

    	    // 가상의 별점 데이터 (예시)
    	    var starData = [
    	        { userId: "사용자1", rating: 5, reviewContent: "리뷰 내용1" },
    	        { userId: "사용자2", rating: 4, reviewContent: "리뷰 내용2" },
    	        { userId: "사용자3", rating: 1, reviewContent: "리뷰 내용3" },
    	        { userId: "사용자4", rating: 5, reviewContent: "리뷰 내용4" },
    	        { userId: "사용자5", rating: 5, reviewContent: "리뷰 내용5" },
    	        { userId: "사용자6", rating: 3, reviewContent: "리뷰 내용6" },
    	        { userId: "사용자7", rating: 5, reviewContent: "리뷰 내용7" },
    	        { userId: "사용자8", rating: 2, reviewContent: "리뷰 내용8" },
    	        { userId: "사용자9", rating: 3, reviewContent: "리뷰 내용9" },
    	        { userId: "사용자10", rating: 1, reviewContent: "리뷰 내용10" },
    	        // 여기에 별점 데이터 추가
    	    ];

    	    // 별점 데이터를 가져온 후 아래의 함수 호출
    	    displayStarRatings(starData);
    	}

    	// 별점을 HTML에 채워넣는 함수
    	function displayStarRatings(starData) {
    	    var $reviewList = $('.review-list ul');
    	    $reviewList.empty(); // 기존의 리뷰 리스트를 비움

    	    // 가져온 별점 데이터를 기반으로 리뷰 아이템을 생성하여 추가
    	    for (var i = 0; i < starData.length; i++) {
    	        var starRating = starData[i];
    	        var $reviewItem = $('<li><div class="review-item"><span class="user-id">' + starRating.userId + '</span><span class="star-rating" data-rating="' + starRating.rating + '"></span><div class="review-content">' + starRating.reviewContent + '</div></div></li>');
    	        $reviewList.append($reviewItem);
    	    }
    	    // 별점 데이터를 가져와서 HTML에 채워넣은 후에 각 별점 아이콘에 적절한 색상을 적용하기 위해 별점 아이콘의 data-rating 속성을 설정
    	    $reviewList.find('.star-rating').each(function() {
    	        var rating = $(this).data('rating');
    	        $(this).attr('data-rating', rating); // data-rating 속성 설정
    	    });
    	}

    	// 페이지 로드 시 별점 데이터를 가져와서 HTML에 채워넣음
    	fetchStarRatings();

    });
</script>



			<script type="text/javascript">
//<![CDATA[
var commentOptions;
    (function ($) {
        $(function () {

            var myPointPage = 0;    
            var mypointYN = false;    
            var mypointPaneltyYN = false;    
            var mypointShowViewYN = false;    

            // 성별/연령별 예매분포 차트 추가
            var data = {
                    
                    age: [
                ["10대", 2.2],["20대", 24.8],["30대", 32.6],["40대", 23.3],["50대", 17.1]
                    ],
                    sex: [
                 ["남 48.4%", 48.4],["여 51.6%", 51.6]
                    ]

                };
                            
            $('#jqplot_sex').graphChart({ 'type': 'donut', 'data': data.sex });
            $('#jqplot_age').graphChart({ 'type': 'bar', 'data': data.age });
            // 성별/연령별 예매분포 차트 추가

            //첫 로딩시 호출, 첫 로딩시는 "실관람객"탭이 디폴트여서 실관람객 평이 있냐 여부를 따져야 리스트 갯수가 맞게 나온다. "setMypointAttribute()"함수로 대처시 callback이 setMyPointBuild() 함수와 겹쳐 오락가락 하게 된다%>
            setMypointAttributeFirstLoding();
            searchPointList(1, true, 1, 0);              // 첫 로딩시 평점 조회    
   
            var $stillCut = $('#still_motion'),
                $stillCutCurrent = $('#stillcut_current'),
                stillOptions = { 'type': 'photo', 'onBeforeHandler': onBeforeHandler };

            function onBeforeHandler(_index) {
                $stillCutCurrent.text(_index + 1);
            }
            $stillCut.visualMotion(stillOptions);

                       
            
            // 평점 리스트 조회
            function searchPointList(page, isGetTotalCount, filterType, orderType) {
                myPointPage = page;
                
                filterType= 1;
                if(!orderType) {
                    orderType = $('.sort>li.on').data('order-type');
                }                

                // 첫로딩후 페이지 이동시 IsGetTotalCount = false 처리됨
                // 첫로딩시 setPointListBuild()에서 result.TotalCount:전체평점갯수, 페이지 이동시 result.TotalCount:0
                if(!isGetTotalCount) { isGetTotalCount = false; }

                var isMyPageIndex = 6;
                var isMyPoint = false;
                if(mypointYN) {        //내가 쓴 평점이 있다면(첫페이지만 5개 가져온다, 이후는 6개씩) 
                    if (filterType == "1" && mypointShowViewYN) {      //추가 : 실관람객탭이면서 실관람객인지
                        isMyPoint = true;
                    }else if (filterType == "2" && mypointPaneltyYN) {//추가 :  패널티탭이면서 패널티회원인지
                        isMyPoint = true;
                    }else if (filterType == "0") {                          //추가 :  전체탭
                        isMyPoint = true;
                    }
                }
                                
	            $.ajax({
	                type: "POST",
	                url: '/common/ajax/point.aspx/GetMoviePointVariableList',
	                data: "{ 'movieIdx': 88104, 'pageIndex': " + page + ", 'pageSize': " + isMyPageIndex + ", 'orderType': " + orderType + ", 'filterType': 1, 'isTotalCount' : " + isGetTotalCount + ", 'isMyPoint' : '" + isMyPoint + "' }",
	                contentType: "application/json; charset=utf-8",
	                dataType: 'json',
	                success: function (result) {
						setPointListBuild($.parseJSON(result.d));
	                }
	            });                                
            }


            /* 첫로딩시 1번만 호출, 내가 쓴평점이 있는지 전영변수 세팅 및 체크 하는 함수 */            
            function setMypointAttributeFirstLoding() {
                            
            } 
        });
    })(jQuery);
//]]>
</script>
		</div>




		<!-- /Contents Area -->

		<!-- E Contaniner -->

		<!-- S 예매하기 및 TOP Fixed 버튼 -->
		<div class="fixedBtn_wrap">

			<a href="/ticket/" class="btn_fixedTicketing">예매하기</a> <a
				href="#none" class="btn_gotoTop"><img
				src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png"
				alt="최상단으로 이동" /></a>
		</div>

		<!-- E 예매하기 및 TOP Fixed 버튼 -->

		<!-- S Footer -->


		<!-- S Footer -->
		<jsp:include page="footer.jsp" />
		<!-- S Footer -->

	</div>
</body>
</html>

</div>
</body>
</html>