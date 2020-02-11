Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.11006.1581432189402292612
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 06:43:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F4230E01673; Tue, 11 Feb 2020 06:43:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC236E01626
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:43:06 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:55564 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j1Wkg-00FI2K-HV; Tue, 11 Feb 2020 09:43:06 -0500
Date: Tue, 11 Feb 2020 09:43:00 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Ross Burton <ross@burtonini.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] reviving an old suggestion about YP docs markup
In-Reply-To: <CAAnfSTtbBpgHCeDYnSYjYi+NPqTr_pXFz6_83QZ94YgcwLrR+Q@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2002110937170.42658@localhost.localdomain>
References: <alpine.LFD.2.21.2002110549500.33214@localhost.localdomain> <CAAnfSTvunnEShgi4_jn9vxVbvmjO0FfnbW-9exww9XQd6PE9Lw@mail.gmail.com> <alpine.LFD.2.21.2002110932160.42474@localhost.localdomain>
 <CAAnfSTtbBpgHCeDYnSYjYi+NPqTr_pXFz6_83QZ94YgcwLrR+Q@mail.gmail.com>
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

On Tue, 11 Feb 2020, Ross Burton wrote:

> My problem with <firstterm> is that you need to keep on reviewing to
> verify it is the first usage.  Better to post-process that, surely.

  but that's not the way it's normally used ... <firstterm> doesn't
necessarily mean the physically first time a term is used, it's more
typically used to identify where the term is formally introduced and
explained to the reader.

  for example, there's nothing wrong with using, say, "BSP layer"
early in a manual as part of a list of YP components or something, but
<firstterm> would be used when the manual finally got around to
explaining the term. that's why <firstterm> is frequently used for
index generation; because that's where the reader should go for the
*explanation* of the term, not just its first physical occurrence.

rday
