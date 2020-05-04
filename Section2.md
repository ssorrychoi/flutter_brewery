## Section2: Installation and Setup for Flutter

---

### 1. Install the Flutter SDK

- Minimum System Requirements 
  - Mac OS + 700MB for Flutter
  - Mac OS + 10GB for IDE & simulator
  - Mac OS (at least Mojave)
- Install 
  - https://flutter.dev/docs/get-started/install/macos
  - ![image](https://user-images.githubusercontent.com/43080040/80791126-a4ef7580-8bcb-11ea-9ea5-a3516989cee2.png)
  - Click FlutterSDK and download.
  - unzip file `flutter_macos_v1.12.13+hotfix.9-stable.zip`
  - `/Users/User/flutter` flutter라는 폴더를 만들고 압축을 푼 flutter 폴더를 이동한다.
- Update tour path
  - ![image](https://user-images.githubusercontent.com/43080040/80791290-319a3380-8bcc-11ea-9cba-c7ad65b26b9b.png)
  - `.zhrc` 파일안에 환경변수를 추가한다.
  - flutter라는 명령어가 전역변수로 사용할 수 있게 하는 것이다.
- `flutter --version` 명령어로 설치가 완료 되었는지 확인한다.

---

### 2. Install the Android Studio

- https://developer.android.com/studio 
- Install Android Studio 
- ![image](https://user-images.githubusercontent.com/43080040/80791722-770b3080-8bcd-11ea-9492-ecb9b5eb7bd8.png)
- Configure > Preferences > Plugins > BrowserRepositories 에서 `Flutter` 검색 후 Download
- `Start a New Flutter project` 클릭하면 Flutter_app 생성된다.
- Flutter SDK Path 설정을 잘 맞춰주면 기본앱이 생성된다.

---

### 3. Install Android Emulator

- HardWare를 하나 선택한 후 Android OS를 클릭한 후 설치하면 Emulator 가 설치된다.

  

---

### 4. Install Xcode Simulator

- AppStore에서 Xcode를 다운받는다. (10GB 필요)

- 20분 ~ 2시간정도 소요된다.

- 터미널을 켜서

- ```
  sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
  sudo xcodebuild -runFirstLaunch
  ```

  를 실행한다.

- Xcode를 설치하면 simulator도 자동으로 설치 된다.

- `open -a Simulator` 로 명령어로 입력해도 되고 simulator를 실행하면된다.

- 같은 소스코드로 IOS, AOS 두개의 OS에 running 할 수 있다.