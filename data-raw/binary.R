# IJCNN1 ------------------------------------------------------------------

ijcnn1 <- libsvmdata::getData("ijcnn1",
                              "binary",
                              c("train", "test", "validate"),
                              "bz2")

usethis::use_data(ijcnn1, overwrite = TRUE)

# phishing ----------------------------------------------------------------

phishing <- libsvmdata::getData("phishing",
                                "binary",
                                "all",
                                NULL)

usethis::use_data(phishing, overwrite = TRUE)

# a9a ---------------------------------------------------------------------

a9a <- libsvmdata::getData("a9a",
                           "binary",
                           c("all", "test"),
                           NULL)

names(a9a)[1] <- "train"

usethis::use_data(a9a, overwrite = TRUE)
