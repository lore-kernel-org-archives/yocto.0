Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
 by mx.groups.io with SMTP id smtpd.web12.7519.1575386941321131090
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 07:29:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g1zOa/aR;
 spf=pass (domain: gmail.com, ip: 209.85.208.67, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f67.google.com with SMTP id v16so3506842edy.6
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 07:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hk9tgyKKacABBlvFj8VL9eCVnzImaceN9kH/NM27lRY=;
        b=g1zOa/aRGCd1u+4V2mqjMRkcgekzF5X4FGgnkEY6vUqyXHnfTbswOaCO09nfUxaa7c
         3K6uBDTxQ6POU64ViHcb7HllOKwu/soV9bxLl8XMH1jHRvLVce5NwhwSOcqc72KUoIiZ
         Qa6c+To2bI9BQ9zkNWgp5uhiP6lsmxQ0d6uXlyTqiqM1QWhB8RnN+hl0bl8NgIqQoqGV
         K9mPLKQsj/9bNkyw9oj7zBOep7ucN8MRXtywiDtaXAmsinsCjmWyBY7LUl2QBDMtEDeV
         flQEXLdxZSxC3xzmAJ4VKFH0IRDqU5UsXk1JCLGqMlOjc0DmMEpgG4vivfajvGSC6Q3P
         h7EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hk9tgyKKacABBlvFj8VL9eCVnzImaceN9kH/NM27lRY=;
        b=AXH0xaKPeCPXKbmbvM5pep3ZOy+rAKj/qvj+Hbl6busFyQ6x3wonN862XKciYlJmLI
         5vtXdgNYoW+QlfhRk+FrRjTO7FnoM7qlBjCOlLC44bHw3riuighHlmepy5bh85nAs52q
         kHffDHDRWrrA1w0Foj8hiIO4OWxpT0a6L4JBuFXsqx8EqKhhmBYe+94G4AthOvNpljfz
         HQ2ZrxkClgtuE4EDIWd0voEErSBeixKTXQnOCyLGuPSENh0QVoaa1RyRh0gHVvGRsAw/
         xdsQN+ONC0T9sh4IO8uY4vJ02DIqq97DHm/i+lwFIMBxenL6ODM776kIPflnTp7xvfNq
         B6EQ==
X-Gm-Message-State: APjAAAWtBX3bA/lBjx+evZIlHVuXYa117vRe6JtQkPohBvQpbrC4N+By
	uEOZdF9lZkOsQt/PR55+RPoOS28KDsLxzhlavvQ=
X-Google-Smtp-Source: APXvYqyX8xR6VQdraU/O8RkPlLI1vm5B7h08iwLX3ZVFk/3V/UgVBLURzdPMhYQzTuqxF5Q8eoovdnsE2IQK4e7Lb7I=
X-Received: by 2002:a17:907:217b:: with SMTP id rl27mr6588929ejb.133.1575386939370;
 Tue, 03 Dec 2019 07:28:59 -0800 (PST)
MIME-Version: 1.0
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
 <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl> <CADkTA4O_vBgX-PRssZbCgzMDsyVr6LyoscXEAe5qyHFCJPu+rw@mail.gmail.com>
 <25ffb320-1366-369c-c9f1-302fb8bcc07b@berginkonsult.se>
In-Reply-To: <25ffb320-1366-369c-c9f1-302fb8bcc07b@berginkonsult.se>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 3 Dec 2019 10:28:48 -0500
Message-ID: <CADkTA4MPb9zU4mDr=Mn-3p_axr_uYrcvGaaMH5PSxoCcW3X1cw@mail.gmail.com>
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
To: Peter Bergin <peter@berginkonsult.se>
Cc: Mike Looijmans <mike.looijmans@topic.nl>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 3, 2019 at 2:59 AM Peter Bergin <peter@berginkonsult.se> wrote:
>
> On 2019-12-02 14:44, Bruce Ashfield wrote:
> > On Mon, Dec 2, 2019 at 4:14 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
> >> On 01-12-19 22:57, Peter Bergin via Lists.Yoctoproject.Org wrote:
> >>> Hi,
> >>>
> >>> I'm currently working in a project using Yocto 2.6 (thud) release. It has
> >>> default kernel v4.18 and also linux-libc-headers from kernel v4.18. In my
> >>> project we will use kernel v4.1. I would like advice how to handle the
> >>> linux-libc-headers package for my project, should I use the v4.18 headers or
> >>> should I use the v4.1 header files which matches the running kernel?
> >>>
> >>>   From https://www.kernel.org/doc/html/latest/kbuild/headers_install.html:
> >>> "Kernel headers are backwards compatible, but not forwards compatible. This
> >>> means that a program built against a C library using older kernel headers
> >>> should run on a newer kernel (although it may not have access to new
> >>> features), but a program built against newer kernel headers may not work on an
> >>> older kernel."
> >>>
> >>> With the information from the quote above I would directly use v4.1 headers as
> >>> my linux-libc-headers. But then reading the information in the file
> >>> meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc makes me think
> >>> another round. It states:
> >>>
> >>> "
> >>> # You're probably looking here thinking you need to create some new copy
> >>> # of linux-libc-headers since you have your own custom kernel. To put
> >>> # this simply, you DO NOT.
> >>> ...
> >>> # There can also be a case where your kernel extremely old and you want
> >>> # an older libc ABI for that old kernel. The headers installed by this
> >>> # recipe should still be a standard mainline kernel, not your own custom
> >>> # one.
> >>> "
> >>>
> >>> The first part states that I should not change linux-libc-headers. But when I
> >>> read the last part I'm not sure about the interpretation and it could be for
> >>> my case. Just a matter of definition if v4.1 is extremely old compared to v4.18.
> >>>
> >>> Then another thing comes in to the equation; the LIBC ABI. When I look into
> >>> the configuration of the glibc package it uses the configure switch
> >>> "--enable-kernel=3.2" which means it shall be compatible with all kernel newer
> >>> than v3.2. Then probably glibc is fine if it is compiled with v4.18 and run on
> >>> v4.1?
> >>>
> >>> If building all applications against v4.18 headers but run on v4.1 kernel. I
> >>> have a feeling that there potentially can be problems here.
> >>>
> >>> Please help me with some information about this and share your opinions? Are
> >>> there any risks at all to use v4.1 as linux-libc-headers in my Yocto build?
> >>> The only drawback I see is that it will be a new configuration not well tested
> >>> by the community. Are there other risks or drawbacks using your own version of
> >>> linux-libc-headers?
> >>
> >> It is not broken, so please don't fix it.
> >>
> >> OpenPLi has been using kernels way older than 4.1 with the kernel-headers
> >> generated by OE/yocto and did not experience any problems with that. There's
> >> about 50+ machines in there that have pre-built binary drivers that only work
> >> with a particular kernel config and hence the old stuff.
> >>
> >> There are some corner-cases with exotic kernels and exotic exports and exotic
> >> boot executables that use the kernel compiler, but I doubt that you're in there...
> >>
> >> If you have a kernel that exports something that's not in the regular headers,
> >> it's way better to solve that using a syscall than trying to poke in low level
> >> libc stuff.
> >>
> >> So again, if you don't experience problems, please don't try to fix it...
> > This has been my experience as well.
> That's appealing approach. The part with the custom kernel headers is in
> my case solved that we have separate kernel headers that we add to the
> SDK. It is how I have understood the recommendation to solve this.
>

I'm assuming that you mean those headers are in a separate package and
are installed into the dependent packages sysroot (or the SDK in your
descriptin) via other means that linux-libc-headers .. if so, yes,
that is the right thing to do.

> > I've run a really wide set of BSP kernel's against the various "much
> > newer" yocto/OE libc-headers over the years, and I've never hit an ABI
> > or otherwise incompatibility.
> Actually there are issues with Yocto 2.6 together with v4.1 headers. I
> did an experiment to use v4.1 as linux-libc-headers. For my image i hit
> build failures in two packages, systemd and iptables. Those were easily
> fixed by upstream commits referenced below. I can not by a quick review
> say that those should cause run-time issues, probably not, but just
> showing that there are cases where packages not is fully aligned with
> all versions of kernel headers.

These are one of the cases that do pop up, and yes, we normally fix by
updating (or patching) the packages. The same thing happens to me in
master each time I introduce the updated libc-headers for the release.

"They are normally just factoring/shuffling/churn on the header files
requiring some different includes (or dropped ones), and don't impact
the userspace -> kernel interfaces (i.e. the interface stability).

Looking at the ones you referenced below, I'd agree that they won't
impact the runtime.

>
> systemd:
> https://github.com/systemd/systemd/commit/9c869d08d82c73f62ab3527567858ce4b0cf1257
> iptables:
> https://git.netfilter.org/iptables/commit/?id=5beb1582d13d3bfdd0d2b277f5f3154b2fbf4a8e
>
> If you want the most deterministic build for one system and one setup I
> can not see any other option than using the same version for the kernel
> headers in both virtual/kernel and linux-libc-headers. Then if you want

I wouldn't say deterministic, but yes, if you are only ever concerned
about one kernel, one userspace, etc, then a more consistent build
would be against the 1:1 matching headers.

> flexibility and possibility to support many builds it is better to have
> one common linux-libc-header version. Also from a test and validation

The reality is that most builds run against any number of kernels (in
particular if you are getting into binary builds), so you do need a
stake in the ground for consistent headers -> many kernels, so yes,
more flexibility and reuse by not varying the libc-heades .. since
again, the are the libc-headers and the c-library does most of the
abstraction as well.

> point of view it is better if many people using the same version of
> linux-libc-headers instead of their own combination as we have a
> situation where this works almost all the time. Can anyone comment on
> this analyze, is it valid?

That's the premise around bumping the libc-headers to a reference
version as I bump the various reference kernels. That we are getting
more coverage and collective benefits by using a common base across
many different userspace and kernel combinations.

Cheers,

Bruce

>
> Thanks,
> /Peter
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
