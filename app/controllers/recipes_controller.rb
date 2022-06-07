class RecipesController < ApplicationController
  def new
    @recipe=Recipe.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    recipe=Recipe.new(recipe_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    recipe.save
    # 4. トップ画面へリダイレクト
    redirect_to recipe_path(recipe.id)
  end

  def index
    @recipes=Recipe.all
  end

  def show
    @recipe=Recipe.find(params[:id])
  end

  def edit
    @recipe=Recipe.find(params[:id])
  end

  def update
    @recipe=Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe.id)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    # データ（レコード）を1件取得
    @recipe.destroy
    # データ（レコード）を削除
    redirect_to '/recipes'
    # 投稿一覧画面へリダイレクト
  end



  private
  # ストロングパラメータ
  def recipe_params
    params.require(:recipe).permit(:title, :detail, :image)
  end
end
