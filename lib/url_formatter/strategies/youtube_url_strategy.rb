require 'youtube_id'
class YoutubeURLStrategy < DefaultURLStrategy
  def short
    "http://youtu.be/#{youtube_id}"
  end

  def embed
    "http://youtube.com/embed/#{youtube_id}"
  end

  def youtube_id
    YoutubeID.from(self.path)
  end
end
