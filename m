Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3723.1615454875517593935
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 01:27:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4EBA538C058A
	for <yocto@yoctoproject.org>; Thu, 11 Mar 2021 09:27:54 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:48428 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lKHbf-00054e-R4; Thu, 11 Mar 2021 04:27:52 -0500
Date: Thu, 11 Mar 2021 04:27:46 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] how often would one use "VAR_someoverride_append = ..."?
In-Reply-To: <20210310151501.5buv7wppoda2xu6e@qschulz>
Message-ID: <64489b7-639c-2860-4d7f-88e0d1a192c1@crashcourse.ca>
References: <fd294e8a-cc9e-d9f-33d9-cc30f27ff0@crashcourse.ca> <20210309144900.h5esu2uleixud2va@qschulz> <af8b6e8e-70f3-76b7-31eb-ea2227478710@crashcourse.ca> <20210310151501.5buv7wppoda2xu6e@qschulz>
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

On Wed, 10 Mar 2021, Quentin Schulz wrote:
... snip ...

> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-kernel/linux/linux-yocto_5.10.bb#n12
> for example.
>
> This is an example of a "valid" use case (not that there are invalid
> ones) for VAR_foo.
>
> Would probably a better example:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-kernel/linux/linux-yocto_5.10.bb#n50
>
> So, you might decide that a machine is so much different than others
> that KERNEL_FEATURES should be overridden for said machine.
>
> Then in a bbappend, one might want to add another feature for this
> machine, they'll therefore need to use KERNEL_FEATURES_foo_append.
>
> I do not have examples at hand of VAR_foo_append except the ones
> Leon sent in another mail. Which should show how rare it is :)

  i will ramble for just a bit as i think i settled on a way to
perhaps explain the difference here to some students.

  in the overwhelmingly common case, we normally see overrides at the
end of either assignments or appends:

  VAR = "snafu"
  VAR_qemux86 = "more snafu"
  VAR_append_qemux86 = "qemux86_specific_fubar"

it seems that the proper way to interpret the above is that, in the
end, all you would be after is the *final* value of the single
variable VAR, and all the appending and overriding is leading you in
that direction -- whatever "VAR" contains after it's all over is all
you care about.

  on the other hand, with the example from the kernel recipe:

  KBRANCH_qemuarm  ?= "v5.10/standard/arm-versatile-926ejs"
  KBRANCH_qemuarm64 ?= "v5.10/standard/qemuarm64"
  KBRANCH_qemumips ?= "v5.10/standard/mti-malta32"
  KBRANCH_qemuppc  ?= "v5.10/standard/qemuppc"
  KBRANCH_qemuriscv64  ?= "v5.10/standard/base"
  KBRANCH_qemux86  ?= "v5.10/standard/base"
  KBRANCH_qemux86-64 ?= "v5.10/standard/base"
  KBRANCH_qemumips64 ?= "v5.10/standard/mti-malta64"

it seems that the right way to interpret the above is that you are,
simultaneously, creating *multiple* versions of the variable KBRANCH,
so that if you subsequently see, for example:

  KBRANCH_qemux86_append = " whatever"

you're appending to the variable KBRANCH_qemux86 because the ultimate
result you're after is the *set* of KBRANCH-related variables, perhaps
because you will actually need them all at once.

  and given that most situations don't require access to all of those
variations of that variable, that's why the first approach is by far
the most common.

  that might be an over-simplification, but it seems to at least give
an idea of why that second approach would be used in very particular
situations.

  thoughts?

rday
