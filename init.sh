sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default    
sudo /etc/init.d/nginx restart
gunicorn -b 0.0.0.0:8080 /usr/bin/python3 /home/box/web/ hello:app &  
sudo ln -s /home/box/web/etc/django.py /etc/gunicorn.d/django.py
