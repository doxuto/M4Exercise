import CoreData
import Foundation

extension Dish {
    static func createDishesFrom(menuItems: [MenuItem],
                                 context: NSManagedObjectContext) {
      menuItems.forEach {
        guard exists(name: $0.title, context) == false else {
          return
        }
        let dish = Dish(context: context)
        dish.name = $0.title
        dish.price = Float($0.price) ?? 0
      }
    }
}
