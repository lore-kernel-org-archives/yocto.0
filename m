Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48EDBE00C9B; Wed,  2 Oct 2019 16:02:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6670E00B9E
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2019 16:02:15 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id u40so913680qth.11
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2019 16:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=EoCo638UvpnyvOsRN6sgphonxMCBEMJ/gBUkg9tIfAI=;
	b=Ae3+hIFdjDTUiIfBWscEkFJf8/6zAYrHmbz45zcUqNKsBkFqFNVJQai9vqym3uh+jl
	UUaU4kQ4TX9UIFPLM+2pwMzpf46jal/e5k6Xv9r4gAowoOmooAyR4f+VuYtmI4Njaxsp
	hdnDbzmKlETAjmQ0ZV/7osNsS54mY0pNMcUsmicZb85U2N91nMaEJFh+P/yCO9Nh0aBq
	6c6/ag0VrlfWBVZSX5Hphe22RD3WIQYkuIo+cdjICTRvm2SPuF2FYPJ1Y1fcutU0qv8X
	YlzuY1HII195/35xz9oWKYhBgkwfSbuMS1e7FsoyVjLfhqQ8gtvKGkCTblPTvnxwk+vw
	z/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=EoCo638UvpnyvOsRN6sgphonxMCBEMJ/gBUkg9tIfAI=;
	b=hlFmIurC7zPDzIYRw26aqVD6yyCDSfRkjzwQweGKmO9GsSzkdhLiVYPNY/jNZL3P47
	N7cwI5lYwAM3M8IL8waKHSOUrlhO/1tnJra/7lnkuLdql7noUjUCzBnnBliokRM8lc/o
	qKZ3Csn573a0PzpSE5Q9j6ZvEaZCg/04sTeL9FZg9msBEqUcIng0LAaB2og4RWDxRKqG
	rKevCgDQzxQqHXCAjOpkZwqjHHwCN5C1Yt8JyjL7s8c598WbqWQbe4sLRVpUPe43fQ/t
	5WIIz0NvaMbJkopBgiltCthGn2zWtSX7T67LlpHVvIHG3QQAP7RnVdGqy66r4zXVynN4
	s3rQ==
X-Gm-Message-State: APjAAAUMjNqH/i4jYsdPYje1hhunqph31MMCMcNCzcfbiq7VoO88HEiF
	+tOQAUNrsgMg1PC9A++uZyMe9Ec9BFQMPc0xAbbo3DM3
X-Google-Smtp-Source: APXvYqxRL4IxC44Eu5UYmof2xGtcB/z5y8A6rimTbDOk1obXNYUYsfRQimETGjXmFWc+XSo6yNegeTAohNnRyzyuUu8=
X-Received: by 2002:ad4:4469:: with SMTP id s9mr5617663qvt.109.1570057334913; 
	Wed, 02 Oct 2019 16:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <57431d78-2438-81da-7972-e93cc91c44c4@faresoftware.it>
	<CAMKF1soerAwz8qOC0P=aDW0usnbL_rUKAAYNiWKVm4t4x8QOSA@mail.gmail.com>
	<7860c471-252c-2097-12b2-b3f3eab400fa@faresoftware.it>
In-Reply-To: <7860c471-252c-2097-12b2-b3f3eab400fa@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 2 Oct 2019 16:01:47 -0700
Message-ID: <CAMKF1sp5YSpoxWMVaqjhfj0AhT_GaYnpCoBKrnKQ6gGqZ0HnKQ@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: python3 pygame under Pyro
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
X-List-Received-Date: Wed, 02 Oct 2019 23:02:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 2, 2019 at 3:32 PM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Adding libsdl2 to DEPENDS i get sdl2-config under the folder
>
> tmp/work/armv7at2hf-neon-fslc-linux-gnueabi/python3-pygame/1.9.6-r0/recipe-sysroot/usr/bin/crossscripts/sdl2-config
>

yes and you should be able to use it.

> Il 03/10/19 00:01, Khem Raj ha scritto:
> > On Wed, Oct 2, 2019 at 2:46 PM Mauro Ziliani <mauro@faresoftware.it> wrote:
> >> Hi all.
> >>
> >> I'm trying to build python3-pygame for and imx6dl board in Pyro.
> >>
> >> Pygame needs SDL, but I don't know how to tell to bitbake for compile
> >> sdl before pygame.
> >>
> >>
> >> I put libsdl-native into DEPENDS but doesn't work.
> >>
> >>
> >> bitbake try to run sdl-config but it cannot find the file.
> >>
> >>
> >> Any idea?
> >>
> > Does, DEPENDS += "libsdl2" help ?
> >> Best regards,
> >>
> >>     MZ
> >>
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto

