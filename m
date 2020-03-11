Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.58.1583970933316091049
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 16:55:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 140.211.169.56, mailfrom: denis@denix.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9FF0E01823; Wed, 11 Mar 2020 16:55:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1C1DE017DC
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2020 16:55:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id C573640C1C;
	Wed, 11 Mar 2020 23:55:30 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jS8lmS-3w1TX; Wed, 11 Mar 2020 23:55:30 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id A130240BA3;
	Wed, 11 Mar 2020 23:55:28 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 556F4174456; Wed, 11 Mar 2020 19:55:28 -0400 (EDT)
Date: Wed, 11 Mar 2020 19:55:28 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] Getting kernel patch to work
Message-ID: <20200311235528.GK1578@denix.org>
References: <7f0a414e985c4b86bfefff5eab8c6108@sakuraus.com>
 <1FE10608-8C76-4307-B921-5B3C2DCC4CEE@iki.fi>
 <7983bbc0f42b4b419b32632fcf28f983@sakuraus.com>
MIME-Version: 1.0
In-Reply-To: <7983bbc0f42b4b419b32632fcf28f983@sakuraus.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

${} and not $()

On Wed, Mar 11, 2020 at 11:43:36PM +0000, Greg Wilson-Lindberg wrote:
> Hi Anders,
> 
> Good catch, thanks for seeing that.
> 
> 
> I also realized that I was missing a FILESEXTRAPATHS_prepend. I have tried both:
> 
> FILESEXTRAPATHS_prepend := "$(FILE_DIRNAME)/files:"
> and
> FILESEXTRAPATHS_prepend := "$(THISDIR)/files:"
> 
> In both cases I don't see the expansion (i.e. I see '$(FILE_DIRNAME)/files:' or '$(THISDIR)/files:') in the list of searched directories. I would think that I should see the expanded directory path.
> 
> Here is the net beginning of my .bbappend file:
> 
> # additions to Kernel configuration
> 
> FILESEXTRAPATHS_prepend := "$(FILE_DIRNAME)/files:"
> #FILESEXTRAPATHS_prepend := "$(THISDIR)/files:"
> SRC_URI+= "file://0001-drm-vc4-Keep-the-binner-BO-through-suspend.patch"
> 
> 
> Regards,
> Greg
> 
> 
> ________________________________
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf of Anders Montonen <Anders.Montonen@iki.fi>
> Sent: Tuesday, March 10, 2020 11:07:33 PM
> To: Yocto list discussion
> Subject: Re: [yocto] Getting kernel patch to work
> 
> Hi,
> 
> > On 11 Mar 2020, at 1:57, Greg Wilson-Lindberg <GWilson@sakuraus.com> wrote:
> >
> > SRC_URi += "file://0001-drm-vc4-Keep-the-binner-BO-through-suspend-GWL.patch"
> 
> It looks like you have a typo here, the last letter of SRC_URI isn't capitalized.
> 
> -a
> 

> 

