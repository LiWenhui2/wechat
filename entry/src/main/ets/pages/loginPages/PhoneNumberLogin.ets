import { PhoneNumberLoginParams } from './Login';
import { common } from '@kit.AbilityKit';
import { preferences } from '@kit.ArkData';
import { loginHttpRequest } from '../utils/Request';


@Builder
export function PhoneNumberLoginBuilder() {
  PhoneNumberLogin()
}

@ComponentV2
struct PhoneNumberLogin {
  @Local phoneNumber: string = ''
  @Local password: string = ''
  @Local areaCode: string = ''
  @Local isMoreDialogShow: boolean = false
  @Local isPasswordLogin: boolean = true
  @Local verifyCodeIsSend: boolean = false
  @Local verifyCodeCount: number = 60
  pathStack: NavPathStack = new NavPathStack()

  async saveToken(token: string) {
    const context: common.UIAbilityContext = this.getUIContext().getHostContext() as common.UIAbilityContext
    const pref = await new Promise<preferences.Preferences>((resolve, reject) => {
      preferences.getPreferences(context,'auth',(err,pref)=>{
        if (err) {
          return reject(err)
        }
        resolve(pref)
      })
    })
    await pref.put('token', token)
    await pref.flush()
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
      this.DialogItem('找回密码')
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
        Flex({ justifyContent: FlexAlign.SpaceBetween }) {
          Image($r('app.media.backButtonIcon'))
            .width(30)
            .onClick(() => {
              this.pathStack.pop()
            })
          Image($r('app.media.moreIcon'))
            .width(30)
            .onClick(() => {
              this.isMoreDialogShow = true
            })
        }

        Text('手机号登录')
          .fontWeight(700)
          .fontSize(20)
          .margin({ top: 65, bottom: 50 })
        Divider().strokeWidth(1).color('#efefef').margin({ left: 15, right: 15 })
        Row() {
          Text('手机号')
            .fontWeight(500)
            .fontSize(18)
          Text(this.areaCode)
            .fontSize(18)
            .fontColor('#767676')
            .margin({ left: 15, right: 5 })
          Text(this.phoneNumber)
            .fontSize(18)
            .fontColor('#767676')
        }
        .padding(15)
        .width('100%')
        .height(60)

        Divider().strokeWidth(1).color('#efefef').margin({ left: 15, right: 15 })
        if (this.isPasswordLogin) {
          Row() {
            Text('密码')
              .fontWeight(500)
              .fontSize(18)
            TextInput({ placeholder: '请填写密码' })
              .type(InputType.Password)
              .showPasswordIcon(false)
              .placeholderColor('#aaa')
              .placeholderFont({ size: 18 })
              .margin({ left: 15 })
              .backgroundColor('#fff')
              .onChange(value => {
                this.password = value
              })
          }
          .padding({ left: 15, right: 15 })
          .width('100%')
          .height(60)
        } else {
          Row() {
            Text('验证码')
              .fontWeight(500)
              .fontSize(18)
            TextInput({ placeholder: '请输入验证码' })
              .type(InputType.Number)
              .placeholderColor('#aaa')
              .placeholderFont({ size: 18 })
              .layoutWeight(1)
              .backgroundColor('#fff')
            Button(this.verifyCodeIsSend ? `已发送(${this.verifyCodeCount})` : '获取验证码',
              { type: ButtonType.Normal })
              .enabled(!this.verifyCodeIsSend)
              .width(100)
              .height(35)
              .fontColor('#171717')
              .fontWeight(500)
              .fontSize(13)
              .backgroundColor('#f2f2f2')
              .borderRadius(5)
              .onClick(() => {
                this.verifyCodeIsSend = true
                const timeId: number = setInterval(() => {
                  this.verifyCodeCount--
                  if (this.verifyCodeCount == 0) {
                    clearInterval(timeId)
                    this.verifyCodeIsSend = false
                    this.verifyCodeCount = 60
                  }
                }, 1000)
              })
          }
          .padding({ left: 15, right: 15 })
          .width('100%')
          .height(60)
        }


        Divider().strokeWidth(1).color('#efefef').margin({ left: 15, right: 15 })
        Text(this.isPasswordLogin ? '用短信验证码登录' : '用密码登录')
          .width('100%')
          .textAlign(TextAlign.Start)
          .padding({ left: 15, top: 15 })
          .fontSize(15)
          .fontColor('#ff1a4ba4')
          .onClick(() => {
            this.isPasswordLogin = !this.isPasswordLogin
          })
        Button('登录', { type: ButtonType.Normal })
          .margin({ top: 300 })
          .borderRadius(8)
          .backgroundColor('#07c060')
          .width(190)
          .height(50)
          .fontSize(17)
          .onClick(async () => {
            try {
              const res =
                await loginHttpRequest({ loginType: 'phone', loginId: this.phoneNumber, password: this.password })
              if (!res.status) {
                this.saveToken(res.token)
                this.pathStack.clear()
                this.pathStack.replacePathByName('Layout', null)
              }
            } catch (e) {
              console.error('登录失败：', e)
            }
          })
      }
      .padding(20)
    }
    .hideBackButton(true)
    .bindSheet(this.isMoreDialogShow, this.MoreDialog(), {
      height: 250,
      dragBar: false,
      showClose: false,
      onDisappear: () => {
        this.isMoreDialogShow = false
      }
    })
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
      this.phoneNumber = (context.pathInfo.param as PhoneNumberLoginParams).phoneNumber
      this.areaCode = (context.pathInfo.param as PhoneNumberLoginParams).areaCode
      console.log(this.phoneNumber, this.areaCode)
    })
  }
}