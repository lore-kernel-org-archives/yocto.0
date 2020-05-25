Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.35893.1590428246239848342
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 10:37:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F431E01C15; Mon, 25 May 2020 10:37:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEC1BE01C15
	for <yocto@yoctoproject.org>; Mon, 25 May 2020 10:37:25 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:55328 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jdH2S-009MNo-QD; Mon, 25 May 2020 13:37:25 -0400
Date: Mon, 25 May 2020 13:37:22 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Martin Jansa <martin.jansa@gmail.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] how to un-blacklist a blacklisted recipe?
In-Reply-To: <CA+chaQcOhHznYMp2WCArqdW4Oj3fVjTFJZWO330jWGJOusGe+A@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2005251335460.1138423@localhost.localdomain>
References: <alpine.LFD.2.21.2005251229340.1134347@localhost.localdomain> <CA+chaQe56NiFV+MFagQiQDBpKwt_YcgNY06zOLn=Ov2is9C1vQ@mail.gmail.com> <alpine.LFD.2.21.2005251321230.1137699@localhost.localdomain>
 <CA+chaQcOhHznYMp2WCArqdW4Oj3fVjTFJZWO330jWGJOusGe+A@mail.gmail.com>
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

On Mon, 25 May 2020, Martin Jansa wrote:

> Yes, in local.conf or distro config, both work fine. Maybe your
> PNBLACKLIST you're trying to unblacklist is using normal assignment
> instead of weak one? See

  i just now determined that that is exactly what is happening --
tried it with nanopb recipe from meta-oe, which contains:

  PNBLACKLIST[nanopb] = "Needs forward porting to use python3"

switched that to weak assignment, all good. does that imply that,
other than in perhaps exceptional circumstances, *all* blacklisting
should use weak assignment?

rday
