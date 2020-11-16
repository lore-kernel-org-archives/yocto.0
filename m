Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.32095.1605517728878625131
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 01:08:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7394738C06CD
	for <yocto@yoctoproject.org>; Mon, 16 Nov 2020 09:08:47 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:41670 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1keaVB-000560-5C
	for yocto@yoctoproject.org; Mon, 16 Nov 2020 04:08:45 -0500
Date: Mon, 16 Nov 2020 04:08:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: is there a way to centralize numerous BBCLASSEXTEND settings?
Message-ID: <414b86dd-4b-dc11-b93c-58e556fa2e7@crashcourse.ca>
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


  related to something i asked a while back, i have a layer in front
of me wherein dozens and dozens of .bbappend files exist for no other
purpose than to contain the single line:

  BBCLASSEXTEND += "nativesdk"

  AFAIK, there is no way to centralize all of that, which would be
delightful. it's daunting to look at such a layer for the first time,
be intimidated by the number of bbappends, only to realize that 80% of
them have a single purpose. personally, i'm tempted to create a new
directory structure, recipes-nativesdk/whatever/, and populate it with
just those bbappend files, just to clean out the other directories.

  is there a way to do something like this cleanly? or would it be
considered poor design?

rday
x
