<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>女神异闻录联动信息 Persona Collaboration Information - 登录</title>
    <link rel="icon" href="img/atlus.png" sizes="8x8">
    <link rel="stylesheet" href="css/login_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>

<!-- 头部 -->
    <header>
          <h1 class="titletext">
             <img src="img/atlus_logo.png" alt="ATLUS Logo">
          </h1>
    </header>

<div class="container">
    <div class="login-container">
        <div class="login-header">
            <h1>登录</h1>
        </div>
        
        <form class="login-form" id="loginForm">
            <div class="error-message" id="errorMessage"></div>
            
            <div class="input-group">
                <label for="username">用户名</label>
                <i class="fas fa-user"></i>
                <input type="text" id="username" name="username" placeholder="请输入用户名" required>
            </div>
            
            <div class="input-group">
                <label for="password">密码</label>
                <i class="fas fa-lock"></i>
                <input type="password" id="password" name="password" placeholder="请输入密码" required>
            </div>
            
            <div class="forgot">
                <a href="#" class="forgot-password">忘记密码?</a>
            </div>
            
            <button type="submit" class="login-button">登录</button>
            
            <div class="register-link">
                还没有账号? <a href="register.html">立即注册</a>
            </div>
        </form>
    </div>
</div>

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

    <script src="js/login_script.js"></script>
</body>
</html>