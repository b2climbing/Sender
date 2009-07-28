require 'digest/md5'
class Gravatar
  def self.get_url(email)
    sha1 = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{sha1}.jpg?s=30"
  end
end