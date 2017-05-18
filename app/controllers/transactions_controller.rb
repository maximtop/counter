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
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      flash[:info] = 'Transaction successfully created!'
      redirect_to @transaction
    else
      flash[:danger] = 'There were errors!'
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
