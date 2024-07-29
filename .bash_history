sudo apt update && sudo apt upgrade -y
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo apt install screen -y
CGCER2YTZKCRPL3BBC3WNVSN4GEFAKR7
screen ngrok http 3001
ngrok config add-authtoken 2jnTv2HbuPOYAGG11XhGIwjMRYS_2ZLoDHDCzea2Lz3FyfuQv
screen ngrok http 3001
nano .env
ufw allow 3001
docker pull chasmtech/chasm-scout:latest
docker run -d --restart=always --env-file ./.env -p 3001:3001 --name scout chasmtech/chasm-scout
docker logs scout
curl localhost:3001
source ./.env
curl -X POST      -H "Content-Type: application/json"      -H "Authorization: Bearer $WEBHOOK_API_KEY"      -d '{"body":"{\"model\":\"gemma2-9b-it\",\"messages\":[{\"role\":\"system\",\"content\":\"You are a helpful assistant.\"}]}"}'      $WEBHOOK_URL
mkdir Swiss
cd Swiss
sudo apt-get remove -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash && export NVM_DIR="/usr/local/share/nvm"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"; source ~/.bashrc; nvm install --lts; nvm use --lts
npm install --save-dev hardhat
npm install --save-dev @nomicfoundation/hardhat-toolbox
npx hardhat
rm hardhat.config.js
nano hardhat.config.js
cd contracts
rm Lock.sol
nano Lock.sol
npx hardhat compile
cd ..
mkdir scripts && cd scripts
nano deploy.js
cd
cd Swiss
npx hardhat run scripts/deploy.js --network swisstronik
nano hardhat.config.js
clear
