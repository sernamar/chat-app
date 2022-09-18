# chat-app
Chat app

## Set up
Create a `.env` file and specify the `database name`, `user` and `password` to use to connect to the Postgres database.

For example:
```text
POSTGRES_NAME=dbname
POSTGRES_USER=user
POSTGRES_PASSWORD=password
```
## How to
### Build the application
`make build`

### Start the application
`make start`

### Stop the application
`make stop`

### Use the application (TODO: Not implemented yet)
1. Open `http://localhost:3000/login` in a browser window and login with one of these (already created) users:

| User | Password |
|------|----------|
 | foo  | foo123   |
 | bar  | bar456   |

2. Open `http://localhost:3000/login` in another browser window and login with the other user.
3. Start chatting.

## Main technologies
- Django REST Framework
- Django Channels
- ReactJS
- Tailwind CSS
- Docker