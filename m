Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web10.2757.1616241821724216540
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Mar 2021 05:03:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:34636 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lNaKR-001lc2-23; Sat, 20 Mar 2021 08:03:39 -0400
Date: Sat, 20 Mar 2021 08:03:35 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Quentin Schulz <foss@0leil.net>
cc: yocto@lists.yoctoproject.org, 
    Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] is there a recent explanation of tricks you can play with MACHINEOVERRIDES?
In-Reply-To: <862E0A68-D800-44A2-8A39-E614D803BCA8@0leil.net>
Message-ID: <4d1e89fe-2a40-948-8f5a-3b1454c2c7b3@crashcourse.ca>
References: <e4d0c7a6-bbbd-2652-49ca-a929e5d948b0@crashcourse.ca> <862E0A68-D800-44A2-8A39-E614D803BCA8@0leil.net>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Sat, 20 Mar 2021, Quentin Schulz wrote:

> Hi Robert,
>
> On March 19, 2021 9:54:34 AM UTC, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:
> >
> >  years ago, i asked about how to support a small set of
> >closely-related targets using MACHINEOVERRIDES to define how to apply
> >patches in a (somewhat) hierarchical fashion:
> >
> >https://www.yoctoproject.org/pipermail/yocto/2016-March/028922.html
> >
> >  is there any current BSP that does something like that? and is this
> >sort of thing worth expanding on and adding to one of the manuals?
> >
>
> Don't use _prepend but =. BEFORE the other includes in your machine
> configuration files otherwise the order in MACHINEOVERRIDES is
> incorrect. Do NOT use append, or .=, they result in incorrect order
> too.

  i did write that a while back while i was still figuring it out. :-)

> I do use this mechanism because we kind of use Yocto machines the
> wrong way (basically using machines instead of distros or more
> complex images).
>
> I think NXP is making extensive use of this variable by defining a
> MACHINEOVERRIDES per SoC families (e.g. imx:imx8:imx8mm).
>
> I'm not sure we need to explain all possible uses of OVERRIDES
> variables, just how to set it and how it works.

  i agree that it would be inappropriate in the *regular* sections of
the docs, but i'm convinced it would be worth explaining in some sort
of "advanced features" section. after all, you just admitted that
*you* use it, and that NXP uses it. that should be enough to justify
explaining it *somewhere*, no?

rday
