class PagesController < ApplicationController
  def dashboard
    @featured_feedback = Question.last(5)
    @recent_activity = {
      question: Question.last,
      session: NoiceSession.last
    }
    @upcoming_sessions = NoiceSession.last(2)
  end

  def content
  end

  def events
  end

  def search
    @query = params[:q]
  end
end
