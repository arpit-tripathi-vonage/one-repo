# Gradle

Gradle is a powerful, open-source build automation tool primarily used for Java, Kotlin, and Android development.  
It's designed to automate the entire software development lifecycle, handling tasks like compiling, packaging, testing, and deploying applications.  
- Gradle excels at managing complex projects and offers features like build scans for performance analysis and a configuration cache for faster builds.  
- Gradle's build scripts are written in Groovy or Kotlin DSL, allowing for highly customized build logic. 

**Table of Contents**
- TOC
{:toc}
---

# Installation
Gradle can be installed via various methods, including downloading binaries or using package managers like SDKMAN!


[gradle properties](https://docs.gradle.org/current/userguide/build_environment.html){:target="_blank"}

# Dependency Configurations

Every dependency declared for a Gradle project applies to a specific scope.  
reference from official doc [here](https://docs.gradle.org/current/userguide/dependency_configurations.html#sub:what-are-dependency-configurations){:target="_blank"}

**What's the difference between implementation, api and compile in Gradle?**
Reference article [here](https://stackoverflow.com/questions/44493378/whats-the-difference-between-implementation-api-and-compile-in-gradle){:target="_blank"}

- compile is old way
- “implementation” dependency in your module, it will appear only as runtimeClasspath dependency in customer modules.
- “api” dependency in your module, it will appear as both runtimeClasspath and compileClasspath in consumer modules.

**What is the new replacement keyword for deprecated keywords in new gradle?**
* compile with `implementation` (if you don't need transitivity) or `api` (if you need transitivity)
* testCompile with `testImplementation`
* debugCompile with `debugImplementation`
* androidTestCompile with `androidTestImplementation`
* `compileOnly` is still valid. 
  * It was added in 3.0 to replace provided and not compile. 
  * `provided` introduced when Gradle didn't have a configuration name for that use-case and named it after Maven's provided scope.

# buildscript

**How to download javadocs and sources for jar using Gradle 2.0?**

Reference article [here](https://stackoverflow.com/questions/28404149/how-to-download-javadocs-and-sources-for-jar-using-gradle-2-0){:target="_blank"}
