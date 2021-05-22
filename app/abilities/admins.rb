Canard::Abilities.for(:admin) do
    can [:create,:update,:destroy], Escape
    can [:create,:update,:destroy], Review
    
  end
  