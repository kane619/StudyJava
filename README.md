

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

