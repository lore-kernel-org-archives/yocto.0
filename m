Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.7935.1581186713143325298
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Feb 2020 10:31:53 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9C65E016FB; Sat,  8 Feb 2020 10:31:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71DCEE00812
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2020 10:31:51 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:47978 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j0UtS-008B9i-Bi
	for yocto@yoctoproject.org; Sat, 08 Feb 2020 13:31:50 -0500
Date: Sat, 8 Feb 2020 13:31:48 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: more nitpicky pedantry: question about DEFAULT_PREFERENCE
Message-ID: <alpine.LFD.2.21.2002081322430.2157404@localhost.localdomain>
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


  (part of the nitpickiness of some of these questions stems from
that, in my updated courseware, i want to use actual examples out of,
say, the openembedded layer, and not just contrived examples involving
packages like "foo" and "bar". to that end, i want to be able to
explain why some recipes are written the way they are and, conversely,
to explain why some recipes might look weird.)

  the bitbake manual has a reasonable explanation of
DEFAULT_PREFERENCE but there are examples in the OE layer that seem to
not be written as cleanly as they could be.

   consider under recipes-devtools the two directories "pkgconfig" and
"pkgconf", and the respective .bb files:

  - pkgconfig_git.bb
  - pkgconf_1.6.3.bb

the pkgconfig recipe file does *not* contain a PROVIDES setting, while
pkgconfig_1.6.3.bb does:

  PROVIDES += "pkgconfig"

so, given that, one expects that other recipes should have a
DEPENDency on "pkgconfig", which could be satisfied by either of
those.

  however, oddly, the file pkgconf_1.6.3.bb contains the line:

  DEFAULT_PREFERENCE = "-1"

which seems odd as there don't appear to be any other recipes that
provide pkgconfig, and AIUI, the default provider for any recipe is
the recipe with *exactly* the same name as the target -- in this case,
"pkgconfig".

  so while that DEFAULT_PREFERENCE line doesn't hurt anything, in this
specific case (assuming i haven't overlooked any other recipes that
provide pkgconfig), that DEFAULT_PREFERENCE line is superfluous,
correct?

rday
