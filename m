Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4732.1580763937493412739
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 13:05:37 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 140.211.169.56, mailfrom: denis@denix.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01BD4E0165E; Mon,  3 Feb 2020 13:05:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0CA2E00726
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2020 13:05:35 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id B03F440B37;
	Mon,  3 Feb 2020 21:05:34 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uChKF5BavrGm; Mon,  3 Feb 2020 21:05:34 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 62B7740A3F;
	Mon,  3 Feb 2020 21:05:30 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id ADD471743D2; Mon,  3 Feb 2020 16:05:29 -0500 (EST)
Date: Mon, 3 Feb 2020 16:05:29 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: akuster <akuster808@gmail.com>
Cc: Philip Balister <philip@balister.org>, Adrian Bunk <bunk@stusta.de>,
	Stephen Jolley <sjolley.yp.pm@gmail.com>, yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Project Status WW04'20
Message-ID: <20200203210529.GS4735@denix.org>
References: <086201d5d5f4$307b2150$917163f0$@gmail.com>
 <20200202132840.GA6805@localhost>
 <e951c71c-1fa3-faa7-80af-27c965210161@balister.org>
 <5b2ce739-c2f3-acad-24c2-797a4b63e6c4@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5b2ce739-c2f3-acad-24c2-797a4b63e6c4@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 03, 2020 at 08:16:47AM -0800, akuster wrote:
> 
> 
> On 2/2/20 10:18 AM, Philip Balister wrote:
> > On 2/2/20 2:28 PM, Adrian Bunk wrote:
> >> On Tue, Jan 28, 2020 at 08:01:23AM -0800, Stephen Jolley wrote:
> >>> ...
> >>> *	We have created a "documentation" list and a "licensing" list on the
> >>> yocto project mailing list infrastructure. We believe these topics would
> >>> benefit from dedicated discussions, the people involved usually aren't
> >>> interested in bulk email as would be found on other lists. The new lists can
> >>> be found at:  <https://lists.yoctoproject.org/g/licensing/join>
> >>> https://lists.yoctoproject.org/g/licensing/join and
> >>> <https://lists.yoctoproject.org/g/docs/join>
> >>> https://lists.yoctoproject.org/g/docs/join 
> >>> ...
> >> Would it be possible to also create a yocto-devel or yocto-core
> >> mailing list for discussing development of Yocto?
> >>
> >> Currently the yocto list is a mixture of core development list and forum 
> >> for newbie user questions, with no easy way to have them separate.
> > We have openembedded-architecture for this.
> >
> > http://lists.openembedded.org/mailman/listinfo/openembedded-architecture
> 
> Also openembedded-core

Also openembedded-devel

> > Philip
> >
> >> Thanks
> >> Adrian
> >>
> >>
> >>
> >>
> >>
> >> 
> 

> 

