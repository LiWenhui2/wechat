import { preferences } from '@kit.ArkData'
import { common } from '@kit.AbilityKit'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Index {
  async getToken(): Promise<string | null> {
    const context: common.UIAbilityContext = this.getUIContext().getHostContext() as common.UIAbilityContext
    const pref =
      await new Promise<preferences.Preferences>((resolve, reject) => {
        preferences.getPreferences(context, 'auth', (err, pref) => {
          if (err) {
            return reject(err)
          }
          resolve(pref)
        })
      })
    const token = await new Promise<string | null>((resolve) => {
      pref.get('token', (err: BusinessError, value: string) => {
        if (err) {
          console.error('获取token失败:', err)
          resolve(null)
        } else {
          resolve(value)
        }
      })
    })
    return token
  }

  pathStack: NavPathStack = new NavPathStack()

  build() {
    Navigation(this.pathStack) {
    }.onAppear(async () => {
      try {
        const token = await this.getToken()

        if (token) {
          console.log('token:' + token)
          this.pathStack.pushPathByName("Layout", null)
        } else {
          console.log('123')
          this.pathStack.pushPathByName("Start", null)
        }
      } catch (e) {
        console.error(e)
      }
    })
    .hideNavBar(true)
  }
}