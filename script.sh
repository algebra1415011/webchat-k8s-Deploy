o  "<------User Running Process $USER ----->"

echo '<------- Fetching webchat app from github ----------->'

git clone https://github.com/dhaval-panjwani/Group-Chat-With-WebSockets.git

echo '<------- Fetching Dockerfile from github ----------->'

git clone https://github.com/algebra1415011/webchat-k8s-Deploy.git

echo "<-----------Current Directory-------------->"
echo $PWD
echo '<--------Building dockerimage------------------------>'

docker build -t webchatapp:1.0 ./webchat-k8s-Deploy
