puts "🌱 Seeding spices..."

Daycare.create([
    {
        name: "Friendly Daycare",
        city: "Aurora",
        cost: 100
    },
    {
        name: "Giggles and Naps",
        city: "Denver",
        cost: 210
    },
    {
        name: "Downtown Daycare",
        city: "Denver",
        cost: 300
    },
    {
        name: "Pueblo Daycare",
        city: "Pueblo",
        cost: 90
    },
    {
        name: "Babies Have Fun",
        city: "Boulder",
        cost: 300
    },
    {
        name: "We Care Daycare",
        city: "Aurora",
        cost: 120
    }

])

Review.create([
    {
        rating: 2,
        comment: "Unsafe location",
        daycare_id: 1


    },
    {
        rating: 10,
        comment: "Friendly staff! Been taking my kid for 3 years!",
        daycare_id: 2

    }

])


puts "✅ Done seeding!"
