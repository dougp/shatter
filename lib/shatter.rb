module Shatter
  def method_missing(method_id, *arguments)
    @my_hash||={}
    if @my_hash.has_key? method_id 
      return @my_hash[method_id]
    else
      return super
    end
  end
  def shatter(my_hash)
    @my_hash=my_hash
    val=yield
    @my_hash={}
    val
  end
end
