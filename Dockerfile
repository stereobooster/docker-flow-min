FROM blitznote/baseimage

ENV flowversion=0.70.0
RUN curl -LO "https://github.com/facebook/flow/releases/download/v${flowversion}/flow-linux64-v${flowversion}.zip"\
  && unzip "flow-linux64-v${flowversion}.zip"\
  && chmod +x /flow/flow\
  && rm "flow-linux64-v${flowversion}.zip"

WORKDIR /opt/flow

ENTRYPOINT /flow/flow