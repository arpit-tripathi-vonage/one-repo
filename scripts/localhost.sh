echo =========================================================
echo Running $0 with $# arguments
echo [processID] $$
echo [arguments] $@
echo =========================================================

case $1 in
  git)
    echo =========================================================
    echo "git fetch --all -p; git pull; git status;"
    echo =========================================================
    git fetch --all -p; git pull; git status;
    ;;
  start)
    echo docker compose up
    docker compose -f ./docker/docker-compose.yml up server -d
    cmd=$( open -a "Google Chrome" http://localhost:9900/one-repo/ )
    echo opening chrome $cmd
    ;;
  stop)
    echo "running docker compose down"
    docker compose -f ./docker/docker-compose.yml down
    ;;
  *)
    echo use either --start or --stop
    ;;
esac

echo