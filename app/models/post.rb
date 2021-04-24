class Post < ApplicationRecord


    def self.get_data
        response = RestClient.get("https://apidojo-yahoo-finance-v1.p.rapidapi.com/news/list/?rapidapi-key=#{ENV["API_KEY"]}")
        news_array = JSON.parse(response)["items"]["result"]

        news_array.each do |news|
            self.create(title:news["title"] ,author:news["author"] ,summary:news["summary"] ,content:news["content"], link:news["link"])
        end 
    end 
end
