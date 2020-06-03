# frozen_string_literal: true

class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[show edit update destroy]

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def show; end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to portfolios_path, flash[:notice] = { message: 'Portfolio Created' }
    else
      render :new
    end
  end

  def edit; end

  def update
    if @portfolio.update(portfolio_params)
      redirect_to portfolios_path, flash[:notice] = { message: 'Portfolio updated' }
    else
      render :edit
    end
  end

  def destroy
    @portfolio.destroy

    redirect_to portfolios_path, notice: 'Portfolio was removed'
  end

  private

  def portfolio_params
    params
      .require(:portfolio)
      .permit(:title, :subtitle, :body, :main_image, :thumb_image)
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
