wget -O cf-cli.tgz https://packages.cloudfoundry.org/stable?release=linux64-binary
tar zxvf cf-cli.tgz
export PATH=$PATH:$PWD

ls -lart