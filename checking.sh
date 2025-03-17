nginx -v

if [ $? -eq 0 ]; then
echo "nginx is installed"
else
echo "nginx is not installed"
nginx=$(yum install nginx -y)
echo "if u want to install git use this command $nginx" 
fi
