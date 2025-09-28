# PowerShell build script for Docker deployment

Write-Host "Building Email List Application Docker image..." -ForegroundColor Green

# Check if WAR file exists
if (!(Test-Path "ch08_ex1_email.war")) {
    Write-Host "Error: ch08_ex1_email.war not found!" -ForegroundColor Red
    Write-Host "Please build the application first." -ForegroundColor Red
    exit 1
}

Write-Host "Found WAR file: ch08_ex1_email.war" -ForegroundColor Yellow
Get-Item ch08_ex1_email.war | Select-Object Name, Length, LastWriteTime

# Build Docker image
Write-Host "Building Docker image..." -ForegroundColor Yellow
docker build -t email-list-app:latest .

if ($LASTEXITCODE -eq 0) {
    Write-Host "Docker image built successfully!" -ForegroundColor Green
    Write-Host "To run: docker run -p 8080:8080 email-list-app:latest" -ForegroundColor Cyan
} else {
    Write-Host "Docker build failed!" -ForegroundColor Red
    exit 1
}