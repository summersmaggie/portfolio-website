

100.times do |i|
  Post.create(title: "My amazing title #{i}", content: "#{i} - Some cool content", author: "Jon Snow #{i}")
end
