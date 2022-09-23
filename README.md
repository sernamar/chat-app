# chat-app
Chat app

## Set up
1. Create a `.env` file and specify the `database name`, `user` and `password` to use to connect to the Postgres database.

For example:
```text
POSTGRES_NAME=dbname
POSTGRES_USER=user
POSTGRES_PASSWORD=password
```
2. [TODO] Make migrations
## How to
### Build the application
`make build`

### Start the application
`make start`

### Stop the application
`make stop`

### [TODO] Use the application
1. Open `http://localhost:3000/login` in a browser window and login with one user.
2. Open `http://localhost:3000/login` in another browser window and login with other user.
3. Start chatting.

## Main technologies
- Django REST Framework
- Django Channels
- ReactJS
- Tailwind CSS
- Docker
