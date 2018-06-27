class UserController < Sinatra::Base

  users = [
    {
      id: 0,
      username: "jSmith",
      password: "password1",
      email: "jsmith@hotmail.com",
      memorable_info: "Baker Street"
    },
    {
      id: 1,
      username: "nMartin",
      password: "pwtwentythree",
      email: "nMartin@hotmail.com",
      memorable_info: "Queen's Street"
    },
    {
      id: 2,
      username: "lRodgers",
      password: "pa55w0rd",
      email: "lrodgers@hotmail.com",
      memorable_info: "Ham View"
    },
    {
      id: 3,
      username: "tStark",
      password: "nanotech",
      email: "tstark@hotmail.com",
      memorable_info: "Iron man"
    },
    {
      id: 4,
      username: "sRodgers",
      password: "patriot",
      email: "srodgers@hotmail.com",
      memorable_info: "Captain America"
    },
    {
      id: 5,
      username: "dStrange",
      password: "mysticArts",
      email: "dstrange@hotmail.com",
      memorable_info: "Doctor Strange"
    },
    {
      id: 6,
      username: "tChalla",
      password: "vibranium",
      email: "tChalla@hotmail.com",
      memorable_info: "Black Panther"
    },
  ]

  #sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  #sets the view directory correctly
  set :views, Proc.new {File.join(root, "views")}

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @user = users
    erb :"/users/index"
  end

  get '/users' do
    erb :"/users/index"
  end

  get '/users/new' do
    "NEW"
  end

  post '/users' do
    "CREATE"
  end

  get '/users/:id' do
    id = params[:id].to_i
    @user = users[id]
    erb :"/users/show"
  end

  get '/users/:id/edit' do
    "EDIT #{params[:id]}"
  end

  put '/users/:id' do
    "UPDATE #{params[:id]}"
  end

  delete '/users/:id' do
    "DELETE"
  end
end
