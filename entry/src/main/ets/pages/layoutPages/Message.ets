interface FriendListType {
  id: number
  icon: Resource
  name: string
  message: string
}

@ComponentV2
export struct Message {
  now: Date = new Date()
  time: string = `${this.now.getHours()}:${this.now.getMinutes().toString().padStart(2, '0')}`
  //@formatter:off
  friendListData: FriendListType[] = [
    {id:1, icon: $r('app.media.avatar'), name: '乌萨奇', message: '乌拉' },
    {id:2, icon: $r('app.media.avatar'), name: '吉伊', message: '乌拉' },
    {id:3, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:4, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:5, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:6, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:7, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:8, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:9, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:10, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:11, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:12, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
    {id:13, icon: $r('app.media.avatar'), name: '小八', message: '乌拉' },
  ]
  //@formatter:on
  @Local isMenuBarShow: boolean = false

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

  @Builder
  MenuBar() {
    Column() {
      Row({ space: 10 }) {
        Image($r('app.media.layout_message_menu_msg'))
          .width(24)
        Text('发起群聊')
      }
    }
    .backgroundColor('#4c4c4c')
    .padding({ left: 15, right: 15 })
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
          .margin({ right: 15 })
          .onClick(() => {
            this.isMenuBarShow = true
          })
          .bindMenu(this.isMenuBarShow, this.MenuBar(), {
            enableArrow: true,
            placement: Placement.Bottom,
            borderRadius: 3,
            backgroundColor: Color.Red,
            onDisappear: () => {
              this.isMenuBarShow = false
            }
          })
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
  }
}