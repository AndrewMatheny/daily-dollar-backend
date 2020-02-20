class TransactionsController < ApplicationController
    def index
        @transactions = Transaction.all 
        render :json => @transactions
    end

    def show
        @transaction = Transaction.find(params[:id])
        render :json => @transaction
    end

    def create 
        @user = User.find(params[:user_id])
        # find budget?
        @transaction = Transaction.new(transaction_params)
        @transaction.save 
        render :json => @transaction 
    end 

    def edit 
        @transaction = Transaction.find(params[:id])
    end 

    def update 
        @transaction = Transaction.find(params[:id])
        @transaction.update(transaction_params)
        render :json => @transaction
    end 

    def destroy
        @transaction = Transaction.find(params[:id])
        @temp = @transaction
        @transaction.delete
        render :json => @temp
    end

    private 
    def transaction_params
        params.require(:transaction).permit(:name, :amount, :date, :user_id, :budget_id)
    end 
end
