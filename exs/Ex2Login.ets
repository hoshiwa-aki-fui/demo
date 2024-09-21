import promptAction from '@ohos.promptAction';
import router from '@ohos.router';

@Entry
@Component
struct Ex2Login {
  @State message: string = 'Welcome';

  @State username:string ="";
  @State password:string ="";

  build() {
    Row(){
      Column({space:15}){
        Image($r("app.media.login"))
          .width("40%")
        Text(this.message)
          .fontSize(40)
        TextInput({placeholder:"请输入用户名"})
          .height(40)
          .onChange((value)=>{
            this.username=value;
          })
        TextInput({placeholder:"请输入密码"})
          .height(40)
          .onChange((value)=>{
            this.password=value;
          })
          .type(InputType.Password)
        Button("登录")
          .onClick(()=>{
            if(this.username=="akifui"&&this.password=="hoshiwa"){
              router.pushUrl({url:"pages/exs/Ex2Welcome"})
            }else{
              promptAction.showToast({
                message:"账号密码有误！！",
                duration:1600,
                bottom:150
              })
            }
          })
      }
      .width("100%")
      .height("100%")
    }
    .width("100%")
    .height("100%")
  }
}