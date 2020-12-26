Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.25900.1609018403892798884
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Dec 2020 13:33:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 56EE638C065D
	for <yocto@yoctoproject.org>; Sat, 26 Dec 2020 21:33:23 +0000 (UTC)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:53470 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ktHBh-0006U9-GI
	for yocto@yoctoproject.org; Sat, 26 Dec 2020 16:33:22 -0500
Date: Sat, 26 Dec 2020 16:33:19 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: obvious(?) ruby error: adding erroneous second ".gemspec" suffix
Message-ID: <53dbee1b-258-1191-6bfe-7b847cb7de9f@crashcourse.ca>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


  i'm not fluent enough in ruby to want to submit a patch for this, so
i'll let someone higher up the food chain handle it.

  trying to build a number of "native" ruby recipes from
meta-openstack, and getting precisely the same error for various
recipes:

| ERROR:  Gemspec file not found: XXXXX-native.gemspec.gemspec

the clear bug here is that something is adding a ".gemspec" suffix to
a string that *already* has that suffix. that error is acknowledged
here ("Append '.gemspec' extension only when it is not present"):

https://github.com/voxik/rubygems/commit/6c3f0dc798966a6474f6d694da05a15d620760d6

so someone who is more comfortable with ruby is invited to deal with
that.

rday

