sudo ufw allow ssh
rm -rf * 
git pull origin main
yarn install
yarn build
yarn start-pm2