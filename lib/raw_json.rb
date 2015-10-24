module Rack
  class RawJSON
    def initialize(app)
      @app = app
    end

    def call(env)
      request = Request.new(env)
      if request.content_type =~ /application\/json/i
        # test request.path here to limit your processing to particular actions
        raw_json = env['rack.input'].read
        env['CONTENT_TYPE'] = 'application/x-www-form-urlencoded'
        env['rack.input'] = StringIO.new(raw_json)
      end
      return @app.call(env)
    end
  end
end
