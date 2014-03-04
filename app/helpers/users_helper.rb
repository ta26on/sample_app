module UsersHelper

	# 与えられたユーザーのGravatar(http://gravatar.com/)を返す
	def gravatar_for(user, opts = { size: 50 })
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = opts[:size]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"

		image_tag(gravatar_url, alt: user.name, class: "gravatar" )
	end
end
