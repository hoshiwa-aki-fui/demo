import promptAction from '@ohos.promptAction';

@Entry
@Component
struct Ex1 {
  @State addMessage: string = "";

  @State spans:Array<string>=["《中二病也要谈恋爱！》","《境界の彼方》","《我推的孩子》"
    ,"《鹿乃子奶子虎视眈眈》","《从零开始の异世界生活》"];

  build() {
    Column(){
      Row(){
        TextInput({placeholder:"请输入需要添加的动漫"})
          .width("80%")
          .onChange((value)=>{
            this.addMessage="《"+value+"》";
          })
        Button("添加")
          .width("20%")
          .onClick(()=>{
            if(this.addMessage.trim()!="《》"&&this.addMessage!=""){  //检查 addMessage 字符串是否为空或者只包含空格。
              this.spans.push(this.addMessage);
              this.addMessage="";
            }else{
              promptAction.showToast({
                message:"请输入需要添加的动漫！！",
                duration:1600,
                bottom:150
              })
            }
          })
      }
      .width("100%")
      .height("30%")

      Column(){
        Text(){
          ForEach(this.spans,(item:string)=>{
            Span(item)
          })
        }
        .padding(10)
        .borderWidth(1)
      }
      .width("100%")
      .height("70%")
    }
    .width("100%")
    .height("100%")
  }
}