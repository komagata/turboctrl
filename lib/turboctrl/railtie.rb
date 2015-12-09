module Turboctrl
  class Railtie < ::Rails::Railtie
    initializer 'turboctrl' do |_|
      ActiveSupport.on_load(:action_view) do
        ActionView::Base.send :include, ::Turboctrl::Helper
      end
    end
  end
end
