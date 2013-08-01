IdeaNotebook::Application.routes.draw do

  # Create


  # Read
  get "/ideas", { :controller => 'ideas', :action => 'index', :as => 'ideas' }

  # Update

  # Destroy

end
