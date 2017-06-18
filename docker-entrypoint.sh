./manage.py makemigrations
echo "make migraions"
./manage.py migrate
echo "migrate"
/usr/local/bin/gunicorn edu.wsgi:application -w 2 -b :8000