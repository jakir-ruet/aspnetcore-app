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
dotnet ef migrations add InitialCreate
dotnet ef database update
```

Build & push on docker
```bash
docker build -t jakirbd/aspnetcore-app .
docker push jakirbd/aspnetcore-app
```