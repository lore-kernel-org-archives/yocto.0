Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.21094.1581474802207426481
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 18:33:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 140.211.169.56, mailfrom: denis@denix.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94BD8E01382; Tue, 11 Feb 2020 18:33:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58F96E00571
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 18:33:20 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 9CD2340A41;
	Wed, 12 Feb 2020 02:33:19 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sw8tuXU4EWZg; Wed, 12 Feb 2020 02:33:19 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 82F5C409E7;
	Wed, 12 Feb 2020 02:33:18 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id CBE0B1743FB; Tue, 11 Feb 2020 21:33:17 -0500 (EST)
Date: Tue, 11 Feb 2020 21:33:17 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] how to remove a package from image
Message-ID: <20200212023317.GV4735@denix.org>
References: <CAK4PFCX2OfGLaDwMVxraim6mp35WjUbY_wVb45EZxV8YFF3QXA@mail.gmail.com>
 <CANNYZj8pMsUepCAa=+S89mpxCSf=4JPO86ek_gA01RWZ8a5hyQ@mail.gmail.com>
 <CAK4PFCXVMVOtHAEuxK5yexUFTKTZ+1naFJR-HYCyvAC-085KrQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK4PFCXVMVOtHAEuxK5yexUFTKTZ+1naFJR-HYCyvAC-085KrQ@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 11, 2020 at 06:50:09PM -0500, Kent Dorfman wrote:
> was able to modify the vendor's machine/inc file to remove the
> offending package.
> Since the whole tree is in git now, I suppose that's OK, but I do wish
> yocto had better tools for managing inclusions and introspection into
> what is in an image and at what level it's defined.

Images are supposed to be all custom. It means if you cannot easily use one of 
the existing images, you create your own. There are ways to bbappend an 
existing image and mangle its content, but it's usually not worth the trouble 
when you can simply create your own.

-- 
Denys


> On 2/11/20, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> > You need to modify the image recipe so that those packagegroups are not
> > pulled in. If you cannot do that because it's in a layer controlled by
> > someone else etc, then make a new image recipe, and build that image
> > instead.
> >
> > Alex
> >
> > On Tue, 11 Feb 2020 at 18:05, Kent Dorfman <kent.dorfman766@gmail.com>
> > wrote:
> >
> >> My vendor finally realized that I needed a full yocto release and not
> >> the eSDK.  Anyway, I can build their image, but when I modify the
> >> kernel to remove CAN drivers I get the errors that
> >>
> >> packagegroup-can-support
> >> packagegroup-ow-support
> >>
> >> are required.
> >>
> >> What is the "yocto way"  to remove those packages and dependencies
> >> from the build?
> >> 
> >>
> >

> 

