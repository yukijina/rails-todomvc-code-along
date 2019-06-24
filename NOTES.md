# Step 1: Integrate Basic Theme to Asset Pipeline

[X]/ - And see a stubbed out, non-dynamic page with the theme.

# Step 2: Allow people to CRUD lists
[ ] ListsController
  #index
  - see all their lists
  - doubling as my #new action in that it is presenting the person with a form to create a new list
  - - Index all the lists...
  - create a list
  - show a list

  - I need a model
  - I need a controller
  - I should a generate resource

Does it impact the DB?
Does it impact my URL?  'list/1'

# Step 3: Add Items to a List
 - Make the items in a list real
  - a list has many items and every item blogs to a list.

  lists
   id      name
   2      Shopping List

  items
  id    description   list_id(foreign key)
   1      Milk            2

Create Action for an ITEM in a LIST - what is the URL / HTTP method for this.

- The form is already present in the list show page.
- What URL does this form imply?

 POST / lists  #=> Doesn't describe which list we are adding an item too?
 => POST / lists/:id/items

 An item doesn't exist in our application outside of the context of the list it belongs to

 Nested Resource - Items are nested in terms of URLs under their parent list.

Does it impact the DB? - I probably need a items table - associated with a list

Does it impact my URL?  'list/1'

# Step 4: Adding validation

Validate that lists have name
Validate that items have a description

# Step : Fix down arrow on make a list form
