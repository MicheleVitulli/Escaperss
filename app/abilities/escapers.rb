Canard::Abilities.for(:escaper) do
    cannot [:destroy, :update, :create], Escape
    can [:create, :destroy, :update], Review
    
  end
  