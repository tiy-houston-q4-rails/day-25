class ThoughtsController < ApplicationController
  def index
    @thoughts = current_user.thoughts.order("created_at desc")
    @thought = Thought.new
  end

  def post
    @post = Thought.new(params.require(:thought).permit(:deep_thought))
    @post.user = current_user
    if @post.save
      redirect_to root_path
    else
      render :index
    end
  end

  def current_user
    User.find_by username: "jwo"
  end
end
