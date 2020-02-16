Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.11433.1581857018167402536
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 04:43:38 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E8C8E0085D; Sun, 16 Feb 2020 04:43:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AAD7E007D4
	for <yocto@yoctoproject.org>; Sun, 16 Feb 2020 04:43:37 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:60064 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j3JGq-001w26-7Q; Sun, 16 Feb 2020 07:43:37 -0500
Date: Sun, 16 Feb 2020 07:43:31 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] [PATCH] dev-manual: phrase should read "inherit packagegroup"
In-Reply-To: <cc93a0cda6814b41b6c00792d5cdafa8@XBOX03.axis.com>
Message-ID: <alpine.LFD.2.21.2002160743080.2279870@localhost.localdomain>
References: <alpine.LFD.2.21.2002141003040.2882208@localhost.localdomain> <cc93a0cda6814b41b6c00792d5cdafa8@XBOX03.axis.com>
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

On Sun, 16 Feb 2020, Peter Kjellerstedt wrote:

> Wrong mailing list. Changes to (and discussions about) the
> documentation should go to docs@lists.yoctoproject.org since the end
> of January.

  ah, i was unaware of that list, my apologies.

rday
