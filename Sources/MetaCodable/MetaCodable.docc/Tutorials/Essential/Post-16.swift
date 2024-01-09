@Codable
@CodingKeys(.snake_case)
struct Post {
    let id: String
    @CodedAt("header")
    let title: String
    let likes: Int
    let createdAt: String
}

@Codable
struct TextPost {
    @CodedAt
    let base: Post
    let text: String
}

@Codable
struct PicturePost {
    @CodedAt
    let base: Post
    let url: String
    let caption: String
}

@Codable
struct AudioPost {
    @CodedAt
    let base: Post
    let url: String
    let duration: Float
}