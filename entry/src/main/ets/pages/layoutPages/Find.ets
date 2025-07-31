@ComponentV2
export struct Find {
  build() {
    Column() {
      Text('Find')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ededed')
    .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
  }
}