Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.712.1593195587310540240
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jun 2020 11:19:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAB98E01D95; Fri, 26 Jun 2020 11:19:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3874E01D92
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2020 11:19:44 -0700 (PDT)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:43156 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1joswx-000jSG-JM
	for yocto@yoctoproject.org; Fri, 26 Jun 2020 14:19:44 -0400
Date: Fri, 26 Jun 2020 14:19:41 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how crippled is ruby support in YP 3.0?
Message-ID: <alpine.LFD.2.21.2006261419350.1554442@localhost.localdomain>
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


  background: trying to get ruby and a number of ruby gems migrated
from "morty" to "zeus", and nothing but grief trying to
compile/install ruby gems.

  plan A: start with standard YP layers all checked out to "zeus", and
add vendor layer -- still similar grief.

  current plan: start from absolute scratch, new project targeting
x86_64, all layers checked out to "zeus", and build for
core-image-minimal (*that* i know i can do).

  then, little by little, add ruby content. has anyone here worked
with ruby and ruby gems extensively and has had to struggle to get
stuff working? as soon as this basic build is done, i'm going to just
add "ruby" to the image, and from there, start adding gems one by
one.

  should i expect this to go smoothly, or should i expect the pain
i've been through for the last couple days?

rday
