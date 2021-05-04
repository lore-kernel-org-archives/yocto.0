Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3495.1620122417238347903
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 03:00:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3D12938C069E
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 10:00:16 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:57944 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ldrqg-0005MP-K6; Tue, 04 May 2021 06:00:14 -0400
Date: Tue, 4 May 2021 06:00:10 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] looking for a bit more info on licensing certain recipe files
In-Reply-To: <20210504092117.254wkwiprhbogd53@qschulz>
Message-ID: <e3c99c3-4ddd-964e-acf9-aaa49c11e38e@crashcourse.ca>
References: <abd63648-b3a8-f7eb-bf5b-ee7cffb07dbf@crashcourse.ca> <20210504092117.254wkwiprhbogd53@qschulz>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Tue, 4 May 2021, Quentin Schulz wrote:

> Hi Robert,
>
> On Tue, Apr 27, 2021 at 08:41:25AM -0400, Robert P. J. Day wrote:
> >
> >   for the first time, i'm digging around in the docs for how to
> > properly license various types of recipes, so a couple simple
> > questions to start with, at least so i can make a first pass of
> > cleaning up some content in front of me.
> >
> >   as we established recently, packagegroup files need no
> > licensing, the obvious observation being that they represent the
> > collection of licenses that comprise them. however, i notice that
> > the packagegroup.bbclass file does indeed define a default
> > license:
> >
> >   LICENSE ?= "MIT"
> >
> > so not only does a packagegroup have a default (MIT) license, but
> > it's conditional suggesting one could give it a different license.
> > what other licenses would make sense for a packagegroup? I'm
> > sticking with the default that packagegroup recipe files need no
> > LICENSE assignment, but now i'm curious as to what other options
> > there are (or perhaps that that default assignment in
> > packagegroup.bbclass is obsolete).
>
> Wild guess: all packages need a license. MIT is quite permissive so
> safe as a default?

  superficially makes sense, except that a packagegroup does not
really define a "package". perhaps all *recipe* files need a license
but, again, it's not clear how a packagegroup license should percolate
down to the packages it contains. or how things would percolate up.

  suddenly, i want some coffee.

> >   the same sort of question can be asked about image files,
> > including the generic OE core-image*.bb recipe files. of all those
> > current core-image files:
> >
> >   core-image-base.bb
> >   core-image-minimal.bb
> >   core-image-minimal-dev.bb
> >   core-image-minimal-initramfs.bb
> >   core-image-minimal-mtdutils.bb
> >   core-image-tiny-initramfs.bb
> >
> > fail into two camps.
> >
> >   the first sets a license, then inherits core-image:
> >
> >     LICENSE = "MIT"
> >     inherit core-image
> >
> > the second type simply "require"s one of the other recipe files so it
> > has no need to set its own license, as in core-image-minimal-dev.bb:
> >
> >     require core-image-minimal.bb
> >
> > similar to packagegroups, does a core-image recipe really need a
> > separate LICENSE setting, or could that be added to core-image.bbclass
> > to centralize it (if it's even needed at all)?
> >
>
> Don't know about this one but I guess it's some rest of the original
> implementation where I guess everything needed a LICENSE?
>
> I can only guess, but maybe this'll start a discussion :)
>
> >   finally, WRT .bbappend files, the original recipes will have
> > their own licenses and if the .bbappend file is doing nothing but
> > adding some configuration (you know, PACKAGECONFIG, EXTRA_OEMAKE,
> > that sort of thing), then there should be no need for licensing in
> > the bbappend file. does all this sound reasonable so far?
>
> I wouldn't expect any bbappend to modify a package/recipe license
> without changing the sources (version bump). But not much experience
> with that, so might be a valid use case?

  i'm not *trying* to be overly pedantic (well, yeah, i am :-), but
given the importance of licensing these days, i want to understand how
they work far more than i do at the moment, especially since my new
co-workers are asking me about them.

rday
