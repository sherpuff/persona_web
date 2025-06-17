document.addEventListener('DOMContentLoaded', function() {
    // 检查登录状态
    fetch('CheckLoginStatus')
        .then(response => response.json())
        .then(data => {
            if (data.loggedIn) {
                // 显示用户信息
                document.getElementById('userInfo').style.display = 'flex';
                document.getElementById('usernameDisplay').textContent = '欢迎, ' + data.username;
                
                // 隐藏登录/注册按钮
                document.getElementById('loginRegister').style.display = 'none';
            } else {
                // 显示登录/注册按钮
                document.getElementById('loginRegister').style.display = 'flex';
            }
        })
        .catch(error => {
            console.error('Error checking login status:', error);
        });
});