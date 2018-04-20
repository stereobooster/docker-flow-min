FROM blitznote/debase:18.04

ENV flowversion=0.70.0
RUN curl -LO "https://github.com/facebook/flow/releases/download/v${flowversion}/flow-linux64-v${flowversion}.zip"
RUN unzip "flow-linux64-v${flowversion}.zip"

RUN chmod +x /flow/flow

WORKDIR /opt/flow

ENTRYPOINT /flow/flow