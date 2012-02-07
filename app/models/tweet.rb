class Tweet < ActiveRecord::Base
def index
Twitter.configure do |config|
config.consumer_key = 'JCPqVXF7Gf3j267zFvzA'
 config.consumer_secret = 'mHlyZAVUtTaVw5I1XKfF6stK8KIdPTNOBC726MMG14'
 config.consumer_token = '156162674-GIs7EsATCa0NScTMIEV11uwX9iSb1hdxxuOjcjIP'
 config.consumer_token_secret = 'aCdYWQYy4SeUcnQWv2WJtWfmisxVeBkQjWRuNRMnaA'
end
end
 
 
def message
return "sin uset" if self.user.blank?
Twitter.user_timeline(self.user).first.text
end
end
