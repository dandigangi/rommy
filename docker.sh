set -e
set -u

PROJ_NAME=$(node -p "require('./package.json').name")
PROJ_VERSION=$(node -p "require('./package.json').version")
PROJ_IMAGE_NAME="${PROJ_NAME}-v${PROJ_VERSION}-local"

build_docker() {
  echo "building $PROJ_IMAGE_NAME"
  IMAGE_NAME=$(docker build -t $PROJ_IMAGE_NAME .)
}

start_docker() {
  echo "starting $PROJ_IMAGE_NAME"
  docker run --rm -d -p 8080:3000 --name $PROJ_IMAGE_NAME $PROJ_IMAGE_NAME
}

stop_docker() {
  echo "stopping $PROJ_IMAGE_NAME"
  docker stop $PROJ_IMAGE_NAME
}

"$@"