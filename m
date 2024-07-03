Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DFFC30653
	for <webhook@archiver.kernel.org>; Wed,  3 Jul 2024 07:56:44 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.45388.1719993403237873367
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jul 2024 00:56:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=JDq4YOVh;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D3FFAFF806;
	Wed,  3 Jul 2024 07:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1719993401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y/tunp9hoDlZJwZvES4FP9srM10lkIIuY9vU195a6iQ=;
	b=JDq4YOVhgu29a+YaLnGmwYsLQLOZ51oXbKC7136X7uh2LOzYINq5B1kQW3o1s1GewYsbng
	RbLN+n3p79UV6I7utt85f2ZHkcx9n1cqgJ9dpFHTEQuJaYCUrfoBeoupIio1+O35/JHEC4
	Nv5MJ2wmUk1lmlvQJkWFeYoALZUiQbUApboWvmaa0JVxAvvo0ukTlYGwioOg3GKcC3ODT8
	AmTJZP8/FJEx0cymj4jm3dtlzzGR/9ov98qiTuxMQvOOHKJpMYTBOMThtwOBmJvZhwpr0e
	hEgymkUZlFim5542zUcUmTUZONbLJiBpvR4HXIpBVLFZfkq1pKOjgYHdFLURdw==
Date: Wed, 3 Jul 2024 09:56:40 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
Cc: christopher.weronski@protonmail.com
Subject: Re: [yocto] Fw: Inquiry and Proposal: Method to Identify Package
 Containing a Specific Binary
Message-ID: <20240703075640fbbe4fcc@mail.local>
References: <xhZK8E4f1CnnMzyvih8DWjZYUqf7fpE_8KolmZp0UKSabooljodh4TxTDefDuDZ09uBEhbx_4mlIEyr3y_c6zYZqL39W5d9w_vhIb5aGrQs=@protonmail.com>
 <mQZDRmo5uaTC98_QPOomYfc7OvVAENC3YX9gFT4h4LPL3wuQMwrQ6533-hYbjM77iHRuQpZLgbI8w4bNNRu33O7nqlSQ0AnMLEnCjnEnjIs=@protonmail.com>
 <CAMKF1spqJBWBqAZpFVY9e8u0oBRJKJ0Jmy_4KobMfCpstOriXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMKF1spqJBWBqAZpFVY9e8u0oBRJKJ0Jmy_4KobMfCpstOriXw@mail.gmail.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jul 2024 07:56:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63433

On 03/07/2024 00:39:15-0700, Khem Raj wrote:
> on build system
> 
> oe-pkgdata-util find-path "*/sfdisk"
> 
> or something like that might be worth exploring

But this only works when the package has been built which will not be
the case until you know which package to build.

> 
> On Tue, Jul 2, 2024 at 11:03 PM Chris via lists.yoctoproject.org
> <christopher.weronski=protonmail.com@lists.yoctoproject.org> wrote:
> >
> >
> >
> > Sent from Proton Mail Android
> >
> >
> > -------- Original Message --------
> > On 7/3/24 07:57, Chris <christopher.weronski@protonmail.com> wrote:
> >
> > >  Dear Yocto Community,
> > >
> > >  I am reaching out to inquire whether there currently exists a method within the Yocto Project to identify which package contains a specific binary. Recently, I encountered a situation where I needed the sfdisk utility. Initially, I installed the util-linux package, assuming it included sfdisk. However, I later discovered that I needed to install util-linux-sfdisk to obtain the utility, after searching the mailing list archives. A similar situation occurred when searching for the package that contained the mkfs.ext4 utility. Eventually I discovered it was the e2fsprogs package, however I feel searching could be improved.
> > >
> > >  If there is no existing method to easily determine which package provides a specific binary, I would like to propose the development of such a tool. This tool would greatly assist in adding dependencies to recipes, making the process less cumbersome and reducing the likelihood of similar issues.
> > >
> > >  Additionally, if creating such a tool is not feasible, I suggest adding a "Provides" section to the recipe pages on the OpenEmbedded Layer Index (e.g., https://layers.openembedded.org/layerindex/recipe/XYZ). This section would list the binaries that each package installs, helping users quickly ascertain whether a given binary is included in a package.
> > >
> > >  I believe these enhancements would significantly improve the efficiency of the Yocto Project for all users. I welcome any feedback or discussion on this matter and look forward to your thoughts.
> > >
> > >  Thank you for your time and consideration.
> > >
> > >  Best regards,
> > >  Chris
> > >  Sent from Proton Mail Android
> >
> > 
> >

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63432): https://lists.yoctoproject.org/g/yocto/message/63432
> Mute This Topic: https://lists.yoctoproject.org/mt/107015160/3617179
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

