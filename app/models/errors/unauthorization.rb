class Errors::Unauthorization
	UnAuthorization = Struct.new(:type, :title, :detail)
	def self.response
		UnAuthorization.new('https://hoge.doc/401','Unauthorized','Authorization request header diffrent token')
	end
end