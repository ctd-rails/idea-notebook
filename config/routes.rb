IdeaNotebook::Application.routes.draw do

  # Create
  get "/ideas/new", { :controller => 'ideas', :action => 'new', :as => 'new_idea'}
  post "/ideas", { :controller => 'ideas', :action => 'create', :as => 'ideas' }

  # Read
  get "/ideas", { :controller => 'ideas', :action => 'index' }

  # Update

  # Destroy

end
