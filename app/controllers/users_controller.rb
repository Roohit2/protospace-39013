class UsersController < ApplicationController
# showアクションのコントローラー
  def show
    @user = User.find(params[:id])
  end
#インスタンス変数に代入 = user.findメソッド(userの中からparams[:id]で渡されたものを取得する)

end
