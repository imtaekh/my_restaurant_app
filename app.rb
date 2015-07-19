class MyRestaurantApp < Sinatra::Base
  get "/" do
    "welcome"
  end

  get "/menu/all" do
    @menu = Menu.all
  end

  get "/menu/new" do
    @menu = Menu.new
    erb :menu_new
  end

  get "/order" do
    @order = Order.all
  end
end
