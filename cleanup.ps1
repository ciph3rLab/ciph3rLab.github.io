# Remove _pages files
Remove-Item -Path "_pages\archive-layout-with-content.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\category-archive.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\collection-archive.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\cv-json.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\cv.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\markdown.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\non-menu-page.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\page-archive.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\portfolio.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\sitemap.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\tag-archive.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\talkmap.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\talks.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\teaching.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\terms.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_pages\year-archive.html" -Force -ErrorAction SilentlyContinue

# Remove _data files
Remove-Item -Path "_data\comments" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_data\authors.yml" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_data\cv.json" -Force -ErrorAction SilentlyContinue

# Remove _includes files
Remove-Item -Path "_includes\analytics-providers" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\comments-providers" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\archive-single-cv.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\archive-single-talk-cv.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\archive-single-talk.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\comment.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\comments.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\post_pagination.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\paginator.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\sidebar.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\nav_list" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\breadcrumbs.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\page__taxonomy.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\social-share.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\read-time.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\tag-list.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\category-list.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\browser-upgrade.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\toc" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\gallery" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\group-by-array" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\cv-template.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\author-profile.html" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_includes\analytics.html" -Force -ErrorAction SilentlyContinue

# Remove _posts files
Remove-Item -Path "_posts\2012-08-14-blog-post-1.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_posts\2013-08-14-blog-post-2.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_posts\2014-08-14-blog-post-3.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_posts\2015-08-14-blog-post-4.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_posts\2199-01-01-future-post.md" -Force -ErrorAction SilentlyContinue

# Remove _portfolio files
Remove-Item -Path "_portfolio\portfolio-1.md" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_portfolio\portfolio-2.html" -Force -ErrorAction SilentlyContinue

# Remove other unnecessary files
Remove-Item -Path "Dockerfile" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "docker-compose.yaml" -Force -ErrorAction SilentlyContinue
Remove-Item -Path ".devcontainer" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "Gemfile" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "_config_docker.yml" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "talkmap.py" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "talkmap.ipynb" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "talkmap_out.ipynb" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "talkmap" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "markdown_generator" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "CONTRIBUTING.md" -Force -ErrorAction SilentlyContinue

Write-Host "All unnecessary files have been removed!"
Write-Host "Now staging changes with Git..."

# Stage all deletions
git add -A

# Commit
git commit -m "Remove unnecessary files and directories not used by current website"

# Push
git push origin cleanup-unnecessary-files

Write-Host "Cleanup complete! Review the pull request on GitHub."