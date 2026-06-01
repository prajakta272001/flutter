FROM ghcr.io/cirruslabs/flutter:stable

WORKDIR /app

COPY . .

RUN flutter pub get

RUN flutter doctor

RUN flutter build apk --release

CMD ["bash"]