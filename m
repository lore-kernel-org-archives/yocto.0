Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8656.1581611192152703320
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 08:26:32 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B310CE016EA; Thu, 13 Feb 2020 08:26:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5041AE016E8
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 08:26:31 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:54242 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j2HJu-003GP9-0N; Thu, 13 Feb 2020 11:26:30 -0500
Date: Thu, 13 Feb 2020 11:26:27 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Leon Woestenberg <leon@sidebranch.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] dev-manual: differing versions of same recipe in different priority layers?
In-Reply-To: <CAMjhiJimkmSzkGrw6Dfe6dN_tnwd-N9Y4MV3GGFYZ5Lgvoicog@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2002131124270.2831500@localhost.localdomain>
References: <alpine.LFD.2.21.2002130910250.2825956@localhost.localdomain> <CAMjhiJimkmSzkGrw6Dfe6dN_tnwd-N9Y4MV3GGFYZ5Lgvoicog@mail.gmail.com>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Thu, 13 Feb 2020, Leon Woestenberg wrote:

> Hello Robert,
>
> On Thu, Feb 13, 2020 at 3:14 PM rpjday@crashcourse.ca
> <rpjday@crashcourse.ca> wrote:
> >   in the YP dev manual, section 3.1.6, there is a maddeningly vague
> > note:
> >
> > "It is possible for a recipe with a lower version number PV in a layer
> > that has a higher priority to take precedence."
> >
> >   so does it take precedence or not? just saying it's "possible"
> > doesn't clarify it for the reader.
> >
> Yes, this should be re-worded. This is actually a FAQ.
> (I remember more sentences like this exist, that especially for
> non-English speakers might be difficult to interpret.)

  i'm betting i'm going to find all of them eventually. :-)

> My proposal would be:
>
> If a recipe exists in multiple layers, the recipe with highest PV
> *from the layer with the highest priority* is selected. Be aware
> that recipes with the same PN in lower priority layers are thus not
> selected, *even if their PV is higher*.

  right ... higher layer priority takes precedence over higher version
number. i'll submit something for that.

rday
