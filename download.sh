ID=$(id -u)

if [ $ID -ne 0 ]
then 
   echo " ERROR : ensure run in root priviligers"
   exit 1
else 
   echo "ur root user"
fi

git --version

if [ $? -eq 0 ];
then
   echo "git is not installed"
   exit 1 # ERROR occurs the script should be stoped

else 
echo "git is installed"
fi

 nginx -v

if [ $? !=eq 0 ];
then 
  echo "ERROR while downloading"
  exit 1
else
  echo "mysql is installei 
fi

git --version

if [ $? -eq 0 ];
then
  echo "git installed succefulled"
else 
  echo "git is not instaled"
fi
