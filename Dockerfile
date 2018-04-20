FROM blitznote/debase:18.04

ENV flowversion=0.70.0
RUN curl -LO "https://github.com/facebook/flow/releases/download/v${flowversion}/flow-linux64-v${flowversion}.zip"\
  && unzip "flow-linux64-v${flowversion}.zip"\
  && chmod +x /flow/flow\
  && rm "flow-linux64-v${flowversion}.zip"

WORKDIR /opt/flow

# RUN apt-get update && apt-get install -y fswatch
# ENTRYPOINT fswatch -o ./ | xargs -n1 -I{} sh -c 'clear; printf "\033[3J" && /flow/flow'

RUN apt-get update && apt-get install -y inotify-tools

COPY run.sh /run.sh

ENTRYPOINT ["bash", "-l", "/run.sh"]