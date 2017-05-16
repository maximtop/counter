class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new; end

  def create
    @client = Client.new(client_params)
    @client.save
    redirect_to @client
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end

  private

  def client_params
    params.require(:client)
          .permit(:name,
                  :phone)
  end
end
