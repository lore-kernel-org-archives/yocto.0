Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.6942.1615372760279856897
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 02:39:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 47B3A38C083D
	for <yocto@yoctoproject.org>; Wed, 10 Mar 2021 10:39:19 +0000 (UTC)
Received: from bras-base-otwaon0916w-grc-29-64-229-255-220.dsl.bell.ca ([64.229.255.220]:56994 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lJwFJ-0007w4-VB
	for yocto@yoctoproject.org; Wed, 10 Mar 2021 05:39:18 -0500
Date: Wed, 10 Mar 2021 05:39:15 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: konrad has officially blessed his new meta-rubygems layer
Message-ID: <6ef8a86f-61fb-607e-852c-95a023ace23d@crashcourse.ca>
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


  inspired by my earlier plaintive mewling of "gosh, i wish YP had
better ruby support," konrad weihmann put in a ridiculous amount of
work and came up with:

  https://github.com/priv-kweihmann/meta-rubygems

while i am listed as a contributor, konrad has done 98% of the work,
and i really plan on diving back into that soon, but that layer is
effectively all his, and he invited me to let people know about it, if
anyone else wanted to play along.

rday
