Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.6382.1624535420242542141
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 04:50:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8398B38C058A
	for <yocto@yoctoproject.org>; Thu, 24 Jun 2021 11:50:19 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:55974 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lwNsC-0075f9-BB
	for yocto@yoctoproject.org; Thu, 24 Jun 2021 07:50:18 -0400
Date: Thu, 24 Jun 2021 07:50:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: what's the state of things with pushing the bounds on ASSUME_PROVIDED?
Message-ID: <f5e52a14-95f1-5965-a71e-cd2a38fbd7ab@crashcourse.ca>
MIME-Version: 1.0
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


  i asked about this once upon a time, so i thought i'd follow up ...
given the fairly stable state of recent linux distros, is there any
standard for taking advantage of what *should* be robust native tools
rather than building them? (i'm ignoring taking advantage of sstate
and building SDKs and other clever speedups for now.)

  from scratch, i did a wind river (LINCD) build of
wrlinux-image-small (and i assume it would be much the same under
current oe-core), and i notice that numerous native tools were
compiled, including such standards as cmake, curl, elfutils ... the
list goes on and on.

  so other than the tools that are *required* to be installed, if i
mention that i am currently running ubuntu 20.04, is there any
indication as to which tools i'm relatively safe to take advantage
using ASSUME_PROVIDED and HOSTTOOLS? i realize that the versions built
will probably differ from the host versions, but it seems that if
there is an incompatibility, that would be fairly obvious in short
order.

  thoughts?

rday
