# Hobbit Hole
===========

Simple gem for rendering static and mote-angular files in hobbit.
Also adds some useful shortcuts that are found in Sinatra.

To server a static html page:
```
get '/' do
  render_static('index.html')
end
```
Useful shortcuts:
```
  redirect('/path')  # redirects to the given url
  session            # access the rack session
  params[:key]       # return parameter for given key
```

Default path for views is <b>public/views</b>. This is also the default path for layouts, and the default layout is <b>layout.mote</b><br />
!! NOTE currently only angular-mote syntax is supported !!
```
% #ruby code
% result = 2 + 2
2 + 2 = ~{result}~
```

To alter the default views path, default layouts path, or default layout, override the following methods in custom-hobbit.rb:
```
def views_path
  'public/views'
end
def layouts path
  "#{views_path}"
end
def default_layout
  "#{layouts_path}/layout.mote"
end
```



ToDo:
* Improve documentation
* Allow for bot mote AND mote-angular files.
