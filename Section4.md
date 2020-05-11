## Section4. Running your App on a Physical Device

---

### iphone

Requirements

- An Apple ID
- An iPhone / iPad Device
- Xcode
- USB cable

Steps

1. Check the iOS version is compatible with the Xcode version (at least Xcode 10version, iOS 12)
   - Xcode랑 ios는 major version 2이상 차이가 나야함. (Xcode < iOS)
2. Install `Homebrew`
3. Use homebrew to install ideviceinstaller, iOS-deploy & cocoapods
4. Add Apple ID to Xcode
   - Flutter 프로젝트안에 있는 iOS 디렉토리를 Xcode로 연다.
   - `Runner > Runner > Sign&Capability` 에서 Apple ID를 로그인한다.
5. Select Development Team
6. Connect your phone with USB
7. Trust your Computer(phone)
8. Trust your development certificate(Phone)
9. Create a unique bundle ID

