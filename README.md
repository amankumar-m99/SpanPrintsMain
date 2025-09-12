# SpanPrintsMain
This the main repository for SpanPrints project.
This codebase is broadly divided into two parts:
1. Frontend
2. Backend

## 1. Frontend
Techstack: Angular 18

Repository: [https://github.com/amankumar-m99/SpanPrintsFrontend](https://github.com/amankumar-m99/SpanPrintsFrontend)

## 2. Backend
Backend is implemented in micro-services architecture. Here are its various components:
1. Config Server

   Repository: [https://github.com/amankumar-m99/SpanPrintsConfigServer](https://github.com/amankumar-m99/SpanPrintsConfigServer)

   Config Keys repository: [https://github.com/amankumar-m99/SpanPrintsConfigKeys](https://github.com/amankumar-m99/SpanPrintsConfigKeys)
   
3. Service Registry

   Repository: [https://github.com/amankumar-m99/SpanPrintsServiceRegistry](https://github.com/amankumar-m99/SpanPrintsServiceRegistry)

5. Actuator Admin (Spring Boot Admin) aka SBA

   Repository: [https://github.com/amankumar-m99/SpanPrintsActuatorAdmin](https://github.com/amankumar-m99/SpanPrintsActuatorAdmin)

7. API Gateway

   Repository: [https://github.com/amankumar-m99/SpanPrintsApiGateway](https://github.com/amankumar-m99/SpanPrintsApiGateway)

9. Auth Service

    Repository: [https://github.com/amankumar-m99/SpanPrintsAuthService](https://github.com/amankumar-m99/SpanPrintsAuthService)

## Execution Order of microservices
Start below services one by one:
1. Config Server
2. Service Registry
3. Actuator Admin
4. API Geteway
5. Auth Service

## Important Guildelines
1. Expose only the API Gateway to public network and keep all the other services in private network
