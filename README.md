### Welcome to ASP.NET Core Application

Create, Build, Run & Publish
```bash
dotnet new webapp -o aspnetcore-app
cd aspnetcore-app
dotnet build
dotnet run
dotnet publish
```

Install required entity framework plugin
```bash
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
dotnet add package Microsoft.EntityFrameworkCore.Tools
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design
```

Create migration
```bash
dotnet tool install --global dotnet-ef
export PATH="$PATH:/Users/jakir/.dotnet/tools"
dotnet ef migrations add InitialCreate
dotnet ef database update
dotnet tool list --global
dotnet --info
dotnet restore
```

Build & push on docker
```bash
docker build -t jakirbd/aspnetcore-app .
docker run -p 8085:80 -e ASPNETCORE_URLS=http://+:80 jakirbd/aspnetcore-app # see on browser http://localhost:8085
docker push jakirbd/aspnetcore-app
```