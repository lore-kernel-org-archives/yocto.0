Return-Path: <prvs=187035f2dc=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 307FDE00C7B; Wed, 28 Nov 2018 03:31:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [85.215.255.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 364 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Nov 2018 03:31:09 PST
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de
	[85.215.255.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE297E00C74
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 03:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1543404668;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=xLt6FTFOO9/g8H7WIxmalBjQvd/Cl3Pl6zqzr9VeJG4=;
	b=pZphZZZMh+6eG/7wYnObA5fuZKKmPMX2sNAaa2xqDHbPcon3f6WrKZfP+965uq/wDB
	l9Zv8lx3qO3qxfE+Wub98XDWs7VMYk5Q8e79F9bCeSLLE7LISC7JJbZ0etaf/WJwLRtq
	hkJvTt3/pWWyb2JLV18IJW6QgKAzmymhvM2dIWud+rBaYmaPOOYE7IhiZSv6n4h4LLfk
	1W7S40VAgpImoftRsnXvixZ23PKEcLrC4Cz0u6TJLrL0WogfneiijzHxbbSvezMTLyi2
	fPKFECG6BQd2gfHMJdA2dqaKr4taJF3P9nJZmtAjDQbGlCbqQDlvQ7+6k7KNTAtzgrI0
	lVmg==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 44.6 AUTH)
	with ESMTPSA id x019b7uASBP43Ze
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 28 Nov 2018 12:25:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1543404296; x=1544009096;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=xLt6FTFOO9/g8H7WIxmalBjQvd/Cl3Pl6zqzr9VeJG4=; b=G
	8I59TxOyRusniVA/BRMkEKVOXPS5qRGB5yLEi4RUifL2JmUvq0a7k3vycvgP3iCA
	mgqvSbo4fsTnxWy8HULaAM2vfBtXL9xJV2YI0j3L3LYzcwUwVZ334rZdnx5Z4BhE
	F8kpo/jF64/w3gxRQoJKEtAbZAlzAZ/qNHTxPT2G+w=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v18.5.1) with ESMTPSA id
	md50000121390.msg; Wed, 28 Nov 2018 12:24:55 +0100
X-MDArrival-Date: Wed, 28 Nov 2018 12:24:55 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=187035f2dc=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Wed, 28 Nov 2018 12:25:00 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Message-ID: <20181128112500.emfrdulwvzowkfyu@jholzmayr.localdomain>
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Cc: Jan Kiszka <jan.kiszka@siemens.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Git tool/command problems with YOCTO Open Source repos
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 28 Nov 2018 11:31:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello Zoran,

On Wed, Nov 28, 2018 at 12:00:22PM +0100, Zoran Stojsavljevic wrote:
> I am (almost) perfectly aligned with kernel.org, and I (personally)
> decided to use git. Since I start understanding importance of Linus.
> Linux officers and their Linux philosophy.

You are free to choose your workflow as you please.

> Now... Answers to your email. KAS (Siemens developed tool by Jan
> Kiszka and his crew) is the supplement for the fast/quick building the
> YOCTO, to use ONLY rootfs. NOT kernel. NOT aligned with the git tool.
> Not applicable for purposes as git.

It is a tool that serves one purpose. It does that job well.

> On the other note, repo is GOOGLE tool. Promoted by them. Most of the
> ARM followers (such as Toradex) use repo tool.

Thats what they choose.

> You say: I talk to the wrong crew. I think opposite. I am giving the
> generic message via YOCTO email list, to avoid hundreds of particular
> emails, so we can unify the effort. Which is not minor. Rather
> opposite: major.
> 
> Since, I guess, this is of the major importance. For YOCTO survival.
> The direction is one: git tool. For all YOCTO developers. IMHO.

This is what your opinion is. Which seems to be vastly overestimating
its own importance.

> Stefano,
> 
> You, as major official representative of U-Boot philosophy (and
> Wolfgang's Denk right hand), do not take sides, rather ad-hoc
> approach. For you, this topic is not important. Appreciated your help.

By now, you are telling other people who have been doing thwir work
successfully for decades how to do their jobs. 
Actually, telling off one of the core contributors and community members
with "This is not for you" is plain rude.

> I am asking here for much higher awareness. YOCTO better survival in The Future.

We are doing quite well at the moment, thank you.

So if you have a proposal on how to improve things, feel free to share
it. Go ahead and lead on how to use that proposal by doing your own
upstream work, showing how emplying your proposal makes it better and
more usable.

Just getting onto a mailing list and saying "You're doing it wrong
because it doesn't suit my workflow", again, is quite rude.

Greetz.

PS: yes, this mail is explicitly meant to support Stefano.

> 
> Thank you,
> Zoran
> _______
> On Wed, Nov 28, 2018 at 10:52 AM Stefano Babic <sbabic@denx.de> wrote:
> >
> > Hi Zoran,
> >
> > On 28/11/18 10:17, Zoran Stojsavljevic wrote:
> > > Hello YOCTO people,
> > >
> > > I would like to use standard git tool while using all the Yocto
> > > layers. NOT only Poky repository (which, I believe, works all the way
> > > with git tools), but as much as possible with other github proprietary
> > > repos and layers. Since I am not able to execute git commands using
> > > some number of proprietary repos over github.
> > >
> > > As example, I'll use meta-bbb repository.
> > > https://github.com/jumpnow/meta-bbb.git, after cloning the following
> > > happens (chosen, since it has at least dozen of branches):
> > >
> > > After cloning, I did not get anything from the following commands,
> > > being in the root of the meta-bbb repo, namely:
> > >
> > > [user@fedora28-ssd meta-bbb]$ pwd
> > > /home/user/projects2/beaglebone-black/yocto-master/meta-bbb
> > > [user@fedora28-ssd meta-bbb]$ git describe
> > > fatal: No names found, cannot describe anything.
> >
> > I understand, but why is this an issue in Yocto project ? The maintainer
> > does not use tags and git describe is fast useless.
> >
> > You should contact layer's maintainer and ask for that. Anyway, outside
> > poky, tags are quite unused in layers.
> >
> > > [user@fedora28-ssd meta-bbb]$ git tag
> > > [user@fedora28-ssd meta-bbb]$ git checkout thud
> > > Branch 'thud' set up to track remote branch 'thud' from 'origin'.
> > > Switched to a new branch 'thud'
> > > [user@fedora28-ssd meta-bbb]$ git checkout sumo
> > > Switched to branch 'sumo'
> > > Your branch is up to date with 'origin/sumo'.
> > > [user@fedora28-ssd meta-bbb]$ git describe
> > > fatal: No names found, cannot describe anything.
> > > [user@fedora28-ssd meta-bbb]$
> > >
> > > The rationale behind this request: git is the powerful tool which
> > > should work and be solely used for YOCTO layers' synchronization. In
> > > other words, YOCTO should give some tools' (namely git) unification
> > > guidelines in some way. :-)
> >
> > It is clear that a tool to maintain the layers in sync is required, but
> > it is quite independent how the layers (and many are proprietary layers)
> > are built. So you can use "repo" or "kas" (my preferred one) for that.
> >
> > Best regards,
> > Stefano Babic
> >
> > --
> > =====================================================================
> > DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> > Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> > =====================================================================
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


