Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2B1FE00CFF; Mon, 18 Dec 2017 14:30:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65606E00A9C
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:30:35 -0800 (PST)
Received: by mail-qt0-f176.google.com with SMTP id f2so22019003qtj.4
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=huTnuPxMsqZ2FFhWbBevAPunnuQyj0Sf71pJflcWEGA=;
	b=I3ztgMC/Tdlx2meNo9ygptuBcUkkk+fgIsyrUtArmd+kOQmFfmMMV1pOueXuYoMERR
	nAdInGLb/r4Yhkgf6N4k8flNLsAw8s7FG4izbsJ9nduboKB7oU/a7bWpTIHLI5OHKYFM
	iqXFFKFS1VLfqO1Fnn7C3XrlAq/SHKPH+WDb0FnZMbhW3hG2DdD6soXsDzcJgyKZEJER
	7Rn2rHnKy2HtbmLtuzHaX89gEaJgBi33gsBfQu0IXTkFGPi43UarWmxV5ZKtuFftMQPU
	9m5y3evMAAfol5ZQAZtCXep550FDkV92lv6vkdAPatwTfR07cLYuOIAlWgg02I4zS+wc
	3hyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=huTnuPxMsqZ2FFhWbBevAPunnuQyj0Sf71pJflcWEGA=;
	b=CN/gtBWHOzXIE0q/js4FDVACvcgIeF0f6KZzhAKW9TRHGQNdfr7cV+d4fs+hcN+BG8
	VQ9Mng25IinmHZy+ExiFBkU0vEAE7a5ohffqcywZy95Od5Gtp90foJGeqUjslITUWnEh
	3M4vIDLGqymfr2Cf1xb543Sw4f4lGB0V1xQvJlXr7IMgcoO8xubS4tOGLUeUX1PFXQqB
	HEWhxG/DOnd4G+oAYH/7oV2nLtCng13yrEBfm36gOhUKUqTa6iuEvnhxQ2dzyW9dSVbN
	qxQXooIneHMnP1E8nl0Gq6zASMHJwP7QrF65uEJx8OtsT4FjKLsAqY/zkw8LbHLbvueU
	YV7Q==
X-Gm-Message-State: AKGB3mLFpWV5LEem4DrqF2uf3W5hOKai/OSaLW+8wsfv8va4X5mzshnn
	NLNuoq5L4sINs17POTmccQBj5uAWDmMZ3HWx3aY=
X-Google-Smtp-Source: ACJfBot7BQZZV1N6hLbcJBasq9wsLLmHXHzSakHNgpWhVu1Z6OQyT7Kx5SbyLdDPYrnXcFRs0To+c8w6T5VfEzmlUe8=
X-Received: by 10.200.36.22 with SMTP id c22mr2013156qtc.207.1513636235350;
	Mon, 18 Dec 2017 14:30:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.15.141 with HTTP; Mon, 18 Dec 2017 14:30:34 -0800 (PST)
In-Reply-To: <CAJCDnYYgN=nFYwOz5inC3W5jZojj1QdAG9ck90rXAiPZ1b0xCg@mail.gmail.com>
References: <CAJCDnYYgN=nFYwOz5inC3W5jZojj1QdAG9ck90rXAiPZ1b0xCg@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 18 Dec 2017 23:30:34 +0100
Message-ID: <CALw8SCV2M54g94qCYA2Xa7nVYCTOgzkzNkt6u7qefCdpwvVurw@mail.gmail.com>
To: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wrong distro name in toolchain
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
X-List-Received-Date: Mon, 18 Dec 2017 22:30:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2017-12-18 12:11 GMT+01:00 Marek S=C5=82omiany <marekslomiany@gmail.com>:
> Hi, I'm having problem while building Qt application inside of yocto and
> using generated SDK.
> I have bypassed it when using generated SDK, which I describe here.
>
> My setup in short:
> I'm using for Qt this layer git://github.com/meta-qt5/meta-qt5.git in roc=
ko
> branch
> beside Qt, other layers that might be important:
> meta-poky (rocko)
> meta-oe (morty)
> meta-python (morty)
> meta-networking (morty)
> meta-ti (morty)

First of, why are you mixing branches here? You should use the same
branch on all the layer for better chances for it to work
out-of-the-box. There have been a lot of changes to the "core" from
morty to rocko and trying to mix them probably raises some "extra"
problems that you would not normally get.

>
> The platform is am335x
> distro name is "etos"
>
> I had some problems with sdk (at first I added Qt to my build but
> applications were developped and build by my coleagues using external
> toolchains).
> Recently I've added recipes for those apps to my layer.
> To test if code I got from my team is building fine, I have generated SDK
> using "bitbake <image-name> -c populate_sdk" and deployed it in default p=
ath
> which is /opt/etos/1.0/. When I have sourced it and tried to configure I
> got:

What image did you build when you generated the SDK?

meta-qt5 seems to provide a recipe for a toolchain containing all the
Qt stuff including qmake [1].  Try that out if you haven't already by
simply running:

   bitbake meta-toolchain-qt5

[1]. https://github.com/meta-qt5/meta-qt5/blob/master/recipes-qt/meta/meta-=
toolchain-qt5.bb

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak

