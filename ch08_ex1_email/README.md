# Email List Application - Deploy to OnRender

## Mô tả
Ứng dụng JSP/Servlet quản lý danh sách email với Expression Language (EL).

## Cách deploy lên OnRender

### Bước 1: Chuẩn bị
1. Đảm bảo file `ch08_ex1_email.war` đã được build
2. Push code lên GitHub repository

### Bước 2: Deploy trên OnRender
1. Truy cập https://render.com
2. Tạo tài khoản hoặc đăng nhập
3. Chọn "New" → "Web Service"
4. Connect GitHub repository của bạn
5. Cấu hình:
   - **Environment**: Docker
   - **Build Command**: (để trống, sử dụng Dockerfile)
   - **Start Command**: (để trống, sử dụng Dockerfile CMD)
   - **Port**: 8080

### Bước 3: Kiểm tra
Sau khi deploy thành công, ứng dụng sẽ chạy tại URL được cung cấp bởi OnRender.

## Local Testing
Để test local bằng Docker:

```bash
# Build Docker image
docker build -t email-list-app .

# Run container
docker run -p 8080:8080 email-list-app
```

Truy cập: http://localhost:8080

## Tính năng
- Form đăng ký email với EL expressions
- Session management
- Hiển thị danh sách người dùng
- Context parameters
- Scope specification (sessionScope, requestScope)