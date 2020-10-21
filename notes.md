Project Plated App

Models:
Reviewer (User Model)
    - has_many :rankings
    - has_many :menus, through :rankings
    - username
    - password_digest
    - email
    - age

Ranking (Join Table - joining reviewers and menus)
    *has 2 belongs_to, MANY-MANY relationship
    - belongs_to :reviewer
    - belongs_to :menu
    - 3_star
    - 2_star
    - 1_star

Menu
    - has_many :rankings
    - has_many :reviewers, through :rankings
    - has_many :items
    - restaurant 


Item
    - belongs_to :menu
    - has_many :reviewers, through :rankings
    - :name


