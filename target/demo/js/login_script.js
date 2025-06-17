document.addEventListener('DOMContentLoaded', function() {
    // 从URL获取预填的用户名
    const urlParams = new URLSearchParams(window.location.search);
    const prefillUsername = urlParams.get('username');
    if (prefillUsername) {
        document.getElementById('username').value = decodeURIComponent(prefillUsername);
    }
    
    document.getElementById('loginForm').addEventListener('submit', function(e) {
        e.preventDefault();
        
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        const errorMessage = document.getElementById('errorMessage');
        
        // 隐藏消息
        errorMessage.style.display = 'none';
        errorMessage.textContent = '';
        
        // 简单验证
        if (!username || !password) {
            errorMessage.textContent = '用户名和密码不能为空！';
            errorMessage.style.display = 'block';
            return;
        }
        
        // 发送登录请求
        fetch('LoginServlet', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: `username=${encodeURIComponent(username)}&password=${encodeURIComponent(password)}`
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                // 登录成功跳转到首页
                window.location.href = 'index.jsp';
            } else {
                errorMessage.textContent = data.message || '登录失败，请检查用户名和密码！';
                errorMessage.style.display = 'block';
                
                // 显示注册提示
                if (data.message && data.message.includes('未注册')) {
                    errorMessage.innerHTML += '<br>请先<a href="register.jsp">注册</a>';
                }
            }
        })
        .catch(error => {
            console.error('Error:', error);
            errorMessage.textContent = '登录请求失败，请稍后再试！';
            errorMessage.style.display = 'block';
        });
    });
});