# Grouper Dockerized Overlay

This project demonstrates how a grouper deployment can be wrapped inside Docker as an overlay.

## Grouper

This is based on [Unicon's Grouper Docker Demo](https://hub.docker.com/r/unicon/grouper-demo/tags/). 
The tag we are pulling in is `2.3.0`. To update the version, change the `Dockerfile` and the `gradle.properties`.

## MySQL

If you need to connect to the MySQL database:

- URL is: `jdbc:mysql://localhost:3306`
- Login as `root` with a blank password

## Development

- Grouper development happens inside `overlay/sample`. You may create additional gradle projects inside the `overlay` directory. Remember
 to add them to `settings.gradle`
- Remote debugging is on by default. You may connect to port `8000` to step through the code.
- You may use the `testCaseSetup.gsh` to bootstrap the Grouper environment with sample data, etc.
- `log4j.properties` file is used to control Grouper's log messages.
- `grouper.properties` is used to configure basic/core grouper settings, such as hooks on memberships and groups.

## Build

```bash
cd overlay/sample
gradlew tasks

# Build Grouper
gradlew buildGrouper

# Stop the container
gradlew stopGrouper

# Remove the container
gradlew removeGrouper

# Build 
gradlew clean build

# Start Grouper
gradlew runGrouper
```

Shorthand method may be:

```bash
gradlew stopGrouper && gradlew clean build runGrouper
```
