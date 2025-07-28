export interface PhoneNumberLoginParams {
  phoneNumber: string
  areaCode: string
}

@Builder
export function LoginBuilder() {
  Login()
}

@Component
struct Login {
  @State isClick: boolean = false
  @State isPhoneNumberLogin: boolean = true
  @State selectedCountry: string = '中国大陆'
  @State areaCode: string = '+86'
  @State phoneNumber: string = '15502796477'
  @State isMoreDialogShow: boolean = false
  pathStack: NavPathStack = new NavPathStack()

  @Builder
  dividerLine() {
    Row()
      .height(1)
      .backgroundColor('#efefef')
      .width('100%')
  }

  @Builder
  PhoneNumberLogin() {
    Column() {
      Text('手机号登录')
        .margin({ top: 100, bottom: 50 })
        .fontSize(20)
        .fontWeight(600)
      this.dividerLine()
      Row() {
        Text('国家/地区')
          .fontWeight(500)
          .fontSize(18)
        Text(this.selectedCountry)
          .layoutWeight(1)
          .fontWeight(500)
          .fontSize(18)
          .margin({ left: 20 })
        Image($r('app.media.more'))
          .width(24)
      }
      .border({ radius: 8 })
      .height(55)
      .backgroundColor(this.isClick ? '#e5e5e5' : Color.Transparent)
      .onClick(() => {
        this.pathStack.pushPathByName('SelectCountry', '', (data) => {
          this.selectedCountry = data.result['country']
          this.areaCode = data.result['areaCode']
        })
      })
      .onTouch((event: TouchEvent) => {
        if (event.type == TouchType.Down) {
          this.isClick = true
        }
        if (event.type == TouchType.Up) {
          this.isClick = false
        }
      })

      this.dividerLine()
      Row() {
        Text('手机号')
          .fontWeight(500)
          .fontSize(18)
        Text(this.areaCode)
          .fontColor('#6c6c6c')
          .fontWeight(500)
          .fontSize(18)
          .margin({ left: 45 })
        TextInput({ placeholder: '请填写手机号码', text: this.phoneNumber })
          .type(InputType.PhoneNumber)
          .placeholderColor('#aaaaaa')
          .backgroundColor('#fff')
          .placeholderFont({ size: 18 })
          .fontSize(18)
          .onChange(value => {
            this.phoneNumber = value
          })
      }
      .height(55)

      this.dividerLine()
      Text('用微信号/QQ号/邮箱登录')
        .height(55)
        .fontSize(15)
        .fontColor('#ff1a4ba4')
        .textAlign(TextAlign.Start)
        .width('100%')
        .onClick(() => {
          this.isPhoneNumberLogin = false
        })
      Text('上述手机号仅用于登录验证')
        .fontSize(15).fontColor('#b2b2b2').margin({ top: 230 })
    }
  }

  @Builder
  Input(title: string, placeholder: string) {
    this.dividerLine()
    Row() {
      Text(title)
        .fontWeight(500)
        .fontSize(18)
      TextInput({ placeholder: placeholder })
        .placeholderColor('#aaaaaa')
        .placeholderFont({ size: 18 })
        .margin({ left: 20 })
        .backgroundColor('#fff')
    }
    .height(55)
  }

  @Builder
  NotPhoneNumberLogin() {
    Column() {
      Text('微信号/QQ号/邮箱登录')
        .margin({ top: 100, bottom: 50 })
        .fontSize(20)
        .fontWeight(600)
      this.Input('账号', '微信号/QQ号/邮箱登录')
      this.Input('密码', '请填写密码')
      this.dividerLine()
      Text('用手机号登录')
        .height(55)
        .fontSize(15)
        .fontColor('#ff1a4ba4')
        .textAlign(TextAlign.Start)
        .width('100%')
        .onClick(() => {
          this.isPhoneNumberLogin = true
        })
      Text('上述微信号/QQ号/邮箱仅用于登录验证')
        .fontSize(15)
        .fontColor('#b2b2b2')
        .margin({ top: 230 })
    }

  }

  @Builder
  DialogItem(text: string) {
    Text(text)
      .height(60)
      .fontSize(18)
      .width('100%')
      .textAlign(TextAlign.Center)
    Row()
      .height(1)
      .backgroundColor('#efefef')
      .width('100%')
  }

  @Builder
  MoreDialog() {
    Column() {
      this.DialogItem('紧急冻结')
      this.DialogItem('前往安全中心')
      this.DialogItem('反馈问题')
      Text('取消')
        .textAlign(TextAlign.Center)
        .width('100%')
        .height(60)
        .fontSize(18)
        .onClick(() => {
          this.isMoreDialogShow = false
        })
    }
    .width('100%')
    .backgroundColor('#fff')
  }

  build() {
    NavDestination() {
      Column() {
        if (this.isPhoneNumberLogin) {
          this.PhoneNumberLogin()
        } else {
          this.NotPhoneNumberLogin()
        }
        Button('同意并登录', { type: ButtonType.Normal })
          .margin({ top: 25 })
          .borderRadius(8)
          .backgroundColor('#07c060')
          .width(190)
          .height(50)
          .fontSize(17)
          .onClick(() => {
            if (this.phoneNumber.trim()) {
              this.pathStack.pushPathByName('PhoneNumberLogin',
                { phoneNumber: this.phoneNumber, areaCode: this.areaCode } as PhoneNumberLoginParams)
            } else {
              this.getUIContext().showAlertDialog({ message: '手机号码不能为空' })

            }
          })
        Row() {
          Text('找回密码')
            .fontColor('#ff1a4ba4')
            .fontSize(15)
          Column()
            .backgroundColor('#aaaaaa')
            .width(1)
            .height(12)
            .margin({ left: 12, right: 12 })
          Text('更多')
            .fontColor('#ff1a4ba4')
            .fontSize(15)
            .bindSheet(this.isMoreDialogShow, this.MoreDialog(), {
              height: 250,
              dragBar: false,
              showClose: false,
              onDisappear: () => {
                this.isMoreDialogShow = false
              }
            })
            .onClick(() => {
              this.isMoreDialogShow = true
            })
        }
        .margin({ top: 60 })
      }
      .width('100%')
      .height('100%')
      .padding({ left: 30, right: 30 })
    }.onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })

  }
}

