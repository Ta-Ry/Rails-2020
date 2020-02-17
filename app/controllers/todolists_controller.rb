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
  	#詳細画面へリダイレクト
  	redirect_to todolist_path(list.id)
  end
#以下def~privateは6章で追加
  def index
  	@lists = List.all
  end

  def show
  	@list = List.find(params[:id])
  end

  def edit
  	@list = List.find(params[:id])
  end

  def update
  	list = List.find(params[:id])
  	list.update(list_params)
  	redirect_to todolist_path(list.id)
  end

  private

  def list_params
  	params.require(:list).permit(:title, :body)
  end

end
