# Jenkins

- [Pipeline Syntax](https://www.jenkins.io/doc/book/pipeline/syntax/) :arrow_upper_right:
- Don't forget to leave a star on our repository! :star:

Jenkins is an open source automation server.  
It helps automate the parts of software development related to building, testing, and deploying.

## get a property

This happens because printenv shows environment variables, but in your build.gradle you are using System.getProperty('CI'), which reads Java system properties, not environment variables.

To access the CI environment variable in build.gradle, use System.getenv('CI') instead:

```sh
println "####### CI: ${System.getenv('CI')}"
if (System.getenv('CI') == 'true') {
    // your logic here
}
```

## Http Request Plugin

- [HTTP Request Plugin](https://www.jenkins.io/doc/pipeline/steps/http_request/#http-request-plugin){:target="_blank"}

