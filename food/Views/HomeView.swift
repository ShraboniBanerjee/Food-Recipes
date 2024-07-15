import SwiftUI

struct HomeView: View {
    @State private var search: String = ""
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack (alignment: .leading, spacing: 16){
                HomeNavBarView()
                
                Text("Hey, Let's Cook Something Amazing!")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(Color("GrayColor"))
                
                Text("What's on Your Menu Today?")
                    .font(.title)
                    .fontWeight(.bold)
                
                SearchAndFilterView(search: $search)
                
                FreshRecipesView()
                
                SectionTitleView(title: "Recommended")
                
                
                RecommendedRecipeCardView(image: #imageLiteral(resourceName: "reco_1"), title: "Homestyle Blueberry Muffins")
                RecommendedRecipeCardView(image: #imageLiteral(resourceName: "reco_2"), title: "Teriyaki Salmon")
                RecommendedRecipeCardView(image: #imageLiteral(resourceName: "reco_3"), title: "BBQ Chicken Thighs")
                
            }
            .padding()
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
