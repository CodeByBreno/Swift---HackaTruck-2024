//
//  Model.swift
//  Aula05
//
//  Created by Turma01-7 on 24/09/24.
//

struct Music: Hashable{
    var id: Int;
    var name: String
    var artist: String
    var duration: Int
    var album: String
    var genre: String
    var cover: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(artist)
        hasher.combine(duration)
        hasher.combine(album)
        hasher.combine(genre)
    }

    static func == (lhs: Music, rhs: Music) -> Bool {
        return (
            lhs.name == rhs.name &&
            lhs.artist == rhs.artist &&
            lhs.album == rhs.album &&
            lhs.duration == rhs.duration &&
            lhs.genre == rhs.genre)
    }
}

let musicList = [
    Music(
        id: 1,
        name: "The Emptiness Machine",
        artist: "Linkin Park",
        duration: 188,
        album: "The Emptiness Machine",
        genre: "Alternativa/indie",
        cover: "https://assets.exclaim.ca/dr2uqw6xy/image/upload/c_limit,w_890/f_auto/q_auto/linkin_park_from_zero_164db9a516?_a=BAVAfVIB0"
    ),
    Music(
        id: 2,
        name: "Don't Lie",
        artist: "The Chainsmokers",
        duration: 142,
        album: "Don't Lie",
        genre: "Dance/eletrônica, Pop",
        cover: "https://i.scdn.co/image/ab67616d0000b273c4207ca99629b7af0d00fa7c"
    ),
    Music(
        id: 3,
        name: "I Lived",
        artist: "OneRepublic",
        duration: 212,
        album: "Native",
        genre: "Alternativa/indie",
        cover: "https://i.scdn.co/image/ab67616d0000b2739e2f95ae77cf436017ada9cb"
    ),
    Music(
        id: 4,
        name: "Blinding Lights",
        artist: "The Weeknd",
        duration: 200,
        album: "After Hours",
        genre: "Pop",
        cover: "https://i.scdn.co/image/ab67616d00001e028863bc11d2aa12b54f5aeb36"
    ),
    Music(
        id: 5,
        name: "Shape of You",
        artist: "Ed Sheeran",
        duration: 233,
        album: "÷ (Divide)",
        genre: "Pop",
        cover: "https://i.scdn.co/image/ab67616d0000b273ba5db46f4b838ef6027e6f96"
    ),
    Music(
        id: 6,
        name: "Lose Yourself",
        artist: "Eminem",
        duration: 326,
        album: "8 Mile",
        genre: "Hip Hop",
        cover: "https://i.scdn.co/image/ab67616d0000b273968da85f248a7e7747767801"
    ),
    Music(
        id: 7,
        name: "Bad Guy",
        artist: "Billie Eilish",
        duration: 194,
        album: "When We All Fall Asleep, Where Do We Go?",
        genre: "Pop",
        cover: "https://i.scdn.co/image/ab67616d0000b27350a3147b4edd7701a876c6ce"
    ),
    Music(
        id: 8,
        name: "Rolling in the Deep",
        artist: "Adele",
        duration: 228,
        album: "21",
        genre: "Pop",
        cover: "https://i.scdn.co/image/ab67616d0000b273164feb363334f93b6458d2a9"
    ),
    Music(
        id: 9,
        name: "That's What You Get",
        artist: "Paramore",
        duration: 204,
        album: "Riot",
        genre: "Alternative/indie Rock",
        cover: "https://i.scdn.co/image/ab67616d00001e02bee754528c08d5ff6799a1eb"
        
    )
]
