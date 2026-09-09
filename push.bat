@echo off
chcp 65001 > nul
set "PATH=C:\Program Files\Git\cmd;%PATH%"

echo ========================================================
echo   [ThePathLab] 자동차 엔진 백과 GitHub Pages 배포기
echo   원격 저장소: https://github.com/chicstory/engines.git
echo ========================================================

cd /d "%~dp0"

if not exist ".git" (
    echo [1/4] Git 저장소 초기화 중...
    git init
    git branch -M main
    git remote add origin https://github.com/chicstory/engines.git
)

echo [2/4] 변경 사항 추적 및 스테이징...
git add index.html sitemap.xml audi_engine_table.html bmw_engine_table.html hyundai_kia_engine_table.html kgm_ssangyong_engine_table.html mercedes_benz_engine_table.html volkswagen_engine_table.html 현대/ 기아/ 제네시스/ BMW/ 벤츠/ 아우디/ 폭스바겐/ 쌍용/ KGM/

echo [3/4] 커밋 생성 중...
git commit -m "feat: ThePathLab Automotive Engine Encyclopedia Archive"

echo [4/4] GitHub로 푸시 중 (main 브랜치)...
git push -u origin main

echo.
echo ========================================================
echo   배포가 완료되었습니다!
echo   접속 주소: https://chicstory.github.io/engines/
echo ========================================================
pause
