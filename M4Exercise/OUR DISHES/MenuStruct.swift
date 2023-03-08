import Foundation

struct JSONMenu: Codable {
  let menu: [MenuItem]
}

struct MenuItem: Codable, Hashable, Identifiable {
  let id = UUID()
  let title: String
  let price: String

  enum CodingKeys: String, CodingKey {
    case title = "title"
    case price = "price"
  }
}
