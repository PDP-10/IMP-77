.tty lc
.tty width 200
.if (error)                        ;do nothing on error
.set default buffer 2              ;that is all we need
.r maispl                          ;create the mic file which does the TELLing
.if (error) .goto err1
.do mail[3,5]                      ;send the mail using TELL
.if (error)                        ;ignore errors
.delete mail.mic[3,5]              ;ok I have finish with that
.GOTO END
err1::
.print ctl:mail.log
end::
