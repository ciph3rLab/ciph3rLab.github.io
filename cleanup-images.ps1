Write-Host "Starting cleanup of unnecessary images files..."

# Remove unnecessary image files
Remove-Item -Path "images\500x300.png" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\500x300.png"

Remove-Item -Path "images\apple-touch-icon-180x180.png" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\apple-touch-icon-180x180.png"

Remove-Item -Path "images\bio-photo-2.jpg" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\bio-photo-2.jpg"

Remove-Item -Path "images\bio-photo.jpg" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\bio-photo.jpg"

Remove-Item -Path "images\editing-talk.png" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\editing-talk.png"

Remove-Item -Path "images\favicon-192x192.png" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\favicon-192x192.png"

Remove-Item -Path "images\favicon-32x32.png" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\favicon-32x32.png"

Remove-Item -Path "images\favicon-512x512.png" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\favicon-512x512.png"

Remove-Item -Path "images\favicon.ico" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\favicon.ico"

Remove-Item -Path "images\favicon.svg" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\favicon.svg"

Remove-Item -Path "images\manifest.json" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\manifest.json"

Remove-Item -Path "images\themes" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: images\themes"

Write-Host "`nAll unnecessary images files deleted! Now staging changes..."

# Stage all changes
git add -A
Write-Host "Files staged"

# Commit changes
git commit -m "Remove unnecessary image files and directories"
Write-Host "Changes committed"

# Push to GitHub
Write-Host "`nPushing to GitHub..."
git push origin cleanup-images

Write-Host "Cleanup complete!"
Write-Host "Go to GitHub to review and merge the pull request."