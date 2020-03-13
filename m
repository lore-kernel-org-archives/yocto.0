Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.19117.1584117620149727686
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Mar 2020 09:40:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 140.211.169.56, mailfrom: denis@denix.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81AE8E01841; Fri, 13 Mar 2020 09:40:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [64.68.198.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85B4E0183B
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2020 09:40:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 3000440C2B;
	Fri, 13 Mar 2020 16:40:18 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mpaFANPE4X4w; Fri, 13 Mar 2020 16:40:18 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id C948340C2A;
	Fri, 13 Mar 2020 16:40:15 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 04D64174456; Fri, 13 Mar 2020 12:40:15 -0400 (EDT)
Date: Fri, 13 Mar 2020 12:40:14 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Subject: Re: [yocto] menuconf u-boot
Message-ID: <20200313164014.GN1578@denix.org>
References: <CAA=hcWSGmz-GRFac-UR6AcTRyUYjvf1buRaYQvvCMrr__OuV_g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSGmz-GRFac-UR6AcTRyUYjvf1buRaYQvvCMrr__OuV_g@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

What's u-boot-imx?

It's definitely not in openembedded-core, so there's no reason to cross-post 
there.

If google doesn't help, it's recommended to post such specific questions to 
the corresponding mailing list for the layer this recipe comes from.

If it's not clear where the recipe comes from, Layer Index can help:
https://layers.openembedded.org/

Thanks.

-- 
Denys


On Fri, Mar 13, 2020 at 08:15:17PM +1100, JH wrote:
> Hi,
> 
> I tried to run bitbake -c menuconfig u-boot, it popped up a terminal
> u-boot-imx configuration:
> 
> make: *** No rule make target 'menuconfig'. Stop.
> Command failed.
> Press any key to continue...
> 
> How can I  run menuconfig u-boot?
> 
> Thank you.
> 
> Kind regards,
> 
> - jh

> 

