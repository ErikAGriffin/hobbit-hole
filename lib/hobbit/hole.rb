require 'mote-angular'

module Hobbit
  module Hole
    include ::Mote::Helpers

    def render_static(file_path)
      File.open("#{views_path}/#{file_path}", "rb").read
      rescue
      "404 File Not Found"
    end

    def redirect(path)
      response.redirect(path)
    end

    def views_path
      'public/views'
    end

    def layouts_path
      "#{views_path}"
    end

    def default_layout
      "#{layouts_path}/layout.mote"
    end

    def session
      env['rack.session']
    end

    def params
      @params ||= create_params_hash(request.params)
    end

    def create_params_hash(pre_hash)
      params_hash = symbol_indifferent_hash
      pre_hash.each { |key, value| params_hash[key] = value }
      params_hash
    end

    def symbol_indifferent_hash
      Hash.new {|value, key| value[key.to_s] if Symbol === key }
    end

    def find_template(template)
      "#{views_path}/#{template}.mote"
    end

    def partial(template, params = {}, context = self)
      template = find_template "_#{template}"
      mote template, params, context
    end

    def render(template, params = {}, context = self)
      template = find_template template
      layout = default_layout
      if params.include? :layout
        layout = params.delete :layout
      end
      if layout
        params = params.merge content: mote(template, params, context)
        mote layout, params, context
      else
        mote template, params, context
      end
    end

  end
end


