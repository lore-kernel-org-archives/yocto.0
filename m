Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web11.8184.1581943943479469086
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 04:52:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:44482 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j3fsr-004Cdw-CM; Mon, 17 Feb 2020 07:52:21 -0500
Date: Mon, 17 Feb 2020 07:52:18 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
cc: philip.lewis@domino-uk.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Creating a build system which can scale. #yocto
In-Reply-To: <20200217124357.odaw6g5qpfkt2oxm@qschulz>
Message-ID: <alpine.LFD.2.21.2002170745390.2321912@localhost.localdomain>
References: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org> <20200217124357.odaw6g5qpfkt2oxm@qschulz>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: multipart/mixed; boundary="8323328-1943439233-1581943941=:2321912"

--8323328-1943439233-1581943941=:2321912
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Mon, 17 Feb 2020, Quentin Schulz wrote:

> Hi Philip,
>
> *Very* quick and vague answer as it's not something I'm doing right now.
> I can only give hints to where to look next.
>
> On Mon, Feb 17, 2020 at 04:27:17AM -0800, philip.lewis@domino-uk.com wrote:
> > Hi,
> >
> > I'm looking for some advice about the best way to implement a
> > build environment in the cloud for multiple dev teams which will
> > scale as the number of dev teams grow.
> >
> > Our devs are saying:
> >
> > *What do we want?*
> >
> > To scale our server-based build infrastructure, so that engineers
> > can build branches using the same infrastructure that produces a
> > releasable artefact, before pushing it into develop. As much
> > automation of this as possible is desired..
> >
> > *Blocker* : Can’t just scale current system – can’t keep throwing
> > more hardware at it, particularly storage. The main contributor to
> > storage requirements is using a local cache in each build
> > workspace and there will be one workspace for each branch, per
> > Jenkins agent: 3 teams x 10 branches per team x 70Gb per
> > branch/workspace x number of build agents (let say 5) = 10Tb. As
> > you can see this doesn’t scale well as we add branches, teams or
> > build agents. Most of this 10Tb is the caches in each workspace,
> > where most of the contents of each individual cache is identical.
> >
>
> Have you had a look at INHERIT += "rm_work"? Should get rid of most of
> the space in the work directory (we use this one, tremendous benefit in
> terms of storage space).
>
> c.f.
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-classes-rm-work

  in addition, you can always override that build-wide setting with
RM_WORK_EXCLUDE if you want to keep generated work from a small set of
recipes for debugging.

rday

--8323328-1943439233-1581943941=:2321912--
