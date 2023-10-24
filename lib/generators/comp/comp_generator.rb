class CompGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)
  argument :methods, type: :array, default: [], banner: 'method method'

  def create_component_file
    path = "app/components/#{file_name}/"
    template 'component_preview.rb', File.join(path, "#{file_name}_component_preview.rb")
    template 'component.html.erb', File.join(path, "#{file_name}_component.html.erb")
    template 'component.rb', File.join(path, "#{file_name}_component.rb")
    template 'controller.js', File.join(path, "#{file_name}_controller.js")
  end
end
