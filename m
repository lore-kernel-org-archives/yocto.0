Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.201.1620162220944566692
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 14:03:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7D99238C02B9
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 21:03:40 +0000 (UTC)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:32952 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1le2Ch-0003YM-Ts
	for yocto@yoctoproject.org; Tue, 04 May 2021 17:03:39 -0400
Date: Tue, 4 May 2021 17:03:36 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: what OE/YP layers should be considered "supported"?
Message-ID: <f0f1c2d4-ef14-a211-6bff-8f7b876fdc7c@crashcourse.ca>
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


  related to something that richard purdie mentioned on the OE list,
if one wanted to do a YP-wide "cleanup" of some indeterminate form,
what are the layers that would be considered mandatory to cover in
such a cleanup?

  no-brainers would, of course, include:

  * oe-core
  * meta-openembedded

beyond that, what else? i would think:

  * meta-virtualization
  * meta-java
  * meta-security
  * ... more? ...

and there are the vendor layers:

  * meta-intel
  * meta-freescale
  * meta-qcom
  * meta-boundary

where can one stop?

rday
