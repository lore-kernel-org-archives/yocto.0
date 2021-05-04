Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3540.1620122900458518958
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 03:08:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5A45B38C069E
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 10:08:19 +0000 (UTC)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4FZFsY6RHcz5tlC;
	Tue,  4 May 2021 12:08:17 +0200 (CEST)
Date: Tue, 4 May 2021 12:08:16 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] looking for a bit more info on licensing certain recipe files
Message-ID: <20210504100816.pxqnhituezxejcfj@qschulz>
References: <abd63648-b3a8-f7eb-bf5b-ee7cffb07dbf@crashcourse.ca>
 <20210504092117.254wkwiprhbogd53@qschulz>
 <e3c99c3-4ddd-964e-acf9-aaa49c11e38e@crashcourse.ca>
MIME-Version: 1.0
In-Reply-To: <e3c99c3-4ddd-964e-acf9-aaa49c11e38e@crashcourse.ca>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 04, 2021 at 06:00:10AM -0400, Robert P. J. Day wrote:
> On Tue, 4 May 2021, Quentin Schulz wrote:
> 
> > Hi Robert,
> >
> > On Tue, Apr 27, 2021 at 08:41:25AM -0400, Robert P. J. Day wrote:
> > >
> > >   for the first time, i'm digging around in the docs for how to
> > > properly license various types of recipes, so a couple simple
> > > questions to start with, at least so i can make a first pass of
> > > cleaning up some content in front of me.
> > >
> > >   as we established recently, packagegroup files need no
> > > licensing, the obvious observation being that they represent the
> > > collection of licenses that comprise them. however, i notice that
> > > the packagegroup.bbclass file does indeed define a default
> > > license:
> > >
> > >   LICENSE ?= "MIT"
> > >
> > > so not only does a packagegroup have a default (MIT) license, but
> > > it's conditional suggesting one could give it a different license.
> > > what other licenses would make sense for a packagegroup? I'm
> > > sticking with the default that packagegroup recipe files need no
> > > LICENSE assignment, but now i'm curious as to what other options
> > > there are (or perhaps that that default assignment in
> > > packagegroup.bbclass is obsolete).
> >
> > Wild guess: all packages need a license. MIT is quite permissive so
> > safe as a default?
> 
>   superficially makes sense, except that a packagegroup does not
> really define a "package". perhaps all *recipe* files need a license

They do define packages. Empty packages, but still packages. Look into
deploy/ipk and search for *packagegroup*, you'll see some.

It's probably a requirement/feature of package managers, so that you
install one package which has a dependency on many others, and the
latter are just pulled in by the package manager directly.

> but, again, it's not clear how a packagegroup license should percolate
> down to the packages it contains. or how things would percolate up.
> 

It does not apply to packages it RDEPENDS on, it applies to the packages
created by the packagegroup recipe, each of them then RDEPENDS on other
packages (with potentially (and often) licensed differently).

Cheers,
Quentin
