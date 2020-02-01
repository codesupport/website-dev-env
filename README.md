# Website Development Environment

Repository containing relevant Dockerfiles for creating a development environment for the CodeSupport website.

## Summary

This repo is aimed to increase the ease of development with the CodeSupport website stack. It bundles up both the backend and the frontend into two Docker containers with the required dependencies to get the project running, while also cloning the projects locally and mounting them as volumes to ensure development is also seamless.

## Getting started

Firstly, we need to create an OAuth2 application with Discord [here](https://discordapp.com/developers/applications/#top) to be able to connect to the discord API. Once you have created a new application make note of the client ID and client secret.

In the project there is an `example.env` file, we need to copy this and rename it to `.env`. This is the env file the backend will use. In the env file `DISCORD_APP_ID` and `DISCORD_APP_SECRET` are both blank, we need to fill these in with the values from the previous step.

From here getting started is really quite simple, its just a case of running the `./start.sh` script

```
$ ./start.sh
```

This will clone each respective project into the frontend and backend projects, and build the required docker containers.

To view the site once everything has loaded direct your browser to http://localhost:3000
To view the backend swagger documentation direct your browser to http://localhost:8080/swagger-ui.html

### Optional

If you wish to make the frontend wait until the backend has started and is ready to receive connections navigate to run.sh in frontend/ and uncomment lines 6-8.

## Additional links

- [CodeSupport frontend](https://github.com/codesupport/website-frontend)
- [CodeSupport backend](https://github.com/codesupport/website-backend)