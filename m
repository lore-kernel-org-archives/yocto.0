Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3950.1615456442211795639
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 01:54:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C1E1038C058A
	for <yocto@yoctoproject.org>; Thu, 11 Mar 2021 09:54:00 +0000 (UTC)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4Dx45y6JJ8z5tlD;
	Thu, 11 Mar 2021 10:53:58 +0100 (CET)
Date: Thu, 11 Mar 2021 10:53:57 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] how often would one use "VAR_someoverride_append = ..."?
Message-ID: <20210311095357.nfybcfepxpovzgfs@qschulz>
References: <fd294e8a-cc9e-d9f-33d9-cc30f27ff0@crashcourse.ca>
 <20210309144900.h5esu2uleixud2va@qschulz>
 <af8b6e8e-70f3-76b7-31eb-ea2227478710@crashcourse.ca>
 <20210310151501.5buv7wppoda2xu6e@qschulz>
 <64489b7-639c-2860-4d7f-88e0d1a192c1@crashcourse.ca>
MIME-Version: 1.0
In-Reply-To: <64489b7-639c-2860-4d7f-88e0d1a192c1@crashcourse.ca>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robert,

On Thu, Mar 11, 2021 at 04:27:46AM -0500, Robert P. J. Day wrote:
> On Wed, 10 Mar 2021, Quentin Schulz wrote:
> ... snip ...
> 
> > https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-kernel/linux/linux-yocto_5.10.bb#n12
> > for example.
> >
> > This is an example of a "valid" use case (not that there are invalid
> > ones) for VAR_foo.
> >
> > Would probably a better example:
> > https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-kernel/linux/linux-yocto_5.10.bb#n50
> >
> > So, you might decide that a machine is so much different than others
> > that KERNEL_FEATURES should be overridden for said machine.
> >
> > Then in a bbappend, one might want to add another feature for this
> > machine, they'll therefore need to use KERNEL_FEATURES_foo_append.
> >
> > I do not have examples at hand of VAR_foo_append except the ones
> > Leon sent in another mail. Which should show how rare it is :)
> 
>   i will ramble for just a bit as i think i settled on a way to
> perhaps explain the difference here to some students.
> 
>   in the overwhelmingly common case, we normally see overrides at the
> end of either assignments or appends:
> 
>   VAR = "snafu"
>   VAR_qemux86 = "more snafu"
>   VAR_append_qemux86 = "qemux86_specific_fubar"
> 
> it seems that the proper way to interpret the above is that, in the
> end, all you would be after is the *final* value of the single
> variable VAR, and all the appending and overriding is leading you in
> that direction -- whatever "VAR" contains after it's all over is all
> you care about.
> 

For that particular example, I'm not entirely sure what the actual value
for VAR would be.

Also not sure what:
VAR = "snafu"
VAR_append = " more"
VAR_qemux86 = "qemu"

would mean for VAR. I don't know exactly when _append is applied to
VAR... after or before the override is applied?

Gut feeling would say before, in which case for non-qemux86 one would
have VAR set to "snafu more" and for qemux86 it'd be "qemu".

I'd anyway use bitbake -e trick to check that, which IMO should really
be given in that section of the docs, to explain how one can debug the
assignment of the variable thanks to the history of the variable :)

>   on the other hand, with the example from the kernel recipe:
> 
>   KBRANCH_qemuarm  ?= "v5.10/standard/arm-versatile-926ejs"
>   KBRANCH_qemuarm64 ?= "v5.10/standard/qemuarm64"
>   KBRANCH_qemumips ?= "v5.10/standard/mti-malta32"
>   KBRANCH_qemuppc  ?= "v5.10/standard/qemuppc"
>   KBRANCH_qemuriscv64  ?= "v5.10/standard/base"
>   KBRANCH_qemux86  ?= "v5.10/standard/base"
>   KBRANCH_qemux86-64 ?= "v5.10/standard/base"
>   KBRANCH_qemumips64 ?= "v5.10/standard/mti-malta64"
> 
> it seems that the right way to interpret the above is that you are,
> simultaneously, creating *multiple* versions of the variable KBRANCH,
> so that if you subsequently see, for example:
> 
>   KBRANCH_qemux86_append = " whatever"
> 
> you're appending to the variable KBRANCH_qemux86 because the ultimate
> result you're after is the *set* of KBRANCH-related variables, perhaps
> because you will actually need them all at once.
> 
>   and given that most situations don't require access to all of those
> variations of that variable, that's why the first approach is by far
> the most common.
> 
>   that might be an over-simplification, but it seems to at least give
> an idea of why that second approach would be used in very particular
> situations.
> 
>   thoughts?
> 

I like to think that:

KBRANCH_qemux86

is for OVERRIDING, while

VAR_append_qemux86

is for CONDITIONAL appending.

In which case,

KBRANCH_qemux86_append

is UNCONDITIONALLY APPENDING to OVERRIDDEN KBRANCH for qemux86 override.

Only _append and _prepend would be a case of CONDITIONAL
appending/prepending. All others are OVERRIDING.

It's a topic I've long been interested in describing with simple words
but couldn't come with anything yet.

Because you kind of need to explain also the difference between:
KBRANCH_qemux86_class-native
and
KBRANCH_class-native_qemux86

which are completely different.

You also have many, many, many different kinds of overrides, from
pn-recipe, to class-target, virtclass-lib32, task-compile, ${PN},
remove, poky, _X.Y.Z when BBVERSIONS is set, etc...

If you omit _append and _prepend, it's simpler to explain that the
overrides happen from right to left. But once you have _append and
_prepend in the mix, it's a bit confusing and hard to explain.

IMO it would warrant some kind of drawings/schemes to explain step by
step what's happening, couldn't think of a proper one though. Thought of
using multiple FIFOs but couldn't come up with something less confusing
that what it already is :/

I'd be very happy to find a way to explain those (IMO) difficult
notions and make it part of the docs.

Quentin
