import SwiftUI

struct AppTabNavigation: View {

    enum Tab {
        case listenNow
        case browse
        case radio
        case library
        case search
    }

    @State private var selection: Tab = .listenNow

    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                Text("Listen Now")
            }
            .tabItem {
                Label("Listen Now", systemImage: "play.circle")
            }
            .tag(Tab.listenNow)
            
            NavigationView {
                Text("Browse")
            }
            .tabItem {
                Label("Browse", systemImage: "square.grid.2x2")
            }
            .tag(Tab.browse)
            
            NavigationView {
                Text("Radio")
            }
            .tabItem {
                Label("Radio", systemImage: "dot.radiowaves.left.and.right")
            }
            .tag(Tab.radio)

            NavigationView {
                Text("Library")
            }
            .tabItem {
                Label("Library", systemImage: "square.stack")
            }
            .tag(Tab.library)

            NavigationView {
                Text("Search")
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }
            .tag(Tab.search)
        }
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
