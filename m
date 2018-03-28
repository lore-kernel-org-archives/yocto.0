Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFF6DE007DA; Wed, 28 Mar 2018 08:57:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D2CEE005A9
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 08:57:39 -0700 (PDT)
Received: by mail-ot0-f177.google.com with SMTP id r30-v6so3194691otr.2
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 08:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=9xC6/gbOcijebaJEa1G09yYFZb3T76ul0bcrknDWvr4=;
	b=05ztiVPDgM/Hq2d8bph7v5K5e+lOX4LSXuZn6yDDN0slY2dG9qTY8shyEWUeckaS1R
	YFv2nSEv3Z+3iQtSoHP3en4KhCHzLoczBIRwwYmpV5730k0QzAfCXjnnZUat3zqg8Bkr
	euGq7fIh24mWAxeabZJGl6Y00tipWsFEj1HC3hNM0ADLgDAjZa4tNelVbB3Qu/v0iD9U
	PZr06zJxcuheBUT5Gk9SqfcqVpK5JXhIGlRLPP/i6f8pGxPfoWgmdd2zV1GFQmA0kw5h
	OaabB6EmzuOyzU+j7PgDl8LMg7D0tUYYycUrcMUjQJxEse/gT1fUGeau6b41S4DIUtVK
	ipBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=9xC6/gbOcijebaJEa1G09yYFZb3T76ul0bcrknDWvr4=;
	b=APer1ms2BKxRvjbmXWV0/BzFA08z51bPdGrkjmipFyRRUc/2YViSFdM7CJEu/prrph
	hM9KgRWt2rMlfc3XP4EJTRyEP4yANV8XpiTAZpFDe9ah6YlgCSfltNmbhySD6E7C36f5
	pa7b+gsFbUrH4KaNvim0IhgMKJacYCd67G0Zvd4NgwrB8LHMwD69q5Ds36jsJ80ZZzw1
	ePmddUIdyLMaDxxm+CtUVAkUfeqWaoXOy2v5K/H8/nZ9M2lx+hk4+updqyxRfYZsE5Hj
	2u0J+EcfhvblJd8gcxtLs9VcQFGJeHFYzCJ2fKAd+VIvKGyvM2yhdYmcnMuKWDd8RIw8
	DIEg==
X-Gm-Message-State: ALQs6tCKV/gtTQPKMQAPHhGwNDvHdMmaRGxyUymRgK0K9ISCOXeIwPEb
	aTqHDUxAFZLMT2wQIgtGJR8wewFjK5SN8Oth0cVqHQ==
X-Google-Smtp-Source: AIpwx48iIaNGtf3ZNj2NDLR3LfAAPWN1RAOolH79MNe+J5LGrSsIBmF3tpEy3bADCCzHh8co9bpbABEajUbDXyL7slk=
X-Received: by 2002:a9d:f29:: with SMTP id 38-v6mr2799737ott.119.1522252658411;
	Wed, 28 Mar 2018 08:57:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Wed, 28 Mar 2018 08:57:17 -0700 (PDT)
In-Reply-To: <20180328150040.323D4E00B8E@yocto-www.yoctoproject.org>
References: <20180328150040.323D4E00B8E@yocto-www.yoctoproject.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Mar 2018 16:57:17 +0100
Message-ID: <CAJTo0LbTPSZLLv5pNRoA1J0q8w7Oo6FmVpGBA+D7oj=Fnbv8hg@mail.gmail.com>
To: =?UTF-8?Q?Rapha=C3=ABl_TILLET?= <rtillet@free.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RDEPENDS is ignored when building rootfs
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
X-List-Received-Date: Wed, 28 Mar 2018 15:57:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 28 March 2018 at 16:00, Rapha=C3=ABl TILLET <rtillet@free.fr> wrote:
> I=E2=80=99m using =C2=AB Pyro =C2=BB, and have built a very simple recipe=
. The build program
> Inside the recipe needs =C2=AB libncurses.so =C2=BB at run time, so I hav=
e added to my
> recipe the following :
>
> DEPENDS_{PN} =3D =C2=AB ncurses =C2=BB
> RDEPENDS_${PN}=3D =C2=AB  ncurses-libform =C2=BB
>
>
>
> The build is ok, but my final RootFs does not contain the expected =C2=AB
> libncurses.so =C2=BB Library.
>
>
>
> The only way to force the build to include =C2=AB libncurses.so =C2=BB in=
 the rootfs
> is to add =C2=AB ncurses-libform =C2=BB to my =C2=AB IMAGE_INSTALL =C2=BB=
 in =C2=AB my local.conf =C2=BB
> file, and normally I should not have to do this=E2=80=A6..

If your application links to libncurses normally then you won't need
to do RDEPENDS at all, because the dependency will be added
automatically.

libncurses.so.5 is actually in ncurses-libncurses, so that is what you
should add to RDEPENDS if your application dlopen()s ncurses instead
of linking.

Ross

