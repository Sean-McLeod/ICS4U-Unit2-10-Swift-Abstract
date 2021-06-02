/* This is a program that
   generates two vehicles.

   Sean McLeod
   2021/05/28
*/

enum IntParsingError: Error {
    case overflow
    case invalidInput
}

// input
print("Vehicles!\n")
print("What is the color of the truck: ", terminator: "")

do {
    let truckColour = readLine()
    print("Accelerate by: ", terminator: "")
    guard let truckAccelerate = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("Brake by: ", terminator: "")
    guard let truckBrake = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("How much air is provided: ", terminator: "")
    guard let amountOfAir = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("What is the plate number: ", terminator: "")
    let plateNumber = readLine()
    print("What is the brand: ", terminator: "")
    let brand = readLine()

    // call object
    let truck = Truck(color: truckColour!, userBrand: brand!)

    // pass the states in
    truck.acceleration(increment: truckAccelerate)
    truck.brake(decrement: truckBrake)
    truck.setPlateNumber(userPlate: plateNumber!)

    // print the changed state
    print("\nTruck after:")
    truck.printVehicleInfo()
    print("Amount of air: \(truck.provideAir(amountOfAir: amountOfAir))")
    print("Plate number: \(truck.getPlateNumber())")
    print("Brand: \(truck.getBrand())\n")

    print("--------------------------")

    // input
    print()
    print("What is the color of the bike: ", terminator: "")
    let bikeColour = readLine()
    print("Accelerate by: ", terminator: "")
    guard let bikeAccelerate = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("Brake by: ", terminator: "")
    guard let bikeBrake = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("Bike's gear: ", terminator: "")
    guard let bikeGear = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("Bike's tire size: ", terminator: "")
    guard let bikeTireSize = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("Ring the bell!")

    // call object
    let bike = Bike(color: bikeColour!, userGear: bikeGear, aTireSize: bikeTireSize)

    // pass the states in
    bike.acceleration(increment: bikeAccelerate)
    bike.brake(decrement: bikeBrake)

    // current state
    print("\nBike after: ")
    bike.printVehicleInfo()
    print("Cadence: \(bike.getCadence())")
    print("Gear: \(bike.getGear())")
    print("Tire size: \(bike.getTireSize())")
    print(bike.ringBell())

    // get the number of tires of the truck and the bike
    print("\n# of tires of a truck: \(truck.nOfTires())")
    print("# of tires of a bike: \(bike.nOfTires())")

} catch {
    print("\nPlease enter an integer.")
}
