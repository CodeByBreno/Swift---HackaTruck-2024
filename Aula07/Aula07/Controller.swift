import Foundation

class ControllerCharacter: ObservableObject {
    @Published var chars: [Character] = []
    
    func fetchData() {
        let task = URLSession.shared.dataTask(
            with: URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor")!) {
                data, _, error in
                do {
                    self.chars = try JSONDecoder().decode([Character].self, from: data!)
                } catch {
                    print(error)
                }
             }
        task.resume()
    }
}

