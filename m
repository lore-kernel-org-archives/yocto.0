Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.34409.1590424691779762237
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 09:38:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F699E01C17; Mon, 25 May 2020 09:38:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FD8DE01C15
	for <yocto@yoctoproject.org>; Mon, 25 May 2020 09:38:09 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:54096 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jdG76-009ER4-7p
	for yocto@yoctoproject.org; Mon, 25 May 2020 12:38:08 -0400
Date: Mon, 25 May 2020 12:38:05 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how to un-blacklist a blacklisted recipe?
Message-ID: <alpine.LFD.2.21.2005251229340.1134347@localhost.localdomain>
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


  asking what is almost certainly a silly question, but as i'm poring
over the wind river LTS 19 (aka "zeus") developer's guide, i know that
WR adds a feature for un-blacklisting blacklisted recipes via the
PNWHITELIST variable, but the guide says something quite different in
that it suggests that one can clear a blacklist from a recipe by
setting the blacklist message to the empty string, as in:

  PNBLACKLIST[recipe] = ""

https://docs.windriver.com/bundle/Wind_River_Linux_Platform_Developers_Guide_LTS_19_tki1589820771450/page/inj1480988608162.html

  um, wut?

  oddly, there is no mention of WR's PNWHITELIST feature on that page,
so i assumed that 1) someone forgot to update the guide to mention it,
and 2) setting the message to the empty string might be the standard
YP way to do it, but i'm pretty sure that won't work.

  is there a way to un-blacklist a blacklisted recipe using standard
YP? the reference manual entry for PNBLACKLIST doesn't suggest so:

https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-PNBLACKLIST

  thoughts?

rday



