# frozen_string_literal: true

module Decidim
  module Accountability
    # This is the engine that runs on the admin interface of `decidim-accountability`.
    # It mostly handles rendering the created results and projects associated to a
    # participatory process.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::Accountability::Admin

      paths["db/migrate"] = nil

      routes do
        resource :template_texts
        resources :statuses
        resources :results, except: [:show] do
          resources :timeline_entries, except: [:show]
        end
        resource :import, only: [:new, :create]
        root to: "results#index"
      end

      def load_seed
        nil
      end

      initializer "decidim_accountability.assets" do |app|
        app.config.assets.precompile += %w(decidim_accountability_admin_manifest.js)
      end
    end
  end
end
