require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/" do
      erb :new
    end 

    post "/pirates" do

      @pirate = Pirate.new(params[:pirate])

      params[:name][:weight][:height].each do |details|
        Pirate.new(details)
      end 

      @pirates = Pirate.all

      erb :show

    end 

  end
end
