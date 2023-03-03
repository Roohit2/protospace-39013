class CommentsController < ApplicationController
# createを定義。"comment"をインスタンス化。引数にストパラ。
  def create
    @comment = Comment.new(comment_params)
    #条件式で表示させるビューを分岐
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    end
  end

  private

#フォームから送信されたデータのうち、指定されたキー"comment"を必須とし、その中の"content"のみ許可。
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end