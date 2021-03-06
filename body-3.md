# 系统设计

## 总体设计

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

### 管理功能设计

管理功能包括图书管理和账户管理

### 图书管理

该模块主要有增加图书，图书编辑和图书删除三个功能

|                    | 图书信息管理                                                 |
| ------------------ | ------------------------------------------------------------ |
| 功能描述           | 对图书进行基本操作和信息管理                                 |
| 访问的数据库表     | 图书类型表：book                                             |
| 进行的操作         | 添加、删除图书，对图书的书号、书名、单价、作者、出版社等基本信息进行管理 |
| 产生的结果         | 对图书基本操作管理，对不同图书参数进行各自信息的设置管理     |
| 结果存储位置或输出 | 结果存储在图书类型表(book)中，结果在图书查询页面输出         |

### 账户管理

管理员可以对用户进行增加账户，删除账户，禁言账户三个功能

|                    | 账户信息管理                                         |
| ------------------ | ---------------------------------------------------- |
| 功能描述           | 对用户账号进行基本操作和信息管理                     |
| 访问的数据库表     | 用户类型表：user                                     |
| 进行的操作         | 增加账户，删除账户，禁言账户                         |
| 产生的结果         | 对用户基本操作和信息管理，改变user表数据量           |
| 结果存储位置或输出 | 结果存储在用户类型表(user)中，结果在用户详情页面输出 |

### 核心功能设计

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

### 用户功能设计

用户功能包括用户注册、用户登录、用户信息修改。用户可以通过用户管理功能来进行账号的注册以及用户的登录，同时也可以在此管理功能中对用户的信息进行修改

|                    | 用户功能管理                                         |
| ------------------ | ---------------------------------------------------- |
| 功能描述           | 对用户进行基本操作和信息管理                         |
| 访问的数据库表     | 用户类型表：user                                     |
| 进行的操作         | 增加账户 ，修改账户信息                              |
| 产生的结果         | 对用户基本操作和信息管理，改变user的详细信息         |
| 结果存储位置或输出 | 结果存储在用户类型表(user)中，结果在用户详情页面输出 |

## 流程设计

### 登录流程设计

当用户刚进入程序的时候，会进入用户登录界面，这时候需要用户输入自己的账号和密码，然后点击登录按钮。如果用户没有账号和密码，需要点击前往注册按钮，跳转到注册界面。在用户注册界面中，会显示账号和密码，以及再次输入密码等输入框。如果用户在登录界面输入了正确的账号和密码则会跳转到系统首页，用户也可以点击个人中心中的个人信息，来查看自己的详细信息，在用户信息界面会显示出用户的当前头像、姓名、性别、生日等信息，用户可以点击头像，对头像进行更换，当然用户也可以点击相关的信息进行更换，当对信息进行更改之后，需要点击保存按钮，将更改的信息进行保存。用户登录功能流程图如图2所示。

![2](<http://47.100.56.19/static/3.png>)

### 评论流程设计

评论功能包括发表评论、删除评论。用户可以点击动态界面中的发表按钮，弹出发表建议输入框，在输入框中，用户就可以输入自己想要发表的内容，然后点击确实按钮进行发表。发表结果就会在动态界面中显示出来。如果用户想要删除自己发表的内容，可以点击个人中心中的我的评论，会显示出来用户发表过的所有建，通过删除按钮将自己想要删除的那一行进行删除。发表评论流程图如图4所示。

![3](<http://47.100.56.19/static/评论流程.png>)

## 数据库设计

### 数据库概念设计

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

### 数据表设计

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



# 系统实现

该部分主要介绍系统功能的具体实现过程以及页面效果，系统功能中包括用户管理功能，图书查询功能，图书评论功能，图书排行功能，收藏图书功能。

## 用户登录功能

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



## 用户管理功能 





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
 @GetMapping("/book/search/{name}")
    public ReturnWrap<List<Book>> searchByName(@PathVariable String name){
        List<Book> c = bookDao.findAll();
        c = c.stream().filter(b -> b.getName().contains(name) || b.getIsbn().equals(name)).collect(Collectors.toList());
        return ReturnWrap.returnWithData(c);
    }

```



## 图书查询功能

![2](<http://47.100.56.19/static/搜索.png>)

```java
 @GetMapping("/book/search/{name}")
    public ReturnWrap<List<Book>> searchByName(@PathVariable String name){
        List<Book> c = bookDao.findAll();
        c = c.stream().filter(b -> b.getName().contains(name) || b.getIsbn().equals(name)).collect(Collectors.toList());
        return ReturnWrap.returnWithData(c);
    }
 @GetMapping("/book/{id}")
    public ReturnWrap<Book> get(@PathVariable Long id){
        return ReturnWrap.returnWithData(bookDao.getOne(id));
    }

@GetMapping("/book/{id}/comment")
    public ReturnWrap<List<Comment>> GetComment(@PathVariable long id){
        List<Comment> c = commentDao.findAll();
        c = c.stream().filter(b -> b.getBookId() == id).collect(Collectors.toList());
        return ReturnWrap.returnWithData(c);
    }

@PutMapping("/book/{id}/saveadd")
    public ReturnWrap<Void> saveAdd(@PathVariable long id){
        Book b = bookDao.getOne(id);
        b.setSave(b.getSave()+1);
        bookDao.save(b);
        return ReturnWrap.SUCCEED;
    }
// 通过图书ID获取图书评论信息
@GetMapping("/book/{id}/comment")
    public ReturnWrap<List<Comment>> GetComment(@PathVariable long id){
        List<Comment> c = commentDao.findAll();
        c = c.stream().filter(b -> b.getBookId() == id).collect(Collectors.toList());
        return ReturnWrap.returnWithData(c);
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

```



## 图书评论功能

![2](<http://47.100.56.19/static/图书评论.png>)

```java
 @GetMapping("/bookrank/love")
    public ReturnWrap<List<Book>> getLoveWithOffset(@PathParam("offset") int offset, @PathParam("length") int length){
        List<Book> books = bookDao.findAll();
        books.sort(Comparator.comparingInt(Book::getLove));
        return ListUtil.getByCondition(offset, length, books);
    }

    @GetMapping("/bookrank/save")
    public ReturnWrap<List<Book>> getSaveWithOffset(@PathParam("offset") int offset, @PathParam("length") int length){
        List<Book> books = bookDao.findAll();
        books.sort(Comparator.comparingInt(Book::getSave));
        return ListUtil.getByCondition(offset, length, books);
    }

 @PutMapping("/book/{id}/saveadd")
    public ReturnWrap<Void> saveAdd(@PathVariable long id){
        Book b = bookDao.getOne(id);
        b.setSave(b.getSave()+1);
        bookDao.save(b);
        return ReturnWrap.SUCCEED;
    }
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



## 收藏图书功能

![2](<http://47.100.56.19/static/添加收藏.png>)



```java
 @PutMapping("/book/{id}/saveadd")
    public ReturnWrap<Void> saveAdd(@PathVariable long id){
        Book b = bookDao.getOne(id);
        b.setSave(b.getSave()+1);
        bookDao.save(b);
        return ReturnWrap.SUCCEED;
    }

 @GetMapping("/user/{id}")
    public ReturnWrap<User> get(@PathVariable Long id){
       return ReturnWrap.returnWithData(dao.getOne(id));
    }
```



## 图书排行功能

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



