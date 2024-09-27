import Foundation

struct Character: Codable, Identifiable {
    let id: String;
    let actor: String?;
    let alive: Bool?;
    let alternate_actors: [String]?;
    let alternate_names: [String]?;
    let ancestry: String?;
    let dateOfBirth: String?;
    let gender: String?;
    let hogwartsStaff: Bool?;
    let hogwartsStudent: Bool?;
    let house: String?;
    let image: String?;
    let name: String?;
    let patronus: String?;
    let species: String?;
    let wand: Wand?;
    let wizard: Bool?;
}


struct Wand: Codable {
    let core: String?;
    let length: Double?;
    let wood: String?;
}
