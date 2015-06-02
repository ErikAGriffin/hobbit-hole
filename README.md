# Hobbit Hole
===========

Simple gem for rendering static and mote files in hobbit.
Also adds some useful shortcuts that are found in Sinatra.

<h5>Why use hobbit?</h5>
<p><a href="https://github.com/luislavena/bench-micro">It's faster than Sinatra</a>. In total it's less than 200 lines of code, so you can easily poke around and understand why things work the way they do.</p>

The easiest way to get started is to use <a href="https://github.com/ErikAGriffin/the-shire">the-shire seed</a> which has the hobbit-hole gem built in. Simply clone the repo to your projects directory, rename the folder, then cd in and run `rake`. You'll have to add your own git-hub remotes after that.

<h3>How to Use:</h3>

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



<h4>ToDo:</h4>
* Improve documentation
* Allow for both mote AND mote-angular files.
