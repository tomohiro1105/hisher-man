class LessonController < ApplicationController
  def step1
    render plain: "こんにちは,#{params[:name]}さん"
  end

  def step2
    render plain: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: :step4
  end

  def step4
    render plain: "step4に移動しました"
  end

  def step5
    flash[:notice] = "step6に移動します"
    redirect_to action: :step6
  end

  def step6
  render plain: flash[:notice]
  end

  def step7
    @price = (2000* 1.08).floor
  end 

  def step8
    @price = 800
    render action: :step7
  end

  def step9
    @comment = "<script>alert('危険!')</script>こんにちは。"
  end

  def step10
    @comment = "<strong>安全なHTML</strong>"
  end
end
