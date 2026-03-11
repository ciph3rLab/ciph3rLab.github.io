Write-Host "Starting cleanup of unnecessary _layouts files..."

# Remove unnecessary _layouts files
Remove-Item -Path "_layouts\archive-taxonomy.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _layouts\archive-taxonomy.html"

Remove-Item -Path "_layouts\archive.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _layouts\archive.html"

Remove-Item -Path "_layouts\compress.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _layouts\compress.html"

Remove-Item -Path "_layouts\cv-layout.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _layouts\cv-layout.html"

Remove-Item -Path "_layouts\splash.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _layouts\splash.html"

Remove-Item -Path "_layouts\talk.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _layouts\talk.html"

Write-Host "`nAll files deleted! Now staging changes..."

# Stage all changes
git add -A
Write-Host "Files staged"

# Commit changes
git commit -m "Remove unnecessary _layouts files"
Write-Host "Changes committed"

# Push to GitHub
Write-Host "`nPushing to GitHub..."
git push origin cleanup-layouts

Write-Host "Cleanup complete!"
Write-Host "Go to GitHub to review and merge the pull request."