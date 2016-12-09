class PostSerializer < ActiveModel::Serializer
  attributes :id, :caption, :image, :user_id, :comments, :user, :likes

  def image
    object.image.url if object.image
  end
end
