# :european_castle: Messiah of Ur

It's time to revive ancient game of Ur. This repo acts as a simple way to integrate Mur components and deploy it on your local machine.

## Prerequisites

You need the following installed:

- golang
- direnv (for *nix only)
- python
- pip & pipenv
- psql (download [here](https://www.enterprisedb.com/download-postgresql-binaries?fbclid=IwAR3XSzTmFPKzGJiugdcBm77dZ3yHjVqjfZYkclWb1ulNMvxClWE-Eyxxv5s)) (if under Windows, make sure psql.exe is in PATH)

## Deployment under :penguin: :apple: *nix

### Prepare pipenv

```bash
git submodule update --recursive --init

# Setup the envars if you don't have direnv installed
source .envrc

# Install the dependencies
pipenv install

# Open the python virtual environment
pipenv shell
```

### Murker

```bash
# Start a few murkers (an instance is started on each port).
python job/main.py murker deploy -ports 9000 9001 -murabi-port 8080

# Check for their existence.
sudo lsof -i -P -n | grep LISTEN

# You can kill the murkers with.
python job/main.py murker destroy
```

### MurDB

```bash
python job/main.py db deploy

# If you wish to destroy it
python job/main.py db destroy
```

### Murabi

```bash
# Start a murabi with
python job/main.py murabi deploy -p 8080

# You can kill with fire (joke).
python job/main.py murabi destroy
```

## Deployment under Windows

### Prepare pipenv

```bat
git submodule update --recursive --init

Rem Setup the envars
env.bat

Rem Install the dependencies
py -m pipenv install

Rem Open the python virtual environment
py -m pipenv shell
```

### Murker

```bat
Rem Start a few murkers (an instance is started on each port).
py job/main.py murker deploy -ports 9000 9001 -murabi-port 8080

Rem Check for their existence.
netstat -ano

Rem Kill the murkers.
py job/main.py murker destroy
```

### MurDB

```bat
py job/main.py db deploy

Rem If you wish to destroy it
py job/main.py db destroy
```


### :dragon_face: Murabi

```bat
Rem Start a murabi with
py job/main.py murabi deploy -p 8080

Rem You can kill with fire (joke).
py job/main.py murabi destroy
```

## :game_die: Play around

Go to `code/muir/play.html` and open it on two different pages in your browser.
