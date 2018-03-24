task :remake_users_books => :environment do
    Book.delete_all
    User.create(name: "サンプルタロウ", email: "sample@example.com", introduction: "1ヶ月に3冊ほど本を読みます!", password: "password")
    User.create(name: "テストジロウ", email: "test@example.com", introduction: "SF小説が大好きです。よろしくお願いします！", password: "password")    
    Book.create(title:"test1", body:"本文1", user_id: "1")
    Book.create(title:"test2", body:"本文2", user_id: "1")
    Book.create(title:"test3", body:"本文3", user_id: "1")
    Book.create(title:"test4", body:"本文4", user_id: "2")
    Book.create(title:"test5", body:"本文5", user_id: "2")
    Book.create(title:"test6", body:"本文6", user_id: "2")
    Book.create(title:"test7", body:"本文7", user_id: "2")
end
