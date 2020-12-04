Project Plated App

Models:
Reviewer (User Model)
    - has_many :rankings
    - has_many :menus, through :rankings
    - has_many :ranked_items, through: :rankings
    - username
    - password_digest
    - email
    - age

Ranking (Join Table - joining reviewers and menus)
    *has 2 belongs_to, MANY-MANY relationship
    - belongs_to :reviewer
    - belongs_to :menu
    - gold_star (item)
    - silver_star (item)
    - bronze_star (item)
    enum

    - instead of (3) separate references to Item, array?
      rank [gold (item), silver (item), bronze (item)]

Menu
    - has_many :rankings
    - has_many :reviewers, through :rankings
    - has_many :items
    - restaurant 


Item
    - belongs_to :menu
    - has_many :reviewers, through :rankings
    - name


