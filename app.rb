class MyRestaurantApp < Sinatra::Base
  get "/" do
    erb :welcome
  end

  get "/menu/all" do
    @menu = MenuItem.order(:id)
    erb :menu_all
  end

  get "/menu/new" do
    @menu = MenuItem.new
    erb :menu_new
  end

  post "/menu/new" do
    MenuItem.create(params[:menu])
    redirect "menu/all"
  end

  get "/menu/:id/edit" do
    @menu = MenuItem.find_by(id: params[:id])
    erb :menu_edit
  end

  patch "/menu/:id/edit" do
    @menu = MenuItem.find(params[:id])
    @menu.update(params[:menu])
    redirect "menu/all"
  end

  get "/menu/:id" do
    @menu = MenuItem.find(params[:id])
    erb :menu_item
  end

  delete "/menu/:id" do
    @menu = MenuItem.find(params[:id])
    @menu.destroy
    redirect("/menu/all")
    erb :menu_item
  end

  get "/order/all" do
    @order = Order.all
  end
end
