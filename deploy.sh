rm -v !("deploy.sh") 
git pull origin main
yarn install
yarn build
yarn start-pm2