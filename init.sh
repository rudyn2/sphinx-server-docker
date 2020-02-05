echo "Removing old versions"
docker stop sphinx-server && docker rm sphinx-server
echo "Initializing"
sphinx-quickstart
echo "Getting up the service"
docker-compose up --build -d

