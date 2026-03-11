Write-Host "Starting cleanup of unnecessary _includes files..."

# Remove unnecessary _includes directories
Remove-Item -Path "_includes\analytics-providers" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\analytics-providers"

Remove-Item -Path "_includes\comments-providers" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\comments-providers"

# Remove unnecessary _includes files
Remove-Item -Path "_includes\analytics.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\analytics.html"

Remove-Item -Path "_includes\archive-single-cv.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\archive-single-cv.html"

Remove-Item -Path "_includes\archive-single-talk-cv.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\archive-single-talk-cv.html"

Remove-Item -Path "_includes\archive-single-talk.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\archive-single-talk.html"

Remove-Item -Path "_includes\author-profile.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\author-profile.html"

Remove-Item -Path "_includes\breadcrumbs.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\breadcrumbs.html"

Remove-Item -Path "_includes\browser-upgrade.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\browser-upgrade.html"

Remove-Item -Path "_includes\category-list.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\category-list.html"

Remove-Item -Path "_includes\comment.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\comment.html"

Remove-Item -Path "_includes\comments.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\comments.html"

Remove-Item -Path "_includes\cv-template.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\cv-template.html"

Remove-Item -Path "_includes\gallery" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\gallery"

Remove-Item -Path "_includes\group-by-array" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\group-by-array"

Remove-Item -Path "_includes\nav_list" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\nav_list"

Remove-Item -Path "_includes\page__taxonomy.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\page__taxonomy.html"

Remove-Item -Path "_includes\paginator.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\paginator.html"

Remove-Item -Path "_includes\post_pagination.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\post_pagination.html"

Remove-Item -Path "_includes\read-time.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\read-time.html"

Remove-Item -Path "_includes\sidebar.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\sidebar.html"

Remove-Item -Path "_includes\social-share.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\social-share.html"

Remove-Item -Path "_includes\tag-list.html" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\tag-list.html"

Remove-Item -Path "_includes\toc" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: _includes\toc"

Write-Host "`nAll files deleted! Now staging changes..."

# Stage all changes
git add -A
Write-Host "Files staged"

# Commit changes
git commit -m "Remove unnecessary _includes files and directories"
Write-Host "Changes committed"

# Push to GitHub
Write-Host "`nPushing to GitHub..."
git push origin cleanup-includes

Write-Host "Cleanup complete!"
Write-Host "Go to GitHub to review and merge the pull request."