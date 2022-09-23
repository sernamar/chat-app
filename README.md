# chat-app
Chat app

## How to

### Set up the project
1. Create a `.env` file and specify the `database name`, `user` and `password` to use to connect to the Postgres database.

For example:
```text
POSTGRES_NAME=dbname
POSTGRES_USER=user
POSTGRES_PASSWORD=password
```

### Build the application
`make build`

### Start the application
`make start`

### Set up the app
1. Once the app is running, go to a terminal and run:
`make shell a=chat-app-backend-1`
That would allow us to run a shell session inside the backend app.
2. Make migrations:
`python manage.py makemigrations`
3. Apply migrations:
`python manage.py migrate`
4. Start an interactive Django shell session and create some users (in this case, two users: `foo` and `bar`):
```shell
python manage.py shell
from core.models import User
User.objects.create_user(username="foo", password = "foo123").save()
User.objects.create_user(username="bar", password = "bar456").save()
```
5. Exit the Django shell session:
`exit()`
6. Exit the backend shell session:
`exit`

### Use the application
1. Open `http://localhost:3000` in a browser and login with one user.
2. Open `http://localhost:3000` in a private browser window and login with the other user.
3. Start chatting.

### Stop the application
`make stop`

## Main technologies
- Django REST Framework
- Django Channels
- ReactJS
- Tailwind CSS
- Docker
