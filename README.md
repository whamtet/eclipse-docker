# Eclipse Docker

I wrote this to use Eclipse with OpenJDK on OSX (could also do windows).  First start socat

```bash
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

then XQuartz.  Make sure XQuartz -> Preferences has both boxes checked under the security tab.
Build the docker image

```bash
docker build -t my-docker .
```

then set the environment variable

```bash
ME=`my-ip-address`:0
```

Download eclipse linux and unzip to ~/Downloads/eclipse.  Finally start the docker image

```bash
docker run -it -e DISPLAY=$ME -v ~/Downloads/eclipse:/eclipse my-eclipse /eclipse/eclipse
```
