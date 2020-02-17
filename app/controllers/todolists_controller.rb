class TodolistsController < ApplicationController
  def new
  	# Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
  	@list = List.new
  end
  #以下を追加
  def create
  	#ストロングパラメータを使用
  	list = List.new(list_params)
  	#DBへの保存
  	list.save
  	#トップ画面のリダイレクト
  	redirect_to "/top"
  end
  private

  def list_params
  	params.require(:list).permit(:title, :body)
  end

end
