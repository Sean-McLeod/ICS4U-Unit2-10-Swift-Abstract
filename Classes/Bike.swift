/* This is a class that has
   the Bike's properties and states.

   Sean McLeod
   2021/06/01
*/

public class Bike: Vehicle {
    private var cadence:Double
    private let nOfTire:Int
    private var tireSize:Int
    private var gear:Int

    public init(color:String, userGear:Int, aTireSize:Int) {
        self.cadence = 0
        self.nOfTire = 2
        self.gear = userGear
        self.tireSize = aTireSize
        super.init(color:color)
    }

    public func getCadence() -> Double {
        self.cadence = Double(super.getSpeed()) / (0.079 * (53 / 12))
        return self.cadence
    }

    public func getGear() -> Int {
        return self.gear
    }

    public func setGear(userGear: Int) {
        self.gear = userGear
    }

    public func getTireSize() -> Int {
        return self.tireSize
    }

    public func setTireSize(someTireSize: Int) {
        self.tireSize = someTireSize
    }

    public func ringBell() -> String {
        return "Ring, Ring!"
    }

    public func nOfTires() -> Int {
        return self.nOfTire
    }
}
