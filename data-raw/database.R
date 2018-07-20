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

connect_4 <- data.frame(name = "connect-4",
                        file = c("connect-4"),
                        type = "all",
                        scaled = FALSE)

dna <- data.frame(name = "dna",
                  file = c("dna.scale",
                           "dna.scale.t",
                           "dna.scale.tr",
                           "dna.scale.val"),
                  type = c("all", "testing", "training", "validating"),
                  scaled = TRUE)

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

protein <- data.frame(name = "protein",
                      file = c("protein.bz2",
                               "protein.t.bz2",
                               "protein.tr.bz2",
                               "protein.val.bz2"),
                      type = c("all", "testing", "training", "validating"),
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

sector <- data.frame(name = "sector",
                     file = c("sector/sector.bz2",
                              "sector/sector.t.bz2",
                              "sector/sector.scale.bz2",
                              "sector/sector.t.scale.bz2"),
                     type = c("training", "testing"),
                     scaled = c(FALSE, FALSE, TRUE, TRUE))

shuttle <- data.frame(name = "shuttle",
                      file = c("shuttle.scale",
                               "shuttle.scale.t",
                               "shuttle.scale.tr",
                               "shuttle.scale.val"),
                      type = c("all", "testing", "training", "validating"),
                      scaled = TRUE)

multiclass <- rbind(aloi,
                    connect_4,
                    dna,
                    letter,
                    mnist,
                    pendigits,
                    poker,
                    protein,
                    vehicle,
                    vowel,
                    satimage,
                    sector,
                    shuttle)
multiclass$response <- "multiclass"

# collect all data sets ---------------------------------------------------

data_sets <- rbind(regression,
                   binary,
                   multiclass)

usethis::use_data(data_sets, internal = TRUE, overwrite = TRUE)

