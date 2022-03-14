FROM google/dart:latest

# Installing prerequisites
RUN apt-get update && \
	apt-get install -y unzip && \
	apt-get clean
  
# Installing Flutter
RUN git clone https://github.com/flutter/flutter.git /flutter

ENV PATH $PATH:/flutter/bin

RUN flutter doctor

COPY . /

ENTRYPOINT ["/entrypoint.sh"]
