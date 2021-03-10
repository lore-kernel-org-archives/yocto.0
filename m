Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.6459.1615368983235945639
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 01:36:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 505BB38C0636
	for <yocto@yoctoproject.org>; Wed, 10 Mar 2021 09:36:20 +0000 (UTC)
Received: from bras-base-otwaon0916w-grc-29-64-229-255-220.dsl.bell.ca ([64.229.255.220]:56210 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lJvGM-00062P-3G
	for yocto@yoctoproject.org; Wed, 10 Mar 2021 04:36:18 -0500
Date: Wed, 10 Mar 2021 04:36:15 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: what version of YP will next wind river (LTS20) be based on?
Message-ID: <b1f89e52-a970-659-f5a8-b28d78dd458d@crashcourse.ca>
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


  i suspect i know the answer, just want to confirm ... friend tells
me yesterday he's working with LTS20, i said, "uh, that's not even out
yet," he assures he his company has an early release, but he couldn't
tell me what version of YP it corresponded to.

  based on regularity of releases on both sides, i would *guess* it's
equivalent to gatesgarth, is that a good guess?

rday
