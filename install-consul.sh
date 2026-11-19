architecture=`uname -m`
echo $architecture

export CONSUL_VERSION="2.1.0"
export CONSUL_URL="https://releases.hashicorp.com/consul"

if [ "$architecture" = 'aarch64' ];
then
  echo "inside-"$architecture
  wget ${CONSUL_URL}/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_arm64.zip
  unzip consul_${CONSUL_VERSION}_linux_arm64.zip
  rm consul_${CONSUL_VERSION}_linux_arm64.zip
else
  echo "inside-"$architecture
  wget ${CONSUL_URL}/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip
  unzip consul_${CONSUL_VERSION}_linux_amd64.zip
  rm consul_${CONSUL_VERSION}_linux_amd64.zip
fi
chown root:root consul
mv consul /usr/bin/
