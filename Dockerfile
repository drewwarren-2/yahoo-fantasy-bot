FROM amazoncorretto:11

WORKDIR /app

COPY . /app

RUN chmod +x ./gradlew && ./gradlew build

CMD ["java", "-jar", "build/libs/bot.jar"]
