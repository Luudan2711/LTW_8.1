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
   - **Dockerfile Path**: `./src/Dockerfile`
   - **Docker Context**: `./src`
   - **Build Command**: (để trống, sử dụng Dockerfile)
   - **Start Command**: (để trống, sử dụng Dockerfile CMD)
   - **Port**: 8080

**Lưu ý**: OnRender yêu cầu Dockerfile và WAR file phải ở trong thư mục `src/`

### Bước 3: Kiểm tra
Sau khi deploy thành công, ứng dụng sẽ chạy tại URL được cung cấp bởi OnRender.

## Local Testing
Để test local bằng Docker:

### Sử dụng script (khuyên dùng):
```bash
# Linux/Mac
./build-docker.sh

# Windows PowerShell
.\build-docker.ps1
```

### Hoặc build manual:
```bash
# Build Docker image
docker build -t email-list-app .

# Run container
docker run -p 8080:8080 email-list-app
```

Truy cập: http://localhost:8080

## Troubleshooting

### Lỗi "WAR file not found":
- Đảm bảo file `ch08_ex1_email.war` tồn tại trong thư mục root
- Kiểm tra `.dockerignore` không exclude file WAR
- Build lại WAR file nếu cần: `jar -cvf ch08_ex1_email.war -C build/web .`

### Lỗi Docker build:
- Kiểm tra Docker daemon đang chạy
- Đảm bảo chạy `docker build` từ thư mục chứa Dockerfile
- Xóa Docker cache: `docker system prune`

## Tính năng
- Form đăng ký email với EL expressions
- Session management
- Hiển thị danh sách người dùng
- Context parameters
- Scope specification (sessionScope, requestScope)