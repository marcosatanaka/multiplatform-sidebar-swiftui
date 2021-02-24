import SwiftUI

struct AddButton: View {
    var body: some View {
        Button(action: onAddTap) {
            Label("Add", systemImage: "plus.circle")
        }
        .accessibility(label: Text("Add"))
    }
    
    func onAddTap() {
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
