Canard::Abilities.for(:moviegoer) do
    cannot [:destroy, :update, :create], Movie
    can [:create, :destroy, :update], Review
    
  end
  