
echo ------------------------------------------------------------------------------------------------------
echo ------------------ This is an automatic backup -------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------- Dell NETWORKING ------------------------------------
echo ------------------------------------------------------------------------------------------------------

# a git account and git running on the node is needed. https://docs.github.com/en 
# change the name as it is your project now 

ansible-playbook -i inventory copyconfig.yml
git status
# please add the RIGHT NAME AND EMAIL
echo ---- > YUO NEED TO ADD YOUR ACCOUNT otherwise will remain local backup
git config --global user.email "your@mail"
git config --global user.name "your-name"

git pull
git add .
git commit -a -m "standard update"
git push origin main
git status
echo
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo -------------------------------------- Thats all folks "!!" ------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------ This is an automatic script -------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------- Dell NETWORKING ------------------------------------
echo -----------------valerio.martini@gmail.com------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------

echo --- Please note on git auth changes August 2021 
echo --- Single password not accepted anymore setup your token
echo --- https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token
