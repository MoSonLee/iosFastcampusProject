# iosFastcampusProject







- iOS 앱개발 일지



</br>

</br>





### ios 연습

| 회차    | 내용 | 진행 | 링크 | 코멘트 | 날짜 |
| ------- | ---- | ---- | ---- | ------ | ---- |
| **1회** | 앱 만들기 1회차 | 완료 |      |        | 2021.01.05 |
| **2회** | swift 기초 | 완료 |      |        | 2021.01.06 |
| **3회** | swift Flow Control | 완료 |      |        | 2021.01.07 |
| **4회** | swift Function and Optional | 완료 |      |        | 2021. 01. 08 |
| **5회** | swift collection | 완료 |      |        | 2021. 01. 10 |
| **6회** | swift structure | 완료 |      |        | 2021. 01. 11 |
| **7회** | swift class | 완료 |      |        | 2021. 01. 13 |
| **8회** | 원피스 현상금 추천 앱 | 완료 |      |        | 2021. 01. 16 |
| **9회** | AppleStMusicApp | 완료 |      |        | 2021. 01. 18 |
| **10회** | toDoListApp | 완료 |      |        | 2021. 01. 28 |
| **11회** | networking | 완료 |      |        | 2021. 01. 28 |
| **12회** | myNetflix | 완료 |      |        | 2021. 02. 15 |
| **13회** | fullScreenCamera | 완료 |      |        | 2021. 03. 5 |
| **14회** | swift 문법 공부| 진행중 |      |        | 2021. 03. 14 |
| **15회** | QuotesGenerator| 진행중 |      |        | 2021. 03. 14 |
</br>

### 원피스 현상금 앱</br>
 ➡️ 원피스 현상금 어플(bountyList)</br>
 ➡️ 컬렉션 뷰로 구성</br>
 ➡️ 현상금 사진을 누르면 애니메이션 효과 적용.</br>
 
**📲 실행 화면 </br>**
![Simulator Screen Recording - iPhone 11 - 2022-01-16 at 19 35 28](https://user-images.githubusercontent.com/77050826/149656549-19ff9af7-b94e-4d57-bee6-733d55cf2a5f.gif)</br>

 ### AppleStmusicApp</br>
   ➡️ collection view와 collction header view를 사용하여 헤더뷰에 랜덤으로 음악을 넣어준다.</br>
   ➡️ AVFoundation에서 음악, 타이틀, 앨범 name만 가져와서 구현했다.</br>
   ➡️ Simpleplayer class를 구현할 때 singleTone 패턴을 사용했다.</br>
   ➡️ 다크모드로도 실행이 가능하게 코드를 구현했다.</br>
 
 **📲 실행 화면 </br>**
 ![Simulator Screen Recording - iPhone 11 - 2022-02-15 at 04 36 03](https://user-images.githubusercontent.com/77050826/153933929-fc9c4a20-0b0b-46d9-a9fc-7601975eca35.gif)</br>
 
 ### TodoListApp</br>
   ➡️ static table view를 사용해여 설정 페이지를 구현(설정처럼 고정되어 있으면 static 아닐시 dynamic)</br>
   ➡️ today와 upcoming section을 나눠준다.</br>
   ➡️ table view의 section과 row로 나누어서 구현했다.</br>
   ➡️ 앱을 껐다 켜도 데이터를 남길 수 있게 JSon parsing을 사용해 구현했다.

**📲 실행 화면 </br>**
![Simulator Screen Recording - iPhone 11 - 2022-02-15 at 06 51 37](https://user-images.githubusercontent.com/77050826/153952721-bcdebb81-bd6b-4e08-ab03-80ef1755d395.gif)</br>

### myNetflix 앱</br>
   ➡️ AVFoundation을 이용하여 구현(동영상 재생과 관련됐기 때문)</br>
   ➡️ Firebase를 연동하여 Searchbar에 검색 기록을 저장해준다.</br>
   ➡️ SearchAPI를 구현하여 실제로 서버에 있는 동영상을 불러와 재생시킴.</br>
   ➡️ container view에 네스티드 scroll view를  구현해 각각에 들어갈 영화 포스터를 나눠주었다.</br>
   ➡️ kingFisher를 사용하여 image parsing을 해주었다.

**📲 실행 화면 </br>**
![Simulator Screen Recording - iPhone 11 - 2022-03-04 at 18 47 42 복사본 2](https://user-images.githubusercontent.com/77050826/156740374-88d096ce-3623-495f-a0ed-1d87c556e033.gif)</br>

### 명언 생성기 앱</br>
   ➡️ autoLayout의 기초를 다지기 위해 만든 간단한 어플</br>
   ➡️ button이 눌렸을 때 명언과 이름이 랜덤하게 출력됨</br>
   ➡️ autoLayout을 잡으면서 **Content Hugging, Compression Resistance**를 잊지 말자.</br>
   ➡️ 뷰의 속성들에 따라 크기가 결정되는 뷰들이 있는데 이러한 뷰들은 다른 뷰들에 걸린 제약에 의해 본래의 사이즈보다 크거나 줄어들 수 있다.</br>
   ➡️ 더 늘어나게 되는 것에 저항하는 Content hugging(priority가 높을수록 크기를 유지, 낮으면 크기가 늘어난다.)</br>
   ➡️ 제약은 더 줄어드는 제약은 Compression Resistance(priority가 높으면 크기 유지, 낮으면 줄어든다.)

**📲 실행 화면 </br>**
![Simulator Screen Recording - iPhone 11 - 2022-03-14 at 21 27 34](https://user-images.githubusercontent.com/77050826/158173332-3aee17a9-057b-49b5-ab42-6d86a03f2f3b.gif)</br>


</br>

### issues

[**이미지 크기 issue**](https://github.com/MoSonLee/iosFastcampusProject/issues/1#issue-1101945578) </br>
[**keyValue issue**](https://github.com/MoSonLee/iosFastcampusProject/issues/3#issue-1103370996) </br>
[**AppleMusicStApp UI size issue**](https://github.com/MoSonLee/iosFastcampusProject/issues/4#issue-1106168906) </br>
[**Github commit 오류(Fork 어플 사용)**](https://github.com/MoSonLee/iosFastcampusProject/issues/5#issue-1113545516) </br>
[**Todo list 앱 키보드 안 나옴 + 버튼 UI 크기 설정 오류**](https://github.com/MoSonLee/iosFastcampusProject/issues/6#issue-1117374398) </br>
[**오늘의 영화 재생 오류 issue**](https://github.com/MoSonLee/iosFastcampusProject/issues/7#issue-1137745040) </br>
[**Camera app 촬영 후 저장 issue**](https://github.com/MoSonLee/iosFastcampusProject/issues/8#issue-1167229960) </br>




# :memo: Commit Convention

```
  - Init : 초기화
  - Add : 파일 추가
  - Remove : 기능, 파일 삭제
  - Update : 기능, 디자인, 파일 업데이트
  - Fix : 버그 수정
```

<br></br>





