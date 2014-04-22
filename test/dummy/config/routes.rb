Rails.application.routes.draw do

  mount CapistranoOverrideFiles::Engine => "/capistrano_override_files"
end
