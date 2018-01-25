# json.array! @posts, partial: 'posts/post', as: :post
json.posts do |posts|
    posts.array! @posts do |post|
        json.id        post.id
        json.title     post.title
        json.category  post.category.name
        json.tags do |tags|
            tags.array! post.tags do |tag|
                json.id tag.id
                json.name tag.name 
            end 
        end
    end
end
