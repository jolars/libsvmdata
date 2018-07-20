# numeric -----------------------------------------------------------------

abalone <- data.frame(name = "abalone",
                      file = c("abalone", "abalone_scale"),
                      type = "all",
                      scaled = c(FALSE, TRUE))

bodyfat <- data.frame(name = "bodyfat",
                      file = c("bodyfat", "bodyfat_scale"),
                      type = "all",
                      scaled = c(FALSE, TRUE))

cadata <- data.frame(name = "cadata",
                     file = "cadata",
                     type = "all",
                     scaled = FALSE)

cpusmall <- data.frame(name = "cpusmall",
                       file = c("cpusmall", "cpusmall_scale"),
                       type = "all",
                       scaled = c(FALSE, TRUE))

regression <- rbind(abalone,
                    bodyfat,
                    cadata,
                    cpusmall)
regression$response <- "regression"

# binary ------------------------------------------------------------------

a1a <- data.frame(name = "a1a",
                  file = c("a1a", "a1a.t"),
                  type = c("training", "testing"),
                  scaled = c(FALSE, FALSE))

a2a <- data.frame(name = "a2a",
                  file = c("a2a", "a2a.t"),
                  type = c("training", "testing"),
                  scaled = c(FALSE, FALSE))

a9a <- data.frame(name = "a9a",
                  file = c("a9a", "a9a.t"),
                  type = c("training", "testing"),
                  scaled = c(FALSE, FALSE))

australian <- data.frame(name = "australian",
                         file = c("australian", "australian_scale"),
                         type = "all",
                         scaled = c(FALSE, TRUE))

ijcnn1 <- data.frame(name = "ijcnn1",
                     file = c("ijcnn1.bz2",
                              "ijcnn1.t.bz2",
                              "ijcnn1.tr.bz2",
                              "ijcnn1.val.bz2"),
                     type = c("all", "testing", "training", "validating"),
                     scaled = TRUE)

mushrooms <- data.frame(name = "mushrooms",
                        file = "mushrooms",
                        type = "all",
                        scaled = FALSE)

phishing <- data.frame(name = "phishing",
                       file = "phishing",
                       type = "all",
                       scaled = TRUE)

binary <- rbind(a1a,
                a2a,
                a9a,
                australian,
                ijcnn1,
                mushrooms,
                phishing)
binary$response <- "binary"

# multi-class -------------------------------------------------------------

aloi <- data.frame(name = "aloi",
                   file = c("aloi.bz2", "aloi.scale.bz2"),
                   type = "all",
                   scaled = c(FALSE, TRUE))

letter <- data.frame(name = "letter",
                     file = c("letter.scale",
                              "letter.scale.t",
                              "letter.scale.tr",
                              "letter.scale.val"),
                     type = c("all", "testing", "training", "validating"),
                     scaled = TRUE)

mnist <- data.frame(name = "mnist",
                    file = c("mnist.bz2",
                             "mnist.t.bz2",
                             "mnist.scale.bz2",
                             "mnist.scale.t.bz2"),
                    type = c("training", "testing"),
                    scaled = c(FALSE, FALSE, TRUE, TRUE))

pendigits <- data.frame(name = "pendigits",
                        file = c("pendigits", "pendigits.t"),
                        type = c("training", "testing"),
                        scaled = FALSE)

poker <- data.frame(name = "poker",
                    file = c("poker.bz2",
                             "poker.t.bz2"),
                    type = c("training", "testing"),
                    scaled = FALSE)

vehicle <- data.frame(name = "vehicle",
                      file = "vehicle.scale",
                      type = "all",
                      scaled = TRUE)

vowel <- data.frame(name = "vowel",
                    file = c("vowel",
                             "vowel.t",
                             "vowel.scale",
                             "vowel.scale.t"),
                    type = c("training", "testing"),
                    scaled = c(FALSE, FALSE, TRUE, TRUE))

satimage <- data.frame(name = "satimage",
                       file = c("satimage.scale",
                                "satimage.scale.t",
                                "satimage.scale.tr",
                                "satimage.sacle.val"),
                       type = c("all", "testing", "training", "validating"),
                       scaled = TRUE)

shuttle <- data.frame(name = "shuttle",
                      file = c("shuttle.scale",
                               "shuttle.scale.t",
                               "shuttle.scale.tr",
                               "shuttle.scale.val"),
                      type = c("all", "testing", "training", "validating"),
                      scaled = TRUE)

multiclass <- rbind(aloi,
                    letter,
                    mnist,
                    pendigits,
                    poker,
                    vehicle,
                    vowel,
                    satimage,
                    shuttle)
multiclass$response <- "multiclass"

# collect all data sets ---------------------------------------------------

data_sets <- rbind(regression,
                   binary,
                   multiclass)

usethis::use_data(data_sets, internal = TRUE, overwrite = TRUE)

