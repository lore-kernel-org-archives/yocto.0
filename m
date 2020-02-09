Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6230.1581246793898382998
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Feb 2020 03:13:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73383E01700; Sun,  9 Feb 2020 03:13:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C120E016FC
	for <yocto@yoctoproject.org>; Sun,  9 Feb 2020 03:13:12 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:35620 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j0kWV-009vru-4L
	for yocto@yoctoproject.org; Sun, 09 Feb 2020 06:13:11 -0500
Date: Sun, 9 Feb 2020 06:13:07 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: wanting to clarify combination of overrides and appends
Message-ID: <alpine.LFD.2.21.2002060951320.2012666@localhost.localdomain>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


  moving on to the next nitpicky issue i want to clarify, and that's
*precisely* how overrides and appends are combined. i'm looking at
section 3.3 in the bitbake manual and i don't think the examples there
are as clear as they could be.

  NOTE: in the YP docs, i would avoid examples that involve
arbitrarily constructed words like "foo", as the reader might have no
idea what that's supposed to represent, and whether they're supposed
to define it, etc. in what follows, i'm using as my basis a qemuarm64
build, with "qemuarm64" as the obvious override.  and so, to work.

  to see how overrides affect appends, i added the following to the
top of local.conf:

  RDAY = 'initial'
  RDAY_qemuarm64_append = ' qemua'
  RDAY_append = ' appended'
  RDAY_append_qemuarm64 = ' aqemu'
  RDAY_qemuarm64 = 'initial_qemu'

then ran "bitbake -e" and extracted just the part related to the above
to get the following two sections, which i will now try to interpret:


  # $RDAY [5 operations]
  #   set /home/rpjday/oe/builds/qemuarm64/conf/local.conf:1
  #     "initial"
  #   _append /home/rpjday/oe/builds/qemuarm64/conf/local.conf:3
  #     " appended"
  #   _append[qemuarm64]
  /home/rpjday/oe/builds/qemuarm64/conf/local.conf:4
  #     " aqemu"
  #   override[qemuarm64]:_append
  /home/rpjday/oe/builds/qemuarm64/conf/local.conf:2
  #     " qemua"
  #   override[qemuarm64]:set
  /home/rpjday/oe/builds/qemuarm64/conf/local.conf:5
  #     "initial_qemu"
  # pre-expansion value:
  #   "initial_qemu qemua appended aqemu"
  RDAY="initial_qemu qemua appended aqemu"


  # $RDAY_qemuarm64 [2 operations]
  #   _append /home/rpjday/oe/builds/qemuarm64/conf/local.conf:2
  #     " qemua"
  #   set /home/rpjday/oe/builds/qemuarm64/conf/local.conf:5
  #     "initial_qemu"
  # pre-expansion value:
  #   "initial_qemu qemua"
  RDAY_qemuarm64="initial_qemu qemua"


since this is, in fact, a qemuarm64 build, "qemuarm64" is an active
override so let's concentrate on that. my way of looking at this (and
i could be totally offbase) is to say that, in this case, there are
two different variables that are being assigned -- there is the
generic RDAY variable, and there is the one related to the override,
RDAY_qemuarm64, and every assignment must be interpreted as applying
to one or the other.

  i'm going to ignore the processing of the RDAY variable, and
concentrate on what happens with RDAY_qemuarm64, as this is where i
think some developers get confused, so let's take this one line at a
time.

  RDAY = 'initial'

that line clearly assigns to the generic variable RDAY, so it's of
little interest. moving on ...

  RDAY_qemuarm64_append = ' qemua'

ah, now this line does an "append" to RDAY_qemuarm64, which should
then affect the value we will finally use, so let's remember this
append, which will be applied at expansion time. (in a funny way, i
look at this as just doing an append operation to a variable -- that
the variable being appended to has an active override is not, in fact,
taken into account here -- it's just a variable.)

  next line:

  RDAY_append = ' appended'

this is a regular append to the RDAY variable, so it is again of no
interest related to what we're doing. and here's the line that i think
throws people:

  RDAY_append_qemuarm64 = ' aqemu'

at first glance, it looks like it will be part of the eventual
qemuarm64 override value, but that's not what happens. as i read this
(and i could be wrong), this assignment is examined, and the active
"qemuarm64" override means that it will be processed, but the
assignment that will be processed is simply:

  RDAY_append = ' aqemu'

that is, the way i would interpret (and explain) the above is to say
that, because the override is active, that string is appended to the
NON-override version of the variable, RDAY. in short, the string
'aqemu' should NOT be part of the final variable value of RDAY in the
context of a qemuarm64 override.

  finally, we have:

  RDAY_qemuarm64 = 'initial_qemu'

which, because of the active 'qemuarm64' override, re-assigns that
string to RDAY_qemuarm64.

  in short, due to the active override of qemuarm64, the only two
lines that have any effect on the value of RDAY that will be *used*
later in a qemuarm64 build are lines 2 and 5:

  RDAY = 'initial'
  RDAY_qemuarm64_append = ' qemua'       <--- 2
  RDAY_append = ' appended'
  RDAY_append_qemuarm64 = ' aqemu'
  RDAY_qemuarm64 = 'initial_qemu'        <--- 5

and that is exactly what "bitbake -e" told us above:

  # $RDAY_qemuarm64 [2 operations]
  #   _append /home/rpjday/oe/builds/qemuarm64/conf/local.conf:2
  #     " qemua"
  #   set /home/rpjday/oe/builds/qemuarm64/conf/local.conf:5
  #     "initial_qemu"
  # pre-expansion value:
  #   "initial_qemu qemua"
  RDAY_qemuarm64="initial_qemu qemua"

does this make sense? in my experience, beginners have real difficulty
trying to understand how to distinguish between these two operations:

  1) RDAY_qemuarm64_append = ' qemua'
  2) RDAY_append_qemuarm64 = ' aqemu'

so the way i want to explain it is to think of two variables -- RDAY
and RDAY_qemuarm64 -- that are being created, and in the end, in the
context of a qemuarm64 build, it is the variable RDAY_qemuarm64 that
will be used.

  the first line above does a regular append to RDAY_qemuarm64 (so it
will be part of the final value), while the second line, when it is
being parsed, because of the active override, will append to the
regular variable RDAY, and will therefore *not* be part of the final
value. so as long as the way i'm looking at this is correct, i think
this explanation would help beginners understand the difference.

  thoughts?

rday


