class PostSerializer < ActiveModel::Serializer
  attributes :id, :caption, :image, :user_id, :comments, :user, :likes, :likes_length

  def image
    object.image.url if object.image
  end

  def likes_length
    object.likes.length
  end

end
