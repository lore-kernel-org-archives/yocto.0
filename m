Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A41D5E00C71; Wed, 28 Nov 2018 04:53:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A001E00C46
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 04:53:09 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id g11-v6so23340769ljk.3
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 04:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=1jGHifNsfzKQBo0a8AI+nIgEUsOs57hKSJG5IY8T2VI=;
	b=dyWCwEMQFDHjyeWc4AQ0UOL97D3bEhzpT8IJKXvZWOJY2MGxnGR11lUhh0icn9RvqA
	UNc44uvu4H8cUJO+umZrY7apL7YcCKqXOKh+NE6fBc4D/HXSRTE5l5Q1SWwFw36be+K7
	WvhtzDcO0VTooE6LSSxnu6Q6MRAWyECLpE9No=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=1jGHifNsfzKQBo0a8AI+nIgEUsOs57hKSJG5IY8T2VI=;
	b=SwYtGo2gODMvP4Hio2q0Iwu7PFaeNHmdKFwVjSDaXUwuPbeQUFvQAvz6bBNhOsqUJa
	gvKW6cL+ndSUxEssb2yzz8Ez+Ermj8FQmVzG2xxF8eFX6kfnMp1AP+KS66AxgiIxQGUV
	+NvHwnTSZHe0nk2nx/007irmXpEhBdDTiKJOrGZ6fAiqpty3xwMhjPaDXcix3eBQSCWm
	aEZmelLqX/1WWxAajDUOVUphmT6abr2eSjweSKf6YTqYJLLqJoDTy8NDRMLV0esikquD
	dfvLrA+wNODMTxZVQ8VlW5agDiBI0h+lxrKuB6zLlucvOjB4mEmUc2hJg8ocd1sjqCG7
	hNdA==
X-Gm-Message-State: AA+aEWbu0VAmlZtn37EcmiHhb7YFbc/AB2aWfVQ6Ia65KUZUYokkmFtp
	wJ1Ls0DaztPQovmCe99MVn2Q0PUmFQtG4x8gl++xXg==
X-Google-Smtp-Source: AFSGD/Xpg1HHpJqpdhbapFiMgtcmUdWlIYIAZdUczpVs5VXdD+3EDDWJS6YIzb5vnmJNcLe7SJI+GB7oP4lBKsVrE24=
X-Received: by 2002:a2e:9457:: with SMTP id o23-v6mr6755951ljh.7.1543409588134;
	Wed, 28 Nov 2018 04:53:08 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
	<CAJTo0LayJuXgtpzOCTnPPh5-sQQABBFU9V-eFU9mbNui1GP_dQ@mail.gmail.com>
	<CAGAf8LzXyVS1N3C3b7aG73Tn-Cs-ga71f9M_Y6A4hucnxekKtQ@mail.gmail.com>
	<CAJTo0LYpWRRHAW2V+btYmWMu5sT-Q21aL4NoK0PE91vLYusmQg@mail.gmail.com>
	<CAGAf8Lys-HNqArNa7cqJ-swg8YQbdRmaXpK58RMaoM64bukRsw@mail.gmail.com>
In-Reply-To: <CAGAf8Lys-HNqArNa7cqJ-swg8YQbdRmaXpK58RMaoM64bukRsw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 28 Nov 2018 13:52:56 +0100
Message-ID: <CAP71WjyXAx1O5La5J-PsdYgGsLbd1KXD7dinJMZRnZJc65KyNQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: jan.kiszka@siemens.com, Yocto list discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 28 Nov 2018 12:53:10 -0000
Content-Type: text/plain; charset="UTF-8"

hey,

On Wed, Nov 28, 2018 at 1:42 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> > What can you not do with Yocto's git repositories?
>
> Please, refer to my initial email. Not referring to Poky, I guess, the
> Poky repo is equivalent to kernel.org. In other words, everything with
> it can be done with git tool.
>
> I am referring to many others, associated with github. Maybe it is
> ONLY github, which does not support git tool in full extend.

as others said before, meta-bbb is a proper git tree. and for obvious
reasons, github is definitely a decent git service provider.

>
> So, as I said/wrote in the initial email. The concrete meta-bbb does
> not support git tag, git describe.

The problem you are seeing is that no git tag have been pushed to
meta-bbb, but that doesn't make meta-bbb an invalid git repo, or an
invalid OpenEmbedded layer. What we expect from OE layer is to provide
branches which track the oe-core repo (e.g. master, thud, sumo, ...),
but there is no requirement for tags.

>
> Once I have no tags, I could not do anything with git log. And... You
> can imagine.

Actually, no, I do not imagine. git log will work, with or without
tags. Git log will go through the history of commits, and it doesn't
need tag. Git tags are optional references that can be "attached" to
commits.

>
> Sorry for creating waves. No intent to offend anybody. Just a (strong) thought.
>
> I guess, github has some significant problems supporting completely
> git tool. Since I see that gitlab does support it (after reading, I
> assume this is done for gitlab in full extend).

This is not correct. I hope the clarifications above would be helpful.
github definitely supports git very well, so does gitlab.

>
> Peace!
>
> Best Regards,
> Zoran
> _______
> On Wed, Nov 28, 2018 at 12:27 PM Burton, Ross <ross.burton@intel.com> wrote:
> >
> > On Wed, 28 Nov 2018 at 11:22, Zoran Stojsavljevic
> > <zoran.stojsavljevic@gmail.com> wrote:
> > > Since with git I can do almost whatever with kernel.org (and
> > > derivatives, all known distros) git... Very opposite to YOCTO. And I
> > > like git, It is VERY powerful. Maybe I finally started to understand
> > > the tool.
> >
> > What can you not do with Yocto's git repositories?
> >
> > Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

