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
    if @transaction.save
      redirect_to @transaction
    else
      render 'new'
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy

    redirect_to transactions_path
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
