module CompaniesHelper

    def occupation(status)
        if status == "stay"
            return "今あるのもを活かす！"
        elsif status == "create"
            return "これから作り出す！"
        elsif status == "future"
            return "現状を知って未来を作る！"
        elsif status == "etc"
            return "その他"
        else
            return "その他"
        end
    end
    
    
end
