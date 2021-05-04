Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3619.1620123441932013663
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 03:17:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6A64B38C069E
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 10:17:21 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:58062 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lds7E-0008Cw-On; Tue, 04 May 2021 06:17:20 -0400
Date: Tue, 4 May 2021 06:17:16 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] looking for a bit more info on licensing certain recipe files
In-Reply-To: <20210504100816.pxqnhituezxejcfj@qschulz>
Message-ID: <a3a1d942-398d-2096-136d-b834f32e6a70@crashcourse.ca>
References: <abd63648-b3a8-f7eb-bf5b-ee7cffb07dbf@crashcourse.ca> <20210504092117.254wkwiprhbogd53@qschulz> <e3c99c3-4ddd-964e-acf9-aaa49c11e38e@crashcourse.ca> <20210504100816.pxqnhituezxejcfj@qschulz>
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

> On Tue, May 04, 2021 at 06:00:10AM -0400, Robert P. J. Day wrote:
> > On Tue, 4 May 2021, Quentin Schulz wrote:
> >
> > > Hi Robert,
> > >
> > > On Tue, Apr 27, 2021 at 08:41:25AM -0400, Robert P. J. Day wrote:
> > > >
> > > >   for the first time, i'm digging around in the docs for how to
> > > > properly license various types of recipes, so a couple simple
> > > > questions to start with, at least so i can make a first pass of
> > > > cleaning up some content in front of me.
> > > >
> > > >   as we established recently, packagegroup files need no
> > > > licensing, the obvious observation being that they represent the
> > > > collection of licenses that comprise them. however, i notice that
> > > > the packagegroup.bbclass file does indeed define a default
> > > > license:
> > > >
> > > >   LICENSE ?= "MIT"
> > > >
> > > > so not only does a packagegroup have a default (MIT) license, but
> > > > it's conditional suggesting one could give it a different license.
> > > > what other licenses would make sense for a packagegroup? I'm
> > > > sticking with the default that packagegroup recipe files need no
> > > > LICENSE assignment, but now i'm curious as to what other options
> > > > there are (or perhaps that that default assignment in
> > > > packagegroup.bbclass is obsolete).
> > >
> > > Wild guess: all packages need a license. MIT is quite permissive so
> > > safe as a default?
> >
> >   superficially makes sense, except that a packagegroup does not
> > really define a "package". perhaps all *recipe* files need a license
>
> They do define packages. Empty packages, but still packages. Look into
> deploy/ipk and search for *packagegroup*, you'll see some.
>
> It's probably a requirement/feature of package managers, so that you
> install one package which has a dependency on many others, and the
> latter are just pulled in by the package manager directly.
>
> > but, again, it's not clear how a packagegroup license should percolate
> > down to the packages it contains. or how things would percolate up.
> >
>
> It does not apply to packages it RDEPENDS on, it applies to the packages
> created by the packagegroup recipe, each of them then RDEPENDS on other
> packages (with potentially (and often) licensed differently).

  ah, now it makes sense, thanks.

rday
