Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.3803.1581164064361800507
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Feb 2020 04:14:25 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0105E016F0; Sat,  8 Feb 2020 04:14:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2378 seconds by postgrey-1.32 at yocto-www; Sat, 08 Feb 2020 04:14:23 PST
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B49EE016ED
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2020 04:14:23 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:45048 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j0ONn-007bO2-V4
	for yocto@yoctoproject.org; Sat, 08 Feb 2020 06:34:44 -0500
Date: Sat, 8 Feb 2020 06:34:41 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: clarifying "PROVIDES =" versus "PROVIDES +=" (pedantic stuff)
Message-ID: <alpine.LFD.2.21.2002080611100.2136874@localhost.localdomain>
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


  (currently updating my OE/YP courseware, so the first in a number of
admittedly pedantic questions about simple stuff, just to make
absolutely sure i understand things if i'm going to be explaining it
to others. if appropriate, i can submit patches to the official YP
docs if others think it's worth it and has value.)

  regarding "PROVIDES =" settings in recipe files, first, each recipe
file implicitly PROVIDES its own recipe name, that much is obvious(?).
so in the simplest possible case, the recipe, say, fubar_1.0.0.bb will
always PROVIDE "fubar" and, if that's the case, there is no value in a
PROVIDES line in that recipe file. that is, it would be silly, but
harmless, for that recipe to include the line:

  PROVIDES = "fubar"

  next, given that implicit inclusion, the proper way to provide
another name is with "=", not "+=", yes? i ask this as there are a
number of recipe files under openembedded that do just that:

...
meta/recipes-support/libatomic-ops/libatomic-ops_7.6.10.bb:PROVIDES += "libatomics-ops"
meta/recipes-support/libpcre/libpcre2_10.34.bb:PROVIDES += "pcre2"
meta/recipes-support/libpcre/libpcre_8.43.bb:PROVIDES += "pcre"
meta/recipes-graphics/xorg-xserver/xserver-xorg.inc:PROVIDES += "virtual/xserver"
meta/recipes-graphics/xorg-app/mkfontscale_1.2.1.bb:PROVIDES += "mkfontdir"
... etc etc ...

  i am *assuming* that, in the absence of a compelling reason, the use
of "+=" instead of "=" in this context is harmless, but unnecessary,
correct?

  when would it not be unnecessary? sure, there are cases where a
recipe might require an .inc file which defines a PROVIDES, at which
point the .bb file might append to it. but other than cases like that
(where an earlier PROVIDES actually *needs* to be appended to), is it
safe to say that using "+=" in this context is almost always overkill?

  finally, in order to clarify why someone would want to use PROVIDES,
it seems that falls into a few categories. first, to define an
alternative (generally more generic) name for a recipe, such as:

meta/recipes-support/libpcre/libpcre2_10.34.bb:PROVIDES += "pcre2"
meta/recipes-support/libpcre/libpcre_8.43.bb:PROVIDES += "pcre"
meta/recipes-graphics/xorg-app/mkfontscale_1.2.1.bb:PROVIDES += "mkfontdir"

(i guess that would also include when an older package has been
replaced by a newer equivalent alternative.)

  second reason is to define virtual providers, such as:

meta/recipes-core/glibc/glibc.inc:PROVIDES += "virtual/libintl virtual/libiconv"
meta/recipes-core/newlib/newlib_3.2.0.bb:PROVIDES += "virtual/libc virtual/libiconv virtual/libintl"
meta/recipes-core/musl/musl_git.bb:PROVIDES += "virtual/libc virtual/libiconv virtual/libintl virtual/crypt"

  third reason i can see is in meta-freescale layer, where various
target-dependent u-boot recipes all provide the more generic "u-boot":

recipes-bsp/u-boot/u-boot-imx_2019.04.bb:PROVIDES += "u-boot"
recipes-bsp/u-boot/u-boot-qoriq_2019.04.bb:PROVIDES += "u-boot"
recipes-bsp/u-boot/u-boot-fslc_2019.07.bb:PROVIDES += "u-boot"

  the final occasion is when a recipe defines multiple output
packages, so it might contain the line:

  PROVIDES = "${PACKAGES}"

at that point, the explanation could finish off discussing
PREFERRED_PROVIDER and DEFAULT_PREFERENCE.

  does the above look about right? are there any subtle details of
PROVIDES missing?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
