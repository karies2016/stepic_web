sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default       
sudo /etc/init.d/nginx restart
source web/ask/webvenv/bin/activate
gunicorn -b 0.0.0.0:8080 /usr/bin/python3 /home/box/web/ hello:app &     
gunicorn -b 0.0.0.0:8000 /usr/bin/python3 /home/box/web/ask ask.wsgi:application &
