#!/bin/bash
<<<<<<< HEAD

git pull
rm -rf .cache build
docker run -u $(id -u) -v $PWD:/antora:Z --rm -t antora/antora --cache-dir=./.cache --stacktrace antora-playbook.yml
rm -rf /var/www/html/build
cp -r build /var/www/html/
=======
rm -rf .cache build
docker run -u $(id -u) -v $PWD:/antora:Z --rm -t antora/antora --cache-dir=./.cache --stacktrace antora-playbook.yml
sudo rm -rf /var/www/html/build
sudo cp -r build /var/www/html/
>>>>>>> e1fb4ef241ca59fb196897a61daa9599728cb783
sudo nginx -t
sudo systemctl restart nginx
rm -rf build .cache
