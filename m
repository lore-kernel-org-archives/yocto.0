Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.4124.1618475099095258889
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Apr 2021 01:24:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A507738C0556
	for <yocto@yoctoproject.org>; Thu, 15 Apr 2021 08:24:57 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:51624 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lWxJ1-00HDZf-Gj
	for yocto@yoctoproject.org; Thu, 15 Apr 2021 04:24:56 -0400
Date: Thu, 15 Apr 2021 04:24:52 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: what to include in a "hardware bringup image"?
Message-ID: <60a75986-68f2-94c7-592-99dbb3891e3@crashcourse.ca>
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


  for a current project (and subsequent projects), i want to define a
hardware bringup image; that is, a really basic image chock-full of
low-level utilities for debugging initial board bringup. this means
precious little unnecessary userspace crud that has no value in that
context. (at the moment, the target is aarch64 but, naturally, the
ideal image would be maximally applicable no matter the target.)

  i'm thinking of recipes that allow probing/configuration of memory
and busses and that sort of thing. off the top of my head:

  * pciutils
  * usbutils
  * libgpiod
  * phytool (or other MDIO probe/debug tools)
  * devmem2
  * spidev-test/spitools
  * i2c-tools

the list can go on and on, and i just ran across this which i had
never seen before:

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/c-periphery/c-periphery_2.3.1.bb?h=master

  suggestions? i suspect numerous folks on this list have already done
something like this.

rday
