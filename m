Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.11425.1617713935904480919
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 05:58:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2EEB638C0846
	for <yocto@yoctoproject.org>; Tue,  6 Apr 2021 12:58:55 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:34484 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lTlID-00DGtb-9q
	for yocto@yoctoproject.org; Tue, 06 Apr 2021 08:58:53 -0400
Date: Tue, 6 Apr 2021 08:58:51 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: is there a *compelling* use case for "FILESEXTRAPATHS_append"?
Message-ID: <fb5c5222-ce6-e527-e47d-c2c9fb1b2c7@crashcourse.ca>
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


  over the years, i've always been uncomfortable with the admittedly
small number of examples in various layers i've found that append to
FILESEXTRAPATHS rather than prepend, so i'm curious if there is an
actual, persuasive reason to ever do that.

  philosophically, when one uses FILESEXTRAPATHS_prepend, one is
effectively saying, "here, use my content. nobody else's. mine. it's
right here. you can see it." and there should be no ambiguity, of
course.

  when you append, however, you're allowing for some hitherto unknown
earlier layer to jump in and override some of your content.
effectively, it seems (and i'm willing to be corrected) that you're
saying, "i have some content that *could* be used, but if some earlier
layer has the same content, we'll use that instead."

  that seems to open up a huge can of non-determinism, if an earlier
layer suddenly introduces (or, conversely removes) content of the same
name without you noticing, and weird things start to happen.

  so the question is, is there a really, well-defined use case for
appending to this variable?

rday
