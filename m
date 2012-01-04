Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4550BE00748
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 21:14:59 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iapp10 with SMTP id p10so42886521iap.35
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2012 21:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=ZvoYrUqN5bl3x8fazHPliCfoPYglOlsPufpV7NEr518=;
	b=Hczc0EJNZDdgkDBfVfMx1wH6k5XgwTMepQ8Du6MTdX8oH1rrgWQ9SwUQ5yrS1B92wy
	Y1YxNFKrXq7jUtZFK2vBp0e0Q5AHrAE8JvKsP/hCj/SJjz/kNWnkmquTf1PZG+ZSaSvu
	GSC4GKoPd4N+nHEfsEySDyveXWZwhjQ/QlpcA=
Received: by 10.50.194.202 with SMTP id hy10mr65644785igc.23.1325654098811;
	Tue, 03 Jan 2012 21:14:58 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id r5sm79590383igl.3.2012.01.03.21.14.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jan 2012 21:14:57 -0800 (PST)
Date: Tue, 3 Jan 2012 21:15:19 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20120104051519.GF31275@sakrah.homelinux.org>
Mail-Followup-To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Koen Kooi <koen@dominion.thruhere.net>,
	Yocto Project <yocto@yoctoproject.org>
References: <4EF34776.9030002@gmail.com>
	<5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>
	<2143100.ORnxPSEQca@helios>
	<9CC56138-C252-46A6-B318-9FA939CE2DAC@dominion.thruhere.net>
	<B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>
	<4EF4B610.6050904@windriver.com> <4EF4BCA3.30209@balister.org>
	<4EF4BE2D.1090707@windriver.com>
	<EBB285D3-2B43-4182-B723-1193873648B3@dominion.thruhere.net>
	<4EF4C188.7040701@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4EF4C188.7040701@windriver.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: meta-ti?????
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Jan 2012 05:14:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (23/12/11 12:59), Bruce Ashfield wrote:
> On 11-12-23 12:52 PM, Koen Kooi wrote:
> >
> >Op 23 dec. 2011, om 18:45 heeft Bruce Ashfield het volgende geschreven:
> >
> >>On 11-12-23 12:38 PM, Philip Balister wrote:
> >>>On 12/23/2011 12:10 PM, Bruce Ashfield wrote:
> >>>>On 11-12-23 08:10 AM, James Abernathy wrote:
> >>>>>
> >>>>>On Dec 23, 2011, at 3:50 AM, Koen Kooi wrote:
> >>>>>
> >>>>>>
> >>>>>>Op 23 dec. 2011, om 09:37 heeft Paul Eggleton het volgende geschreven:
> >>>>>>
> >>>>>>>On Friday 23 December 2011 09:28:31 Koen Kooi wrote:
> >>>>>>>>Op 22 dec. 2011, om 16:06 heeft Jim Abernathy het volgende geschreven:
> >>>>>>>>>I know the examples in the documentation of Yocto use meta-intel a
> >>>>>>>>>lot
> >>>>>>>>>to get the board specific BSPs like meta-crownbay or meta-n450.
> >>>>>>>>>
> >>>>>>>>>Is there a meta-ti or similar that gets you the meta-beagleboard and
> >>>>>>>>>meta-pandaboard?  If not how do you clone and checkout the pandaboard
> >>>>>>>>>BPS?
> >>>>>>>>http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstruments/
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>It has a README in there on how to set it up, read it and follow it
> >>>>>>>>precisely.
> >>>>>>>
> >>>>>>>Just out of interest, why does meta-texasinstruments depend on
> >>>>>>>meta-angstrom?
> >>>>>>
> >>>>>>It needs extra things in overrides and reuses tasks from there.
> >>>>>
> >>>>>Sorry for the follow-up, but if I clone the meta-texasinstruments bsp
> >>>>>repository and checkout the pandaboard-rework branch,
> >>>>>how does that relate to the Yocto branch/bsp yocto/standard/pandaboard
> >>>>>on the Yocto site?
> >>>>
> >>>>I'll jump into the middle of the thread, and answer a couple of specific
> >>>>questions and leave the larger what depends on what, and where
> >>>>things evolve and why .. for another day.
> >>>>
> >>>>The yocto/standard/pandaboard in the 3.0 kernel tree is the refresh/update
> >>>>of a reference BSP for the 3.0 (and newer) kernel(s).
> >>>
> >>>Who is the intended audience of this BSP? The Angstrom/meta-to layer is
> >>>obviously intended for people using TI hardware and all the associated
> >>>peripherals. Without defining your audience better, this jsut adds to
> >>>the confusion end users are experiencing with all the words and layers
> >>>being used in emails. This is becoming a real problem as new users enter
> >>>the project.
> >>
> >>Quite simply, the audience that needs a particular kernel version
> >>and feature set, with the tooling to transition to a supported (i.e
> >>not the yocto one) BSP.
> >
> >You do realize that by doing this without informing anyone involved with the official pandaboard BSP the net effect is negative? And by 'negative' I mean "severe annoyance" among other things.
> 
> .. and why would you assume that precisely that hadn't been done ?
> It has been, via management channels at multiple companies and
> organizations and is exactly why I said "a layer you can't get"
> and "work in progress".
> 
> So please, no need to jump to anything resembling 'annoyance'.
> There's plenty of that to go around, and it isn't constructive.

I think it would be nice if we had a wiki document which listed
various BSPs for a given platform that are available using the
given layers and some words differentiating them. That can help
end users in understanding and deciding which to use.

