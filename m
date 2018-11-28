Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5726E00C7D; Wed, 28 Nov 2018 03:08:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B37E9E00C75
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 03:08:11 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id o19so3671968itg.5
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 03:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2MngkjKSRDHkH1Hv65Z6aTfjFH/9ZA0nFvBjDTGFYoQ=;
	b=sI+AsN9wuhnqA+sNMGS+JwZB6/YB4iqsIHg9h7oaYN4UBHh3qxXL3LWXhCHXIwQMPj
	DbB5rTcFgIYD5AJchxvfOMg9byVNi6yFKHhSzJiZ0f6T6crQGHkmcLJfHaH8Qs+ocvMT
	gU24gtx+bYH5rVSoCpAH9lnqd6ehlXr2aAuh3DIStYCddfKPlP5DByLGtSAmSg35rcJf
	Jrx9OkUcjBR3EM0cPyV5cMIeRyd6t1HTbQ0bT7QNm7b+petfQmr0tfSqz0DugarmYTDO
	5mkivGIq66eVsfyhC35FrRuDHEzRp/ea3Q/s4GFwHvwc7TEThgvdqKsgZOJn4HkUO1j7
	7mMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2MngkjKSRDHkH1Hv65Z6aTfjFH/9ZA0nFvBjDTGFYoQ=;
	b=TJdzmkJvC+e63rT9aEkbOiKmpw2CVhNBg9nu54xWWxw2V/sKqJ/hIkQJBI7hgGcQ2Y
	QN24AvwenISfJIch6GENWCbGLaa1DFYXh1ZGuhwV4y6H9ztYUcjkQejROBHs8iwDw7z7
	v3kW6SSaH5vssD91+TPAio1Rx9+lLb31W6HTRjxl6OdtMaSqeZARigUHW0cPQlwRXpKu
	+jICzEBZmvj7cWaoA7RAGSq/ef9AeoW7goju50Hy0vkf/X+mT+hRK/D3QjDJTMteJk/v
	HjmomrUDvCungPnDieS7zXdfyiv6CD0fTaMTqvShCpYflwdN4sX7Er+ZewOdmk/o+fTS
	DEzA==
X-Gm-Message-State: AA+aEWYpq70sh6Vj3Oii3Pxw1bpCAkxSZ+rAso90ikk28bwW78ObKv3W
	IvnH0579TFvlBkgmmIM6W7mvY96jeXcwO+tOga8bQQ==
X-Google-Smtp-Source: AFSGD/WpePAr4xYE4ZGiG/1AKGVSKlMAf89ZzGaS3GGdrDMJhQpbikVq1tYwRRPHALHILQgQHaeE/cGeN5yQCzxGFCI=
X-Received: by 2002:a24:9142:: with SMTP id
	i63-v6mr2685951ite.130.1543403291096; 
	Wed, 28 Nov 2018 03:08:11 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
In-Reply-To: <CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Nov 2018 11:07:59 +0000
Message-ID: <CAJTo0LayJuXgtpzOCTnPPh5-sQQABBFU9V-eFU9mbNui1GP_dQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Jan Kiszka <jan.kiszka@siemens.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 28 Nov 2018 11:08:13 -0000
Content-Type: text/plain; charset="UTF-8"

Personally I don't see why there needs to be One Blessed Tool to
manage keeping repositories in sync.  There's lots of alternatives,
none of them is obviously superior to the others, and none of them
have any requirements on the repositories that they're managing.

If you want a repository management tool, then pick one and use it.

Ross
On Wed, 28 Nov 2018 at 11:01, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Stefano,
>
> I am (almost) perfectly aligned with kernel.org, and I (personally)
> decided to use git. Since I start understanding importance of Linus.
> Linux officers and their Linux philosophy.
>
> Now... Answers to your email. KAS (Siemens developed tool by Jan
> Kiszka and his crew) is the supplement for the fast/quick building the
> YOCTO, to use ONLY rootfs. NOT kernel. NOT aligned with the git tool.
> Not applicable for purposes as git.
>
> On the other note, repo is GOOGLE tool. Promoted by them. Most of the
> ARM followers (such as Toradex) use repo tool.
>
> You say: I talk to the wrong crew. I think opposite. I am giving the
> generic message via YOCTO email list, to avoid hundreds of particular
> emails, so we can unify the effort. Which is not minor. Rather
> opposite: major.
>
> Since, I guess, this is of the major importance. For YOCTO survival.
> The direction is one: git tool. For all YOCTO developers. IMHO.
>
> Stefano,
>
> You, as major official representative of U-Boot philosophy (and
> Wolfgang's Denk right hand), do not take sides, rather ad-hoc
> approach. For you, this topic is not important. Appreciated your help.
>
> I am asking here for much higher awareness. YOCTO better survival in The Future.
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

