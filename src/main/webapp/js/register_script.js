document.addEventListener('DOMContentLoaded', function() {
            // 从URL获取预填的用户名
            const urlParams = new URLSearchParams(window.location.search);
            const prefillUsername = urlParams.get('username');
            if (prefillUsername) {
                document.getElementById('username').value = decodeURIComponent(prefillUsername);
            }
        });
        
        document.getElementById('registerForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const username = document.getElementById('username').value;
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            const errorMessage = document.getElementById('errorMessage');
            const successMessage = document.getElementById('successMessage');
            
            // 隐藏消息
            errorMessage.style.display = 'none';
            successMessage.style.display = 'none';
            
            // 验证用户名
            if (username.length < 4 || username.length > 20) {
                errorMessage.textContent = '用户名长度需在4-20个字符之间！';
                errorMessage.style.display = 'block';
                return;
            }
            
            // 验证邮箱格式
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                errorMessage.textContent = '请输入有效的电子邮箱地址！';
                errorMessage.style.display = 'block';
                return;
            }
            
            // 验证密码
            if (password.length < 8) {
                errorMessage.textContent = '密码长度至少为8个字符！';
                errorMessage.style.display = 'block';
                return;
            }
            
            // 验证密码是否匹配
            if (password !== confirmPassword) {
                errorMessage.textContent = '两次输入的密码不匹配！';
                errorMessage.style.display = 'block';
                return;
            }
            
            // 添加密码复杂度验证
            const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*?&]{8,}$/;
            if (!passwordRegex.test(password)) {
                errorMessage.textContent = '密码必须包含字母和数字，且长度至少8位！';
                errorMessage.style.display = 'block';
                return;
            } 

            // 发送注册请求
            fetch('RegisterServlet', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: `username=${encodeURIComponent(username)}&email=${encodeURIComponent(email)}&password=${encodeURIComponent(password)}&confirmPassword=${encodeURIComponent(confirmPassword)}`
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    successMessage.textContent = '注册成功！3秒后跳转到登录页面...';
                    successMessage.style.display = 'block';
                    
                    // 3秒后跳转到登录页面
                    setTimeout(() => {
                        window.location.href = 'login.jsp?username=' + encodeURIComponent(username);
                    }, 3000);
                } else {
                    errorMessage.textContent = data.message || '注册失败，请稍后再试！';
                    errorMessage.style.display = 'block';
                }
            })
            .catch(error => {
                errorMessage.textContent = '网络错误，请稍后再试！';
                errorMessage.style.display = 'block';
                console.error('Error:', error);
            });
        });