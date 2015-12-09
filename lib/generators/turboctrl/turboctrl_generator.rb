class TurboctrlGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def create_turboctrl_file
    template 'controller.rb', File.join('app/assets/javascripts/controllers', class_path, "#{file_name}_controller.js.coffee")
  end

  hook_for :scaffold_controller
end
