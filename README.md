# autolayoutTutorial-iOS-Practice
autolayout 을 익히기 위한 튜토리얼

## 완성
![스크린샷 2021-01-06 오후 3 08 46](https://user-images.githubusercontent.com/69136340/103737234-2047d780-5035-11eb-97f0-2adbd89ce758.png)

### 핵심
해당 뷰의 x,y 위치. 해당 뷰의 가로,세로 크기 제공해야한다. 즉 자동으로 그릴 수 있는 요소를 정해주면 된다.

#### 내용

- resolve autolayout issues(하단 삼각형) :
  - "add missing constraints" 통해서 놓친 constraints 를 xcode 가 자동으로 제공.
  - clear constraints : constraints 전부 삭제.
  
- 앵커를 4방향 모두 가진다면 크기를 정하지 않아도 된다.
- 뷰의 크기를 알고 x 위치를 알고 vertical constraints 를 주어도 가능.
- 등 생각했을 때 조건을 주었을 때 xcode 가 그릴 수 있다고 판단하면 가능하다.

- 뷰의 위치 : 앵커로 제공.
- 뷰의 크기 : 앵커기반 스크린사이즈로 기준으로 뷰의 크기 제공 가능.

- 앵커를 더 우선적을 여김.
- 충돌 시(빨간선) 빌드하면 constraints 를 선택해 지워서 해결해야 한다.
