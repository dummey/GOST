# See https://github.com/voltrb/volt#routes for more info on routes
client '/about', action: 'about'
client '/todos', action: 'todos'

client '/bike_speed', component: 'bike_speed'

client '/run_pace', component: 'run_pace'

# Routes for login and signup, provided by user_templates component gem
client '/signup', component: 'user_templates', controller: 'signup'
client '/login', component: 'user_templates', controller: 'login', action: 'index'
client '/password_reset', component: 'user_templates', controller: 'password_reset', action: 'index'
client '/forgot', component: 'user_templates', controller: 'login', action: 'forgot'
client '/account', component: 'user_templates', controller: 'account', action: 'index'

# The main route, this should be last. It will match any params not
# previously matched.
client '/', {}
