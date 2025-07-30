@Entry
@Component
struct Index {
  pathStack: NavPathStack = new NavPathStack()
aboutToAppear(): void {

}
  build() {
    Navigation(this.pathStack) {
    }.onAppear(() => {
      this.pathStack.pushPathByName("Start", null, false)
    })
    .hideNavBar(true)
  }
}