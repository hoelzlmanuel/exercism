func dailyRateFrom(hourlyRate: Int) -> Double {
    8 * Double(hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    Double(22 * dailyRateFrom(hourlyRate: hourlyRate) * (100 - discount) / 100).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    Double(budget / monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount) * 22)
        .rounded(.down)
}
