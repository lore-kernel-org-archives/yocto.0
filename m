Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.15269.1590334883604865346
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 May 2020 08:41:23 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76917E01C08; Sun, 24 May 2020 08:41:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4175E01C06
	for <yocto@yoctoproject.org>; Sun, 24 May 2020 08:41:22 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:46622 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jcskb-006M4R-1S
	for yocto@yoctoproject.org; Sun, 24 May 2020 11:41:21 -0400
Date: Sun, 24 May 2020 11:41:19 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: can i run an arbitrary x86_64-based image under QEMU?
Message-ID: <alpine.LFD.2.21.2005241138230.24040@localhost.localdomain>
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


  currently poring over wind river docs and in release notes for WR
LTS 19 (equivalent to YP 3.0), one of the notes for RCPL 7 for this
release of WR states:

"New support to deploy a platform project image based on the
intel-x86-64 BSP with the runqemu command. You no longer require a
QEMU-based BSP to deploy and test your x86-based image."

  first, am i interpreting that correctly that i can build an x86_64
image for actual hardware, and run it under QEMU?

  and if so, is that a WR thing, or if available under YP, a pointer
to the appropriate doc would be sufficient.  thank you kindly.

rday
