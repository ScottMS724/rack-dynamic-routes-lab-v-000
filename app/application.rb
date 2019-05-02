class Application
  
  @@items = []
  
  def call (env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      
      item_name = req.path.split("/items/").last
      
      if Item.all.include?(item_name)
        resp.write item_name.price 
      else 
        resp.write "Item Not Found"
        resp.status = 404
      end 
      resp.finish 
    else 
      resp.write "Path Not Found"
      resp.finish 
      
  end 
end 