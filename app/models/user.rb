class User < ApplicationRecord
    def self.search(params)
        params[:query].blank? ? all :
            where("lower(name) LIKE :query", query: "%#{params[:query].downcase}%")
    end
end
