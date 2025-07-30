import { preferences } from '@kit.ArkData'
import { common } from '@kit.AbilityKit'

@Entry
@Component
struct Index {
  async getToken(): Promise<string | null> {
    const context: common.UIAbilityContext = this.getUIContext().getHostContext() as common.UIAbilityContext
    const pref =
      await new Promise<preferences.Preferences>((resolve, reject) => {
        preferences.getPreferences(context, 'auth', (err, pref) => {
          if (err) {
            console.error(err.code+'',err.message)
            return reject(err)
          }
          resolve(pref)
        })
      })
    try {
      const token:string=await pref.get('token','') as string
      return token||null
    }catch (e){
      console.error('获取 token 异常:', e)
      return null
    }
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