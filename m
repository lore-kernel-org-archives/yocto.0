Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.49181.1612255119393259166
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 00:38:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E331438C0409
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2021 08:38:37 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:50402 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1l6rCm-0005cI-7c
	for yocto@yoctoproject.org; Tue, 02 Feb 2021 03:38:36 -0500
Date: Tue, 2 Feb 2021 03:38:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: using SYSTEMD_SERVICE to disable a systemd service?
Message-ID: <60ccec70-495e-7de3-6ee3-7a8319a87ec8@crashcourse.ca>
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


  while the "standard" way to disable a systemd service from
auto-booting is SYSTEMD_AUTO_ENABLE, i just ran across a number of
examples in an existing project that do this:

  SYSTEMD_SERVICE_${PN} = ""

ouch. that's a new one on me and, while i'm prepared to believe it
works, it seems like grotesque overkill and mis-application of that
variable.

  am i within my rights to suggest that that's not really the way to
do it? or is that considered an acceptable (albeit weird) alternative?

rday
