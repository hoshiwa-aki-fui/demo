import router from '@ohos.router';

@Entry
@Component
struct Ex2Welcome {
  @State message: string = '欢迎登录';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Ex2WelcomeHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })

      Button("退出登录")
        .onClick(()=>{
          router.back()
        })
    }
    .height('100%')
    .width('100%')
  }
}