# Home Page


- **Frontend**
  - Html
  - CSS
  - Bootstrap
  - VueJS
- **Backend**
  - Java
  - Build Tool: gradle
  - [Spring Framework](spring)
  - JUnit - Junit 4 and Junit 5
- [Devops](devops)
  - CI/CD tools : [jenkins](devops/jenkins)
- [Linux](others/linux.md)
- [Software Architecture Concepts](architecture)
- [Artificial Intelligence (AI)](others/ai)


## Other GH

- [watch](others/watch)
- [jackgruber](https://jackgruber.github.io/2021-05-09-Embed-Mermaid-in-Jekyll-without-plugin/){:target="_blank"}
- [mermaid](others/mermaid)
- [todo](others/todo)

[gradle properties](https://docs.gradle.org/current/userguide/build_environment.html){:target="_blank"}

```
This happens because printenv shows environment variables, but in your build.gradle you are using System.getProperty('CI'), which reads Java system properties, not environment variables.

To access the CI environment variable in build.gradle, use System.getenv('CI') instead:
println "####### CI: ${System.getenv('CI')}"
if (System.getenv('CI') == 'true') {
    // your logic here
}
```

## Links

- [20 System Design Concepts You Must Know - Final Part](https://www.youtube.com/watch?v=uq-JpclPQV4){:target="_blank"}
- [System Design was HARD until I Learned these 30 Concepts](https://www.youtube.com/watch?v=s9Qh9fWeOAk){:target="_blank"}
- [System Design Was HARD - Until You Knew the Trade-Offs](https://www.youtube.com/watch?v=1nENigGr-a0){:target="_blank"}
- [System Design Interview – BIGGEST Mistakes to Avoid](https://www.youtube.com/watch?v=OvufRkoD-D0){:target="_blank"}
- [Authentication Explained: When to Use Basic, Bearer, OAuth2, JWT & SSO](https://www.youtube.com/watch?v=9JPnN1Z_iSY){:target="_blank"}
- [Spring Boot 3: Next-Level API Error Handling with ProblemDetail](https://www.youtube.com/watch?v=NNrgsdYNuEM){:target="_blank"}
- [Spring Debugger: A New Way To Demystify Spring Boot's Magic by Marco Behler @ Spring I/O 2025](https://www.youtube.com/watch?v=K2tYAHG2XJ8){:target="_blank"}
- [Microservices with Databases can be challenging...](https://www.youtube.com/watch?v=tiHKefWOyrY&t=7s){:target="_blank"}
- [Microservice Communication Made Easy ! Feign Client in Spring Boot](https://www.youtube.com/watch?v=KiGE3QtyE1Y&t=159s){:target="_blank"}
- [Git Mastery Crash Course | From First Commit to Big Tech Workflows](https://www.youtube.com/watch?v=HMoZ5cYzU4I&t=59s){:target="_blank"}
- [Inside a Real High-Frequency Trading System | HFT Architecture](https://www.youtube.com/watch?v=iwRaNYa8yTw&t=7s){:target="_blank"}
- [Design Spotify Top K Songs - System Design Interview](https://www.youtube.com/watch?v=HjazbLlrWxI){:target="_blank"}
- [10 CSS PRO Tips and Tricks you NEED to know](https://www.youtube.com/watch?v=44FTAS-qT8Q){:target="_blank"}
- [Animated Responsive Navbar with CSS - Plus Other Useful Tricks](https://www.youtube.com/watch?v=biOMz4puGt8){:target="_blank"}
