# Test Docker build locally before deploying to OnRender

Write-Host "Testing Docker build for OnRender deployment..." -ForegroundColor Green

# Check if WAR file exists in project root
if (!(Test-Path "ch08_ex1_email.war")) {
    Write-Host "Error: ch08_ex1_email.war not found in project root!" -ForegroundColor Red
    exit 1
}

Write-Host "Found WAR file:" -ForegroundColor Yellow
Get-Item ch08_ex1_email.war | Select-Object Name, Length, LastWriteTime

# Show Dockerfile content
Write-Host "`nDockerfile content:" -ForegroundColor Yellow
Get-Content Dockerfile

# Test Docker build (if Docker is available)
if (Get-Command docker -ErrorAction SilentlyContinue) {
    Write-Host "`nBuilding Docker image..." -ForegroundColor Yellow
    docker build -t email-list-app .
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Docker build successful!" -ForegroundColor Green
        Write-Host "Ready for OnRender deployment." -ForegroundColor Cyan
        Write-Host "Run: docker run -p 8080:8080 email-list-app" -ForegroundColor Cyan
    } else {
        Write-Host "Docker build failed!" -ForegroundColor Red
    }
} else {
    Write-Host "Docker not available for local testing." -ForegroundColor Yellow
    Write-Host "Files are ready for OnRender deployment." -ForegroundColor Cyan
}