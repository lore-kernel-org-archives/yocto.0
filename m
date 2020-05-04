Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.15163.1588624093613791782
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 13:28:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B849E01AE8; Mon,  4 May 2020 13:28:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBE23E01AE6
	for <yocto@yoctoproject.org>; Mon,  4 May 2020 13:28:10 -0700 (PDT)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:52112 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jVhhA-00EOo0-To
	for yocto@yoctoproject.org; Mon, 04 May 2020 16:28:09 -0400
Date: Mon, 4 May 2020 16:28:06 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: oddities(?) when appending to an override
Message-ID: <alpine.LFD.2.21.2005041606030.7931@localhost.localdomain>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
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


  in aid of torturing myself, i'm poring over the bitbake manual and i
recall the initial confusion i had when reading the section on
overrides and appends, especially section 3.3.3 which turns things
around by showing what happens when applying an append to an override,
as opposed to the other way around. here's what i mean, and why i
think there are a few issues in the code base.

  i'm building a core-image-minimal for a qemuarm64, so there are two
overrides in play i care about: "qemuall" and "qemuarm64". now watch
what happens when i do things normally. i add this to local.conf:

RDAY = "first"
RDAY_append = " second"
RDAY_append_qemuarm64 = " third"
RDAY_append_qemuall = " fourth"

unsurprisingly, when i run "bitbake -e", i see exactly what i expect:

RDAY="first second third fourth"

this was entirely predictable, and the way i like to think about this
is that there is exactly one variable in play -- RDAY -- and all those
operations are working on that one variable. so far, so good.

  now let's flip things around and apply the appends to the overrides:

RDAY = "first"
RDAY_append = " second"
RDAY_qemuarm64_append = " third"
RDAY_qemuall_append = " fourth"

bonus points if you can guess what RDAY is set to in the above.
perhaps unexpectedly, what you get is:

RDAY=" third second"

the way i interpret this (based on that section from the BB manual) is
that, in the above, there are *three* variables being worked on:

  * RDAY
  * RDAY_qemuall
  * RDAY_qemuarm64

the append operations are being applied to those respective variables,
after which it is determined which of the overrides has precedence (in
this case, "qemuarm64"), so the value in RDAY_qemuarm64 is assigned to
RDAY, whereupon the final "normal" append (RDAY_append) is processed,
giving a final value of " third second".

  and why do i care? because i don't think there's enough caution for
new developers about the significant difference between those two ways
of doing things; that is, a developer might not realize the result of
doing something like this, thinking it's the right way to do it:

  VAR = "first stuff"
  VAR_<override>_append = " more stuff"

where VAR will quietly end up with the value " more stuff".

  i bring this up because i've run across occasional examples of that
in the code base -- here's
meta-gnome/recipes-connectivity/libnma/libnma_1.8.28.bb:

  EXTRA_OEMESON_mipsarchn32_append = " -Dvapi=false"

is that deliberate, or is it just asking for trouble?

rday

p.s. there's more examples of that.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
