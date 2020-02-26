require 'byebug'
class BudgetsController < ApplicationController
    def index
        @budgets = Budget.all 
        render :json => @budgets
    end

    def show
        @budget = Budget.find(params[:id])
        render :json => @budget
    end

    def getUserBudgets
        @budgets = Budget.where(user_id: params[:id])
        # byebug
        render :json => @budgets
    end

    def getDailyBudgets
        @budgets = Budget.where(user_id: params[:id], daily: true)
        render :json => @budgets
    end

    # def getBudgetsDailyTransactions

    # end

    def create 
        @user = User.find(params[:user_id])
        @budget = Budget.new(budget_params)
        @budget.save 
        render :json => @budget 
    end 

    def edit 
        @budget = Budget.find(params[:id])
    end 

    def update 
        @budget = Budget.find(params[:id])
        @budget.update(budget_params)
        render :json => @budget
    end 

    def destroy
        @budget = Budget.find(params[:id])
        @temp = @budget
        @budget.delete
        render :json => @temp
    end

    private 
    def budget_params
        params.require(:budget).permit(:name, :limit, :daily, :user_id)
    end 
end
