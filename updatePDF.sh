#
#
# updatePDF.sh
#
# Merges from dev to main, pushes main, merges main to docs, makes pdf, commits pdf, pushes to github
#
# Seth McNeill
# 2023 February 21

git push origin dev
git checkout main
git merge dev
git push origin main
git checkout docs
git merge main
sleep 2
echo "make clean to remove old files"
make clean
sleep 2
echo "Making new PDF"
make
sleep 5
git status
echo "------Adding pdf to commmit"
git add docs/Fundamentals-of-Microcontrollers-Lab.pdf -f
git status
echo "------Commiting changes"
git commit -m "Updated PDF"
git status
echo "------Pushing to cloud"
git push origin docs
git checkout dev
