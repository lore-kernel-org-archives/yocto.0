Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25982E00C7B; Wed, 28 Nov 2018 03:00:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93005E00C74
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 03:00:35 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id n32so25276102qte.11
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 03:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zKyCmX0+uCAmaxORwSvMQYi3w/EX1LzTDlmLojuY40I=;
	b=hGcESaumCM4BEQtgptg97cIROFp+S0qQWY7Y31EauiKgt/nVa2jfE+u/1BACBbmUo8
	Ww7BMNqMLdL5IuX9MuKZT84pvAAzLLTgheFyYg7QYoLMOHWj1NokwWSrXIvGMKdNs/i3
	PbzmUWlUICrO9tnZViDFYwMSdwYzjyZLeI9uEijQaSGPn3mtSSRfVqHvkMNWKpyh4wgc
	ducwyQn4X+hwKoDY0uHgcywoiIQDT/JF2cn/RK4L7VYvjeATeSNmLv+dEaO5U4Sac81i
	hegAYy8pR5GonhAB2ap8kKG3CBgqFp/AfkiEpbb5Ap9TAPleCeUU/zjOPHr9AqCkzGVk
	/5mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zKyCmX0+uCAmaxORwSvMQYi3w/EX1LzTDlmLojuY40I=;
	b=Eb0riqP0E09TqXxQFAAgjcZUCymrJhjxB6kKo/ILHSX363Epk4qerd6CLjdXm31x7B
	dtT4mELma8lRf+LPYG9ly5RAB0NW+fPPiQA+Ts8A0+WPMrH27s8fJHQBqMGZtZXPMqSy
	lZYh0lppMbIwQOy2J3EFVJzcKidEyJM/TdlX7ngjtzjOdycZci5RUTw8JCt3htsUF92n
	hP0bifRzyOuqae6+2/7pk28X2+cvXnHDJQjqhu4v/JtOcUkqsXJJitwv22DrEPcwhtaA
	pgSyrNV5ObzcJlBgyYUCZZ6cl92ij8GCab/5Tv/+Hp4KzY+vF9tzutK3n0QoWNuMV8Jw
	U2Eg==
X-Gm-Message-State: AA+aEWYiaQtsEw6pR7epqFwlx7UoMAMoaU0vUq+/hZvRfsZtYLvHtLht
	oAoyy9CMR/iASmd+j7tf5aw+C+jH+OgaUBmU2ylZZPet
X-Google-Smtp-Source: AFSGD/Vv5Dks1iopkoQ+r3zyxXm+maJ9GnnmtV79v7Cvce87lJ/NWukYDHqX6GlGOXb9NfV2aWoVPtqGmbJixxEpEUQ=
X-Received: by 2002:a0c:f4c2:: with SMTP id o2mr6259385qvm.236.1543402834526; 
	Wed, 28 Nov 2018 03:00:34 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
In-Reply-To: <86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 28 Nov 2018 12:00:22 +0100
Message-ID: <CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
To: Stefano Babic <sbabic@denx.de>, Jan Kiszka <jan.kiszka@siemens.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 28 Nov 2018 11:00:37 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Stefano,

I am (almost) perfectly aligned with kernel.org, and I (personally)
decided to use git. Since I start understanding importance of Linus.
Linux officers and their Linux philosophy.

Now... Answers to your email. KAS (Siemens developed tool by Jan
Kiszka and his crew) is the supplement for the fast/quick building the
YOCTO, to use ONLY rootfs. NOT kernel. NOT aligned with the git tool.
Not applicable for purposes as git.

On the other note, repo is GOOGLE tool. Promoted by them. Most of the
ARM followers (such as Toradex) use repo tool.

You say: I talk to the wrong crew. I think opposite. I am giving the
generic message via YOCTO email list, to avoid hundreds of particular
emails, so we can unify the effort. Which is not minor. Rather
opposite: major.

Since, I guess, this is of the major importance. For YOCTO survival.
The direction is one: git tool. For all YOCTO developers. IMHO.

Stefano,

You, as major official representative of U-Boot philosophy (and
Wolfgang's Denk right hand), do not take sides, rather ad-hoc
approach. For you, this topic is not important. Appreciated your help.

I am asking here for much higher awareness. YOCTO better survival in The Future.

Thank you,
Zoran
_______
On Wed, Nov 28, 2018 at 10:52 AM Stefano Babic <sbabic@denx.de> wrote:
>
> Hi Zoran,
>
> On 28/11/18 10:17, Zoran Stojsavljevic wrote:
> > Hello YOCTO people,
> >
> > I would like to use standard git tool while using all the Yocto
> > layers. NOT only Poky repository (which, I believe, works all the way
> > with git tools), but as much as possible with other github proprietary
> > repos and layers. Since I am not able to execute git commands using
> > some number of proprietary repos over github.
> >
> > As example, I'll use meta-bbb repository.
> > https://github.com/jumpnow/meta-bbb.git, after cloning the following
> > happens (chosen, since it has at least dozen of branches):
> >
> > After cloning, I did not get anything from the following commands,
> > being in the root of the meta-bbb repo, namely:
> >
> > [user@fedora28-ssd meta-bbb]$ pwd
> > /home/user/projects2/beaglebone-black/yocto-master/meta-bbb
> > [user@fedora28-ssd meta-bbb]$ git describe
> > fatal: No names found, cannot describe anything.
>
> I understand, but why is this an issue in Yocto project ? The maintainer
> does not use tags and git describe is fast useless.
>
> You should contact layer's maintainer and ask for that. Anyway, outside
> poky, tags are quite unused in layers.
>
> > [user@fedora28-ssd meta-bbb]$ git tag
> > [user@fedora28-ssd meta-bbb]$ git checkout thud
> > Branch 'thud' set up to track remote branch 'thud' from 'origin'.
> > Switched to a new branch 'thud'
> > [user@fedora28-ssd meta-bbb]$ git checkout sumo
> > Switched to branch 'sumo'
> > Your branch is up to date with 'origin/sumo'.
> > [user@fedora28-ssd meta-bbb]$ git describe
> > fatal: No names found, cannot describe anything.
> > [user@fedora28-ssd meta-bbb]$
> >
> > The rationale behind this request: git is the powerful tool which
> > should work and be solely used for YOCTO layers' synchronization. In
> > other words, YOCTO should give some tools' (namely git) unification
> > guidelines in some way. :-)
>
> It is clear that a tool to maintain the layers in sync is required, but
> it is quite independent how the layers (and many are proprietary layers)
> are built. So you can use "repo" or "kas" (my preferred one) for that.
>
> Best regards,
> Stefano Babic
>
> --
> =====================================================================
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =====================================================================

