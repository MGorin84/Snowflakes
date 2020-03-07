module ArtworksHelper
  def artwork_picture_url(artwork)
    if artwork.picture.attached?
      url_for(artwork.picture)
    else
      "https://picsum.photos/id/#{rand(1..300)}/200"
    end
  end
end
