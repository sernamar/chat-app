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

## Technologies
- Django REST Framework
- ReactJS
- Tailwind CSS
- Docker