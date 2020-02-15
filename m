Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2062.1581788993337051973
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2020 09:49:53 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3007CE0172D; Sat, 15 Feb 2020 09:49:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27481E0172B
	for <yocto@yoctoproject.org>; Sat, 15 Feb 2020 09:49:52 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:56522 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j31Ze-000NxW-BO; Sat, 15 Feb 2020 12:49:51 -0500
Date: Sat, 15 Feb 2020 12:49:48 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Martin Jansa <martin.jansa@gmail.com>
cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, 
    Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] does git SRC_URI really *require" a SRCREV setting?
In-Reply-To: <CA+chaQe5SDQUR0Qi+i4GuT4k-0qDJoEUeZgtAFv3TdNmD+ph7A@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2002151249060.1992521@localhost.localdomain>
References: <alpine.LFD.2.21.2002150129460.2926947@localhost.localdomain> <61336b69-5456-3951-4b52-a6d471049612@ibeeto.com> <CA+chaQdy2=M+HeX93X1c-Ttk-1r6KtBXEFFS62Pkj19UQC_C3g@mail.gmail.com>
 <CA+chaQe5SDQUR0Qi+i4GuT4k-0qDJoEUeZgtAFv3TdNmD+ph7A@mail.gmail.com>
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

On Sat, 15 Feb 2020, Martin Jansa wrote:

> or not.. both were already
> fixedhttp://git.openembedded.org/meta-openembedded/commit/?id=2f6c043c0c99ccf71f9eb9088adbe42972b9d8a0
> http://git.openembedded.org/meta-openembedded/commit/?id=f61d9b3fd32dede5f2ab2aabbf0a8fb9fa75dd98

  whoops, my fault, i was probably on zeus branch for sake of a build,
rather than looking at master. i'll look more carefully next time.

rday
