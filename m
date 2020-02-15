Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5322.1581748550422486911
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 22:35:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3C5FE0144C; Fri, 14 Feb 2020 22:35:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 530ACE0078F
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2020 22:35:48 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:49220 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j2r3L-007cXh-2y
	for yocto@yoctoproject.org; Sat, 15 Feb 2020 01:35:47 -0500
Date: Sat, 15 Feb 2020 01:35:44 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: does git SRC_URI really *require" a SRCREV setting?
Message-ID: <alpine.LFD.2.21.2002150129460.2926947@localhost.localdomain>
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


  yes, yes, more obsessive-compulsive nitpickery, but YP dev tasks
manual, section 3.3.5, reads:

"Another way of specifying source is from an SCM. For Git
repositories, you must specify SRCREV and you should specify PV to
include the revision with SRCPV."

  you *must* specify SRCREV? i don't think that's true -- a couple
examples from meta-oe ... here's hiredis_0.13.1.bb:

SRC_URI = "git://github.com/redis/hiredis;protocol=git;rev=f58dd249d6ed47a7e835463c3b04722972281dbb \

  and here's sshfs-fuse_2.8.bb:

SRC_URI = "git://github.com/libfuse/sshfs;tag=b2fa7593586b141298e6159f40f521d2b0f4f894 \

  neither of which specify SRCREV (clearly since they don't need to
given the SRC_URI options in use).

rday

p.s. bitbake's git.py fetcher code makes no mention of the "rev"
option in its opening docstring. just an observation if anyone wants
to tweak that.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
