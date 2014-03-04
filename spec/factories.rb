FactoryGirl.define do
	factory :user do
		name   "Taro Example"
		email  "taro@example.com"
		password "hogehoge"
		password_confirmation "hogehoge"
	end	
end