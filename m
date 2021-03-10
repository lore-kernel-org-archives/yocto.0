Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.10042.1615389306104691718
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 07:15:07 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C853338C046F
	for <yocto@yoctoproject.org>; Wed, 10 Mar 2021 15:15:05 +0000 (UTC)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4DwbGv5Y21z5tlD;
	Wed, 10 Mar 2021 16:15:02 +0100 (CET)
Date: Wed, 10 Mar 2021 16:15:01 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] how often would one use "VAR_someoverride_append = ..."?
Message-ID: <20210310151501.5buv7wppoda2xu6e@qschulz>
References: <fd294e8a-cc9e-d9f-33d9-cc30f27ff0@crashcourse.ca>
 <20210309144900.h5esu2uleixud2va@qschulz>
 <af8b6e8e-70f3-76b7-31eb-ea2227478710@crashcourse.ca>
MIME-Version: 1.0
In-Reply-To: <af8b6e8e-70f3-76b7-31eb-ea2227478710@crashcourse.ca>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robert,

On Wed, Mar 10, 2021 at 06:16:44AM -0500, Robert P. J. Day wrote:
> On Tue, 9 Mar 2021, Quentin Schulz wrote:
> 
> > Hi Robert,
> >
> > On Tue, Mar 09, 2021 at 09:39:14AM -0500, Robert P. J. Day wrote:
> > >
> > >   bitbake manual, chapter 3, examples of conditional syntax:
> > >
> > > https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-metadata.html#examples
> > >
> > > correctly distinguishes between A_foo_append and A_append_foo, but how
> > > often would one use that first form, anyway?
> > >
> > >   most uses of conditional appending are either just straight
> > > appending:
> > >
> > >   VAR_append = "fubar"
> > >
> > > or used with an override thusly:
> > >
> > >   VAR_append_x86 = "snafu"
> > >
> > > is there an actual practical usage of, say:
> > >
> > >   VAR_x86_append = "huh"
> > >
> > > i can't remember the last time i saw something of that form and,
> > > while it might be worth explaining, it seems that the reader might be
> > > warned that that form is almost certainly *not* what they want.
> > >
> >
> > Yes, in 99% of the cases, you want VAR_append_foo and not VAR_foo_append.
> >
> > VAR_foo_append makes sense when you want to append to VAR_foo which
> > is a way to override completely VAR for builds matching the foo
> > override. This happens in kernel-yocto recipes where branches and
> > defconfigs are different per machine for example.
> 
>   can you point at an actual example of that? i took a look and all
> the yocto kernel recipes i see use the first form. am i just looking
> in the wrong place?
> 

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-kernel/linux/linux-yocto_5.10.bb#n12
for example.

This is an example of a "valid" use case (not that there are invalid
ones) for VAR_foo.

Would probably a better example:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-kernel/linux/linux-yocto_5.10.bb#n50

So, you might decide that a machine is so much different than others
that KERNEL_FEATURES should be overridden for said machine.

Then in a bbappend, one might want to add another feature for this
machine, they'll therefore need to use KERNEL_FEATURES_foo_append.

I do not have examples at hand of VAR_foo_append except the ones Leon
sent in another mail. Which should show how rare it is :)

Cheers,
Quentin
