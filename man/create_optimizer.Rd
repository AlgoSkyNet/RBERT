% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimization.R
\name{create_optimizer}
\alias{create_optimizer}
\title{Create an optimizer training op}
\usage{
create_optimizer(loss, init_lr, num_train_steps, num_warmup_steps, use_tpu)
}
\arguments{
\item{loss}{Float Tensor; the loss for this step (calculated elsewhere; in
principle is a function of trainable parameter values).}

\item{init_lr}{Numeric; initial learning rate.}

\item{num_train_steps}{Integer; number of steps to train for.}

\item{num_warmup_steps}{Integer; number of steps to use for "warm-up".}

\item{use_tpu}{Logical; whether to use TPU.}
}
\value{
A training op: the result of a tensorflow group() of operations.
}
\description{
\code{create_optimizer} doesn't actually return the optimizer object; it
returns the operation resulting from a tf.group() call.
}
\details{
See also:

\url{https://www.tensorflow.org/api_docs/python/tf/group}

\url{https://stackoverflow.com/questions/41780655/what-is-the-difference-between-tf-group-and-tf-control-dependencies}

The routine tf.gradients() is called in the course of this function.
\url{https://www.tensorflow.org/api_docs/python/tf/gradients}
}
\examples{
\dontrun{
with(tensorflow::tf$variable_scope("examples",
  reuse = tensorflow::tf$AUTO_REUSE
), {
  totrain <- tensorflow::tf$get_variable(
    "totrain",
    tensorflow::shape(10L, 20L)
  )
  loss <- 2 * totrain

  train_op <- create_optimizer(
    loss = loss,
    init_lr = 0.01,
    num_train_steps = 20L,
    num_warmup_steps = 10L,
    use_tpu = FALSE
  )
})
}
}
