/flow/flow start
while true
do
  /flow/flow check #status
  trap "kill -SIGTERM $$" SIGINT SIGTERM
  inotifywait -e create -e modify -e delete -r --quiet --exclude .git ./
done
