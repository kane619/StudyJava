# Java学习记录

## 1.Java基础知识学习

## 2.spring boot学习

### 一.spring boot入门

#### 2.1 自动配置学习

Spring-boot-starter场景启动器

#### 2.2 spring Initializer

##### IDE支持使用spring项目配置向导创建一个spring boot项目

默认生成的springboot项目：

主程序已经生成好了 我们只需处理自己的逻辑。

resource文件夹目录结构

Application.properties 项目配置 如端口

### 二.Spring Boot配置

1.YAML 标记语言:yaml以数据为中心

```java
server:
  port: 8080
```

1.1**基本语法**

k:(空格)V 表示一对键值对

以空格的缩进来控制层级关系

1.2**值的写法**

字面量:普通的值

 双引号不会转义字符串里面的特殊字符 单引号会转义特殊字符

对象:Map

k:v  在下一行来写对象的属性和值得关系

friend：

​		lastName:z

​		age:20

行内写法:

friends:{lastName:z,age:18}

数组（List Set）

Pets

-cat

-dog

行内:

Pets:[cat,dog]

1.3配置文件值注入

配置文件

```yaml
person:
        lastName: zhans
        age: 18
        boss: false
        birth: 2017/12/12
        maps: {k1: v1,k2: 12}
        lists:
          - lisi
          - zhaoliu
        dog:
         name: 小狗
         age: 2
```

我们可以导入配置文件处理器，以后编写配置就有提示了

springboot推荐给容器中添加组件的方式；推荐使用全注解的方式

使用@Bean给容器中添加组件

1.4 Profile

1.4.1多profile文件

1.4.2 yml 文档块

1.4.3激活指定profile

1.配置文件

2.命令行

3.虚拟机参数：-Dspring.prifile.active=dev

##### 1.5 配置文件加载位置

高优先级配置内容会覆盖低优先级配置内容

 还可以通过spring.config.location来改变默认的配置文件位置  项目打包好以后，我们可以使用命令行参数的形式，启动项目的时候来指定配置文件的新位置；指定配置文件和默认加载的这些配置文件共同起作用形成互补配置

##### 1.6 外部配置加载顺序

详见Springboot官网 https://spring.io/projects/spring-boot

如命令行：java -jar spring-boot-02-config-02-0.0.1-SNAPSHOT.jar --spring.config.location=/Users/apple/Documents/Java/StudyJava/spring-boot-02-config-02/application.properties

##### 1.8 自动配置原理

1.**自动配置原理**：

springboot启动的时候加载主配置类，开启了自动配置功能@EnableAudoConfiguration

将类路径下 META-INF/spring.factories里面配置的所有EnableAutoConfiguration的只加入到容器中

精髓：

1) springboot启动会加载大量的自动配置类

2）我们看我们需要的功能有没有springboot默认写好的自动配置类

3)我们再来看这个自动配置类中到底配置了哪些组件

4）给容器中自动配置类添加组件的时候，会从properties类中获取某些属性，我们就可以在配置文件中指定这些属性的值

2.**细节**

1）conditional  

**自动配置类在一定条件下才能生效**:

可以通过启动properties里面的debug=true属性，来让控制台打印，可以很方便的知道哪些配置类生效 （Positive matches:    Negative matches:）

### 三，springboot日志

#### 1.市面日志框架

| 日志门面        | 日志实现              |
| --------------- | --------------------- |
| JCL ***SLF4J*** | **Log4j** JUL Logback |

#### 2.SLF4j使用

1.如何在系统中使用SLF4J 

```java
import org.slf4j.Logger;
import org.slf4j.ILoggerFactory;
Logger logger = LoggerFactory.getLogger(SpringBoot02ConfigAutoconfigApplication.class);
logger.info("hello");
```

#### 3.springboot日志关系

![62B83D18-436C-467D-ADA4-9EC98B85532E](/Users/apple/Library/Containers/com.tencent.qq/Data/Library/Application Support/QQ/Users/652150962/QQ/Temp.db/62B83D18-436C-467D-ADA4-9EC98B85532E.png)

日志使用

Springboot 默认配置好了 默认输入info级别

### 四。springboot与web开发

**1.配置**

1）创建springboot应用 选中我们需要的模块

2）只需要在配置文件中指定少量的配置就可以运行起来

3)  编写自己的业务代码

**2.springboot对静态资源的映射规则**

2.1https://www.webjars.org/

例如 http://localhost:8080/webjars/jquery/3.5.1/jquery.js

2.2"/**"访问当前项目的任何资源 （静态资源的文件夹）

"Classpath:/resources"

"Classpath:/static"

"Classpath:/public"

**2.3欢迎页：静态资源文件夹下的index.html页面 被"/**"映射**

http://localhost:8080/

**2.4所有的/favicon.icon 都是在静态资源文件下找****

3.**模板引擎  ** 

JSP thymeleaf等  推荐使用thymeleaf 语法更简单 功能更强大

3.1引入thymeleaf

[TOC]



