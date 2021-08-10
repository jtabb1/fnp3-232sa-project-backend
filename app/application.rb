class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    # PRODUCT ROUTES

    # Product Index

    if req.path == ('/products') && req.get?
      return [200, {'Content-Type' => 'application/json'}, [Product.all.to_json]]
    end

    # Product Create

    if req.path == ('/products') && req.post?
      body = JSON.parse(req.body.read)
      product = Product.create(body)
      return [201, {'Content-Type' => 'application/json'}, [product.to_json]]
    end

    # Product Show

    if req.path.match('/products/') && req.get?
      id = req.path.split('/')[2]
      begin
        product = Product.find(id)
        return [200, {'Content-Type' => 'application/json'}, [product.to_json]]
      rescue
        return [404, {'Content-Type' => 'application/json'}, [{message: "Product not found"}.to_json]]
      end
    end

    # Product Update

    if req.path.match('/products/') && req.patch?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      begin
        product = Product.find(id)
        product.update(body)
        return [202, {'Content-Type' => 'application/json'}, [product.to_json]]

        # below is an example of handling multiple exceptions
        # handling exceptions this way is NOT required or recommended
        # for the phase 3 project

      rescue ActiveRecord::RecordNotFound
        return [404, {'Content-Type' => 'application/json'}, [{message: "Product not found"}.to_json]]
      rescue ActiveRecord::UnknownAttributeError
        return [422, {'Content-Type' => 'application/json'}, [{message: "Could not process your update request"}.to_json]]
      end
    end

    # Product Delete

    if req.path.match('/products/') && req.delete?
      id = req.path.split('/')[2]
      begin
        product = Product.find(id)
        product.destroy
        return [200, {'Content-Type' => 'application/json'}, [{message: "Product Destroyed"}.to_json]]
      rescue
        return [404, {'Content-Type' => 'application/json'}, [{message: "Product not found"}.to_json]]
      end
    end

    # GYM ROUTES

    # Category Index

    if req.path == '/categories' && req.get?
      return [200, {'Content-Type' => 'application/json'}, [Category.all.to_json]]
    end

    # Category Create

    if req.path == ('/categories') && req.post?
      body = JSON.parse(req.body.read)
      category = Category.create(body)
      return [201, {'Content-Type' => 'application/json'}, [category.to_json]]
    end

    # Category Show

    if req.path.match('/categories/') && req.get?
      id = req.path.split('/')[2]
      begin
        category = Category.find(id)
        # the include method allows us to add to the json hash
        return [200, {'Content-Type' => 'application/json'}, [category.as_json(include: :products).to_json]]
      rescue
        return [404, {'Content-Type' => 'application/json'}, [{message: "Category not found"}.to_json]]
      end
    end

    # Category Update

    if req.path.match('/categories/') && req.patch?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      begin
        category = Category.find(id)
        category.update(body)
        return [202, {'Content-Type' => 'application/json'}, [category.to_json]]

        # below is an example of handling multiple exceptions
        # handling exceptions this way is NOT required or recommended
        # for the phase 3 project

      rescue ActiveRecord::RecordNotFound
        return [404, {'Content-Type' => 'application/json'}, [{message: "Category not found"}.to_json]]
      rescue ActiveRecord::UnknownAttributeError
        return [422, {'Content-Type' => 'application/json'}, [{message: "Could not process your update request"}.to_json]]
      end
    end

    # Category Delete

    if req.path.match('/categories/') && req.delete?
      id = req.path.split('/')[2]
      begin
        category = Category.find(id)
        category.destroy
        return [200, {'Content-Type' => 'application/json'}, [{message: "Category Destroyed"}.to_json]]
      rescue
        return [404, {'Content-Type' => 'application/json'}, [{message: "Category not found"}.to_json]]
      end
    end

    # static route to test rack
    if req.path.match(/test/) 
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    else
      res.write "Path Not Found"

    end

    res.finish
  end

end
