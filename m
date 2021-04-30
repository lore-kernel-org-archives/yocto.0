Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9286.1619776175703399954
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Apr 2021 02:49:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 35E3A38C1290
	for <yocto@yoctoproject.org>; Fri, 30 Apr 2021 09:49:34 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:48244 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lcPm9-0002gH-7F
	for yocto@yoctoproject.org; Fri, 30 Apr 2021 05:49:32 -0400
Date: Fri, 30 Apr 2021 05:49:29 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: any compelling reason to use SDK rather than eSDK?
Message-ID: <e6a4527-77e4-9caf-b2a7-a81dd959c08a@crashcourse.ca>
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


  colleague wants to get into working with SDKs, and as i'm just
diving into the intricacies of that myself, i'm not sure how to
answser the question: "is there any reason to use the regular SDK as
opposed to the extensible SDK?"

  superficially, it would seem that the eSDK has nothing but benefits,
so other than perhaps needing more resources, is there any reason to
use the regular SDK and forego the benefits of eSDK?

rday
