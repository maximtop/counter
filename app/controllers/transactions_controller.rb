class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all.includes(:client)
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
  end

  def create
    puts transaction_params
    @transaction = Transaction.new(transaction_params)
    @transaction.save
    redirect_to @transaction
  end

  private

  def transaction_params
    params.require(:transaction)
          .permit(:date,
                  :delivery_address,
                  :client_id,
                  :product, client_attributes: [:id, :name, :phone])
  end
end
