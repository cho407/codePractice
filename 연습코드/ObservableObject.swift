class DemoData: ObservableObject {
    @Published var userCount: Int = 0
    @Published var currentUser: String = ""

    init() {
        updateUser()
    }

    func updateUser() {
        userCount += 1
        currentUser = currentUser + "A"
    }
}

struct ContentView: View {
    @ObservedObject var demoData: DemoData
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Text("USER COUNT")
                        .bold()
                    Text("\(demoData.userCount)")
                }
                .padding()
                
                VStack {
                    Text("CURRENT USER")
                        .bold()
                    Text("\(demoData.currentUser)")
                }
                .padding()
                
                Button("Update user info") {
                    demoData.updateUser()
                }
            }
            .font(.largeTitle)
            .navigationTitle("DemoData")
        }
    }
}