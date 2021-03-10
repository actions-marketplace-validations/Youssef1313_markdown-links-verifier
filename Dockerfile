FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build

WORKDIR /app

COPY src/ ./src/

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]