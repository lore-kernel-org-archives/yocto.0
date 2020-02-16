Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.14938.1581874684101996672
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 09:38:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 140.211.169.56, mailfrom: denis@denix.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF2E4E01731; Sun, 16 Feb 2020 09:38:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [64.68.198.64 listed in list.dnswl.org]
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3BA3E0172E
	for <yocto@yoctoproject.org>; Sun, 16 Feb 2020 09:38:02 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id CF10940A41;
	Sun, 16 Feb 2020 17:38:01 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dcKVapPbWAPo; Sun, 16 Feb 2020 17:38:01 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id AB6D34006B;
	Sun, 16 Feb 2020 17:37:59 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 1505B174407; Sun, 16 Feb 2020 12:37:59 -0500 (EST)
Date: Sun, 16 Feb 2020 12:37:59 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
Cc: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] [PATCH] dev-manual: phrase should read "inherit packagegroup"
Message-ID: <20200216173759.GZ4735@denix.org>
References: <alpine.LFD.2.21.2002141003040.2882208@localhost.localdomain>
 <cc93a0cda6814b41b6c00792d5cdafa8@XBOX03.axis.com>
 <alpine.LFD.2.21.2002160743080.2279870@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2002160743080.2279870@localhost.localdomain>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 16, 2020 at 07:43:31AM -0500, rpjday@crashcourse.ca wrote:
> On Sun, 16 Feb 2020, Peter Kjellerstedt wrote:
> 
> > Wrong mailing list. Changes to (and discussions about) the
> > documentation should go to docs@lists.yoctoproject.org since the end
> > of January.
> 
>   ah, i was unaware of that list, my apologies.

https://lists.yoctoproject.org/g/yocto/message/48362
https://lists.yoctoproject.org/g/yocto/message/48392
https://lists.yoctoproject.org/g/yocto/message/48439


> rday

> 

