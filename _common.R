
options(digits = 4)

knitr::opts_chunk$set(width = 55, fig.align = 'center')
options(width = 55)
# Suppress crayon since it's falsely on in GHA
options(crayon.enabled = FALSE)

# convert pdf to png
to_png <- function(fig_path) {
  png_path <- sub("\\.pdf$", ".png", fig_path)
  magick::image_write(magick::image_read_pdf(fig_path), format = "png", path = png_path,
                      density = 300, quality = 100)
  return(png_path)
}

knitr::opts_chunk$set(width = 69, message = FALSE, fig.align='center')
