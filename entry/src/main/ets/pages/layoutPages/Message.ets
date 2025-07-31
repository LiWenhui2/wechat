interface FriendListType {
  id: number
  icon: Resource
  name: string
  message: string
}

@Entry
@ComponentV2
struct Index {
  now: Date = new Date()
  time: string = `${this.now.getHours()}:${this.now.getMinutes().toString().padStart(2, '0')}`
  //@formatter:off
  friendListData: FriendListType[] = [
    {id:1, icon: $r('app.media.avatar'), name: '乌萨奇', message: '乌拉' },
    {id:2, icon: $r('app.media.avatar'), name: '吉伊', message: '乌拉' },
    {id:3, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
  ]
  //@formatter:on
  @Builder
  FriendBuilder(friend: FriendListType) {
    Column() {
      Row({ space: 15 }) {
        Image(friend.icon)
          .width(60)
        Column({ space: 10 }) {
          Flex({ justifyContent: FlexAlign.SpaceBetween }) {
            Text(friend.name)
              .fontWeight(500)
              .fontSize(20)
            Text(this.time)
              .fontSize(12)
              .fontColor('#aaa')
          }

          Text(friend.message)
            .fontColor('#aaa')
            .width('100%')
        }
        .layoutWeight(1)
      }
      .height(80)

      Divider().color('#ededed').strokeWidth(1)
    }
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.End }) {
        Text('微信(17)')
          .fontWeight(600)
          .fontColor('#000')
          .textAlign(TextAlign.Center)
          .width('100%')
        Image($r('app.media.layout_message_more_icon'))
          .width('20')
          .fillColor('#101010')
      }
      .padding({ left: 15, right: 15 })

      Row() {
        Row() {
          Flex({ justifyContent: FlexAlign.Center }) {
            Image($r('app.media.searchIcon'))
              .width(20)
              .fillColor('#aaa')
              .borderRadius(10)
              .clip(true)
            Text('搜索')
              .fontColor('#aaa')
              .margin({ left: 5 })
          }
        }
        .width('100%')
        .height(35)
        .backgroundColor('#fff')
        .margin({ top: 15, bottom: 15 })
        .borderRadius(5)
      }
      .padding({ left: 10, right: 10 })

      List() {
        ForEach(this.friendListData, (item: FriendListType) => {
          ListItem() {
            this.FriendBuilder(item)
          }
          .width('100%')
        }, (item: FriendListType) => item.id + '')
      }
      .backgroundColor('#fff')
      .padding({ left: 15, right: 15 })
      .height('100%')
      .width('100%')
    }
    .backgroundColor('#ededed')
    .width('100%')
    .height('100%')
    .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP])
  }
}