
class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now
        time_array = time.to_s.split(" ") # ["2021-03-25", "19:03:01", "-0400"] 
        hour = time_array[1] 
        resp.write hour  #"19:03:01" 
        hour_array = hour.split(":") # ["19", "03", "01"] 
        hour_of_now = hour_array[0].to_i # 19

        if hour_of_now <= 11
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
    resp.finish
    end
end