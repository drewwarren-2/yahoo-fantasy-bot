FROM eclipse-temurin:11-jre-slim

WORKDIR /app

COPY . /app

RUN chmod +x ./gradlew && ./gradlew build

CMD ["java", "-jar", "build/libs/bot.jar"]
