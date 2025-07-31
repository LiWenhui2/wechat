import { Communication } from './layoutPages/Communication'
import { Find } from './layoutPages/Find'
import { Message } from './layoutPages/Message'
import { User } from './layoutPages/User'

interface TabType {
  img: Resource
  text: string
}

@Builder
export function LayoutBuilder() {
  Layout()
}

@ComponentV2
struct Layout {
  pathStack: NavPathStack = new NavPathStack()
  tabData: TabType[] = [
    { img: $r('app.media.messageIcon'), text: '微信' },
    { img: $r('app.media.communicationIcon'), text: '通讯录' },
    { img: $r('app.media.findIcon'), text: '发现' },
    { img: $r('app.media.userIcon'), text: '我' }
  ]
  @Local currentIndex: number = 0

  @Builder
  TabBuilder(item: TabType, index: number) {
    Column({ space: 5 }) {
      Image(item.img)
        .width(28)
        .fillColor(this.currentIndex == index ? '#03c160' : '#1c1c1c')
      Text(item.text)
        .fontSize(14)
        .fontColor(this.currentIndex == index ? '#03c160' : '#303030')
    }
    .padding({ top: 10 })

  }

  build() {
    NavDestination() {
      Tabs({ barPosition: BarPosition.End }) {
        ForEach(this.tabData, (item: TabType, index: number) => {
          TabContent() {
            if (index == 0) {
              Message()
            } else if (index == 1) {
              Communication()
            } else if (index == 2) {
              Find()
            } else {
              User()
            }
          }
          .backgroundColor('#fff')
          .tabBar(this.TabBuilder(item, index))
        })
      }
      .onChange(index => {
        this.currentIndex = index
      })
      .animationDuration(0)
      .scrollable(false)
      .backgroundColor('#ededed')
      .layoutWeight(1)
      .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
    }
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}