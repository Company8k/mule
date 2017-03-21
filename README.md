# 8K repo mule

This repository serves for automated docker builds

## Dependencies

- Mulesoft CE
- Alpine Linux
- IDM jdk small footprint
- maven

## Use

This images are intended for use in CI/CD development. The mule runtime is very simple to configure. So you could place a `mule-config.xml` somewhere in your project directory and `ADD` it to the `MULE_HOME/apps` directory. For example if you want to use an http endpoint, configure it and expose that port.

Maven integration is for advance usage, where you want to compile java classes or similar

####TODO

- onbuild images
- examples
- README