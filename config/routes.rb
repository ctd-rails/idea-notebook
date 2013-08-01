IdeaNotebook::Application.routes.draw do

  # Create
  get "/ideas/new", { :controller => 'ideas', :action => 'new', :as => 'new_idea' }
  post "/ideas", { :controller => 'ideas', :action => 'create', :as => 'ideas' }

  # Read
  get "/ideas", { :controller => 'ideas', :action => 'index' }
  get "/ideas/:id", { :controller => 'ideas', :action => 'show', :as => 'idea' }

  # Update
  get "/ideas/:id/edit", { :controller => 'ideas', :action => 'edit', :as => 'edit_idea'}
  patch "/ideas/:id", { :controller => 'ideas', :action => 'update' }

  # Destroy
  delete "/ideas/:id", { :controller => 'ideas', :action => 'destroy' }

end
