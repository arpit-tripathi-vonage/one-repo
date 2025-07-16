# Spring Security

Framework that focuses on providing both authentication and authorization to Java applications.
  
Official site [spring-security](https://spring.io/projects/spring-security){:target="_blank"} 

***table of contents***
- TOC
{:toc}

---

Youtube - [Spring Office Hours: S3E17 - Spring Security Architecture Principals](https://www.youtube.com/live/GdgzXLAbnn8?si=wo2Hidhq2pwWYh4Z){:target="_blank"}

- Servlet Applications : 
  - Servlets are Java classes that extend the capabilities of web servers by handling client requests and generating dynamic content.
  - They can read HTTP headers, write HTML responses, process user input, and interact with databases or other backend systems. 
  - Servlets are typically deployed as part of a web application, often packaged in a WAR (Web Application Archive) file. 
- Web Applications : 
  - Broader concept encompassing all the components needed to deliver a web-based service to users. 
  - They include servlets, JSPs (JavaServer Pages), HTML, CSS, JavaScript, images, and other resources that work together to deliver a specific functionality.

**Why?**
- Securing endpoints
- Need to interact with http traffic

In spring MVC, we interact with Http traffic using an interface called servlet filter (jakarta package)
