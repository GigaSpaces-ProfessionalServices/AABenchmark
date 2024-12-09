#!/usr/bin/env bash


set -e


source ./my-app-env.sh

HOSTNAME="$(hostname)"

if [ "$COMMAND_HOST" == "$HOSTNAME" ]; then
  echo "Building services (processing units)..."

  echo "Finished mvn."
fi

./build.sh
echo "starting grid components..."

IS_MANAGER="false"

HOSTS=$(echo $GS_MANAGER_SERVERS | tr "," "\n")

for HOST in $HOSTS; do
  if [ "$HOST" == "$HOSTNAME" ]; then
    IS_MANAGER="true"
  fi
done

#if [ "true" == "$IS_MANAGER" ]; then
  export GS_GSC_OPTIONS="$BASE_GS_GSC_OPTIONS $SPACE_GS_GSC_OPTIONS"
  nohup $GS_HOME/bin/gs.sh host run-agent --auto --webui --gsc=$NUM_SPACE_GSC_PER_SERVER > /tmp/grid-console.log 2>&1 &
  echo $GS_HOME
  echo $NUM_SPACE_GSC_PER_SERVER

  echo "sleep..."
  sleep 30s
  echo "Deploying services (processing units)..."
./deploy.sh


echo "Demo start completed."
