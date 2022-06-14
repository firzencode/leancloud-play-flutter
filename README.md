# leancloud-play-flutter

这个是基于 LeanCloud 的 Play SDK JS 版导出的非官方 Flutter 版本，

目前仅支持 Mobile 端

官方 SDK：https://github.com/leancloud/Play-SDK-JS

## Install

```yaml
leancloud_play_flutter:
git: 
    url: git@github.com:firzencode/leancloud-play-flutter.git
    ref: master
```
## Example

调试时，请在example/lib下增加 secret.dart，内容如下

```dart
String getAppId() {
  return '这里填写你的 APP ID';
}

String getAppKey() {
  return '这里填写你的 APP Key';
}

String getServer() {
  return '这里填写你绑定的 API Server';
}

```
## Todo List

- 更完整的测试 Example
- 补充单元测试
- 补充文档
- 支持 Web 端
- 测试 Desktop 端
- 整理 Event 通知体系

## Known Issue

- Lobby 加入后，收不到实时更新的大厅房间列表