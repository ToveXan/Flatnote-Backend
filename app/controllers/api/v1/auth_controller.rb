class Api::V1::AuthController < ApplicationController
  def create
    render json: {foo: 'barb'}
  end
end