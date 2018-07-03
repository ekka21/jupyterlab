import tensorflow as tf

hello = tf.Variable('Hello World, this is running inside of a container!')

sess = tf.Session()
init = tf.global_variables_initializer()

sess.run(init)
sess.run(hello)
