> create at:2020年04月10日 15:38:57 sha256:8a011d2726446cfd444edefb6722700e90b472e0b785b0310ebce9d7396e590c *2297


**[ 摘 要 ]** 图书评价交流网站是能实现图书的管理，查询，通过排行榜和用户评论与交流筛选出更加优质的图书，极大地提高查找图书的效率的网站。

本课题运用所学的需求分析的知识结合本人与学校的需求，整理成系统需求列表；在Linux环境下搭建JavaWeb与MySQL环境，根据系统需求对数据库进行设计；然后采用Spring boot对系统进行实现，运用MySQL对数据进行存储，最后对系统进行了系统部署与系统测试。 

本系统通过计算机技术实现的图书展示系统，本文主要完成的系统功能有：用户登录模块、图书排名模块、图书收藏模块、图书管理查询模块、图书评价展示模块。 

本系统结合JavaWeb与MySQL实现了一款现代化的图书管理评论系统，初步实现了对图书的展示与评论、用户收藏图书功能等。

 

**[ 关键词 ]**：JavaWeb MySQL Linux  图书评价





**Abstract:** This topic uses the knowledge of needs analysis to combine the needs of myself and the school to organize the system requirements list; build a JavaWeb and MySQL environment in the Linux environment, and design the database according to the system requirements; and then use Spring boot to implement the system. The data was stored using MySQL, and the system was finally deployed and tested.

This system is a book display system implemented by computer technology. The main system functions completed in this article are: user login module, book ranking module, book collection module, book management query module, and book evaluation display module.

This system combines JavaWeb and MySQL to implement a modern book management and review system, which initially realizes the functions of displaying and reviewing books and collecting books by users.



**key word:**  JavaWeb MySQL  Linux  Book reviews
# 目 录
[TOC]

# 第1章 绪 论

该部分主要介绍图书评论与交流网站的背景及意义，随着互联网时代的到来，网上大量信息虽然为人们生活带来很多便利，但是也为人们图书的筛选带来了巨大的难度。图书评论与交流网站将会更好地给人们的生活和学习带来诸多便利，这些便利中包括了可以让人们更好的去学习新的知识。图书评论与交流网站，可以帮助人们方便的筛选出优质的图书，耗费更少的精力于那些滥竽充数的图书，更专注于书籍阅读。

## 1.1 研究的背景

书籍是人类进步的阶梯，一个人的成长往往逃不脱大量书籍的熏陶，需要从书本中汲取大量的经验和养分。可以说，人想要获取快速的成长，总是离不开大量的书籍的。然而，随着计算机技术的飞速发展，计算机在个人生活和学院中的普及，人们能获取到的书籍信息远远超过能阅读的范围。显然，想要将所有的书籍都一一阅读是不实现的，那么人们如何从这庞大的数据流中筛选出自己想要的呢。显然通过计算机实现图书信息的管理和评论是势在必行的。

目前很多人的阅读依赖于书店的推荐，而书店的推荐更多是推荐那些热门的书籍而不是那些经典的，能够对人们能力提供有效助力的书籍，书店推荐效率很低，并且不能及时了解书籍的种类和读者们比较需求的书籍等，不能更好的适应当前读者的阅读要求。计算机信息化管理有着储存量大，速度快等许多优点，提供给我们的处理信息及时快捷。通过排行榜和其他用户的交流与推荐，我们也能有效的获取那些经典的书籍，筛去那些滥竽充数的劣质书籍，帮助我们省去大量的时间和精力，能够专注于书籍的阅读，而不被如何挑选书籍难倒。

本课题是图书评价交流系统，能实现图书的管理，查询，评价与交流，排行榜，喜爱与收藏，用户浏览历史，极大地提高查找图书的效率，从而解决图书管理复杂，大量精力耗费在筛选书籍上的问题，让人们更专注于书籍阅读提升自我。

## 1.2 研究的目的与意义

本论文以图书评论与交流网站的需求分析及概念设计为切入点，运用理论与实际相结合的方法，构建一个包含读者信息，书籍信息和评论交流信息的图书馆管理系统。图书评论与交流网站是典型的信息管理系统,其开发主要包括后台数据库的建立和维护以及前端应用程序的开发两个方面。对于前者要求建立起数据一致性和完整性强、数据安全性好的库。而对于后者则要求应用程序功能完备,易使用等特点。

因此本人结合图书评论与交流网站的要求，对MySQL数据库、Java程序设计进行了较深入的学习和应用，主要完成对图书评论与交流网站的需求分析、功能模块划分、数据库模式分析，并由此设计了数据库结构和应用程序。# 相关技术简介

## 1.3 Linux

### 1.3.1 Linux简介

Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。

Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。

Linux 能运行主要的 UNIX 工具软件、应用程序和网络协议。它支持 32 位和 64 位硬件。Linux 继承了 Unix 以网络为核心的设计思想，是一个性能稳定的多用户网络操作系统。

### 1.3.2 Linux特性

1. 开放性：系统遵循世界标准规范，特别是遵循开放系统互连(OSI)国际标准。
2. 多用户：系统资源可以被不同用户使用，每个用户对自己的资源(例如：文件、设备)有特定的权限，互相影响。
3. 多任务：它是计算机同时执行多个程序，而各个程序的运行互相独立。
4. 良好的用户界面：Linux向用户提供了两种界面：用户界面和系统调用。Linux还为用户提供了图形用户界面。它利用鼠标、菜单、窗口、滚劢条等设施，给用户呈现一个直观、易操作、交互性强的友好的图形化界面。
5. 设备独立性：是挃操作系统把所有外部设备统一当作成文件来看待，只要安装它们的驱劢程序，任何用户都可以象使用文件一样，操纵、使用这些设备，而不必知道它们的具体存在形式。Linux是具有设备独立性的操作系统，它的内核具有高度适应能力。
6. 提供了丰富的网络功能：完善的内置网络是Linux一大特点。
7. 可靠的安全系统：Linux采取了许多安全技术措施，包括对读、写控制、带保护的子系统、审计跟踪、核心授权等，这为网络多用户环境中的用户提供了必要的安全保障。
8. 良好的可移植性：是挃将操作系统从一个平台转移到另一个平台使它仍然能挄其自身的方式运行的能力。Linux是一种可移植的操作系统，能够在从微型计算机到大型计算机的任何环境中和任何平台上运行
9. 支持多文件系统　linux系统可以把许多不同的文件系统以挂载形式连接到本地主机上，包括Ext2/3、FAT32、NTFS、OS/2等文件系统，以及网络上其他计算机共享的文件系统NFS等，是数据备份、同步、复制的良好平台。

## 1.4 Java环境开发

### 1.4.1 Java简介

Java是一种可以撰写跨平台应用软件的面向对象的程序设计语言，是由Sun Microsystems公司于1995年5月推出的Java程序设计语言和Java平台（即JavaEE, JavaME, JavaSE）的总称。Java自面世后就非常流行，发展迅速，对C++语言形成了有力冲击。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。

## 1.5 Java主要特性

1. Java语言是易学的

Java语言的语法与C语言和C++语言很接近，使得大多数程序员很容易学习和使用Java。另一方面，Java丢弃了C++中很少使用的、很难理解的、令人迷惑的那些特性，如操作符重载、多继承、自动的强制类型转换。特别地，Java语言不使用指针，而是引用。并提供了自动的废料收集，使得程序员不必为内存管理而担忧。

2. Java语言是强制面向对象的

Java语言提供类、接口和继承等原语，为了简单起见，只支持类之间的单继承，但支持接口之间的多继承，并支持类与接口之间的实现机制（关键字为implements）。总之，Java语言是一个纯的面向对象程序设计语言。

3. Java语言是分布式的
    Java语言支持Internet应用的开发，在基本的Java应用编程接口中有一个网络应用编程接口（java net），它提供了用于网络应用编程的类库，包括URL、URLConnection、Socket、ServerSocket等。Java的RMI（远程方法激活）机制也是开发分布式应用的重要手段。
4. Java语言是健壮的
    Java的强类型机制、异常处理、垃圾的自动收集等是Java程序健壮性的重要保证。对指针的丢弃是Java的明智选择。Java的安全检查机制使得Java更具健壮性。
5. Java语言是安全的
    Java通常被用在网络环境中，为此，Java提供了一个安全机制以防恶意代码的攻击。除了Java语言具有的许多安全特性以外，Java对通过网络下载的类具有一个安全防范机制（类ClassLoader），如分配不同的名字空间以防替代本地的同名类、字节代码检查，并提供安全管理机制（类SecurityManager）让Java应用设置安全哨兵。
6. Java语言是体系结构中立的
    Java程序（后缀为java的文件）在Java平台上被编译为体系结构中立的字节码格式（后缀为class的文件），然后可以在实现这个Java平台的任何系统中运行。这种途径适合于异构的网络环境和软件的分发。
7. Java语言是可移植的
    这种可移植性来源于体系结构中立性，另外，Java还严格规定了各个基本数据类型的长度。Java系统本身也具有很强的可移植性，Java编译器是用Java实现的，Java的运行环境是用ANSI C实现的。
8. Java语言是解释型的
    如前所述，Java程序在Java平台上被编译为字节码格式，然后可以在实现这个Java平台的任何系统中运行。在运行时，Java平台中的Java解释器对这些字节码进行解释执行，执行过程中需要的类在联接阶段被载入到运行环境中。
9. Java是性能略高的
    与那些解释型的高级脚本语言相比，Java的性能还是较优的。
10. Java语言是原生支持多线程的
    在Java语言中，线程是一种特殊的对象，它必须由Thread类或其子（孙）类来创建。通常有两种方法来创建线程：其一，使用型构为Thread(Runnable)的构造子将一个实现了Runnable接口的对象包装成一个线程；其二，从Thread类派生出子类并重写run方法，使用该子类创建的对象即为线程。值得注意的是Thread类已经实现了Runnable接口，因此，任何一个线程均有它的run方法，而run方法中包含了线程所要运行的代码。线程的活动由一组方法来控制。Java语言支持多个线程的同时执行，并提供多线程之间的同步机制（关键字为synchronized）。
11. Java语言是动态的
    Java语言的设计目标之一是适应于动态变化的环境。Java程序需要的类能够动态地被载入到运行环境，也可以通过网络来载入所需要的类。这也有利于软件的升级。另外，Java中的类有一个运行时刻的表示，能进行运行时刻的类型检查。
    Java语言的优良特性使得Java应用具有无比的健壮性和可靠性，这也减少了应用系统的维护费用。Java对对象技术的全面支持和Java平台内嵌的API能缩短应用系统的开发时间并降低成本。Java的编译一次，到处可运行的特性使得它能够提供一个随处可用的开放结构和在多平台之间传递信息的低成本方式。特别是Java企业应用编程接口（Java Enterprise APIs）为企业计算及电子商务应用系统提供了有关技术和丰富的类库[6]。

## 1.6 MySQL

### 1.6.1 MySQL 简介

MySQL是一个开放源码的小型关联式数据库管理系统，开发者为瑞典Mysql AB公司。MySQL被广泛地应用在Internet上的中小型网站中。由于其体积小、速度快、总体拥有成本低，尤其是开放源码这一特点，许多中小型网站为了降低网站总体拥有成本而选择了MySQL作为网站数据库[8]。 

### 1.6.2 MySQL 特性

1.  使用C和C++编写，并使用了多种编译器进行测试，保证源代码的可移植性；

2. 支持AIX、FreeBSD、HP-UX、Linux、Mac OS、NovellNetware、OpenBSD、OS/2 Wrap、Solaris、Windows等多种操作系统；

3. 为多种编程语言提供了API。这些编程语言包括C、C++、Python、Java、Perl、PHP、Eiffel、Ruby和Tcl等；

4. 支持多线程，充分利用CPU资源；

5. 优化的SQL查询算法，有效地提高查询速度；

6. 既能够作为一个单独的应用程序应用在客户端服务器网络环境中，也能够作为一个库而嵌入到其他的软件中；

7. 提供多语言支持，常见的编码如中文的GB 2312、BIG5，日文的Shift_JIS等都可以用作数据表名和数据列名；

8. 提供TCP/IP、ODBC和JDBC等多种数据库连接途径；

9. 提供用于管理、检查、优化数据库操作的管理工具；

10. 支持大型的数据库，可以处理拥有上千万条记录的大型数据库；

11. 支持多种存储引擎；

12. Mysql是开源的，所以你不需要支付额外的费用；

13. MySQL使用标准的SQL数据语言形式；

14. Mysql对PHP有很好的支持，PHP是目前最流行的Web开发语言；

15. Mysql是可以定制的，采用了GPL协议，你可以修改源码来开发自己的Mysql系统。 

## 1.7 JQuery

### 1.7.1 JQuery 简介

jQuery是一个快速、简洁的JavaScript框架，是继Prototype之后又一个优秀的JavaScript代码库（或JavaScript框架）。jQuery设计的宗旨是“write Less，Do More”，即倡导写更少的代码，做更多的事情。它封装JavaScript常用的功能代码，提供一种简便的JavaScript设计模式，优化HTML文档操作、事件处理、动画设计和Ajax交互。
jQuery的核心特性可以总结为：具有独特的链式语法和短小清晰的多功能接口；具有高效灵活的css选择器，并且可对CSS选择器进行扩展；拥有便捷的插件扩展机制和丰富的插件。jQuery兼容各种主流浏览器，如IE 6.0+、FF 1.5+、Safari 2.0+、Opera 9.0+等。 

### 1.7.2 JQuery 特性

  1、轻量级

JQuery非常轻巧，采用Dean Edwards编写的Packer压缩后，大小不到30KB,如果使用Min版并且在服务器端启用Gzip压缩后，大小只有18KB。  

  2、强大的选择器

JQuery允许开发者使用从CSS1到CSS3几乎所有的选择器，以及JQuery独创的高级而且复杂的选择器，另外还可以加入插件使其支持XPath选择器，甚至开发者可以编写属于自己的选择器。由于JQuery支持选择器这一特性，因此有一定CSS经验的开发人员可以很容易的切入到JQuery的学习中来。  

  3、出色的DOM操作的封装

JQuery封装了大量常用的DOM操作，使开发者在编写DOM操作相关程序的时候能够得心应手。JQuery轻松地完成各种原本非常复杂的操作，让JavaScript新手也能写出出色的程序。
    
4、可靠的事件处理机制

JQuery的事件处理机制吸收了JavaScript专家Dean Edwards编写的事件处理函数的精华，是的JQuery在处理事件绑定的时候相当可靠。在预留退路、循序渐进以及非入侵式编程思想方面，JQuery也做得非常不错。

5、完善的Ajax

JQuery将所有的Ajax操作封装到一个函数$.ajax()里，使得开发者处理Ajax的时候能够专心处理业务逻辑而无需关心复杂的浏览器兼容性和XMLHttpRequest对象的创建和使用的问题。

6、不污染顶级变量

JQuery只建立一个名为JQuery的对象，其所有的函数方法都在这个对象之下。其别名$也可以随时交流控制权，绝对不会污染其他的对象。该特性是JQuery可以与其他JavaScript库共存，在项目中放心地引用而不需要考虑到后期的冲突。

7、出色的浏览器兼容性

作为一个流行的JavaScript库，浏览器的兼容性是必须具备的条件之一。JQuery能够在IE6.0+,FF 2+,Safari2.+和Opera9.0+下正常运行。JQuery同时修复了一些浏览器之间的的差异，使开发者不必在开展项目前建立浏览器兼容库。

8、链式操作方式

JQuery中最有特色的莫过于它的链式操作方式——即对发生在同一个JQuery对象上的一组动作，可以直接接连写无需要重复获取对象。这一特点使得JQuery的代码无比优雅。

9.隐式迭代

当用JQuery找到带有“.myClass”类的全部元素，然后隐藏他们时。无需循环遍历每一个返回的元素。相反，JQuery里的方法都被设计成自动操作的对象集合，而不是单独的对象，这使得大量的循环结构变得不再必要，从而大幅度地减少代码量。

10、行为层与结构层的分离

开发者可以使用选择器选中元素，然后直接给元素添加事件。这种将行为层与结构层完全分离的思想，可以使JQuery开发人员和HTML或其他页面开发人员各司其职，摆脱过去开发冲突或个人单干的开发模式。同时，后期维护也非常方便，不需要在HTML代码中寻找某些函数和重复修改HTML代码。

11、丰富的插件支持

JQuery的易扩展性，吸引了来自全球开发者来编写JQuery的扩展插件。目前已经有超过几百种官方插件支持，而且还不断有新插件面试。

12、完善的文档

JQuery的文档非常丰富，现阶段多位英文文档，中文文档相对较少。很多热爱JQuery的团队都在努力完善JQuery中文文档，例如JQuery的中文API。

13、开源

JQuery是一个开源的产品，任何人都可以自由地使用并提出修改意见。  

### 1.7.3 Intellij IEDA开发工具

### 1.7.4 IDEA 简介

IDEA 全称 IntelliJ IDEA，是java编程语言开发的集成环境。IntelliJ在业界被公认为最好的java开发工具，尤其在智能代码助手、代码自动提示、重构、J2EE支持、各类版本工具(git、svn等)、JUnit、CVS整合、代码分析、 创新的GUI设计等方面的功能可以说是超常的。IDEA是JetBrains公司的产品，这家公司总部位于捷克共和国的首都布拉格，开发人员以严谨著称的东欧程序员为主。它的旗舰版本还支持HTML，CSS，PHP，MySQL，Python等。免费版只支持Python等少数语言。



# 第2章 系统总体分析

## 2.1 需求分析

### 2.1.1 构图设计

绘制系统结构图的过程，实际上就是对系统功能模块进行分解设计的过程，即合理地将数据流程图转变为所需要的系统结构图。

系统结构图将会使读者和用户能直观的了解系统的结构模式，理解系统的各个功能的结构，能很好地方便用户使用和理解整个系统。

### 2.1.2 功能需求

该系统主要建立一个基于B/S模式的图书评论与交流系统，面对大量图书信息，许多优质的图书可能难以被发现或者说需要人们耗费大量的时间，精力去寻找，发现，人们在计划阅读某本书时可以根据这本图书的评分和评论来排除许多劣质图书，该系统可以对跟系统的两类个用户类型的使用实现：

（1）对于读者能够实现方便的对图书进行查询，查看图书的评分及评论，收藏喜爱的图书，从图书排行榜上发现优质的图书；

（2）对于系统管理员可以对图书信息进行修改，增加，更新操作，对用户进行添加、修改等操作。 

## 2.2 可行性分析

### 2.2.1 技术可行性

技术可行性要考虑现有的技术条件是否能够顺利完成开发工作，软硬件配置是否满足开发的需求等。本图书管理系统用的是JAVA开发语言，调试相对简单，当前的计算机硬件配置也完全能满足开发的需求，因此在技术上是绝对可行的。软件方面：由于目前单机模式相对发展成熟，故软件的开发平台成熟可行，它们速度快、容量大、可靠性能高、价格低，完全能满足系统的需求。 

### 2.2.2 经济可行性

本系统所使用到的技术和软件均为免费的，使用开源免费的Java语言，GNU协议的Linux发行版，数据库为MySQL、开发工具Intellij IEDA comminuty  。对于资源方面，本软件所使用到的视频资源、音频资源以及图片资源是从网络上各种无版权资源中收集整理出来的。

由于图书评价与交流网站是作为毕业设计由我们自己开发的，在经济上的投入甚微，系统建成之后将为今后图书评论与交流提供很大的方便，估算新系统的开发费用和今后的运行、维护费用，估计新系统将获得的效益，并将费用与效益进行比较，对今后使用十分有利。



# 第3章 系统设计

## 3.1 总体设计

根据对系统的分析，该系统应达到以下目的。

1.	界面设计友好、美观
2.	数据存储安全、可靠
3.	信息分类清晰、准确
4.	强大的查询功能、保证数据查询的灵活性
5.	系统安全、稳定
6.	开发技术先进、功能完备、扩展性强
7.	占用资源小、对硬件要求低
8.	提供灵活、方便的权限设置功能、使整个系统的管理分工明确

根据需求分析的结果，按照“低耦合、高内聚”的原则，本系统将划分为以下主要功能模块：账户管理功能模块，图书管理功能模块，图书排行榜功能模块，图书查询功能模块，图书评论交流功能模块，图书喜爱与收藏功能模块。

本系统的结构如图1所示。

![1](<http://47.100.56.19/static/2.png>)

### 3.1.1 管理功能设计

管理功能包括图书管理和账户管理

### 3.1.2 图书管理

该模块主要有增加图书，图书编辑和图书删除三个功能

|                    | 图书信息管理                                                 |
| ------------------ | ------------------------------------------------------------ |
| 功能描述           | 对图书进行基本操作和信息管理                                 |
| 访问的数据库表     | 图书类型表：book                                             |
| 进行的操作         | 添加、删除图书，对图书的书号、书名、单价、作者、出版社等基本信息进行管理 |
| 产生的结果         | 对图书基本操作管理，对不同图书参数进行各自信息的设置管理     |
| 结果存储位置或输出 | 结果存储在图书类型表(book)中，结果在图书查询页面输出         |

### 3.1.3 账户管理

管理员可以对用户进行增加账户，删除账户，禁言账户三个功能

|                    | 账户信息管理                                         |
| ------------------ | ---------------------------------------------------- |
| 功能描述           | 对用户账号进行基本操作和信息管理                     |
| 访问的数据库表     | 用户类型表：user                                     |
| 进行的操作         | 增加账户，删除账户，禁言账户                         |
| 产生的结果         | 对用户基本操作和信息管理，改变user表数据量           |
| 结果存储位置或输出 | 结果存储在用户类型表(user)中，结果在用户详情页面输出 |

### 3.1.4 核心功能设计

用户可以对图书进行评论的增删改操作

|                    | 图书评论                                           |
| ------------------ | -------------------------------------------------- |
| 功能描述           | 对图书进行评论                                     |
| 访问的数据库表     | 图书评论表 ：comment                               |
| 进行的操作         | 增加、删除,修改评论                                |
| 产生的结果         | 操作成功, 评论数量或内容变更                       |
| 结果存储位置或输出 | 结果存储在图书评论表() 中 ，展示在被评论的图书下方 |

用户可以对希望找到的图书进行查询，用户可以查询isbn号或者书名

|                    | 图书查询                                   |
| ------------------ | ------------------------------------------ |
| 功能描述           | 对目标图书进行搜索( 可查询 isbn号 或 书名) |
| 访问的数据库表     | 图书表 :book                               |
| 进行的操作         | 查询数据库得到对应结果                     |
| 产生的结果         | 操作成功, 查询结果被展示出来               |
| 结果存储位置或输出 | 输出所有匹配到的图书                       |

用户可以对图书添加喜爱和收藏 ，收藏的图书会显示在个人信息页面中

|                    | 图书喜爱/收藏                                                |
| ------------------ | ------------------------------------------------------------ |
| 功能描述           | 对图书添加喜爱和收藏                                         |
| 访问的数据库表     | 图书喜爱表 lovemap ，图书收藏表: savemap                     |
| 进行的操作         | 增加、删除喜爱和收藏                                         |
| 产生的结果         | 操作成功, 喜爱表或收藏表数据数量更改                         |
| 结果存储位置或输出 | 结果存储在图书喜爱表lovemap ，图书收藏表 savmap中，收藏的图书会显示在个人信息页面中 |

用户可以对图书进行评分，帮助他人了解这本书的质量

|                    | 图书评分                      |
| ------------------ | ----------------------------- |
| 功能描述           | 对图书质量进行评分            |
| 访问的数据库表     | 图书信息表：book              |
| 进行的操作         | 对图书进行打分                |
| 产生的结果         | 操作成功 图书的评分重新计算   |
| 结果存储位置或输出 | 结果存储在图书信息表 book  中 |

排行榜 会根据预设的排行规则进行排行，用户可以在排行榜上找到高质量的图书，有 根据喜爱排行 ，根据收藏数排行 

|                    | 排行榜                                   |
| ------------------ | ---------------------------------------- |
| 功能描述           | 对图书进行排行                           |
| 访问的数据库表     | 图书信息表：book                         |
| 进行的操作         | 排行图书馆所有藏书                       |
| 产生的结果         | 操作成功, 系统对所有图书信息进行排行显示 |
| 结果存储位置或输出 | 输出所有按某一规则排行好的图书           |

### 3.1.5 用户功能设计

用户功能包括用户注册、用户登录、用户信息修改。用户可以通过用户管理功能来进行账号的注册以及用户的登录，同时也可以在此管理功能中对用户的信息进行修改

|                    | 用户功能管理                                         |
| ------------------ | ---------------------------------------------------- |
| 功能描述           | 对用户进行基本操作和信息管理                         |
| 访问的数据库表     | 用户类型表：user                                     |
| 进行的操作         | 增加账户 ，修改账户信息                              |
| 产生的结果         | 对用户基本操作和信息管理，改变user的详细信息         |
| 结果存储位置或输出 | 结果存储在用户类型表(user)中，结果在用户详情页面输出 |

## 3.2 流程设计

### 3.2.1 登录流程设计

当用户刚进入程序的时候，会进入用户登录界面，这时候需要用户输入自己的账号和密码，然后点击登录按钮。如果用户没有账号和密码，需要点击前往注册按钮，跳转到注册界面。在用户注册界面中，会显示账号和密码，以及再次输入密码等输入框。如果用户在登录界面输入了正确的账号和密码则会跳转到系统首页，用户也可以点击个人中心中的个人信息，来查看自己的详细信息，在用户信息界面会显示出用户的当前头像、姓名、性别、生日等信息，用户可以点击头像，对头像进行更换，当然用户也可以点击相关的信息进行更换，当对信息进行更改之后，需要点击保存按钮，将更改的信息进行保存。用户登录功能流程图如图2所示。

![2](<http://47.100.56.19/static/3.png>)

### 3.2.2 评论流程设计

评论功能包括发表评论、删除评论。用户可以点击动态界面中的发表按钮，弹出发表建议输入框，在输入框中，用户就可以输入自己想要发表的内容，然后点击确实按钮进行发表。发表结果就会在动态界面中显示出来。如果用户想要删除自己发表的内容，可以点击个人中心中的我的评论，会显示出来用户发表过的所有建，通过删除按钮将自己想要删除的那一行进行删除。发表评论流程图如图4所示。

![3](<http://47.100.56.19/static/评论流程.png>)

## 3.3 数据库设计

### 3.3.1 数据库概念设计

用户表(user) 包括 用户ID，账号，密码，头像，姓名，性别，生日，状态 ，创建时间 属性

![3](<http://47.100.56.19/static/用户.png>)

图书表(book) 包括 图书 Id 图书isbn，图书名，作者，出版社，出版时间，类别，评分，评分人数 收藏人数 喜爱人数 ，创建时间 属性


![4](<http://47.100.56.19/static/图书.png>)

评论表(comment) 包括 评论ID,评论PID,图书id,用户Id 评论内容 ，创建时间 属性


![4](<http://47.100.56.19/static/评论.png>)

收藏表(savemap) 包括 收藏ID 图书Id ,用户Id  状态 创建时间 属性

![4](<http://47.100.56.19/static/收藏.png>)

喜爱表(lovemap )包括 喜爱ID 图书Id ,用户Id   状态 创建时间 属性

![4](<http://47.100.56.19/static/喜爱.png>)

### 3.3.2 数据表设计

根据对系统数据关系模式的设计结果，数据库实现如下所示：

- (1) 用户信息表

用户信息表是用来管理用户的个人信息，包括 用户ID，账号，密码，头像，用户名，性别，生日，状态 ，创建时间，其中用户ID是唯一，所以设为主键。

|列名|数据类型|长度|是否为空|注释|
|---|---|---|---|---|
|id|bigint|20|false|用户Id，自增|
|username|varchar|20|false|账户|
|password|varchar|20|false|密码|
|icon|varchar|20|false|头像|
|name|varchar|20|false|用户名|
|sex|boolean|20|false|性别|
|birthday|varchar|45|false|生日|
|status|thinint|10|false|状态(正常状态，被禁言状态等)|
|create_time|varchar|20|false|创建时间|

- （2） 图书信息表

图书信息表是用来管理图书的相关信息 ，包括 图书 Id 图书isbn，图书名，作者，出版社，出版时间，类别，评分，评分人数 收藏人数 喜爱人数 ，创建时间。其中图书ID是唯一的，所以设置为主键

|列名|数据类型|长度|是否为空|注释|
|---|---|---|---|---|
|id|bigint|20|false|图书Id|
|isbn|varchar|20|false|图书isbn号|
|name|varchar|20|true|图书名|
|author|varchar|20|false|图书作者|
|press|varchar|20|false|出版社|
|press_time|varchar|20|false|出版时间|
|type|varchar|45|false|类别|
|value|varchar|20|false|评分|
|comment|int|20|false|评论人数|
|save|int|20|false|收藏人数|
|love|int|20|false|喜爱人数|
|create_time|varchar|20|false|创建时间|

- (3)  评论表

评论表是用来管理图书评论的相关信息 ，包括  评论ID,评论PID,图书id,用户Id 评论内容 ，创建时间。其评论ID是唯一的，所以设置为主键

|列名|数据类型|长度|是否为空|注释|
|---|---|---|---|---|
|id|bigint|20|false|评论Id|
|pid|varchar|20|false|评论PId|
|user_id|bigint|20|false|用户Id|
|book_id|bigint|20|false|图书Id|
|value|varchar|20|false|评论内容|
|create_time|varchar|20|false|创建时间|

- (4) 收藏表

收藏表是用来管理图书收藏的相关信息 ，包括   收藏ID 图书Id ,用户Id  状态 创建时间。其  收藏ID
是唯一的，所以设置为主键。


|列名|数据类型|长度|是否为空|注释|
|---|---|---|---|---|
|id|varchar|20|false|收藏Id|
|book_id|bigint|20|false|图书Id|
|user_id|bigint|20|false|用户Id|
|status|thinint|10|false|状态,正常或被删除|
|create_time|varchar|20|false|创建时间|

- (5) 喜爱表

喜爱表是用来管理图书收藏的相关信息 ，包括   喜爱ID 图书Id ,用户Id  状态 创建时间。其  喜爱ID
是唯一的，所以设置为主键。

|列名|数据类型|长度|是否为空|注释|
|---|---|---|---|---|
|id|varchar|20|false|喜爱Id|
|book_id|bigint|20|false|图书Id|
|user_id|bigint|20|false|用户Id|
|status|thinint|10|false|状态,正常或被删除|
|create_time|varchar|20|false|创建时间|



# 第4章 系统实现

该部分主要介绍系统功能的具体实现过程以及页面效果，系统功能中包括用户管理功能，图书查询功能，图书评论功能，图书排行功能，收藏图书功能。

## 4.1 用户登录功能

![2](<http://47.100.56.19/static/登录.png>)

```java
@RestController
public class Login {

    final UserDao dao;

    public static String newToken(){
        return "003768-a334bc-221fa";
    }

    @Autowired
    public Login(UserDao dao) {
        this.dao = dao;
    }

    @PostMapping("/login")
    public ReturnWrap login(@RequestBody User u){
        List<User> u1 = dao.findAll();
        for (User user : u1) {
            if (u.getPassword().equals(user.getPassword())&&u.getName().equals(user.getName())){
                return ReturnWrap.returnWithData(new Result(0,newToken()));
            }
        }
        return ReturnWrap.errorWithData("login failed!");
    }

    @PostMapping("/user")
    public ReturnWrap register(@RequestBody User u){
        dao.save(u);
        return ReturnWrap.SUCCEED;
    }

    @GetMapping("/user/{id}")
    public ReturnWrap<User> get(@PathVariable Long id){
       return ReturnWrap.returnWithData(dao.getOne(id));
    }

    @GetMapping("/users")
    public ReturnWrap<List<User>> get(){
        return ReturnWrap.returnWithData(dao.findAll());
    }

    @DeleteMapping("/user/{id}")
    public ReturnWrap<Void> delete(@PathVariable Long id){
        dao.deleteById(id);
        return ReturnWrap.SUCCEED;
    }

    @PutMapping("/user/{id}")
    public ReturnWrap<Void> modify(@PathVariable Long id, @RequestBody User u){
        dao.save(u);
        return ReturnWrap.SUCCEED;
    }

}

```



## 4.2 用户管理功能 





![2](<http://47.100.56.19/static/用户管理.png>)

```java
@RestController
public class UserBook {

    private final UserDao userDao;

    private final HistoryDao historyDao;

    private final BookDao bookDao;

    private final CBook cBook;

    private final CommentDao commentDao;

    @Autowired
    public UserBook(UserDao dao, HistoryDao historyDao, BookDao bdao, CBook cBook, CommentDao cdao) {
        this.userDao = dao;
        this.historyDao = historyDao;
        this.bookDao = bdao;
        this.cBook = cBook;
        this.commentDao = cdao;
    }

    @GetMapping("/user/{id}/lovebook")
    public ReturnWrap<List<Book>> getLoveBook(@PathVariable long id){
        long u = userDao.getOne(id).getLove();
        return ReturnWrap.returnWithData(getBookByCondition(u));
    }

    @GetMapping("/user/{id}/notlovebook")
    public ReturnWrap<List<Book>> getNotLoveBook(@PathVariable long id){
        long u = userDao.getOne(id).getNotlove();
        return ReturnWrap.returnWithData(getBookByCondition(u));
    }

    @GetMapping("/user/{id}/savebook")
    public ReturnWrap<List<Book>> getSaveBook(@PathVariable long id){
        long u = userDao.getOne(id).getSave();
        return ReturnWrap.returnWithData(getBookByCondition(u));
    }

    private List<Book> getBookByCondition(long u) {
        List<Integer> l = Binary.getBit(u);
        List<Book> b = new ArrayList<>();
        for (Integer integer : l) {
            b.add(bookDao.getOne(integer.longValue()));
        }
        return b;
    }

    @PutMapping("/user/{id}/notlovebook/{bid}")
    public ReturnWrap SetNotLoveBook(@PathVariable long id,@PathVariable long bid){
        User u = userDao.getOne(id);
        u.setNotlove(u.getNotlove()|(1 << bid));
        userDao.save(u);
        cBook.notLoveAdd(bid);
        return ReturnWrap.SUCCEED;
    }

    @PutMapping("/user/{id}/savebook/{bid}")
    public ReturnWrap SetSaveBook(@PathVariable long id,@PathVariable long bid){
        User u = userDao.getOne(id);
        u.setSave(u.getSave()|(1 << bid));
        userDao.save(u);
        cBook.saveAdd(bid);
        return ReturnWrap.SUCCEED;
    }

    @PutMapping("/user/{id}/lovebook/{bid}")
    public ReturnWrap setLoveBook(@PathVariable long id, @PathVariable long bid){
        User u = userDao.getOne(id);
        u.setLove(u.getLove()|(1 << bid));
        userDao.save(u);
        cBook.loveAdd(bid);
        return ReturnWrap.SUCCEED;
    }

    @GetMapping("/user/{id}/comment")
    public ReturnWrap GetComment(@PathVariable long id){
        List<Comment> c =  commentDao.findAll();
        c = c.stream().filter(b -> b.getUserId() == id).collect(Collectors.toList());
        return ReturnWrap.returnWithData(c);
    }

    @PostMapping("/user/history")
    public ReturnWrap<Void> addHistory(@RequestBody History history){
        historyDao.save(history);
        return ReturnWrap.SUCCEED;
    }

    @DeleteMapping("/history/{id}")
    public ReturnWrap<Void> deleteHistory(@PathVariable long id){
        historyDao.deleteById(id);
        return ReturnWrap.SUCCEED;
    }


    @GetMapping("/user/{id}/histories")
    public ReturnWrap<List<History>> getHistory(@PathVariable long id){
        List<History> h = historyDao.findAll().stream().filter(i -> i.getUserId() == id).collect(Collectors.toList());
        return ReturnWrap.returnWithData(h);
    }

    @GetMapping("/user/{id}/history")
    public ReturnWrap<List<History>> getHistoryWithOffset(@PathVariable long id, @PathParam("offset") int offset,@PathParam("length") int length){
        List<History> h = historyDao.findAll().stream().filter(i -> i.getUserId() == id).collect(Collectors.toList());
        return ListUtil.getByCondition(offset,length,h);
    }
}

```



## 4.3 图书查询功能

![2](<http://47.100.56.19/static/搜索.png>)

```java
 @GetMapping("/book/search/{name}")
    public ReturnWrap<List<Book>> searchByName(@PathVariable String name){
        List<Book> c = bookDao.findAll();
        c = c.stream().filter(b -> b.getName().contains(name) || b.getIsbn().equals(name)).collect(Collectors.toList());
        return ReturnWrap.returnWithData(c);
    }
```



## 4.4 图书评论功能

![2](<http://47.100.56.19/static/图书评论.png>)

```java
@RestController
public class Comment
{

    final private CommentDao dao;

    @Autowired
    public Comment(CommentDao dao) {
        this.dao = dao;
    }

    @PostMapping("/comment")
    public ReturnWrap Create(com.yyw.bookExchange.data.Comment u){
        dao.save(u);
        return ReturnWrap.SUCCEED;
    }


    @DeleteMapping("/comment/{id}")
    public ReturnWrap Delete(@PathVariable Long id){
        dao.deleteById(id);
        return ReturnWrap.SUCCEED;
    }

    @GetMapping("/comment/{id}")
    public ReturnWrap Query(@PathVariable Long id){
        return ReturnWrap.returnWithData(dao.findById(id));
    }

    @PutMapping("/comment/{id}")
    public ReturnWrap Update(@PathVariable Long id,@RequestBody com.yyw.bookExchange.data.Comment u){
        dao.deleteById(id);
        dao.save(u);
        return ReturnWrap.returnWithData(u);
    }
}


```

```java
@GetMapping("/book/{id}/comment")
    public ReturnWrap<List<Comment>> GetComment(@PathVariable long id){
        List<Comment> c = commentDao.findAll();
        c = c.stream().filter(b -> b.getBookId() == id).collect(Collectors.toList());
        return ReturnWrap.returnWithData(c);
    }
```



## 4.5 收藏图书功能

![2](<http://47.100.56.19/static/添加收藏.png>)



```java
 @PutMapping("/book/{id}/saveadd")
    public ReturnWrap<Void> saveAdd(@PathVariable long id){
        Book b = bookDao.getOne(id);
        b.setSave(b.getSave()+1);
        bookDao.save(b);
        return ReturnWrap.SUCCEED;
    }
```



## 4.6 图书排行功能

![2](<http://47.100.56.19/static/排行榜.png>)

```java
@RestController
public class BookRank {
    private final BookDao bookDao;

    @Autowired
    public BookRank(BookDao bookDao) {
        this.bookDao = bookDao;
    }


    @GetMapping("/bookrank/love")
    public ReturnWrap<List<Book>> getLoveWithOffset(@PathParam("offset") int offset, @PathParam("length") int length){
        List<Book> books = bookDao.findAll();
        books.sort(Comparator.comparingInt(Book::getLove));
        return ListUtil.getByCondition(offset, length, books);
    }

    @GetMapping("/bookrank/notlove")
    public ReturnWrap<List<Book>> getNotLoveWithOffset(@PathParam("offset") int offset, @PathParam("length") int length){
        List<Book> books = bookDao.findAll();
        books.sort(Comparator.comparingInt(Book::getNotLove));
        return ListUtil.getByCondition(offset, length, books);
    }

    @GetMapping("/bookrank/save")
    public ReturnWrap<List<Book>> getSaveWithOffset(@PathParam("offset") int offset, @PathParam("length") int length){
        List<Book> books = bookDao.findAll();
        books.sort(Comparator.comparingInt(Book::getSave));
        return ListUtil.getByCondition(offset, length, books);
    }

}
```



# 第5章 系统测试

软件测试是软件开发中重要的一项活动，为了保证软件开发实现的质量，促进软件的正确性、完整性、质量和安全性，软件测试经典定义是：在规定条件下对应用程序进行操作，发现程序存在的问题，对软件的质量进行衡量，最后进行评估判断是否满足设计要求[10]。

## 5.1 测试目的和方法

软件测试是为了发现软件中的错误，降低代码出错风险，保证代码质量。

- 软件测试是为了检验产品会否满足设计需求，包括功能特性及非功能特性与设计限制。

- 软件测试是为了保证软件运行的高可靠性。

软件测试方法种类很多，进行分类大概分为黑盒测试、白盒测试和灰盒测试。黑盒测试是把软件系统当做一个黑箱，不了解内部结构。从软件的行为进行测试；白盒测试是设计者了解软件系统内部结构，并使用软件内部知识进行测试；灰盒测试介于黑盒测试和白盒测试之间[11]。

### 5.1.1 单元测试

元测试是为了保证系统每一个功能模块能够正确运行，检验软件基本组成单位的正确性，测试的对象是软件设计的最小单位：函数

### 5.1.2 系统测试

单元测试完成之后，将单元测试组成的子系统以一个完整的系统进行测试。系统测试，主要包括：功能测试、联合测试、组装测试等，对系统的接口集成后的功能进行正确性检测，检查各个单元之间的接口是否正确。

### 5.1.3 测试验收

测试验收指软件系统的实现是否符合预期设计要求而进行的测试，这一阶段一般被称为使用者验收测试，从普通用户角度进行测试。

测试的主要内容包括：

（1）布局测试：对图书评论与交流网站界面布局进行测试，通过多组测试"图书评论与交流系统满足预期要求。

（2）β测试：邀请了普通用户（模拟用户）对图书评论与交流网站整体功能进行测试，测试过程中未发现问题，达到预期系统设计要求。

图书评论与交流网站采取单元测试来对后端功能模块进行测试，单元测试完成后对相应的模块功能进行修改完善，最后进行系统总体测试。全部测试通过，达到功能模块的设计需求，符合系统设计。

## 5.2 测试的内容

1.服务端系统测试

（1）查询测试，主要包括通过isbn查询图书，通过书名查询图书。

（2）删除测试，主要包括删除评论，删除收藏，删除用户，删除图书。

（3）新增测试，主要包括新增图书，新增评论，新增用户，新增收藏，新增喜爱。

（4）修改测试，主要包括图书修改，用户信息修改。

（5） 排行榜测试 ，主要包括收藏排行，喜爱排行，评分排行。





## 5.3 测试结果

根据所设计的测试内容，对"文渊阁"古典文学在线学习与鉴赏系统进行测试，测试结果如表6所示。

| 序号 | 测试内容               | 测试结果 |
| :--- | :--------------------- | :------- |
| 1.1  | 通过isbn查询图书       | PASS     |
| 1.2  | 通过图书名查询图书     | PASS     |
| 2.1  | 删除评论               | PASS     |
| 2.2  | 删除收藏               | PASS     |
| 2.3  | 删除用户               | PASS     |
| 2.4  | 删除图书               | PASS     |
| 3.1  | 新增图书               | PASS     |
| 3.2  | 新增对图书的评论       | PASS     |
| 3.3  | 新增对他人评论的回复   | PASS     |
| 3.4  | 新增用户               | PASS     |
| 3.5  | 新增收藏               | PASS     |
| 3.6  | 新增喜爱               | PASS     |
| 4.1  | 图书信息修改           | PASS     |
| 4.2  | 用户信息修改           | PASS     |
| 5.1  | 根据收藏数进行图书排行 | PASS     |
| 5.2  | 根据喜爱数进行图书排行 | PASS     |
| 5.3  | 根据评分进行图书排行   | PASS     |

通过一系列的软件测试，系统运行未出现问题，各个功能模块符合预期系统设计，系统实用性高。

# 结束语

本此毕业设计运用了软件工程的设计思想，实现了代码的简洁化，易维护等特点。为以后的功能添加提供可能性。同时，在这此的设计中，采用了JQuery机制，使整个系统的设计思路更加清晰。通过这次毕业设计，我也对Java语言有了更进一步的了解，同时还可以掌握在Spring Boot项目中如何使用MVC接口的开发模式，如何创建菜单栏与工具栏，为以后应用Java语言开发程序奠定了基础。

本系统仅仅是一个面向小型的高校图书馆，它主要完成对图书的一些基本操作，包括图书和读者的添加，查询，修改以及借还书等信息的操作。在整个系统的开发过程中采用了面向对象的思想，在数据库的设计上利用了MySQL的便利性和实用性。

系统在设计过程中不可避免的遇到了许多的问题，由于整个系统的复杂性，加上整个系统完全由我个人设计，所以整个系统仍有许多的不足，这些都是我需要改进的地方。作为一款图书管理系统，我设计的该系统离实际使用还有相当的距离，需要我不断的进行补充和改善。

# 参考文献

[1] 王立福. 软件工程（第二版）[M]. 北京: 北京大学出版社. 2002.  
[2] 张秋余, 杨玥. 基于用例的需求建模方法[J]. 计算机工程与设计, 2006, 19: 3539-3541.   
[3] MattheMacDonal. 管理信息系统[J]. 电子工业出版社. 2003. Vol.3(8): 102-108.   
[4] 孙一林, 彭波. Java数据库编程实例. 清华大学出版社, 2002年8月.  
[5] 张海潘. 软件工程[J]. 清华大学出版社. 2003年11月.  
[6] 李刚. 疯狂Java讲义. 电子工业出版社, 2012年01月.   
[7] 张帆. java范例开发大全. 清华大学出版社, 2010年6月.  
[8] (美)Paul DuBios 著|译者: 杨晓云, 王建桥, 杨涛. MySQL技术内幕.  
[9] 王珊, 萨师煊. 数据库系统概论. 高等教育出版社, 2006年5月.   
[10] Stephens. 数据库设计. 机械工业出版社, 2009年10月.  
[11] 马军, 李玉林. SQL语言与数据库操作技术大全. 电子工业出版社, 2010年3月.  
[12] 孙一林, 彭波. Java数据库编程实例. 清华大学出版社, 2002年8月.   
[13] 昊斯特曼 (Horstmann Gay S), Gary Cornell. Java核心技术卷1卷2. 电子工业出版社, 2011年7月。  
[14] (美)布洛克|译者: 杨春花, 俞黎敏. Effective Java中文版(第2版). 机械工业出版社, 2010年09月  
[15] BruceEckel. Java编程思想. 机械工业出版社, 2003年10月.  
[16] (美)Bruce Eckel. Java编程思想[M]. 陈昊鹏译. 北京：机械工业出版社，2007  
[17] (美)威尔顿，麦可匹克. JavaScript入门经典(第3版)[M]. 施宏斌译. 北京：清华大学出版社，2009:176  
[18] (美)Marty Hall,Larry Brown. Servlet与JSP核心编程.第二版[M].赵学良译.北京：清华大学出版社，2009：354  
[19] 张梅; 王文君; 张丽君. 基于Java的高校图书馆与大型书店网上联合服务系统[J]. 现代情报 2006.10  
[20] Timothy J.Dwyer. Java革命[J].微电脑世界.2010.01


# 致 谢

本课题的完成中，我得到了很多人的帮助，在此表示衷心的感谢!

首先感谢我的指导老师徐老师，我的课题是在她的指导和帮助下完成的，他深厚的理论功底和严谨的治学态度以及高度的敬业精神使我受益非浅，对我课题的完成起到了至关重要的作用。
经过这次毕业设计，使我觉得不论从理论知识还是从实际操纵中都学到了不少知识，我想归纳起来，主要有以下四个方面：  

* 经过这次毕业设计，它让我接触更多平时没接触的科学仪器设备、元器件以及获得相关的仪器调试经验，同时我也发现自己在这方面很多不足之处。体会到理论知识对实践有很大的知道作用，她让我知道，只有在正确的理论指引下，才能设计出合乎实际需要的硬件电路。
* 学会了高效率的查阅资料、运用工具书、医用网络查找资料。我发现，在我们所使用的书籍上有些知识在实际应用中其实不是十分理想，各种参数都需要自己去调整。偶尔还会遇到错误的资料现象，这就要求我们应更加注重实践环节。
* 在毕业设计中，我们应当注意重点与细节的关系。
* 失败不可怕，只要不趴下，昂首向前走，希望总会有的。
* 同组同学相互包容，彼此合作，取长补短，才能铸就最后的成功。可以说这次毕业设计是对所学知识的一次运用和检阅，同时对自学能力提出很高的要求，所以平时的学习离开思考，就是严重的错误，我们学习不应该有偏科现象，各方面知识都要接触，这样做才能为毕业设计打下基石。  

最后,我要感谢的母校南阳理工学院,为我提供的良好的学习与发展环境。感谢我的指导教师徐春雨给予我帮助，感谢母校开放、公正的言论环境,现代、实用的学习环境,舒适、便捷的生活环境让我顺利度过了人生的关键三年。愿所有校园里认识的,不认识的；来过的,走过的……愿你们珍惜握在手里的现在,抓住机遇,拥有一个美好的明天。

