echo "Build the image"
docker build ./app/web/ -t tic4302

echo "Scan image by dockle"
curl -sL https://github.com/goodwithtech/dockle/releases/download/v0.4.5/dockle_0.4.5_Linux-64bit.tar.gz -o /tmp/dockle.tar.gz
tar zxf /tmp/dockle.tar.gz -C /tmp
sudo mv /tmp/dockle /usr/local/bin/
dockle -f json -o logs/results.json tic4302
