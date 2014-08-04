Rails.application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    # You can have the root of your site routed with "root"
    # root 'welcome#index'
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: 'clearance/sessions#new'
  end
end
