Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1757.1581788183886233617
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2020 09:36:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9622E0172D; Sat, 15 Feb 2020 09:36:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB44BE0172B
	for <yocto@yoctoproject.org>; Sat, 15 Feb 2020 09:36:21 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:56386 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j31Ma-000MtO-1m; Sat, 15 Feb 2020 12:36:20 -0500
Date: Sat, 15 Feb 2020 12:36:17 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] does git SRC_URI really *require" a SRCREV setting?
In-Reply-To: <61336b69-5456-3951-4b52-a6d471049612@ibeeto.com>
Message-ID: <alpine.LFD.2.21.2002151235240.1991540@localhost.localdomain>
References: <alpine.LFD.2.21.2002150129460.2926947@localhost.localdomain> <61336b69-5456-3951-4b52-a6d471049612@ibeeto.com>
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

On Sat, 15 Feb 2020, Rudolf J Streif wrote:

> The wording might need improvement but both of your examples
> actually do provide SRC_REV but in the inline form with SRC_URI
> (rev/tag).
>
> The documentation should probably say something like SRC_REV needs
> to be provided but it can either be done by setting the variable
> explicitly or by using the rev/tag option with SRC_URI.

  exactly, that's where i was going ... extending that explanation
with a reference to the "rev" and "tag" options.

rday
