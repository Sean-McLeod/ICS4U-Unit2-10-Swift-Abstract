/* This is a class that has
   the Truck's properties and states.

   Sean McLeod
   2021/06/01
*/

public class Truck: Vehicle {
    private var plateNumber:String
    private let nOfTire:Int
    private let brand:String

    public init(color:String, userBrand: String) {
        self.plateNumber = "null"
        self.nOfTire = 4
        self.brand = userBrand
        super.init(color:color)
    }

    public func getPlateNumber() -> String {
        return self.plateNumber
    }

    public func setPlateNumber(userPlate: String) {
        self.plateNumber = userPlate
    }

    public func getBrand() -> String {
        return self.brand
    }

    public func provideAir(amountOfAir: Int) -> Int {
        return amountOfAir
    }

    public func nOfTires() -> Int {
        return nOfTire
    }
}
