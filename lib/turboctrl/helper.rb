module Turboctrl
  module Helper
    def turboctrl_slug
      "#{turboctrl_controller}--#{turboctrl_action}"
    end

    def turboctrl_controller
      controller.class.to_s.underscore.gsub(%r{/}, '-')
    end

    def turboctrl_action
      action_name
    end
  end
end
