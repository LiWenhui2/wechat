import { window } from '@kit.ArkUI'

@Builder
export function StartBuilder() {
  Start()
}

@Component
struct Start {
  pathStack: NavPathStack = new NavPathStack()

  aboutToAppear(): void {
    let hostContext = this.getUIContext().getHostContext()
    window.getLastWindow(hostContext).then((window) => {
      window.setWindowLayoutFullScreen(true)
    })
    setTimeout(() => {
      this.pathStack.replacePathByName('Login', null, false)
      window.getLastWindow(hostContext).then((window) => {
        window.setWindowLayoutFullScreen(false)
      })
    }, 1000)
  }

  build() {
    NavDestination() {
      Image($r('app.media.start'))
        .width('100%')
        .height('100%')
    }
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}