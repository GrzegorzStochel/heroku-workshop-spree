module Spree
  module Admin
    class SuperFeatureController < Spree::Admin::BaseController
      def create
        exit! if Rails.env.production? && rand < 0.1

        flash[:success] = 'Success! :)'

        redirect_to edit_admin_general_settings_path
      end
    end
  end
end
