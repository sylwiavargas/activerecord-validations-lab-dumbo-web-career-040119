class ClickbaitValidator < ActiveModel::Validator

  def validate(post)
    unless post.title =~ /(Won\'t Believe)|(Secret)|(Top \d)/
      #unless post title includes any of these + TOP followed by a digit -> https://regexr.com/
      post.errors[:title] << "The Number One Error You Won't Believe."
      #shuffle this message into this particular post's error messages
    end
  end

end
