number_random=$RANDOM
file="merge_$number_random.txt"
git clone https://capacitaciones-azure-devops@dev.azure.com/capacitaciones-azure-devops/Aprendiendo_Git/_git/Aprendiendo_Git
sleep 3
cd Aprendiendo_Git
git branch "features/merge_$number_random"
git checkout "features/merge_$number_random"
echo 'console.log("Modificado por otro desarrollador");' > $file
git add $file
git commit -m "Commit Inicial"
git push https://tb3yofvnvj2dunk5ty6xlq6574lmk66eqnbfltjazlyjwedix2kq@dev.azure.com/capacitaciones-azure-devops/Aprendiendo_Git/_git/Aprendiendo_Git "features/merge_$number_random"
sleep 3
git fetch origin
git checkout remotes/origin/master
git merge remotes/origin/"features/merge_$number_random"
git push https://tb3yofvnvj2dunk5ty6xlq6574lmk66eqnbfltjazlyjwedix2kq@dev.azure.com/capacitaciones-azure-devops/Aprendiendo_Git/_git/Aprendiendo_Git remotes/origin/master
sleep 3
git checkout master
git checkout .
echo 'console.log("Modificado por mi");' > $file
git add $file
git commit -m "Commit Inicial"