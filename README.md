# docker-potacat-build
Build POTACAT <https://potacat.com/> from source for your distribution / architecture inside a Docker container.
This loads all the build dependencies inside a docker container and outputs an install file
to match your architecture and distribution.

For example, running it on a raspberry pi using debian/buster

wear a helmet, your mileage may vary.

1. Clone this repository
2. run 'make' to build the image
3. run 'make run' do create the .deb file in the ./dist folder


