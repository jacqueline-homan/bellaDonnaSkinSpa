Policy.create(name: "24-Hour Cancellation", description: "As a courtesy to other guests and our spa therapists, if you must cancel or reschedule an appointment we require that you give at least 24 hours notice.  Cancellations made with less than 24 hours of your appointment will be charged a $10 fee.  'No-shows' will be charged 50% of the treatment price.  Appointments made the 'day of' are considered confirmed to which the cancellation policy does apply.")
Policy.create(name: "Punctuality", description: "Please arrive 10 minutes prior to you appointment time to receive the fully allotted time for your service.  If you are running late, a phone call or text is always appreciated.  Your arrival time will determine the length of your treatment time, which will end as scheduled so that the next guest will not be inconvenienced.")
Policy.create(name: "During Your Visit", description: "To get the most out of your treatment, communicate with your therapist.  You comfort and enjoyment are most important to us, so let us know if you have concerns about the temperature of your treatment room, music volume or other issues.")
Policy.create(name: "Quiet Please", description: "To maintain a peaceful atmosphere, we ask that you turn your cell phone to vibrate and keep conversations to a whisper.  Please do not leave children unattended.  The spa is free from pets and smoking for the comfort and consideration of all guests. Thank you!")

service1 = ServiceType.create!(name: "Skin Treatments", description: "Say goodbye to cookie-cutter facials! Our Dermalogica skin treatments are 100% customized to your skin's needs with a thorough skin analysis, making it a personalized treatment created especially for your skin's needs! The perfect home care routine will be prescribed as your secret weapon to keeping your skin feeling healthy, balanced and replenished!", image_url: "assets/legs.jpg")
Service.create!(service_type_id: service1.id, title: "Spa Facial", duration: "60 minutes", price: "80", description: "A customized skin treatment for any skin type. Involves a professional double cleanse, exfoliation, extractions (if needed), a relaxing facial massage and masque to restore and revitalize your skin. After a hand, neck and shoulder massage, toner, & moisturizer completes the treatment and leaves you glowing and protected!")
Service.create!(service_type_id: service1.id, title: "Microdermabrasion", duration: "60 minutes", price: "110", description: "Microdermabrasion is a skin resurfacing technique that removes superficial skin cells using a spray of microcrystals to remove the outermost layer of dry, dead skin cells revealing younger, healthier looking skin. This treatment helps to diminish the appearance of wrinkles, pore size, and pigmentation caused by aging, acne scarring and sun damage. Also stimulates collagen and elasten fiber beneath the surface of the skin resulting in a healthier and firmer appearance.")
Service.create!(service_type_id: service1.id, title: "Power ½ Hour", duration: "30 minutes", price: "55", description: "Need a quick glow but pressed for time? Deep cleanse, steam, exfoliate & hydrate. Before you know it, you're good to go!")
Service.create!(service_type_id: service1.id, title: "Age Smart Treatment", duration: "60 minutes", price: "90", description: "Are the signs of aging becoming more prevalent on your skin? Give it a revitalizing power boost with this treatment designed to help firm, smooth, nourish, regenerate and energize while controlling the biochemical triggers that lead to skin aging.")
Service.create!(service_type_id: service1.id, title: "Acne Clearing Treatment", duration: "60 minutes", price: "85", description: "It's the end of the line for adult acne! This powerful, medicated treatment jump-starts acne clearing and helps to treat your acne and balance your skin.")
Service.create!(service_type_id: service1.id, title: "UltraCalming Treatment", duration: "60 minutes", price: "85", description: "Red, itching, burning skin... Don't conceal it. Control it! The UltraCalming Treatment is a serious relief for sensitized skin that calms, soothes and replenishes the most aggravated, irritated, inflamed skin. By targeting the triggers behind redness, itching and stinging, this treatment will help recover skin health for long-term relief from flare-ups.")
Service.create!(service_type_id: service1.id, title: "Back Treatment", duration: "50 minutes", price: "75", description: "Neglecting those hard to reach areas? Give your back the customized exfoliation it needs! Relax while natural earth clays draw out impurities and nourishing botanicals stimulate circulation and smooth skin. You'll leave with silky, healthier skin!")

service2 = ServiceType.create!(name: "Body Sugaring", description: "The art of body sugaring is a form of hair removal that originated in ancient Egypt when a smooth, hairless body was the standard of youth and beauty. Sugar paste is an all natural product made from sugar, lemon and water. Unlike waxing, sugar never adheres to live skin cells and is removed in the natural direction of hair growth; resulting in less pain, less breakage, less irritation, and fewer ingrown hairs. Sugaring is safe for all skin types, even the most sensitive. Great for any part of the body!", image_url: "assets/spa_skin.jpg")
Service.create!(service_type_id: service2.id, title: "Brazilian", duration: "? minutes", price: "75", description: "???")
Service.create!(service_type_id: service2.id, title: "Bikini", duration: "? minutes", price: "35 & up*", description: "???")
Service.create!(service_type_id: service2.id, title: "Back", duration: "? minutes", price: "55 & up*", description: "???")
Service.create!(service_type_id: service2.id, title: "Legs", duration: "? minutes", price: "45 & up*", description: "???")
Service.create!(service_type_id: service2.id, title: "Arms", duration: "? minutes", price: "30 & up*", description: "???")
Service.create!(service_type_id: service2.id, title: "Underarms", duration: "? minutes", price: "25", description: "???")
Service.create!(service_type_id: service2.id, title: "Brows", duration: "? minutes", price: "20", description: "???")
Service.create!(service_type_id: service2.id, title: "Lip or Chin", duration: "? minutes", price: "10", description: "???")
Service.create!(service_type_id: service2.id, title: "Full Face", duration: "? minutes", price: "40", description: "???")

Promotion.create!(header: "Spa Facial Special", subheader: "25% Off Cash Payments", description: "January 15 - March 1")
Promotion.create!(header: "Easter Weaster Special", subheader: "Free Body Treatments", description: "March through End of April")

Product.create!(name: "Dermalogica", price: 999, brand: "Dermalogica", image_url: "")

t.string   "name"
    t.text     "description"
    t.decimal  "price",                   precision: 10, scale: 2
    t.string   "brand"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image_url",   limit: 350