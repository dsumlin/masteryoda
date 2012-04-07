require 'digest/md5'

class Gravatar
  DefaultOptions = {:size => 80} # px
  
  attr_accessor :id, :size, :rating, :border, :default, :url
  
  def initialize(email = '', options = {})
    options = DefaultOptions.merge(options)
    
    @id = Digest::MD5.hexdigest(email)
    
    @url = 'http://gravatar.com/avatar.php?gravatar_id=' + @id
    options.each {|k,v| @url += "&#{k}=#{v}" unless v.nil?}
    
    %w(size rating border default).each do |a|
      instance_variable_set "@#{a}", options[a.to_sym]
    end    
  end
  
  def to_s; url; end
end

class Class
  def gravatar(attr_name, o = {})
    define_method :gravatar do
      Gravatar.new(__send__(attr_name), Gravatar::DefaultOptions.update(o))
    end
  end
end