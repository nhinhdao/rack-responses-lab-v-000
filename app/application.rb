require 'pry'
class Application

    def call(env)
        resp = Rack::Response.new
        binding.pry
        resp.write "Good Morning" if Time.now <= 12
        resp.write "Good Afternoon" if Time.now > 12

        resp.finish
    end

end
