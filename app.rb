class MyRestaurantApp < Sinatra::Base
  get "/" do
    erb :welcome
  end

  get "/menu/all" do
    @menu = Menu.all
    erb :menu_all
  end

  get "/menu/new" do
    @menu = Menu.new
    erb :menu_new
  end

  post "/menu/new" do
    Menu.create(params[:menu])
    redirect "menu/all"
  end

  patch "/menu/edit/:id" do
    @menu = Menu.find_by(id: params[:id])
    @menu.update(params[:menu])
    redirect "menu/all"
  end

  get "/menu/edit/:id" do
    @menu = Menu.find_by(id: params[:id])
    erb :menu_edit
  end

  post "/menu/edit" do
    Menu.create(params[:menu])
    redirect "menu/all"
  end

  get "/order/all" do
    @order = Order.all
  end
end
