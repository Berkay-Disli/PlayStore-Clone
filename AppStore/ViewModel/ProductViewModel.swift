//
//  ProductViewModel.swift
//  AppStore
//
//  Created by Berkay Disli on 16.04.2022.
//

import Foundation

class ProductViewModel: ObservableObject {
    
    @Published var products = [Product]()
    @Published var eventsProducts = [ProductEvent]()
    
    init() {
        getProducts()
    }
    
    func getProducts() {
        let productArray = [Product(name: "Dead Cell", type: "Aksiyon", price: "12,50", logo: "logo1", photo: "kapak1", rating: 4.7),
                            Product(name: "RFS - Planes", type: "Simülasyon", price: "2,50", logo: "logo2", photo: "kapak2", rating: 4.4),
                            Product(name: "Yüzüklerin Efendisi", type: "Strateji", price: "Ücretsiz", logo: "logo3", photo: "kapak2", rating: 4.9),
                            Product(name: "Dead Cell", type: "Aksiyon", price: "12,50", logo: "logo1", photo: "kapak1", rating: 4.7),
                            Product(name: "RFS - Planes", type: "Simülasyon", price: "2,50", logo: "logo2", photo: "kapak2", rating: 4.4),
                            Product(name: "Yüzüklerin Efendisi", type: "Strateji", price: "Ücretsiz", logo: "logo3", photo: "kapak2", rating: 4.9)]
        self.products = productArray
        
        let eventProductArray = [ProductEvent(name: "SimCity Build", owner: "ELECTRONIC ARTS", slogan: "Bahar Şenlikleri", description: "Sim'lerine özel bir ikramın olsun. Cam Yumurta Salonu kısa bir süreliğine mevcut!", expiresIn: "1", logo: "logo4", photo: "kapak4", rating: 4.2),
                                 ProductEvent(name: "Basketball Arena", owner: "Masomo Gaming", slogan: "Bahar fırsatlarımıza göz at!", description: "Bahar için yaptığımız özel indirimleri kaçırma.", expiresIn: "1", logo: "logo5", photo: "kapak5", rating: 4.4),
                                 ProductEvent(name: "Rovercraft 2", owner: "Mobirate", slogan: "Bir peri masalında gibi hissedin!", description: "Buz gezegeninde 7 yeni göre var!", expiresIn: "3", logo: "logo6", photo: "kapak6", rating: 4.0),
                                 ProductEvent(name: "Vegas Gangster", owner: "Gameloft", slogan: "Cehennem Kaçkınları Vegas'a geliyor!", description: "Cehennem yükselişte! Yeni görevleri tamamla.", expiresIn: "5", logo: "logo7", photo: "kapak7", rating: 4.1),
                                 ProductEvent(name: "Shadow Fight Arena", owner: "NEKKI", slogan: "18. Sezon", description: "April geldi!", expiresIn: "7", logo: "logo8", photo: "kapak8", rating: 3.8),
                                 ProductEvent(name: "Mobile Legends", owner: "Moonton", slogan: "Harika ödüller için katıl!", description: "Yıllık 515 partisi burada!", expiresIn: "12", logo: "logo9", photo: "kapak9", rating: 3.9)]
        
        self.eventsProducts = eventProductArray
    }
}
