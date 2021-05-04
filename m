Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3271.1620120084534349804
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 02:21:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0A17338C02B0
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 09:21:23 +0000 (UTC)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4FZDqM00z7z5tlH;
	Tue,  4 May 2021 11:21:18 +0200 (CEST)
Date: Tue, 4 May 2021 11:21:17 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] looking for a bit more info on licensing certain recipe files
Message-ID: <20210504092117.254wkwiprhbogd53@qschulz>
References: <abd63648-b3a8-f7eb-bf5b-ee7cffb07dbf@crashcourse.ca>
MIME-Version: 1.0
In-Reply-To: <abd63648-b3a8-f7eb-bf5b-ee7cffb07dbf@crashcourse.ca>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robert,

On Tue, Apr 27, 2021 at 08:41:25AM -0400, Robert P. J. Day wrote:
> 
>   for the first time, i'm digging around in the docs for how to
> properly license various types of recipes, so a couple simple
> questions to start with, at least so i can make a first pass of
> cleaning up some content in front of me.
> 
>   as we established recently, packagegroup files need no licensing,
> the obvious observation being that they represent the collection of
> licenses that comprise them. however, i notice that the
> packagegroup.bbclass file does indeed define a default license:
> 
>   LICENSE ?= "MIT"
> 
> so not only does a packagegroup have a default (MIT) license, but it's
> conditional suggesting one could give it a different license. what
> other licenses would make sense for a packagegroup? I'm sticking with
> the default that packagegroup recipe files need no LICENSE assignment,
> but now i'm curious as to what other options there are (or perhaps
> that that default assignment in packagegroup.bbclass is obsolete).
> 

Wild guess: all packages need a license. MIT is quite permissive so safe
as a default?

>   the same sort of question can be asked about image files, including
> the generic OE core-image*.bb recipe files. of all those current
> core-image files:
> 
>   core-image-base.bb
>   core-image-minimal.bb
>   core-image-minimal-dev.bb
>   core-image-minimal-initramfs.bb
>   core-image-minimal-mtdutils.bb
>   core-image-tiny-initramfs.bb
> 
> fail into two camps.
> 
>   the first sets a license, then inherits core-image:
> 
>     LICENSE = "MIT"
>     inherit core-image
> 
> the second type simply "require"s one of the other recipe files so it
> has no need to set its own license, as in core-image-minimal-dev.bb:
> 
>     require core-image-minimal.bb
> 
> similar to packagegroups, does a core-image recipe really need a
> separate LICENSE setting, or could that be added to core-image.bbclass
> to centralize it (if it's even needed at all)?
> 

Don't know about this one but I guess it's some rest of the original
implementation where I guess everything needed a LICENSE?

I can only guess, but maybe this'll start a discussion :)

>   finally, WRT .bbappend files, the original recipes will have their
> own licenses and if the .bbappend file is doing nothing but adding
> some configuration (you know, PACKAGECONFIG, EXTRA_OEMAKE, that sort
> of thing), then there should be no need for licensing in the bbappend
> file. does all this sound reasonable so far?
> 

I wouldn't expect any bbappend to modify a package/recipe license
without changing the sources (version bump). But not much experience
with that, so might be a valid use case?

Cheers,
Quentin
