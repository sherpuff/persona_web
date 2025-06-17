<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>女神异闻录联动信息 Persona Collaboration Information - 注册</title>
    <link rel="icon" href="img/atlus.png" sizes="8x8">
    <link rel="stylesheet" href="css/register_style.css">
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
    <div class="register-container">
        <div class="register-header">
            <h1>创建新账户</h1>
        </div>
        
        <form class="register-form" id="registerForm">
            <div class="error-message" id="errorMessage"></div>
            <div class="success-message" id="successMessage"></div>
            
            <div class="input-group">
                <label for="username">用户名</label>
                <i class="fas fa-user"></i>
                <input type="text" id="username" name="username" placeholder="请输入用户名（4-20个字符）" required>
            </div>
            
            <div class="input-group">
                <label for="email">电子邮箱</label>
                <i class="fas fa-envelope"></i>
                <input type="email" id="email" name="email" placeholder="请输入有效邮箱" required>
            </div>
            
            <div class="input-group">
                <label for="password">密码</label>
                <i class="fas fa-lock"></i>
                <input type="password" id="password" name="password" placeholder="请输入密码（至少8位）" required>
            </div>
            
            <!-- 确认密码字段 -->
            <div class="input-group">
                <label for="confirmPassword">确认密码</label>
                <i class="fas fa-lock"></i>
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="请再次输入密码" required>
            </div>
            
            <div class="password-requirements">
                <strong>密码要求:</strong>
                <ul>
                    <li>至少8个字符</li>
                    <li>包含字母和数字</li>
                    <li>可包含特殊字符 @$!%*?&</li>
                </ul>
            </div>
            
            <button type="submit" class="register-button">注册账户</button>
            
            <div class="login-link">
                已有账号? <a href="login.jsp">立即登录</a>
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

    <script src="js/register_script.js"></script>
</body>
</html>