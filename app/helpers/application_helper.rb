module ApplicationHelper

  def gravatar_for(user, options = { size: 80 })
    email_address = user.email
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "https://gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block")
  end

  def current_user # returns details of user who is logged in
    @current_user ||= User.find(session[:user_id]) if session[:user_id] # gets user object if it exists  

  end

  def logged_in? # returns boolean if current_user method has a memoization
    !!current_user
  end
end
