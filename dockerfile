# Use the official ASP.NET Core runtime as a base image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS build-env
WORKDIR /app
EXPOSE 80
EXPOSE 443

# build the application using SDK
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY aspnetcore-app.csproj ./
RUN dotnet restore aspnetcore-app.csproj
WORKDIR /src/ .
COPY . .
RUN dotnet publish aspnetcore-app.csproj -c Release -o /app/build

FROM build AS publish
RUN dotnet publish aspnetcore-app.csproj -c Release -o /app/publish

# final stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT [ "dotnet", "aspnetcore-app.dll" ]

