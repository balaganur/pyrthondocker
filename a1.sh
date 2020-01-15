sudo apt-get install -y docker.io
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
rm -rf pyrthondocker
git clone https://github.com/balaganur/pyrthondocker.git
cd pyrthondocker
sudo docker build -t balaganurrakesh/pythonsince80 .
sudo docker run -p 80:80 -d balaganurrakesh/pythonsince80
