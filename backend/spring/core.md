# Spring Core

***table of contents***
- TOC
{:toc}

---

## Dependency Injection 

> Process where objects use their dependent objects without a need to define or create them is called `Dependency injection`.

We can inject dependent objects in three ways, using:
- Constructor injection
- Setter injection
- Field injection : involves injecting dependencies directly into the class using the @Autowired annotation.

[Dependency Injection in Spring official doc](https://docs.spring.io/spring-framework/reference/core/beans/dependencies/factory-collaborators.html){:target="_blank"}

### Field injection is not recommended
- Null safety
- Immutability
- Design Problems
  - Single Responsibility Violation
  - Circular Dependencies
- Testing

#### Null-Safety
- Field injection creates a risk of NullPointerException if dependencies aren’t correctly initialized.
  - Using the field injection, we didn’t provide a direct way of instantiating the EmailService with required dependencies.
- We are able to create the EmailService instance using the default constructor.
  - we can reduce the risk of NullPointerException using the constructor injection as it exposes the required dependencies publicly.

```java
@Service
public class EmailService {
    @Autowired
    private EmailValidator emailValidator;
}
```

#### Immutability
- Using the field injection, we are unable to create immutable classes.
  - We need to instantiate the final fields when they’re declared or through the constructor.
- Spring performs autowiring once the constructors have been called. Therefore, it’s impossible to autowire the final fields using field injection.
  - Since the dependencies are mutable, there’s no way we can ensure they will remain unchanged once they’re initialized.
  - reassigning non-final fields can cause unexpected side effects when running the application.
- Alternatively, we can ***use constructor injection for mandatory dependencies and setter injection for optional ones***. This ensure the required dependencies will remain unchanged.

#### Design Problem - Single Responsibility
- One class should be responsible for only one action and, thus, have only one reason to change.
  - We can easily add more dependencies than necessary and create a class that’s doing more than one job.
- Using constructor injection, we’d notice we might have a design problem if a constructor has more than a few dependencies.
  - Furthermore, even the IDE would issue a warning if there are more than seven parameters in the constructor.

#### Design Problem Circular Dependencies
- When two or more classes depend on each other, and it’s impossible to construct objects, and the execution can end up with runtime errors or infinite loops.
- With Field Injection, dependencies are injected when needed and not on the context load, Spring won’t throw BeanCurrentlyInCreationException.
- With constructor injection, it’s possible to detect circular dependencies at compile time since they would create unresolvable errors.
  - circular dependencies in our code are a sign something is wrong with our design. Therefore, we should consider redesigning our application if possible.
- Since Spring Boot 2.6. version circular dependencies are no longer allowed by default.

#### Testing Field Injection
- We can’t directly replace the field injected dependency with a mocked version.
  - We can instantiate our class through reflection.
- Mockito will try to inject mocks using the @InjectMocks annotation. However, if the field injection strategy fails, Mockito won’t report the failure.
