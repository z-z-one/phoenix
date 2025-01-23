시퀀스는 10000부터 시작

### member
- 아이디 - userid , primary key , 유일키
- 비밀번호 - userpw
- 이메일 - useremail
- 휴대폰번호 - userphone
<br>

###  portfolio
- 멤버고유번호 - userid , 멤버에따라 자동생성
- 포폴번호 - pnum , 시퀀스자동생성
- 제목 - ptitle
- 내용 - pcontents
- url - purl
- 첨부파일주소 - ppath
<br>

### coverletter
- 멤버고유번호 - userid , 멤버에따라 자동생성
- 항목번호 - cnum , 시퀀스자동생성
- 제목 - ctitle
- 내용 - ccontents
<br>

### resumes
- 멤버고유번호 - userid , 멤버에따라 자동생성
- 이름 - username
- 생년월일 - birth
- 성별 - gender
- 연락처 - member테이블 접근해서 하는걸로
- 주소 -  addr (api없이진행하는걸로)
- 이메일 - member테이블 접근해서 하는걸로
- 최종학력 - history
- 학교명 - school
- 전공 - major
- 재학기간 - term
- 경력사항 및 자격증 - career
- 기타사항 - etc
