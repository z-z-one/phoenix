# Phoenix

모교의 취업지원 사이트를 모델로 한 Jsp 프로젝트 입니다. </br></br> 


### 프로젝트 상세
- [프로젝트 설명 노션 바로가기 링크 ](https://miniature-globe-4cc.notion.site/JSP-Career-Hunter-184178242f938092b2f4fc55514d9a30 ) : 개발 과정과 자세한 설명을 확인 할 수 있습니다.


- DB는 AWS로 배포한 mariaDB를 사용하였습니다. 

</br>


---

</br>

### 소스 디렉토리 구조 

</br> 

```

\---src
    \---main
        +---java
        |   \---com
        |       +---codingbox
        |       |   \---filter
        |       |           CharacterEncodingFilter.java
        |       |           LoginFilter.java
        |       |           
        |       \---phoenix
        |           +---action
        |           |       Action.java
        |           |       ActionForward.java
        |           |       
        |           +---coverletter
        |           |   \---dao
        |           |           CoverletterDAO.java
        |           |           CoverletterDTO.java
        |           |           
        |           +---mybatis
        |           |       config.xml -- commit 안함
        |           |       SqlMapConfig.java
        |           |       
        |           +---portfolio
        |           |       FrontController.java
        |           |       PortfolioAction.java
        |           |       PortfolioDAO.java
        |           |       PortfolioDTO.java
        |           |       
        |           +---resumes
        |           |       FrontController.java
        |           |       ResumesAction.java
        |           |       ResumesDAO.java
        |           |       ResumesDTO.java
        |           |       
        |           +---sql
        |           |       user.xml
        |           |       
        |           \---user
        |               |   chkPassword.java
        |               |   editMyPage.java
        |               |   editPassword.java
        |               |   MypageFrontController.java
        |               |   setMyPage.java
        |               |   UserFrontController.java
        |               |   UserJoinAction.java
        |               |   
        |               \---dao
        |                       UserDAO.java
        |                       UserDTO.java
        |                       
        \---webapp
            |   division.css
            |   header.js
            |   index.jsp
            |   main_view.jsp
            |   
            +---cover_letter
            |       cl.js
            |       coverLetter.jsp
            |       deldb.jsp
            |       load.jsp
            |       save.jsp
            |       
            +---join
            |       finished.jsp
            |       idcheck.jsp
            |       join.jsp
            |       regex.js
            |       
            +---login
            |       login.jsp
            |       logincheck.jsp
            |       
            +---logout
            |       logout.jsp
            |       
            +---menu
            |   |   menu.jsp
            |   |   menucontroller.jsp
            |   |   
            |   +---css
            |   |       bootstrap.min.css
            |   |       perfect-scrollbar.min.css
            |   |       style.css
            |   |       
            |   +---img
            |   |       logo.png
            |   |       
            |   \---js
            |           bootstrap.min.js
            |           common.js
            |           jquery.js
            |           perfect-scrollbar.min.js
            |           tether.min.js
            |           
            +---META-INF
            |       MANIFEST.MF
            |       
            +---my_page
            |       changepw.jsp
            |       MyPage.jsp
            |       pwfinished.jsp
            |       regex.js
            |       
            +---portfolio
            |   |   add.jsp
            |   |   delDB.jsp
            |   |   file_path.js
            |   |   finished.jsp
            |   |   loadadd.jsp
            |   |   loadDB.jsp
            |   |   loadDBPF.jsp
            |   |   objs.jsp
            |   |   pf.css
            |   |   portfolio.jsp
            |   |   saveDB.jsp
            |   |   
            |   \---imgs
            |           ex.png
            |           ex2.png
            |           ex3.png
            |           ex4.png
            |           
            +---resume
            |       dbload.jsp
            |       finished.jsp
            |       resume.jsp
            |       resumes2.jsp


```
