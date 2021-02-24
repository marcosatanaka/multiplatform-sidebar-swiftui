import SwiftUI

struct AppSidebarNavigation: View {

    enum NavigationItem {
        case listenNow
        case browse
        case radio
        case search
        case artists
        case recentlyAdded
        case albums
        case songs
    }

    @State private var selection: NavigationItem? = .listenNow
    
    var sidebar: some View {
        List(selection: $selection) {
            NavigationLink(destination: Text("Listen Now"), tag: NavigationItem.listenNow, selection: $selection) {
                Label("Listen Now", systemImage: "play.circle")
            }
            .tag(NavigationItem.listenNow)

            NavigationLink(destination: Text("Browse"), tag: NavigationItem.browse, selection: $selection) {
                Label("Browse", systemImage: "square.grid.2x2")
            }
            .tag(NavigationItem.browse)

            NavigationLink(destination: Text("Radio"), tag: NavigationItem.radio, selection: $selection) {
                Label("Radio", systemImage: "dot.radiowaves.left.and.right")
            }
            .tag(NavigationItem.radio)

            NavigationLink(destination: Text("Search"), tag: NavigationItem.search, selection: $selection) {
                Label("Search", systemImage: "magnifyingglass")
            }
            .tag(NavigationItem.search)

            Section(header: Text("Library")) {
                NavigationLink(destination: Text("Recently Added"), tag: NavigationItem.recentlyAdded, selection: $selection) {
                    Label("Recently Added", systemImage: "clock")
                }
                .tag(NavigationItem.recentlyAdded)

                NavigationLink(destination: Text("Artists"), tag: NavigationItem.artists, selection: $selection) {
                    Label("Artists", systemImage: "music.mic")
                }
                .tag(NavigationItem.artists)

                NavigationLink(destination: Text("Albums"), tag: NavigationItem.albums, selection: $selection) {
                    Label("Albums", systemImage: "square.stack")
                }
                .tag(NavigationItem.albums)

                NavigationLink(destination: Text("Songs"), tag: NavigationItem.songs, selection: $selection) {
                    Label("Songs", systemImage: "music.note")
                }
                .tag(NavigationItem.songs)
            }
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("Music")
    }
    
    var body: some View {
        NavigationView {
            sidebar

            Text("Select an item")
                .foregroundColor(.secondary)
                .toolbar {
                    AddButton()
                        .disabled(true)
                }
        }
    }
}

struct AppSidebarNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppSidebarNavigation()
    }
}
