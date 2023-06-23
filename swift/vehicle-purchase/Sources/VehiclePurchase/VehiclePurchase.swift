func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let totalBudget = monthlyBudget * 12 * 5
    if price > totalBudget * 1.1 {
        return "Darn! No \(vehicle) for me"
    } else if price > totalBudget {
        return "I'll have to be frugal if I want a \(vehicle)"
    }
    return "Yes! I'm getting a \(vehicle)"
}

func licenseType(numberOfWheels wheels: Int) -> String {
    if [2, 3].contains(wheels) {
        return "You will need a motorcycle license for your vehicle"
    } else if [4, 6].contains(wheels) {
        return "You will need an automobile license for your vehicle"
    } else if wheels == 18 {
        return "You will need a commercial trucking license for your vehicle"
    } else {
        return "We do not issue licenses for those types of vehicles"
    }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    guard yearsOld < 10 else {
        return 25
    }
    return Int((max(Double(msrp), 25_000.0) * Double((10 - yearsOld)) / 1000.0).rounded(.down))
}
