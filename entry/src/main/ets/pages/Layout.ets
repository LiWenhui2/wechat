@Builder
export function LayoutBuilder() {
  Layout()
}

@ComponentV2
struct Layout {
  pathStack: NavPathStack = new NavPathStack()

  build() {
    NavDestination() {
      Text('Layout')
    }
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}