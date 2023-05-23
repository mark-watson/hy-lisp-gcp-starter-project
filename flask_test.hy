(import flask [Flask render_template request])
(import os)

(setv port (int (os.environ.get "PORT" 5000)))

(setv app (Flask "Flask test" :static_folder "./static" :static_url_path "/static"))

(defn [(.route app "/")]
  index []
    (render_template "template1.j2"))

(defn [(.route app "/response" :methods ["POST"])]
  response []
    (setv name (request.form.get "name"))
    (print name)
    (render_template "template1.j2" :name name))

(app.run)
