cd d:\home\site\wwwroot

git pull
git add -A

echo %DATE%
echo %TIME%
set datetimef=%date%_%time%
echo %datetimef%

git commit -m "%datetimef%"
git push -u origin master 
