<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>女神异闻录联动信息 Persona Collaboration Information</title>
        <link rel="icon" href="img/atlus.png" sizes="8x8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="css/index.css">
</head>

<body>
    <!-- 头部 -->
    <header>
	      <h1 class="titletext">
		     <img src="img/atlus_logo.png" alt="ATLUS Logo">
	      </h1>

          <div id="userInfo" style="display: none;">
            <span id="usernameDisplay"></span>
            <a href="logout" class="Buttons">退出</a>
        </div>

	      <div class="buttonarea">
		     <a href="https://www.atlus.co.jp/" class="Buttons">官方网站</a>
		     <a href="login.jsp" class="Buttons">登录</a>
		     <a href="register.jsp" class="Buttons">注册</a>
	      </div>
     </header>

    <!-- 海报 -->
	  <div class="main">
		  <div id="poster">
			  <img id="logo" src="img/25th_all.png" alt="25th_all" />
		 </div>

    <!-- 轮播图区域 -->
    <section class="carousel-section">
        <h2 class="section-title">最新活动</h2>
        <div class="carousel-container">
            <div class="carousel">
                <div class="carousel-item">
                    <img src="img/2025.6.6/1.1.png" alt="联动1" class="carousel-img">
                    <div class="carousel-content">
                        <h3 class="carousel-title" data-href="other_html/2025.6.6/2025.6.6_1.jsp">P3R与阳光城王子酒店餐厅联动开始！</h3>
                        <div class="carousel-meta">
                            <span><i class="far fa-calendar"></i> 2025年6月6日</span>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/2025.6.6/2.1.png" alt="联动2" class="carousel-img">
                    <div class="carousel-content">
                        <h3 class="carousel-title" data-href="other_html/2025.6.6/2025.6.6_2.jsp">Persona系列大促销正在进行中！</h3>
                        <div class="carousel-meta">
                            <span><i class="far fa-calendar"></i> 2025年6月6日</span>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/2025.5.13/1.1.png" alt="联动3" class="carousel-img">
                    <div class="carousel-content">
                        <h3 class="carousel-title" data-href="other_html/2025.5.13/2025.5.13_1.jsp">香水品牌Primaniacs x《女神异闻录３ Reload》香水决定发售！现已在网店接受预约。</h3>
                        <div class="carousel-meta">
                            <span><i class="far fa-calendar"></i> 2025年5月13日</span>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/2025.5.13/2.1.png" alt="联动4" class="carousel-img">
                    <div class="carousel-content">
                        <h3 class="carousel-title" data-href=" other_html/2025.5.13/2025.5.13_2.jsp">《女神异闻录５ 皇家版》Atlus官方商品“亚克力钥匙扣”现已发售！</h3>
                        <div class="carousel-meta">
                            <span><i class="far fa-calendar"></i> 2025年5月13日</span>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/2025.5.9/1.1.png" alt="联动5" class="carousel-img">
                    <div class="carousel-content">
                        <h3 class="carousel-title" data-href="other_html/2025.5.9/2025.5.9_1.jsp">《女神异闻录５ 皇家版》Atlus官方商品“透明文件夹＆明信片＆徽章套装”现已发售！</h3>
                        <div class="carousel-meta">
                            <span><i class="far fa-calendar"></i> 2025年5月9日</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-nav">
                <button class="carousel-btn prev-btn"><i class="fas fa-chevron-left"></i></button>
                <button class="carousel-btn next-btn"><i class="fas fa-chevron-right"></i></button>
            </div>
            <div class="carousel-indicators">
                <div class="indicator active"></div>
                <div class="indicator"></div>
                <div class="indicator"></div>
                <div class="indicator"></div>
                <div class="indicator"></div>
            </div>
        </div>
    </section>

    <!-- 博客内容区域 -->
    <section class="blog-content">
        <h2 class="section-title">所有活动</h2>
        
        <div class="month-section">
            <div class="month-header">
                <h3 class="month-title">2025年6月</h3>
            </div>

            <div class="posts-container">
                <article class="blog-post">
                    <img src="img/2025.6.6/1.1.png" alt="2025.6.6/1.1.png" class="post-img">
                    <div class="post-content">
                        <h3 class="carousel-title" data-href="other_html/2025.6.6/2025.6.6_1.jsp">P3R与阳光城王子酒店餐厅联动开始！</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年6月6日</span>
                        </div>
                    </div>
                </article>
                
                <article class="blog-post">
                    <img src="img/2025.6.6/2.1.png" alt="2025.6.6/2.1.png" class="post-img">
                    <div class="post-content">
                        <h3 class="carousel-title" data-href="other_html/2025.6.6/2025.6.6_2.jsp">Persona系列大促销正在进行中！</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年6月6日</span>
                        </div>
                    </div>
                </article>
            </div>
        </div>
        
        <div class="month-section">
            <div class="month-header">
                <h3 class="month-title">2025年5月</h3>
            </div>
            <div class="posts-container">
                <article class="blog-post">
                    <img src="img/2025.5.13/1.1.png" alt="2025.5.13/.1.png" class="post-img">
                    <div class="post-content">
                        <h3 class="carousel-title" data-href="other_html/2025.5.13/2025.5.13_1.jsp">角色香水品牌Primaniacs x《女神异闻录３ Reload》联动香水决定发售！现已在网店接受预约。</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年5月13日</span>
                        </div>
                    </div>
                </article>
                
                <article class="blog-post">
                    <img src="img/2025.5.13/2.1.png" alt="2025.5.13/2.1.png" class="post-img">
                    <div class="post-content">
                        <h3 class="carousel-title" data-href="other_html/2025.5.13/2025.5.13_2.jsp">《女神异闻录５ 皇家版》Atlus官方商品“亚克力钥匙扣”现已发售！</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年5月13日</span>
                        </div>
                    </div>
                </article>
                
                <article class="blog-post">
                    <img src="img/2025.5.9/1.1.png" alt="2025.5.9/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.5.9/2025.5.9_1.jsp">《女神异闻录５ 皇家版》Atlus官方商品“透明文件夹＆明信片＆徽章套装”现已发售！</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年5月9日</span>
                        </div>
                    </div>
                </article>

								<article class="blog-post">
                    <img src="img/2025.5.8/1.1.png" alt="2025.5.8/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.5.8/2025.5.8_1.jsp">女神异闻录３ Reload × MY ROUTINE 合作蛋白粉现已发售</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年5月8日</span>
                        </div>
                    </div>
                </article>

								<article class="blog-post">
                    <img src="img/2025.5.2/1.1.png" alt="2025.5.2/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.5.2/2025.5.2_1.jsp">雨宫莲和亚森的1/8比例手办登场。</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年5月2日</span>
                        </div>
                    </div>
                </article>

							<article class="blog-post">
                    <img src="img/2025.5.1/1.1.png" alt="2025.5.1/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.5.1/2025.5.1_1.jsp">【预约开始】ARTFX J 明智吾郎 怪盗ver.＜再版＞</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年5月1日</span>
                        </div>
                    </div>
                </article>

            </div>
        </div>
        
        <div class="month-section">
            <div class="month-header">
                <h3 class="month-title">2025年4月</h3>
            </div>
            <div class="posts-container">
                <article class="blog-post">
                    <img src="img/2025.4.25/1.1.png" alt="2025.4.25/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.4.25/2025.4.25_1.jsp">《女神异闻录５ 皇家版》Atlus官方商品，亚克力立牌登场！</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年4月25日</span>
                        </div>
                    </div>
                </article>

				<article class="blog-post">
                    <img src="img/2025.4.25/2.1.png" alt="2025.4.25/2.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.4.25/2025.4.25_2.jsp">《女神异闻录３ Reload》Atlus官方商品，海报套装登场！</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年4月25日</span>
                        </div>
                    </div>
                </article>

				<article class="blog-post">
                    <img src="img/2025.4.24/1.1.png" alt="2025.4.24/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.4.24/2025.4.24_1.jsp">【扭蛋新商品】 ＼ 人气系列 #睡眠酱 第2弹决定发售／ </h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年4月24日</span>
                        </div>
                    </div>
                </article>

				<article class="blog-post">
                    <img src="img/2025.4.18/1.1.png" alt="2025.4.18/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.4.18/2025.4.18_1.jsp">“女神异闻录系列 威化饼干2”商品阵容公开！</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年4月18日</span>
                        </div>
                    </div>
                </article>

								<article class="blog-post">
                    <img src="img/2025.4.11/1.1.png" alt="2025.4.11/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.4.11/2025.4.11_1.jsp">《女神异闻录３ Reload》，由大川老师绘制的主人公的玩偶挂饰，现已开始预约。</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年4月11日</span>
                        </div>
                    </div>
                </article>

								<article class="blog-post">
                    <img src="img/2025.4.9/1.1.png" alt="2025.4.9/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.4.9/2025.4.9_1.jsp">＼《女神异闻录系列》威化饼干第2弹 企划进行中！／</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年4月9日</span>
                        </div>
                    </div>
									</article>

									<article class="blog-post">
                    <img src="img/2025.4.3/1.1.png" alt="2025.4.3/1.1.png" class="post-img">
                    <div class="post-content">
                         <h3 class="carousel-title" data-href="other_html/2025.4.3/2025.4.3_1.jsp">【新商品通知】 角色香水品牌Primaniacs x《女神异闻录４ 黄金版》《女神异闻录５ 皇家版》联动香水决定发售！</h3>
                        <div class="post-meta">
                            <span><i class="far fa-calendar"></i> 2025年4月3日</span>
                        </div>
                    </div>
									</article>
            </div>
        </div>
    </section>

    <!-- 页脚区域 -->
    <footer>
        <div class="footer-content">
            <div class="footer-section">
                <h4 class="footer-title">关于博客</h4>
                <p style="color: rgba(255,255,255,0.7); margin-bottom: 20px; max-width: 300px; margin: 0 auto 20px;">欢迎访问我的个人博客，了解关于女神异闻录联动的最新信息和资源。</p>
            </div>
            
            <div class="footer-section">
                <h4 class="footer-title">相关链接</h4>
                <ul class="footer-links">
                    <li><a href="https://space.bilibili.com/200514341?spm_id_from=333.1007.0.0">关于我</a></li>
                    <li><a href="https://github.com/sherpuff/persona_web/tree/main">资源分享</a></li>
                    
                </ul>
            </div>
        </div>
        
        <div class="copyright">
            <p>&copy; 2025 女神异闻录联动信息 Persona Collaboration Information | 个人博客 保留所有权利</p>
        </div>
    </footer>

    <script src="js/index_script.js"></script>
</body>
</html>