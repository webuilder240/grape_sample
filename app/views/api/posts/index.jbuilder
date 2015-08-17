json.posts @posts do |post|
  json.(post, :id, :title, :content)
end