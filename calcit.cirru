
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |cumulo-util.calcit/
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.button $ {}
        :defs $ {}
          |comp-live-button $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |Hy6-sOYqaSb)
              |j $ {} (:author |root) (:text |comp-live-button) (:time 1499755354983) (:type :leaf) (:id |HyC-jOFq6r-)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |states) (:time 1507461830530) (:type :leaf) (:at 1549383822744) (:by |rJG4IHzWf) (:id |r1gMj_KqTSZ)
                  |j $ {} (:text |text) (:type :leaf) (:at 1549383863763) (:by |rJG4IHzWf) (:id |rUEFnLiSBW)
                  |r $ {} (:text |on-click) (:type :leaf) (:at 1549383878405) (:by |rJG4IHzWf) (:id |ilZjWzIYU)
                :time 1499755354983
                :type :expr
                :id |H1yfo_t9aB-
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1549384160575) (:by |rJG4IHzWf) (:id |h4pVTsPClQ)
                  |L $ {}
                    :data $ {}
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1629631030107) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1629631031431) (:by |rJG4IHzWf)
                              |j $ {} (:text |states) (:type :leaf) (:at 1629631032183) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1629631030288
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1629631028098
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1549384161812) (:by |rJG4IHzWf) (:id |b_xnn9mWU4)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1549384162886) (:by |rJG4IHzWf) (:id |cx1MIrCogn)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1549384163938) (:by |rJG4IHzWf) (:id |YEzywt53Cv)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1549384165026) (:by |rJG4IHzWf) (:id |TO3h0VcoPH)
                                :type :expr
                                :at 1549384163161
                                :by |rJG4IHzWf
                                :id |qJUzZ0SpqM
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1549384166439) (:by |rJG4IHzWf) (:id |0_eOzbFuBleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:darken?) (:type :leaf) (:at 1549384182021) (:by |rJG4IHzWf) (:id |FoMKgJ3zo)
                                      |j $ {} (:text |false) (:type :leaf) (:at 1549384174535) (:by |rJG4IHzWf) (:id |azPxiaeY2)
                                    :type :expr
                                    :at 1549384166863
                                    :by |rJG4IHzWf
                                    :id |XXL_HrhiJI
                                :type :expr
                                :at 1549384165986
                                :by |rJG4IHzWf
                                :id |0_eOzbFuB
                            :type :expr
                            :at 1549384162038
                            :by |rJG4IHzWf
                            :id |MlMXVGgv1w
                        :type :expr
                        :at 1549384161093
                        :by |rJG4IHzWf
                        :id |k2fZDkdT7u
                    :type :expr
                    :at 1549384160757
                    :by |rJG4IHzWf
                    :id |fojaw6q5Bb
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |button) (:type :leaf) (:at 1549383845243) (:by |rJG4IHzWf) (:id |DLWbZRoSmzleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1549383845914) (:by |rJG4IHzWf) (:id |bPf7IKsJJZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1549383847588) (:by |rJG4IHzWf) (:id |kRjyVfc9id)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |merge) (:type :leaf) (:at 1549384193688) (:by |rJG4IHzWf) (:id |pAo1iaWJNf)
                                  |T $ {} (:text |ui/button) (:type :leaf) (:at 1549383852728) (:by |rJG4IHzWf) (:id |AosR_3gbuA)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |if) (:type :leaf) (:at 1549384195733) (:by |rJG4IHzWf) (:id |WNBajTDGws)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:darken?) (:type :leaf) (:at 1549384197455) (:by |rJG4IHzWf) (:id |lmj5u740Fp)
                                          |j $ {} (:text |state) (:type :leaf) (:at 1549384199080) (:by |rJG4IHzWf) (:id |PPtz7wVFQy)
                                        :type :expr
                                        :at 1549384197790
                                        :by |rJG4IHzWf
                                        :id |clK90RApl
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1549384200491) (:by |rJG4IHzWf) (:id |hZvmR9zPKRleaf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:background-color) (:type :leaf) (:at 1549384209060) (:by |rJG4IHzWf) (:id |Smj_4M108)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1549384209765) (:by |rJG4IHzWf) (:id |nFLMef7Wz2)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1549384210508) (:by |rJG4IHzWf) (:id |ApBQZmEvgP)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1549384210753) (:by |rJG4IHzWf) (:id |pReZTBAbh)
                                                  |v $ {} (:text |94) (:type :leaf) (:at 1549384395975) (:by |rJG4IHzWf) (:id |Ni45lj5C8V)
                                                :type :expr
                                                :at 1549384209431
                                                :by |rJG4IHzWf
                                                :id |V6-zIhX-m6
                                            :type :expr
                                            :at 1549384200927
                                            :by |rJG4IHzWf
                                            :id |92ywUGy7Bz
                                        :type :expr
                                        :at 1549384200086
                                        :by |rJG4IHzWf
                                        :id |hZvmR9zPKR
                                    :type :expr
                                    :at 1549384195361
                                    :by |rJG4IHzWf
                                    :id |d4oJD8MVW
                                :type :expr
                                :at 1549384188078
                                :by |rJG4IHzWf
                                :id |xTLNk4zl1
                            :type :expr
                            :at 1549383846588
                            :by |rJG4IHzWf
                            :id |B9_0NrDiL
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:inner-text) (:type :leaf) (:at 1549383858141) (:by |rJG4IHzWf) (:id |ZwEYS0RlGleaf)
                              |j $ {} (:text |text) (:type :leaf) (:at 1549383860303) (:by |rJG4IHzWf) (:id |zcm2aEoLV)
                            :type :expr
                            :at 1549383853625
                            :by |rJG4IHzWf
                            :id |ZwEYS0RlG
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1549383870788) (:by |rJG4IHzWf) (:id |nhXf1BuojGleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1549383872166) (:by |rJG4IHzWf) (:id |Fz8vrZtj_6)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1549383872961) (:by |rJG4IHzWf) (:id |sswd5E8J4)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1549383874249) (:by |rJG4IHzWf) (:id |gQVSGo3Q2v)
                                    :type :expr
                                    :at 1549383872719
                                    :by |rJG4IHzWf
                                    :id |2JilzMZRm4
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |on-click) (:type :leaf) (:at 1549383882819) (:by |rJG4IHzWf) (:id |_KoIZiSXsleaf)
                                      |j $ {} (:text |e) (:type :leaf) (:at 1549383886168) (:by |rJG4IHzWf) (:id |oL0r_OIRL)
                                      |r $ {} (:text |d!) (:type :leaf) (:at 1549383887433) (:by |rJG4IHzWf) (:id |vB0CRXDYPc)
                                    :type :expr
                                    :at 1549383880575
                                    :by |rJG4IHzWf
                                    :id |_KoIZiSXs
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1629631024666) (:by |rJG4IHzWf) (:id |uB8MbLcV2Sleaf)
                                      |b $ {} (:text |cursor) (:type :leaf) (:at 1629631026471) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |assoc) (:type :leaf) (:at 1549384218059) (:by |rJG4IHzWf) (:id |-nBd99kWje)
                                          |j $ {} (:text |state) (:type :leaf) (:at 1549384219338) (:by |rJG4IHzWf) (:id |qEPNojSmE)
                                          |r $ {} (:text |:darken?) (:type :leaf) (:at 1549384362335) (:by |rJG4IHzWf) (:id |fzxcRUKt2P)
                                          |v $ {} (:text |true) (:type :leaf) (:at 1549384224328) (:by |rJG4IHzWf) (:id |Ltc8Uoxcj)
                                        :type :expr
                                        :at 1549384217036
                                        :by |rJG4IHzWf
                                        :id |Ukx9YiG7U9
                                    :type :expr
                                    :at 1549384213421
                                    :by |rJG4IHzWf
                                    :id |uB8MbLcV2S
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |delay!) (:type :leaf) (:at 1549384229655) (:by |rJG4IHzWf) (:id |64G553lqElleaf)
                                      |j $ {} (:text |0.4) (:type :leaf) (:at 1549384389463) (:by |rJG4IHzWf) (:id |bKQdyAgNc)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1549384234327) (:by |rJG4IHzWf) (:id |PeuVCyRjb)
                                          |j $ {}
                                            :data $ {}
                                            :type :expr
                                            :at 1549384234855
                                            :by |rJG4IHzWf
                                            :id |1OrmvtGllx
                                          |r $ {}
                                            :data $ {}
                                              |D $ {} (:text |d!) (:type :leaf) (:at 1629631037127) (:by |rJG4IHzWf) (:id |i47iB9RiY)
                                              |L $ {} (:text |cursor) (:type :leaf) (:at 1629631038624) (:by |rJG4IHzWf)
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |assoc) (:type :leaf) (:at 1549384236949) (:by |rJG4IHzWf) (:id |WLS9fZdK4Oleaf)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1549384237604) (:by |rJG4IHzWf) (:id |_-tfZ9NMig)
                                                  |r $ {} (:text |:darken?) (:type :leaf) (:at 1549384241080) (:by |rJG4IHzWf) (:id |0yoWI3Z8KF)
                                                  |v $ {} (:text |false) (:type :leaf) (:at 1549384241800) (:by |rJG4IHzWf) (:id |s8D-mvYYPk)
                                                :type :expr
                                                :at 1549384235431
                                                :by |rJG4IHzWf
                                                :id |WLS9fZdK4O
                                            :type :expr
                                            :at 1549384269206
                                            :by |rJG4IHzWf
                                            :id |-5cIL_2siw
                                        :type :expr
                                        :at 1549384233980
                                        :by |rJG4IHzWf
                                        :id |K0Jwd8aNb
                                    :type :expr
                                    :at 1549384225395
                                    :by |rJG4IHzWf
                                    :id |64G553lqEl
                                :type :expr
                                :at 1549383871166
                                :by |rJG4IHzWf
                                :id |D_I0Cr_c7i
                            :type :expr
                            :at 1549383867904
                            :by |rJG4IHzWf
                            :id |nhXf1BuojG
                        :type :expr
                        :at 1549383845535
                        :by |rJG4IHzWf
                        :id |-6bm8odAw
                    :type :expr
                    :at 1549383841167
                    :by |rJG4IHzWf
                    :id |DLWbZRoSmz
                :type :expr
                :at 1549384159807
                :by |rJG4IHzWf
                :id |VSii9HECIs
            :type :expr
            :at 1549384158469
            :by |rJG4IHzWf
            :id |B0TstKVV3
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rksbjOYqpSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |rJgjuY5pSb)
            |j $ {} (:author |root) (:text |app.comp.button) (:time 1499755354983) (:type :leaf) (:id |HybjuF9pS-)
            |v $ {}
              :data $ {}
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1521954061645) (:by |root) (:id |SJxSfaoE5fleaf)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root) (:id |rkb8MTo45G)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root) (:id |H1SuzTjV5M)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1521954065219) (:by |root) (:id |S1MtGTiE5G)
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root) (:id |HkUKG6oNcG)
                      :type :expr
                      :at 1521954065004
                      :by |root
                      :id |S1QtM6j4cz
                  :type :expr
                  :at 1521954061310
                  :by |root
                  :id |SJxSfaoE5f
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1549384245324) (:by |rJG4IHzWf) (:id |ss7lbDIQL6leaf)
                    |j $ {} (:text |cumulo-util.core) (:type :leaf) (:at 1549384248677) (:by |rJG4IHzWf) (:id |Y5QLwUoKE)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1549384249479) (:by |rJG4IHzWf) (:id |EjbaOEyFfM)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1549384250657) (:by |rJG4IHzWf) (:id |xbxCFxDLv)
                        |j $ {} (:text |delay!) (:type :leaf) (:at 1549384252527) (:by |rJG4IHzWf) (:id |R1A1E3EqaU)
                      :type :expr
                      :at 1549384250435
                      :by |rJG4IHzWf
                      :id |KTmJNfH_hq
                  :type :expr
                  :at 1549384244961
                  :by |rJG4IHzWf
                  :id |ss7lbDIQL6
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630610234) (:text |respo-ui.core)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |BkLgidF56rb)
                        |j $ {} (:author |root) (:text |hsl) (:time 1499755354983) (:type :leaf) (:id |SkPxidY56H-)
                      :time 1499755354983
                      :type :expr
                      :id |SyHeiOYcTr-
                  :time 1499755354983
                  :type :expr
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJtgouK5pBZ)
                    |j $ {} (:author |root) (:text |respo-ui.core) (:time 1499755354983) (:type :leaf) (:at 1516527080962) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |HJoxsuF5pr-)
                    |v $ {} (:author |root) (:text |ui) (:time 1499755354983) (:type :leaf) (:id |r1hgjuY5TH-)
                  :time 1499755354983
                  :type :expr
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |r1BodKcprZ)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:at 1540958704705) (:by |root) (:id |ryLoOY5pHb)
                    |r $ {} (:author |root) (:text |:refer) (:time 1508946162679) (:type :leaf) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359490531) (:type :leaf) (:id |BJtB8rGbG)
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1KidKq6r-)
                        |j $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |B1cs_Fq6B-)
                        |n $ {} (:text |>>) (:type :leaf) (:at 1629630614012) (:by |rJG4IHzWf)
                        |r $ {} (:author |root) (:text |<>) (:time 1499755354983) (:type :leaf) (:id |SJsiOY5pr-)
                        |v $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |SJ2oOY96S-)
                        |x $ {} (:author |root) (:text |button) (:time 1499755354983) (:type :leaf) (:id |BkpiOFq6S-)
                        |y $ {} (:author |root) (:text |span) (:time 1499755354983) (:type :leaf) (:id |r1Aj_YqaB-)
                      :time 1499755354983
                      :type :expr
                      :id |H1do_K5aS-
                  :time 1499755354983
                  :type :expr
                  :id |SJgC3cjTTW
                |x $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJH-s_t96rb)
                    |j $ {} (:author |root) (:text |respo.comp.space) (:time 1499755354983) (:type :leaf) (:id |SyUbi_t5pH-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rkFWouKcTr-)
                        |j $ {} (:author |root) (:text |=<) (:time 1499755354983) (:type :leaf) (:id |Hy5WjdY5TS-)
                      :time 1499755354983
                      :type :expr
                      :id |rJd-iOKc6rZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy4-oOt96SZ
              :time 1499755354983
              :type :expr
              :id |SJkgodY9TSW
          :time 1499755354983
          :type :expr
          :id |H1o_Y9ar-
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |Hy6-sOYqaSb)
              |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |HyC-jOFq6r-)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |reel) (:time 1507461830530) (:type :leaf) (:id |r1gMj_KqTSZ)
                :time 1499755354983
                :type :expr
                :id |H1yfo_t9aB-
              |v $ {} (:author |root)
                :data $ {}
                  |D $ {} (:author |root) (:text |let) (:time 1507461833421) (:type :leaf) (:id |SkGx0cFPh-)
                  |L $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |store) (:time 1507461835738) (:type :leaf) (:id |SyMAqtD2W)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:store) (:time 1507461837276) (:type :leaf) (:id |r1GEC5Kv3Z)
                              |j $ {} (:author |root) (:text |reel) (:time 1507461838285) (:type :leaf) (:id |B1NBC5tPh-)
                            :time 1507461836110
                            :type :expr
                            :id |S1XN05tw3-
                        :time 1507461834650
                        :type :expr
                        :id |Hy7CcFP3W
                      |j $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |states) (:time 1509727105928) (:type :leaf) (:id |rkgYtjzqAWleaf)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:states) (:time 1509727107223) (:type :leaf) (:id |HJE9tjzqAb)
                              |j $ {} (:author |root) (:text |store) (:time 1509727108033) (:type :leaf) (:id |SySiYoMc0-)
                            :time 1509727106316
                            :type :expr
                            :id |HJBcYszqCZ
                        :time 1509727104820
                        :type :expr
                        :id |rkgYtjzqAW
                    :time 1507461834351
                    :type :expr
                    :id |SyeGC5tw3-
                  |T $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |B1zMoOFc6HZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bk4GoOt5aSZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:author |root) (:text |:style) (:time 1499755354983) (:type :leaf) (:id |Bk8ModK9pHW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:author |root) (:text |merge) (:time 1499755354983) (:type :leaf) (:id |BydGiOKqpHW)
                                  |j $ {} (:author |root) (:text |ui/global) (:time 1499755354983) (:type :leaf) (:at 1521129814235) (:by |root) (:id |rktMsOY56HW)
                                  |n $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1549298578886) (:by |rJG4IHzWf) (:id |4aWF3Gt1jp)
                                  |p $ {} (:text |ui/column) (:type :leaf) (:at 1549298585029) (:by |rJG4IHzWf) (:id |miextQ4esq)
                                :time 1499755354983
                                :type :expr
                                :id |rJDfsutcaBb
                            :time 1499755354983
                            :type :expr
                            :id |BkBzj_F5TrW
                        :time 1499755354983
                        :type :expr
                        :id |Hy7Gj_YcaSb
                      |l $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1549298589213) (:by |rJG4IHzWf) (:id |QjjpLImKuleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1549298589774) (:by |rJG4IHzWf) (:id |0kuBZPoa-y)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1549298593536) (:by |rJG4IHzWf) (:id |F5ZOEYbME-)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1549299072416) (:by |rJG4IHzWf) (:id |k2j7DFMCR)
                                      |T $ {} (:text |ui/row-parted) (:type :leaf) (:at 1549298595891) (:by |rJG4IHzWf) (:id |5J1cvXlRef)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1549299074498) (:by |rJG4IHzWf) (:id |XUwaKaoay8)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding) (:type :leaf) (:at 1549299075870) (:by |rJG4IHzWf) (:id |E4i-7znO4)
                                              |j $ {} (:text |8) (:type :leaf) (:at 1549299076173) (:by |rJG4IHzWf) (:id |-Bw3S_c0jx)
                                            :type :expr
                                            :at 1549299074818
                                            :by |rJG4IHzWf
                                            :id |1GyHXjzukF
                                        :type :expr
                                        :at 1549299074145
                                        :by |rJG4IHzWf
                                        :id |oK921APRy
                                    :type :expr
                                    :at 1549299071385
                                    :by |rJG4IHzWf
                                    :id |dbjvMJXtdF
                                :type :expr
                                :at 1549298592868
                                :by |rJG4IHzWf
                                :id |EPaxoHhhfs
                            :type :expr
                            :at 1549298589457
                            :by |rJG4IHzWf
                            :id |Ttgasp7G0n
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |span) (:type :leaf) (:at 1549298597599) (:by |rJG4IHzWf) (:id |6MusmaPqbleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1549298598843) (:by |rJG4IHzWf) (:id |2LKXd6yOBK)
                                :type :expr
                                :at 1549298597902
                                :by |rJG4IHzWf
                                :id |Mz7lyNiSVn
                            :type :expr
                            :at 1549298596741
                            :by |rJG4IHzWf
                            :id |6MusmaPqb
                          |v $ {}
                            :data $ {}
                              |D $ {} (:text |div) (:type :leaf) (:at 1549299061081) (:by |rJG4IHzWf) (:id |enwB-UFzA)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1549299061641) (:by |rJG4IHzWf) (:id |WXgHjP8rnT)
                                :type :expr
                                :at 1549299061318
                                :by |rJG4IHzWf
                                :id |XMiBtW27sJ
                              |b $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-live-button) (:type :leaf) (:at 1549384096670) (:by |rJG4IHzWf) (:id |1k3A2Ta3xleaf)
                                  |b $ {}
                                    :data $ {}
                                      |D $ {} (:text |>>) (:type :leaf) (:at 1629630554425) (:by |rJG4IHzWf)
                                      |T $ {} (:text |states) (:type :leaf) (:at 1549384104850) (:by |rJG4IHzWf) (:id |zv2W4tVag)
                                      |j $ {} (:text |:run) (:type :leaf) (:at 1629630555086) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629630553755
                                    :by |rJG4IHzWf
                                  |j $ {} (:text "|\"Run") (:type :leaf) (:at 1549384100804) (:by |rJG4IHzWf) (:id |MkX9NWMww)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1549384113138) (:by |rJG4IHzWf) (:id |jaj_b_pW4t)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1549384113703) (:by |rJG4IHzWf) (:id |odJS0cmjqp)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1549384117370) (:by |rJG4IHzWf) (:id |AAqgVg3mZj)
                                        :type :expr
                                        :at 1549384113463
                                        :by |rJG4IHzWf
                                        :id |O4FYmI7eJL
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |d!) (:type :leaf) (:at 1549384120528) (:by |rJG4IHzWf) (:id |3u9bZ2Ifx3leaf)
                                          |j $ {} (:text |:data) (:type :leaf) (:at 1549384122852) (:by |rJG4IHzWf) (:id |wefMTnNvro)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |format-to-lisp) (:type :leaf) (:at 1629631359162) (:by |rJG4IHzWf) (:id |y56PskMThq)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629630593226) (:by |rJG4IHzWf) (:id |ahCbc_NSxD)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:content) (:type :leaf) (:at 1549384125822) (:by |rJG4IHzWf) (:id |QsVdcOZGOf)
                                                      |j $ {} (:text |store) (:type :leaf) (:at 1549384125822) (:by |rJG4IHzWf) (:id |bM93GUhJfZ)
                                                    :type :expr
                                                    :at 1549384125822
                                                    :by |rJG4IHzWf
                                                    :id |vsVV7RCF4m
                                                :type :expr
                                                :at 1549384125822
                                                :by |rJG4IHzWf
                                                :id |IW5SMh-akD
                                            :type :expr
                                            :at 1549384125822
                                            :by |rJG4IHzWf
                                            :id |ZUaNukb8-0
                                        :type :expr
                                        :at 1549384118933
                                        :by |rJG4IHzWf
                                        :id |3u9bZ2Ifx3
                                    :type :expr
                                    :at 1549384112900
                                    :by |rJG4IHzWf
                                    :id |6DpC4rW83
                                :type :expr
                                :at 1549384096451
                                :by |rJG4IHzWf
                                :id |1k3A2Ta3x
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |=<) (:type :leaf) (:at 1549299066187) (:by |rJG4IHzWf) (:id |3jj4aZnCsleaf)
                                  |j $ {} (:text |8) (:type :leaf) (:at 1549299066534) (:by |rJG4IHzWf) (:id |BKa-dngCFT)
                                  |r $ {} (:text |nil) (:type :leaf) (:at 1549299067090) (:by |rJG4IHzWf) (:id |1oq_xOn1G8)
                                :type :expr
                                :at 1549299063772
                                :by |rJG4IHzWf
                                :id |3jj4aZnCs
                              |v $ {}
                                :data $ {}
                                  |r $ {} (:text |comp-live-button) (:type :leaf) (:at 1549384131946) (:by |rJG4IHzWf) (:id |K3PfHJilpu)
                                  |v $ {}
                                    :data $ {}
                                      |D $ {} (:text |>>) (:type :leaf) (:at 1629630559655) (:by |rJG4IHzWf)
                                      |T $ {} (:text |states) (:type :leaf) (:at 1549384131946) (:by |rJG4IHzWf) (:id |MBlESPaGtp)
                                      |j $ {} (:text |:copy) (:type :leaf) (:at 1629630562264) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629630558825
                                    :by |rJG4IHzWf
                                  |x $ {} (:text "|\"Copy") (:type :leaf) (:at 1549384139658) (:by |rJG4IHzWf) (:id |wIB1zjvwd3)
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1549384131946) (:by |rJG4IHzWf) (:id |N4QmFOhIxS)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1549384131946) (:by |rJG4IHzWf) (:id |i-zZpWjXp2)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1549384131946) (:by |rJG4IHzWf) (:id |1aAbNx8XjY)
                                        :type :expr
                                        :at 1549384131946
                                        :by |rJG4IHzWf
                                        :id |Ud2vrd98Sv
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |copy!) (:type :leaf) (:at 1549384147749) (:by |rJG4IHzWf) (:id |ncJcTT3wX5)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:data) (:type :leaf) (:at 1549384147749) (:by |rJG4IHzWf) (:id |h3jf0nG1Kx)
                                              |j $ {} (:text |store) (:type :leaf) (:at 1549384147749) (:by |rJG4IHzWf) (:id |4Cv45BZM6v)
                                            :type :expr
                                            :at 1549384147749
                                            :by |rJG4IHzWf
                                            :id |FC4vCx5h_x
                                        :type :expr
                                        :at 1549384147749
                                        :by |rJG4IHzWf
                                        :id |QcNmys40b1
                                    :type :expr
                                    :at 1549384131946
                                    :by |rJG4IHzWf
                                    :id |h79y-kLa_r
                                :type :expr
                                :at 1549384131946
                                :by |rJG4IHzWf
                                :id |UnGOGqE6Fs
                            :type :expr
                            :at 1549299060306
                            :by |rJG4IHzWf
                            :id |op5To9ImB8
                        :type :expr
                        :at 1549298588797
                        :by |rJG4IHzWf
                        :id |QjjpLImKu
                      |n $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1549298612377) (:by |rJG4IHzWf) (:id |tTJz05orSt)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1549298612920) (:by |rJG4IHzWf) (:id |pFbZYuaEd4)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1549298646424) (:by |rJG4IHzWf) (:id |CdFantbPIF)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1549298651570) (:by |rJG4IHzWf) (:id |k4BScflOM)
                                      |T $ {} (:text |ui/flex) (:type :leaf) (:at 1549298648331) (:by |rJG4IHzWf) (:id |VQ2fqal3r)
                                      |j $ {} (:text |ui/row) (:type :leaf) (:at 1549298654934) (:by |rJG4IHzWf) (:id |kYFjHtOKRz)
                                    :type :expr
                                    :at 1549298649300
                                    :by |rJG4IHzWf
                                    :id |R6QUvow-qW
                                :type :expr
                                :at 1549298644939
                                :by |rJG4IHzWf
                                :id |O2J5fV_VZ
                            :type :expr
                            :at 1549298612611
                            :by |rJG4IHzWf
                            :id |BF_r34-ja
                          |T $ {} (:author |rJG4IHzWf)
                            :data $ {}
                              |T $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359503438) (:type :leaf) (:id |r1gIUBGZGleaf)
                              |j $ {} (:author |rJG4IHzWf)
                                :data $ {}
                                  |T $ {} (:author |rJG4IHzWf) (:text |{}) (:time 1512359504843) (:type :leaf) (:id |BkuIIrG-M)
                                  |j $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |T $ {} (:author |rJG4IHzWf) (:text |:value) (:time 1512359505740) (:type :leaf) (:id |HJZF88rMWM)
                                      |j $ {} (:author |rJG4IHzWf)
                                        :data $ {}
                                          |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359519072) (:type :leaf) (:id |S1gIv8BGWz)
                                          |j $ {} (:author |rJG4IHzWf) (:text |store) (:time 1512359611230) (:type :leaf) (:id |rJuP8SM-z)
                                        :time 1512359518303
                                        :type :expr
                                        :id |SJZ8P8HGWM
                                    :time 1512359505095
                                    :type :expr
                                    :id |rJMKLLHzWf
                                  |n $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |T $ {} (:author |rJG4IHzWf) (:text |:placeholder) (:time 1512359565393) (:type :leaf) (:id |rk79IrG-Mleaf)
                                      |j $ {} (:author |rJG4IHzWf) (:text ||Content) (:time 1512359571859) (:type :leaf) (:id |S1wB58rz-G)
                                    :time 1512359562842
                                    :type :expr
                                    :id |rk79IrG-M
                                  |p $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |T $ {} (:author |rJG4IHzWf) (:text |:style) (:time 1512359618050) (:type :leaf) (:id |HyKT8SzWGleaf)
                                      |j $ {} (:author |rJG4IHzWf)
                                        :data $ {}
                                          |D $ {} (:author |rJG4IHzWf) (:text |merge) (:time 1512359675059) (:type :leaf) (:id |BkZGbvrz-f)
                                          |L $ {} (:text |ui/flex) (:type :leaf) (:at 1535563520380) (:by |rJG4IHzWf) (:id |eUdxyfGXi)
                                          |T $ {} (:author |rJG4IHzWf) (:text |ui/textarea) (:time 1512359621430) (:type :leaf) (:id |Sk45pIBM-z)
                                          |j $ {} (:author |rJG4IHzWf)
                                            :data $ {}
                                              |T $ {} (:author |rJG4IHzWf) (:text |{}) (:time 1512359676048) (:type :leaf) (:id |ByBQ-vBMbz)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:font-family) (:type :leaf) (:at 1549298684998) (:by |rJG4IHzWf) (:id |d0S7VCbLC5)
                                                  |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1549298684998) (:by |rJG4IHzWf) (:id |_WAo5fnRJE)
                                                :type :expr
                                                :at 1549298684998
                                                :by |rJG4IHzWf
                                                :id |plh5r-JYkq
                                            :time 1512359675605
                                            :type :expr
                                            :id |H1NWDSG-M
                                        :time 1512359674211
                                        :type :expr
                                        :id |SyeG-vSz-z
                                    :time 1512359616676
                                    :type :expr
                                    :id |HyKT8SzWG
                                  |r $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |T $ {} (:author |rJG4IHzWf) (:text |:on-input) (:time 1512359552820) (:type :leaf) (:at 1515731637149) (:by |root) (:id |BkzwY8BzWf)
                                      |r $ {}
                                        :data $ {}
                                          |D $ {} (:text |fn) (:type :leaf) (:at 1629630583333) (:by |rJG4IHzWf)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {} (:text |e) (:type :leaf) (:at 1629630585342) (:by |rJG4IHzWf)
                                              |j $ {} (:text |d!) (:type :leaf) (:at 1629630586575) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1629630583960
                                            :by |rJG4IHzWf
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |d!) (:type :leaf) (:at 1629630581650) (:by |rJG4IHzWf) (:id |Skea92SNzleaf)
                                              |r $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359653355) (:type :leaf) (:id |ryTyDSz-M)
                                              |v $ {} (:author |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ {} (:author |rJG4IHzWf) (:text |:value) (:time 1512359559399) (:type :leaf) (:id |SkgCtISf-M)
                                                  |j $ {} (:author |rJG4IHzWf) (:text |e) (:time 1512359559645) (:type :leaf) (:at 1629630870099) (:by |rJG4IHzWf) (:id |BkBy5ISzWf)
                                                :time 1512359558827
                                                :type :expr
                                                :id |S11qLSGWG
                                            :type :expr
                                            :at 1515731639686
                                            :by |root
                                            :id |Skea92SNz
                                        :type :expr
                                        :at 1629630582131
                                        :by |rJG4IHzWf
                                    :time 1512359551423
                                    :type :expr
                                    :id |HyfRnq2SVf
                                :time 1512359504511
                                :type :expr
                                :id |BkxOILSfZf
                            :time 1512359496483
                            :type :expr
                            :id |r1gIUBGZG
                          |j $ {} (:author |rJG4IHzWf)
                            :data $ {}
                              |T $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359503438) (:type :leaf) (:id |r1gIUBGZGleaf)
                              |j $ {} (:author |rJG4IHzWf)
                                :data $ {}
                                  |T $ {} (:author |rJG4IHzWf) (:text |{}) (:time 1512359504843) (:type :leaf) (:id |BkuIIrG-M)
                                  |j $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |T $ {} (:author |rJG4IHzWf) (:text |:value) (:time 1512359505740) (:type :leaf) (:id |HJZF88rMWM)
                                      |j $ {} (:author |rJG4IHzWf)
                                        :data $ {}
                                          |T $ {} (:author |rJG4IHzWf) (:text |:data) (:time 1512359519072) (:type :leaf) (:at 1549298733563) (:by |rJG4IHzWf) (:id |S1gIv8BGWz)
                                          |j $ {} (:author |rJG4IHzWf) (:text |store) (:time 1512359611230) (:type :leaf) (:id |rJuP8SM-z)
                                        :time 1512359518303
                                        :type :expr
                                        :id |SJZ8P8HGWM
                                    :time 1512359505095
                                    :type :expr
                                    :id |rJMKLLHzWf
                                  |n $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |T $ {} (:author |rJG4IHzWf) (:text |:placeholder) (:time 1512359565393) (:type :leaf) (:id |rk79IrG-Mleaf)
                                      |j $ {} (:author |rJG4IHzWf) (:text "|\"data") (:time 1512359571859) (:type :leaf) (:at 1549298731565) (:by |rJG4IHzWf) (:id |S1wB58rz-G)
                                    :time 1512359562842
                                    :type :expr
                                    :id |rk79IrG-M
                                  |p $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |T $ {} (:author |rJG4IHzWf) (:text |:style) (:time 1512359618050) (:type :leaf) (:id |HyKT8SzWGleaf)
                                      |j $ {} (:author |rJG4IHzWf)
                                        :data $ {}
                                          |D $ {} (:author |rJG4IHzWf) (:text |merge) (:time 1512359675059) (:type :leaf) (:id |BkZGbvrz-f)
                                          |L $ {} (:text |ui/flex) (:type :leaf) (:at 1535563520380) (:by |rJG4IHzWf) (:id |eUdxyfGXi)
                                          |T $ {} (:author |rJG4IHzWf) (:text |ui/textarea) (:time 1512359621430) (:type :leaf) (:id |Sk45pIBM-z)
                                          |j $ {} (:author |rJG4IHzWf)
                                            :data $ {}
                                              |T $ {} (:author |rJG4IHzWf) (:text |{}) (:time 1512359676048) (:type :leaf) (:id |ByBQ-vBMbz)
                                              |r $ {} (:author |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ {} (:author |rJG4IHzWf) (:text |:font-family) (:time 1512359679785) (:type :leaf) (:at 1549298676881) (:by |rJG4IHzWf) (:id |H1PWwHMWMleaf)
                                                  |j $ {} (:author |rJG4IHzWf) (:text |ui/font-code) (:time 1512359697836) (:type :leaf) (:at 1549298681888) (:by |rJG4IHzWf) (:id |Bk7dZPBf-M)
                                                :time 1512359678671
                                                :type :expr
                                                :id |H1PWwHMWM
                                            :time 1512359675605
                                            :type :expr
                                            :id |H1NWDSG-M
                                        :time 1512359674211
                                        :type :expr
                                        :id |SyeG-vSz-z
                                    :time 1512359616676
                                    :type :expr
                                    :id |HyKT8SzWG
                                  |r $ {} (:author |rJG4IHzWf)
                                    :data $ {}
                                      |T $ {} (:author |rJG4IHzWf) (:text |:on-input) (:time 1512359552820) (:type :leaf) (:at 1515731637149) (:by |root) (:id |BkzwY8BzWf)
                                      |r $ {}
                                        :data $ {}
                                          |D $ {} (:text |fn) (:type :leaf) (:at 1629630574256) (:by |rJG4IHzWf)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {} (:text |e) (:type :leaf) (:at 1629630575212) (:by |rJG4IHzWf)
                                              |j $ {} (:text |d!) (:type :leaf) (:at 1629630575925) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1629630574912
                                            :by |rJG4IHzWf
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |d!) (:type :leaf) (:at 1629630573266) (:by |rJG4IHzWf) (:id |Skea92SNzleaf)
                                              |r $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359653355) (:type :leaf) (:id |ryTyDSz-M)
                                              |v $ {} (:author |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ {} (:author |rJG4IHzWf) (:text |:value) (:time 1512359559399) (:type :leaf) (:id |SkgCtISf-M)
                                                  |j $ {} (:author |rJG4IHzWf) (:text |e) (:time 1512359559645) (:type :leaf) (:at 1629630577699) (:by |rJG4IHzWf) (:id |BkBy5ISzWf)
                                                :time 1512359558827
                                                :type :expr
                                                :id |S11qLSGWG
                                            :type :expr
                                            :at 1515731639686
                                            :by |root
                                            :id |Skea92SNz
                                        :type :expr
                                        :at 1629630573714
                                        :by |rJG4IHzWf
                                    :time 1512359551423
                                    :type :expr
                                    :id |HyfRnq2SVf
                                :time 1512359504511
                                :type :expr
                                :id |BkxOILSfZf
                            :time 1512359496483
                            :type :expr
                            :id |y1pW5xsNM
                        :type :expr
                        :at 1549298611696
                        :by |rJG4IHzWf
                        :id |azwcQKiOl
                      |x $ {}
                        :data $ {}
                          |D $ {} (:text |when) (:type :leaf) (:at 1521954057510) (:by |root) (:id |rJgM6oE5f)
                          |L $ {} (:text |dev?) (:type :leaf) (:at 1521954059290) (:by |root) (:id |H1fGajVqz)
                          |T $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |comp-reel) (:time 1507461815046) (:type :leaf) (:id |rJc29KD2-leaf)
                              |b $ {}
                                :data $ {}
                                  |D $ {} (:text |>>) (:type :leaf) (:at 1629630568536) (:by |rJG4IHzWf)
                                  |T $ {} (:author |root) (:text |states) (:time 1509727101297) (:type :leaf) (:id |B1BYoG90Z)
                                  |j $ {} (:text |:reel) (:type :leaf) (:at 1629630570706) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629630567875
                                :by |rJG4IHzWf
                              |j $ {} (:author |root) (:text |reel) (:time 1507461840459) (:type :leaf) (:id |rJx_05Fw3Z)
                              |r $ {} (:author |root)
                                :data $ {}
                                  |T $ {} (:author |root) (:text |{}) (:time 1507461841342) (:type :leaf) (:id |Bkt05FDhW)
                                :time 1507461840980
                                :type :expr
                                :id |B1xKR5Fw3b
                            :time 1507461809635
                            :type :expr
                            :id |rJc29KD2-
                        :type :expr
                        :at 1521954055333
                        :by |root
                        :id |SyWJfaiV5z
                    :time 1499755354983
                    :type :expr
                    :id |SyWfsuY5THW
                :time 1507461832154
                :type :expr
                :id |r1-eRcYv3-
            :time 1499755354983
            :type :expr
            :id |BJ2WiOF9pBW
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rksbjOYqpSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |rJgjuY5pSb)
            |j $ {} (:author |root) (:text |app.comp.container) (:time 1499755354983) (:type :leaf) (:id |HybjuF9pS-)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519699088805) (:by |root) (:id |ryKcErMdGleaf)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root) (:id |HJMtqNBGuf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root) (:id |Syl69VHMuM)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519699093922) (:by |root) (:id |HJwaqVHM_M)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root) (:id |BJf0cVSMdz)
                      :type :expr
                      :at 1519699093683
                      :by |root
                      :id |S1R54BfuG
                  :type :expr
                  :at 1519699088529
                  :by |root
                  :id |ryKcErMdG
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1521954061645) (:by |root) (:id |SJxSfaoE5fleaf)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root) (:id |rkb8MTo45G)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root) (:id |H1SuzTjV5M)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1521954065219) (:by |root) (:id |S1MtGTiE5G)
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root) (:id |HkUKG6oNcG)
                      :type :expr
                      :at 1521954065004
                      :by |root
                      :id |S1QtM6j4cz
                  :type :expr
                  :at 1521954061310
                  :by |root
                  :id |SJxSfaoE5f
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1549299049968) (:by |rJG4IHzWf) (:id |4Y_2gixYcc)
                    |j $ {} (:text "|\"copy-text-to-clipboard") (:type :leaf) (:at 1549299051259) (:by |rJG4IHzWf) (:id |gxKhbxuD6o)
                    |r $ {} (:text |:default) (:type :leaf) (:at 1629630600285) (:by |rJG4IHzWf) (:id |5bjSZljKB)
                    |v $ {} (:text |copy!) (:type :leaf) (:at 1549299056072) (:by |rJG4IHzWf) (:id |VvL7IN4mVj)
                  :type :expr
                  :at 1549299049755
                  :by |rJG4IHzWf
                  :id |Bq-4nSRam
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1549384085071) (:by |rJG4IHzWf) (:id |7ji5kVcdyQ)
                    |j $ {} (:text |app.comp.button) (:type :leaf) (:at 1549384085071) (:by |rJG4IHzWf) (:id |imIFAiNHdO)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1549384085071) (:by |rJG4IHzWf) (:id |eUtBzXpOV7)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1549384085071) (:by |rJG4IHzWf) (:id |4kqZidpX3V)
                        |j $ {} (:text |comp-live-button) (:type :leaf) (:at 1549384085071) (:by |rJG4IHzWf) (:id |3shLIUk5eE)
                      :type :expr
                      :at 1549384085071
                      :by |rJG4IHzWf
                      :id |j_i04jEk4z
                  :type :expr
                  :at 1549384085071
                  :by |rJG4IHzWf
                  :id |QMAfvr3eyG
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630596353) (:text |respo-ui.core)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |BkLgidF56rb)
                        |j $ {} (:author |root) (:text |hsl) (:time 1499755354983) (:type :leaf) (:id |SkPxidY56H-)
                      :time 1499755354983
                      :type :expr
                      :id |SyHeiOYcTr-
                  :time 1499755354983
                  :type :expr
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJtgouK5pBZ)
                    |j $ {} (:author |root) (:text |respo-ui.core) (:time 1499755354983) (:type :leaf) (:at 1516527080962) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |HJoxsuF5pr-)
                    |v $ {} (:author |root) (:text |ui) (:time 1499755354983) (:type :leaf) (:id |r1hgjuY5TH-)
                  :time 1499755354983
                  :type :expr
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |r1BodKcprZ)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:at 1540958704705) (:by |root) (:id |ryLoOY5pHb)
                    |r $ {} (:author |root) (:text |:refer) (:time 1508946162679) (:type :leaf) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359490531) (:type :leaf) (:id |BJtB8rGbG)
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1KidKq6r-)
                        |j $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |B1cs_Fq6B-)
                        |n $ {} (:author |root) (:text |>>) (:time 1509727116530) (:type :leaf) (:at 1629630861917) (:by |rJG4IHzWf) (:id |BJlz9oM90-)
                        |r $ {} (:author |root) (:text |<>) (:time 1499755354983) (:type :leaf) (:id |SJsiOY5pr-)
                        |v $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |SJ2oOY96S-)
                        |x $ {} (:author |root) (:text |button) (:time 1499755354983) (:type :leaf) (:id |BkpiOFq6S-)
                        |y $ {} (:author |root) (:text |span) (:time 1499755354983) (:type :leaf) (:id |r1Aj_YqaB-)
                      :time 1499755354983
                      :type :expr
                      :id |H1do_K5aS-
                  :time 1499755354983
                  :type :expr
                  :id |SJgC3cjTTW
                |x $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJH-s_t96rb)
                    |j $ {} (:author |root) (:text |respo.comp.space) (:time 1499755354983) (:type :leaf) (:id |SyUbi_t5pH-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rkFWouKcTr-)
                        |j $ {} (:author |root) (:text |=<) (:time 1499755354983) (:type :leaf) (:id |Hy5WjdY5TS-)
                      :time 1499755354983
                      :type :expr
                      :id |rJd-iOKc6rZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy4-oOt96SZ
                |y $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507461846175) (:type :leaf) (:id |SkACcYv2-leaf)
                    |j $ {} (:author |root) (:text |reel.comp.reel) (:time 1507461855480) (:type :leaf) (:id |HJfRR5KPh-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507461856264) (:type :leaf) (:id |ryOyjtwnb)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507461856706) (:type :leaf) (:id |HJ8u1otP3W)
                        |j $ {} (:author |root) (:text |comp-reel) (:time 1507461858342) (:type :leaf) (:id |r1bt1sKwhZ)
                      :time 1507461856484
                      :type :expr
                      :id |BJwOyitPhW
                  :time 1507461845717
                  :type :expr
                  :id |SkACcYv2-
              :time 1499755354983
              :type :expr
              :id |SJkgodY9TSW
          :time 1499755354983
          :type :expr
          :id |H1o_Y9ar-
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |ryBoejdY5arb)
              |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |H1Iils_Y96BZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bkuogo_F9pr-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |:states) (:time 1499755354983) (:type :leaf) (:id |By5oeoOY5pBb)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Hyhixo_F9prb)
                        :time 1499755354983
                        :type :expr
                        :id |H1iieoOKqTSZ
                    :time 1499755354983
                    :type :expr
                    :id |BkYogiuK9TBZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359514709) (:type :leaf) (:id |BJ0oxjdFq6rb)
                      |j $ {} (:author |rJG4IHzWf) (:text "|\"") (:time 1512359516026) (:type :leaf) (:at 1549298719560) (:by |rJG4IHzWf) (:id |BJy2go_tcaBZ)
                    :time 1499755354983
                    :type :expr
                    :id |B1aixsdK9pHb
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:data) (:type :leaf) (:at 1549298721033) (:by |rJG4IHzWf) (:id |G-jbl2z4q5leaf)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1549298723897) (:by |rJG4IHzWf) (:id |mq27mHbjjz)
                    :type :expr
                    :at 1549298720403
                    :by |rJG4IHzWf
                    :id |G-jbl2z4q5
                :time 1499755354983
                :type :expr
                :id |ryviloOFc6B-
            :time 1499755354983
            :type :expr
            :id |HkEjgouFcpBW
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rkmjesdF9Trb
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |HyWslouK56HZ)
            |j $ {} (:author |root) (:text |app.schema) (:time 1499755354983) (:type :leaf) (:id |SkGsgsOtcTBb)
          :time 1499755354983
          :type :expr
          :id |rJxieodtqarW
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |H1U1esuY5TBZ)
              |j $ {} (:author |root) (:text |updater) (:time 1499755354983) (:type :leaf) (:id |SJwJxj_Y5aHZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |r1YyxidF96rW)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |r1cJxouK5aSZ)
                  |r $ {} (:author |root) (:text |op-data) (:time 1499755354983) (:type :leaf) (:id |Bkj1ljdY5Tr-)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root) (:id |S1gUCbfy_G)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root) (:id |ryzsAWMkdG)
                :time 1499755354983
                :type :expr
                :id |SkdkeiOK5TBZ
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |case-default) (:time 1499755354983) (:type :leaf) (:at 1629630694324) (:by |rJG4IHzWf) (:id |ry61gjOFqpH-)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyAylout56Hb)
                  |l $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1629630695414) (:by |rJG4IHzWf)
                      |b $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1629630698382) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"Unkown op:") (:type :leaf) (:at 1629630701245) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1629630701625) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629630697458
                        :by |rJG4IHzWf
                      |j $ {} (:text |store) (:type :leaf) (:at 1629630696911) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629630695038
                    :by |rJG4IHzWf
                  |n $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |:states) (:time 1507399855618) (:type :leaf) (:id |HJxX2OqUh-)
                      |j $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |update-states) (:time 1507399857991) (:type :leaf) (:at 1629630705268) (:by |rJG4IHzWf) (:id |rylOn_5I2Z)
                          |j $ {} (:author |root) (:text |store) (:time 1507399858922) (:type :leaf) (:id |ByE92uq82b)
                          |l $ {} (:text |op-data) (:type :leaf) (:at 1629630717769) (:by |rJG4IHzWf)
                        :time 1507399856471
                        :type :expr
                        :id |Sk-_hdqU2b
                    :time 1507399852251
                    :type :expr
                    :id |ryNh_5L3b
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359657160) (:type :leaf) (:id |S1lxeout56HW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |rJG4IHzWf) (:text |assoc) (:time 1512359666053) (:type :leaf) (:id |BkfgesdF9TH-)
                          |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |HJQeloOt5TrZ)
                          |r $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359660859) (:type :leaf) (:id |HkNexodK9Tr-)
                          |v $ {} (:author |rJG4IHzWf) (:text |op-data) (:time 1512359663126) (:type :leaf) (:id |B1eIlwHzbz)
                        :time 1499755354983
                        :type :expr
                        :id |SJ-gxidtcTrZ
                    :time 1499755354983
                    :type :expr
                    :id |S1kexiuF9arZ
                  |s $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:data) (:time 1512359657160) (:type :leaf) (:at 1549298929441) (:by |rJG4IHzWf) (:id |S1lxeout56HW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |rJG4IHzWf) (:text |assoc) (:time 1512359666053) (:type :leaf) (:id |BkfgesdF9TH-)
                          |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |HJQeloOt5TrZ)
                          |r $ {} (:author |rJG4IHzWf) (:text |:data) (:time 1512359660859) (:type :leaf) (:at 1549298930850) (:by |rJG4IHzWf) (:id |HkNexodK9Tr-)
                          |v $ {} (:author |rJG4IHzWf) (:text |op-data) (:time 1512359663126) (:type :leaf) (:id |B1eIlwHzbz)
                        :time 1499755354983
                        :type :expr
                        :id |SJ-gxidtcTrZ
                    :time 1499755354983
                    :type :expr
                    :id |EprVpcQla
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root) (:id |SkNl1ac8zleaf)
                      |j $ {} (:text |op-data) (:type :leaf) (:at 1518157553355) (:by |root) (:id |SJzueyp5Iz)
                    :type :expr
                    :at 1518157547521
                    :by |root
                    :id |SkNl1ac8z
                :time 1499755354983
                :type :expr
                :id |BJ2yxjOKqpHb
            :time 1499755354983
            :type :expr
            :id |SkS1lout5aBb
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |HJ41lsuY5pSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |SkG1lo_t9pHZ)
            |j $ {} (:author |root) (:text |app.updater) (:time 1499755354983) (:type :leaf) (:id |B17kxjdFq6r-)
            |r $ {} (:author |root)
              :data $ {}
                |T $ {} (:author |root) (:text |:require) (:time 1507399864640) (:type :leaf) (:id |H1xR2d5Uh-)
                |j $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399865654) (:type :leaf) (:id |rkf-6u9InW)
                    |j $ {} (:author |root) (:text |respo.cursor) (:time 1507399873143) (:type :leaf) (:id |Hkefpu983W)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399874041) (:type :leaf) (:id |rkrYaO5UnZ)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399874938) (:type :leaf) (:id |BJBqpOq8hZ)
                        |j $ {} (:author |root) (:text |update-states) (:time 1507399875675) (:type :leaf) (:at 1629630713072) (:by |rJG4IHzWf) (:id |rJbi6_c83-)
                      :time 1507399874214
                      :type :expr
                      :id |BkUcpdc83b
                  :time 1507399864883
                  :type :expr
                  :id |r17bT_cLnZ
              :time 1507399862664
              :type :expr
              :id |rykTu9L2Z
          :time 1499755354983
          :type :expr
          :id |B1Z1gjdFqaBZ
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |HkDssOFcaBb)
              |j $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |Sy_osdKc6Hb)
              |r $ {}
                :data $ {}
                :time 1499755354983
                :type :expr
                :id |B1YjiOY5TSb
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |render!) (:time 1499755354983) (:type :leaf) (:at 1629630773973) (:by |rJG4IHzWf) (:id |B12oiuFcTH-)
                  |j $ {} (:author |root) (:text |mount-target) (:time 1499755354983) (:type :leaf) (:id |BJpssOY5arW)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |ry12out96SZ)
                      |j $ {} (:author |root) (:text |@*reel) (:time 1507400119272) (:type :leaf) (:id |S1ehi_tcTSW)
                    :time 1499755354983
                    :type :expr
                    :id |SkCijOK9TBW
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1629630776942) (:by |rJG4IHzWf)
                :time 1499755354983
                :type :expr
                :id |Hkisi_K9aBb
            :time 1499755354983
            :type :expr
            :id |rkIjoOt9TSZ
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1533919517365) (:by |rJG4IHzWf) (:id |l8fLwAhlXR)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |PFTnUVG8by)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |?) (:type :leaf) (:at 1629630967626) (:by |rJG4IHzWf)
                  |j $ {} (:text |e) (:type :leaf) (:at 1629630968105) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
                :id |gTW5Lkw-h0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.setItem) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |nsY38PgyDG)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |7jurgAg3V2)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956703087) (:by |rJG4IHzWf) (:id |jG6Dp3dm3f)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |JixB_KjhS8)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                    :id |MDyLngin9s
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1629630749114) (:by |rJG4IHzWf) (:id |XBtA7AMJT-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:store) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |lYQrjrMTKZR)
                          |j $ {} (:text |@*reel) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |v41oSodX6pD)
                        :type :expr
                        :at 1533919515671
                        :by |rJG4IHzWf
                        :id |9jTwRVi6Cv
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                    :id |GgQoLRZ9sO
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
                :id |r_PVAAH3MQ
            :type :expr
            :at 1533919515671
            :by |rJG4IHzWf
            :id |sYYH8-JwjZ
          |mount-target $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |S1oAjut5TBZ)
              |j $ {} (:author |root) (:text |mount-target) (:time 1499755354983) (:type :leaf) (:id |rJ2Cj_t5aBZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |.querySelector) (:time 1499755354983) (:type :leaf) (:id |HyRCs_tqpH-)
                  |j $ {} (:author |root) (:text |js/document) (:time 1499755354983) (:type :leaf) (:id |ryy1ejdFq6SW)
                  |r $ {} (:author |root) (:text ||.app) (:time 1499755354983) (:type :leaf) (:id |B1gygs_t56rW)
                :time 1499755354983
                :type :expr
                :id |HJpAjOY5arZ
            :time 1499755354983
            :type :expr
            :id |B1qRjdF9aH-
          |*reel $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defatom) (:time 1499755354983) (:type :leaf) (:at 1629630875695) (:by |rJG4IHzWf) (:id |Hym2s_F9Tr-)
              |j $ {} (:author |root) (:text |*reel) (:time 1499755354983) (:type :leaf) (:id |rJEhsuY5arW)
              |r $ {} (:author |root)
                :data $ {}
                  |D $ {} (:author |root) (:text |->) (:time 1507399778895) (:type :leaf) (:id |Bkx5wOq83b)
                  |T $ {} (:author |root) (:text |reel-schema/reel) (:time 1507399776350) (:type :leaf) (:id |SkvhsuKqaBW)
                  |j $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |assoc) (:time 1507399781682) (:type :leaf) (:id |ByMjD_cL2b)
                      |j $ {} (:author |root) (:text |:base) (:time 1507401405076) (:type :leaf) (:id |SJb0w_qL3b)
                      |r $ {} (:author |root) (:text |schema/store) (:time 1507399787471) (:type :leaf) (:id |S1xdu5U3Z)
                    :time 1507399779656
                    :type :expr
                    :id |H1hvucUnZ
                  |r $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |assoc) (:time 1507399781682) (:type :leaf) (:id |ByMjD_cL2b)
                      |j $ {} (:author |root) (:text |:store) (:time 1507399793097) (:type :leaf) (:id |SJb0w_qL3b)
                      |r $ {} (:author |root) (:text |schema/store) (:time 1507399787471) (:type :leaf) (:id |S1xdu5U3Z)
                    :time 1507399779656
                    :type :expr
                    :id |S1P__5I3b
                :time 1507399777531
                :type :expr
                :id |HJ9Pd5U3-
            :time 1499755354983
            :type :expr
            :id |Hkf2sOYqpBb
          |main! $ {}
            :data $ {}
              |yD $ {} (:author |root)
                :data $ {}
                  |T $ {} (:author |root) (:text |listen-devtools!) (:time 1507461739167) (:type :leaf) (:id |Hyg2E5tPhbleaf)
                  |j $ {} (:author |root) (:text ||a) (:time 1507461691211) (:type :leaf) (:id |HkffSqFv2W)
                  |r $ {} (:author |root) (:text |dispatch!) (:time 1507461693919) (:type :leaf) (:id |SJEBqYD2W)
                :time 1507461684494
                :type :expr
                :id |Hyg2E5tPhb
              |yL $ {}
                :data $ {}
                  |T $ {} (:text |.addEventListener) (:type :leaf) (:at 1518157450281) (:by |root) (:id |BJg8VR398Gleaf)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root) (:id |rkmqRncIf)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root) (:id |Sk8cAnqUz)
                  |v $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf) (:id |DXNDmmlb_Uw)
                :type :expr
                :at 1518157357847
                :by |root
                :id |BJg8VR398G
              |yN $ {}
                :data $ {}
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf) (:id |Uj_o1cI2Aleaf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf) (:id |loq5zFZcF)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf) (:id |5tb38oDl_z)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
                :id |Uj_o1cI2A
              |yP $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root) (:id |rJ6n03q8Gleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root) (:id |Byz1aA3c8z)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.getItem) (:type :leaf) (:at 1518157501316) (:by |root) (:id |HyG-T0258G)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root) (:id |ByMHTA2cUz)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956709260) (:by |rJG4IHzWf) (:id |ByWtTAn9UM)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788293499) (:by |root) (:id |S1lhTCh9Uf)
                                :type :expr
                                :at 1518157506313
                                :by |root
                                :id |HJc60h9Iz
                            :type :expr
                            :at 1518157497615
                            :by |root
                            :id |ryGaR29Lf
                        :type :expr
                        :at 1518157495826
                        :by |root
                        :id |rJgl6A2cLz
                    :type :expr
                    :at 1518157495644
                    :by |root
                    :id |SJxpRh9Iz
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1533919640958) (:by |rJG4IHzWf) (:id |B1WMCAhcUfleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root) (:id |BkbQRRh5Iz)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root) (:id |Hk-V0R3cLf)
                        :type :expr
                        :at 1518157515117
                        :by |root
                        :id |B1MmRA2cIz
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root) (:id |BJWt0A39Lf)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root) (:id |H1l3RR3cIz)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629630736215) (:by |rJG4IHzWf) (:id |Byly1p9Uf)
                              |j $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root) (:id |rkmJyacIz)
                            :type :expr
                            :at 1518157527987
                            :by |root
                            :id |SJWx1yac8M
                        :type :expr
                        :at 1518157521635
                        :by |root
                        :id |BycA03cLG
                    :type :expr
                    :at 1518157514334
                    :by |root
                    :id |B1WMCAhcUf
                :type :expr
                :at 1518157492640
                :by |root
                :id |rJ6n03q8G
              |yT $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |println) (:time 1499755354983) (:type :leaf) (:id |H1dAiOtqpBZ)
                  |j $ {} (:author |root) (:text "||App started.") (:time 1499755354983) (:type :leaf) (:id |Byt0idYcaHW)
                :time 1499755354983
                :type :expr
                :id |H1vRoOF5pSZ
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |ByW6ouF5Trb)
              |j $ {} (:author |root) (:text |main!) (:time 1499755354983) (:type :leaf) (:id |H1Gpo_YqaHb)
              |r $ {}
                :data $ {}
                :time 1499755354983
                :type :expr
                :id |BkX6juY5aB-
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874434638) (:by |rJG4IHzWf) (:id |fLSIEmUmdNleaf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874509800) (:by |rJG4IHzWf) (:id |0HlR_PDYlS)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874440190) (:by |rJG4IHzWf) (:id |3fvetGvON)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874446442) (:by |rJG4IHzWf) (:id |HYiJmMsGb)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874449063) (:by |rJG4IHzWf) (:id |7h04nvm3O)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874452316) (:by |rJG4IHzWf) (:id |5vdb_eETfT)
                    :type :expr
                    :at 1544874440404
                    :by |rJG4IHzWf
                    :id |bDTVUn7FFd
                :type :expr
                :at 1544874433785
                :by |rJG4IHzWf
                :id |fLSIEmUmdN
              |x $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |SJoas_K9arW)
                :time 1499755354983
                :type :expr
                :id |B1qaj_K5aSZ
              |y $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |add-watch) (:time 1499755354983) (:type :leaf) (:id |HJRTs_F56Hb)
                  |j $ {} (:author |root) (:text |*reel) (:time 1507399915531) (:type :leaf) (:id |rky0s_YqaBZ)
                  |r $ {} (:author |root) (:text |:changes) (:time 1499755354983) (:type :leaf) (:id |H1lRsOY56H-)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |fn) (:time 1499755354983) (:type :leaf) (:id |ryz0jOtcTrW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |r) (:type :leaf) (:at 1629630752885) (:by |rJG4IHzWf)
                          |j $ {} (:text |p) (:type :leaf) (:at 1629630753243) (:by |rJG4IHzWf)
                        :time 1499755354983
                        :type :expr
                        :id |B1QCi_t9pS-
                      |r $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |BkHCsOY5aBb)
                        :time 1499755354983
                        :type :expr
                        :id |SJV0jdKqprW
                    :time 1499755354983
                    :type :expr
                    :id |H1bCidtcaSb
                :time 1499755354983
                :type :expr
                :id |r1p6oOFcTrZ
            :time 1499755354983
            :type :expr
            :id |Hkl6i_F5aBb
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |rJ5_idt5TBW)
              |j $ {} (:author |root) (:text |dispatch!) (:time 1499755354983) (:type :leaf) (:id |B1i_oOY9pHW)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyT_suY56Bb)
                  |j $ {} (:author |root) (:text |op-data) (:time 1499755354983) (:type :leaf) (:id |S1AdidYc6Hb)
                :time 1499755354983
                :type :expr
                :id |BJhOjOYqpSW
              |t $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1547437687530) (:by |root) (:id |aGDIF3y8rk)
                  |L $ {} (:text |config/dev?) (:type :leaf) (:at 1547437691006) (:by |root) (:id |L9TkjnHBLn)
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root) (:id |Bkg3x9n5UG)
                      |r $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1547437698992) (:by |root) (:id |rJpx93cUG)
                      |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root) (:id |ryzgb92qIz)
                    :type :expr
                    :at 1518156274050
                    :by |root
                    :id |rkqgqhqUM
                :type :expr
                :at 1547437686766
                :by |root
                :id |eDq-EM-Uh
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |reset!) (:time 1499755354983) (:type :leaf) (:id |H1w9iOt56S-)
                  |j $ {} (:author |root) (:text |*reel) (:time 1507399899641) (:type :leaf) (:id |rJOcjdYqaHW)
                  |r $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |reel-updater) (:time 1507399887573) (:type :leaf) (:id |HkB0Oc8n-leaf)
                      |j $ {} (:author |root) (:text |updater) (:time 1507399888500) (:type :leaf) (:id |r1eu0dqL2Z)
                      |r $ {} (:author |root) (:text |@*reel) (:time 1507399891576) (:type :leaf) (:id |r1tRdqU3W)
                      |v $ {} (:author |root) (:text |op) (:time 1507399892687) (:type :leaf) (:id |S1e3CO9I3W)
                      |x $ {} (:author |root) (:text |op-data) (:time 1507399894594) (:type :leaf) (:id |HklaCd58nb)
                    :time 1507399884621
                    :type :expr
                    :id |rkLeq39LG
                :time 1499755354983
                :type :expr
                :id |BJg_echcIM
            :time 1499755354983
            :type :expr
            :id |SytOodK9pSZ
          |reload! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1629630787657) (:by |rJG4IHzWf)
              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |reload!)
              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                :data $ {}
              |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |if)
                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |nil?)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |build-errors)
                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |do)
                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |remove-watch)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |*reel)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |:changes)
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |clear-cache!)
                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |add-watch)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |*reel)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |:changes)
                          |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |fn)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |reel)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |prev)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |render-app!)
                      |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |reset!)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |*reel)
                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |refresh-reel)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |@*reel)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |schema/store)
                              |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |updater)
                      |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |hud!)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text "|\"ok~")
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text "|\"Ok")
                  |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630787657)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |hud!)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text "|\"error")
                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630787657) (:text |build-errors)
            :type :expr
            :at 1629630787657
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |SkGujdK5aSW
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |S1ESouY9pSW)
            |j $ {} (:author |root) (:text |app.main) (:time 1499755354983) (:type :leaf) (:id |HJHriOFcTHZ)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1544956039992) (:by |rJG4IHzWf) (:id |cc_a_pLDyleaf)
                    |j $ {} (:text |cumulo-util.core) (:type :leaf) (:at 1544956046419) (:by |rJG4IHzWf) (:id |gEMtuyrg0A)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1544956047187) (:by |rJG4IHzWf) (:id |Lv042raLbR)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1544956047585) (:by |rJG4IHzWf) (:id |ZZQC9P5FUt)
                        |j $ {} (:text |repeat!) (:type :leaf) (:at 1544956059214) (:by |rJG4IHzWf) (:id |gpEqYQ1Q91)
                      :type :expr
                      :at 1544956047431
                      :by |rJG4IHzWf
                      :id |N6QDJ_kXtB
                  :type :expr
                  :at 1544956036581
                  :by |rJG4IHzWf
                  :id |cc_a_pLDy
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1629630796903) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1629630796903) (:by |rJG4IHzWf)
                    |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630796903) (:text |build-errors)
                  :type :expr
                  :at 1629630796903
                  :by |rJG4IHzWf
                |yyr $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629630796903)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630796903) (:text "|\"bottom-tip")
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630796903) (:text |:default)
                    |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629630796903) (:text |hud!)
                |yT $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJ0DiuF5aSZ)
                    |j $ {} (:author |root) (:text |app.schema) (:time 1499755354983) (:type :leaf) (:id |rJJOoOY5pS-)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |rye_i_FqTBb)
                    |v $ {} (:author |root) (:text |schema) (:time 1499755354983) (:type :leaf) (:id |SJbujOK96rW)
                  :time 1499755354983
                  :type :expr
                  :id |BJawo_tcaHW
                |yj $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399674614) (:type :leaf) (:id |Byez-dqLhbleaf)
                    |j $ {} (:author |root) (:text |reel.util) (:time 1507399678694) (:type :leaf) (:id |r1-XZO5LnW)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399680625) (:type :leaf) (:id |BkuW_qLnZ)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399681518) (:type :leaf) (:id |ByeF-uqI3W)
                        |j $ {} (:author |root) (:text |listen-devtools!) (:time 1507399682662) (:type :leaf) (:at 1518156292092) (:by |root) (:id |Syxc-_cI3b)
                      :time 1507399680857
                      :type :expr
                      :id |ByZK-uq83b
                  :time 1507399674125
                  :type :expr
                  :id |Byez-dqLhb
                |yr $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399684313) (:type :leaf) (:id |HyxhW_582-leaf)
                    |j $ {} (:author |root) (:text |reel.core) (:time 1507399687162) (:type :leaf) (:id |rkT-OcUn-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399688098) (:type :leaf) (:id |Bkr1MOqL2Z)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399688928) (:type :leaf) (:id |BkEgM_qU3W)
                        |j $ {} (:author |root) (:text |reel-updater) (:time 1507399691010) (:type :leaf) (:id |Bk--G_q8h-)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root) (:id |By_Z935Uz)
                      :time 1507399688322
                      :type :expr
                      :id |BkHgM_q8hW
                  :time 1507399683930
                  :type :expr
                  :id |HyxhW_582-
                |yv $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399715600) (:type :leaf) (:id |rJgi7OcU3Wleaf)
                    |j $ {} (:author |root) (:text |reel.schema) (:time 1507399717674) (:type :leaf) (:id |BybnXdcIhW)
                    |r $ {} (:author |root) (:text |:as) (:time 1507399755750) (:type :leaf) (:id |rJ-Cmu583Z)
                    |v $ {} (:author |root) (:text |reel-schema) (:time 1507399757678) (:type :leaf) (:id |Hk-NL_q8n-)
                  :time 1507399715229
                  :type :expr
                  :id |rJgi7OcU3W
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1518157534486) (:by |root) (:id |HkZI1kT9LMleaf)
                    |j $ {} (:text |cljs.reader) (:type :leaf) (:at 1518157537473) (:by |root) (:id |Hyvk1T5Lz)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1518157538193) (:by |root) (:id |Hy5yy698G)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1518157538636) (:by |root) (:id |B1Ucy1TcUG)
                        |j $ {} (:text |read-string) (:type :leaf) (:at 1518157540981) (:by |root) (:id |B1Zj1ypq8G)
                      :type :expr
                      :at 1518157538431
                      :by |root
                      :id |BJvckk6cLz
                  :type :expr
                  :at 1518157534012
                  :by |root
                  :id |HkZI1kT9LM
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1527788303612) (:by |root) (:id |SkewMXh6y7leaf)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788304925) (:by |root) (:id |SkbOz72T17)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root) (:id |SJNYz7n6Jm)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root) (:id |ry7cM73ak7)
                  :type :expr
                  :at 1527788302920
                  :by |root
                  :id |SkewMXh6y7
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |SkPHjOK96rZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |ByKHidF56r-)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:id |H15HidK9Tr-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |ByiSsOF9THZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rJ6BiuF96BZ)
                        |j $ {} (:author |root) (:text |render!) (:time 1499755354983) (:type :leaf) (:id |rJAri_KcTS-)
                        |r $ {} (:author |root) (:text |clear-cache!) (:time 1499755354983) (:type :leaf) (:id |Hkk8sOFq6rb)
                        |v $ {} (:author |root) (:text |realize-ssr!) (:time 1499755354983) (:type :leaf) (:id |Byx8i_F9TH-)
                      :time 1499755354983
                      :type :expr
                      :id |rJhBiuK5aHb
                  :time 1499755354983
                  :type :expr
                  :id |Hk_HouY9prW
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HkYUj_t9pBW)
                    |j $ {} (:author |root) (:text |app.comp.container) (:time 1499755354983) (:type :leaf) (:id |SyqIj_Y9aHZ)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |BkoIjut9pHW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HkTLj_FcpBW)
                        |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |Hy0IidKqTr-)
                      :time 1499755354983
                      :type :expr
                      :id |Sy2IsOYqaSZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy_IiOKqprZ
                |y $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |ryDvs_K96rb)
                    |j $ {} (:author |root) (:text |app.updater) (:time 1508556737455) (:type :leaf) (:id |B1_vsuK96r-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |BJKvodKcTB-)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJjDjuFqpSb)
                        |j $ {} (:author |root) (:text |updater) (:time 1499755354983) (:type :leaf) (:id |SJhwiOY5TB-)
                      :time 1499755354983
                      :type :expr
                      :id |Hy5woOKqTHb
                  :time 1499755354983
                  :type :expr
                  :id |SyLDodYcTS-
              :time 1499755354983
              :type :expr
              :id |BJ8SodF9prb
          :time 1499755354983
          :type :expr
          :id |rkQBo_Yc6Hb
      |app.config $ {}
        :defs $ {}
          |cdn? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |9RM4tZ4okA)
              |j $ {} (:text |cdn?) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |WrkWOQw_bj)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |cond) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |HfFnF74aaH)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |rWvB7a-BK6)
                          |j $ {} (:text |js/window) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |Bip59OdxiB)
                        :type :expr
                        :at 1544873887168
                        :by |rJG4IHzWf
                        :id |5FyvPxZHZQ
                      |j $ {} (:text |false) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |fpGEB9Lxk0)
                    :type :expr
                    :at 1544873887168
                    :by |rJG4IHzWf
                    :id |H4CD8BoV9R
                  |r $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |AQzq6hgdwW)
                          |j $ {} (:text |js/process) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |rasbU6lVBQ)
                        :type :expr
                        :at 1544873887168
                        :by |rJG4IHzWf
                        :id |MUHEZV1fJy
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |PZOibZsLN9C)
                          |j $ {} (:text "|\"true") (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |ZdyzBf5GbL5)
                          |r $ {} (:text |js/process.env.cdn) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |NCvHTnvee8P)
                        :type :expr
                        :at 1544873887168
                        :by |rJG4IHzWf
                        :id |KhHDSOBz9Vi
                    :type :expr
                    :at 1544873887168
                    :by |rJG4IHzWf
                    :id |P8yR9FwKKf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:else) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |ZglnnMdBFOo)
                      |j $ {} (:text |false) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf) (:id |SGrp6kA7itv)
                    :type :expr
                    :at 1544873887168
                    :by |rJG4IHzWf
                    :id |azAjKbw0e0L
                :type :expr
                :at 1544873887168
                :by |rJG4IHzWf
                :id |KMohe96ljT
            :type :expr
            :at 1544873887168
            :by |rJG4IHzWf
            :id |d2hK2S1JOD
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf) (:id |YFw1U8z4Tf)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf) (:id |aWMTO74W56)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |=) (:type :leaf) (:at 1629630849354) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"dev") (:type :leaf) (:at 1629630850490) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |get-env) (:type :leaf) (:at 1629630852704) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"mode") (:type :leaf) (:at 1629630854033) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629630850811
                    :by |rJG4IHzWf
                :type :expr
                :at 1629630849270
                :by |rJG4IHzWf
            :type :expr
            :at 1544873875614
            :by |rJG4IHzWf
            :id |soffpzT3iV
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root) (:id |Hy-Of025IG)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root) (:id |SyfufCnc8G)
              |r $ {}
                :data $ {}
                  |wT $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-folder) (:type :leaf) (:at 1528008977180) (:by |root) (:id |H1xHfWfWeXleaf)
                      |j $ {} (:text "|\"tiye.me:cdn/data-former") (:type :leaf) (:at 1549298407693) (:by |rJG4IHzWf) (:id |BySKfbfWx7)
                    :type :expr
                    :at 1528008973460
                    :by |root
                    :id |H1xHfWfWeX
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1527868458476) (:by |root) (:id |HJxzN3kyxmleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/cirru.png") (:type :leaf) (:at 1549298416110) (:by |rJG4IHzWf) (:id |rJeUB2k1xQ)
                    :type :expr
                    :at 1527868457696
                    :by |root
                    :id |HJxzN3kyxm
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf) (:id |uzAHSBrxME)
                      |j $ {} (:text "|\"data-former") (:type :leaf) (:at 1549298418152) (:by |rJG4IHzWf) (:id |3M_DNn-aUN)
                    :type :expr
                    :at 1544956719115
                    :by |rJG4IHzWf
                    :id |E81qVD65QI
                  |yr $ {}
                    :data $ {}
                      |T $ {} (:text |:upload-folder) (:type :leaf) (:at 1528009091856) (:by |root) (:id |S1WFZfblQleaf)
                      |j $ {} (:text "|\"tiye.me:repo/Cirru/data-former/") (:type :leaf) (:at 1549298423762) (:by |rJG4IHzWf) (:id |rJmnY-f-g7)
                    :type :expr
                    :at 1528009081454
                    :by |root
                    :id |S1WFZfblQ
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root) (:id |HyZ5XCh58M)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1527526864597) (:by |root) (:id |HkeSAB3K1Xleaf)
                      |x $ {} (:text "|\"http://localhost:8100/main.css") (:type :leaf) (:at 1540054307727) (:by |root) (:id |GHE5A-5h_P)
                    :type :expr
                    :at 1527526861413
                    :by |root
                    :id |HkeSAB3K1X
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1527526868617) (:by |root) (:id |rygq0H3YJmleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main.css") (:type :leaf) (:at 1527526887965) (:by |root) (:id |HklT1LntyQ)
                    :type :expr
                    :at 1527526865931
                    :by |root
                    :id |rygq0H3YJm
                  |w $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1528008962775) (:by |root) (:id |Syt-WGZgQleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/data-former/") (:type :leaf) (:at 1549298402396) (:by |rJG4IHzWf) (:id |Bye6-ZzbxX)
                    :type :expr
                    :at 1528008960614
                    :by |root
                    :id |Syt-WGZgQ
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1527868457305) (:by |root) (:id |HJlgNn11gmleaf)
                      |j $ {} (:text "|\"Data former") (:type :leaf) (:at 1549298411827) (:by |rJG4IHzWf) (:id |S1eWS2JJlm)
                    :type :expr
                    :at 1527868456422
                    :by |root
                    :id |HJlgNn11gm
                :type :expr
                :at 1518157327696
                :by |root
                :id |Hy7OfCnqUG
            :type :expr
            :at 1545933382603
            :by |root
            :id |i6pfoMgwq
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
          :id |Hk7B0z3pJX
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root) (:id |SkZHRz3TJ7)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788237503) (:by |root) (:id |HJzrRGhp1X)
          :type :expr
          :at 1527788237503
          :by |root
          :id |BJlrAf2TyX
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
