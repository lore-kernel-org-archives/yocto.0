Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFA61E00A96; Thu,  6 Jun 2019 20:10:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A761E00951
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 20:10:52 -0700 (PDT)
Received: by mail-lj1-f195.google.com with SMTP id 16so400566ljv.10
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 20:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+wFxIgmNrYMwbp5oh3IK1K1eD9lbhrZVKKc0AB0wlKU=;
	b=BZt8wLuHRheBMO9kpPb2emriLDWmVJ31YLI5/6hE+UsKEejOSHQN57DiUzmOtlRzPN
	MYFdFwcIJWH9KbSABgdvgSf9wYug9tvEtmaOASfufx+XJPmSBQj7lLATN2drlI3I3N1q
	GJSF88Fs2SrpkTvHfk5Eu2qDaSiAKViaNFzbdLPtmV/e9mSh6wKUo00ITnuzGjuTkRTn
	2EL3Y08cj1F+JNYz8HBqRjJ2XcfYlkW0+p98clskOqipC6F6ie+BQTrpTNkSZ3P1YQ3+
	SbEiQiLo39hCRAmYHv9LmqGsk52QSH8QSyxPvekdUdRbYROI/XLZJXkaeNg0Q9hNp8x4
	3Mrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+wFxIgmNrYMwbp5oh3IK1K1eD9lbhrZVKKc0AB0wlKU=;
	b=eQ92aSk69N607S4zmUe8mgOuHLOGdrAHH41tukqOoM3gFFDsiXjUnXi5z0m2fyCpPT
	90ZVU4zUqccdz+aGyNFbNHcgPBpLUASe2SD/pbZ4vAdLlPt0DTpLrEjCO8gDFK/vxrKM
	bMeSOMgYJCfLfSRF2KhtXx6ZDZO8Bcy8EPqJbgaNZyFOOaRHxcm1BWvJgb6a1pBCZBC2
	r8dbgjQA+heGzlfq0TVzLuP9DYABp9fTIb6Fgjb8wgIis2avYSB9GHGjucvHlHTxtRPD
	veOZbUzbaYpTulNonR4rkTvYEwjTbmNZLsj5WAFUPguFgeMBpLlrL+92gyfFziZhaPUS
	ysAg==
X-Gm-Message-State: APjAAAUSljZQny+86jEL9bmAi88s1d6KikBW8HqBgTlVUxAA02001Km1
	WTfugn6ujYTS0EGODUsH/GywsBCKm1B2aIbDmdMwvmdX
X-Google-Smtp-Source: APXvYqzm3mj79gszENz8JFhLskpy8mzRMHGVn2ZmBgCIlsuFAmvO/rfX0gRytjltsH/amDXB1ZwzkMPeRkPYsRXfNbM=
X-Received: by 2002:a2e:b1d0:: with SMTP id e16mr12588720lja.179.1559877051634;
	Thu, 06 Jun 2019 20:10:51 -0700 (PDT)
MIME-Version: 1.0
References: <421b2493-0fe5-c286-bf96-e6888264806a@bisdn.de>
	<CADkTA4POtjuyzbwNLs3ZwwJwCbrY_4V7Ccp2+LcECnCzpphQ1Q@mail.gmail.com>
	<18197114-5f5c-8ec5-691e-7f4e29bf2193@bisdn.de>
In-Reply-To: <18197114-5f5c-8ec5-691e-7f4e29bf2193@bisdn.de>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 6 Jun 2019 23:10:40 -0400
Message-ID: <CADkTA4Mk7YRJAEcOfq5FJuoMNNBfA-A8CaSiZvB-uZo65VGjvA@mail.gmail.com>
To: Pierluigi Greto <pierluigi.greto@bisdn.de>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: arm yocto-linux custom defconfig not working
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
X-List-Received-Date: Fri, 07 Jun 2019 03:10:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 6, 2019 at 10:06 AM Pierluigi Greto
<pierluigi.greto@bisdn.de> wrote:
>
> Hi,
>
> thank you for the reply. In the attahcment the layer for the kernel and
> the layer with the machine configurations.

Thanks for the layers. I was able to pull together a thud build env
and do some tests.

For me, I see the defconfig being used as expected. The key words
there may be "as expected".

How were you determining that the defconfig wasn't being used ?

There are always some minor differences between most defconfigs and
what ends up  the .config due to minor kernel version differences, or
the fact that by default, when a defconfig is fed through the
linux-yocto config process it assumes that the defconfig is fairly
complete and is intended to be a full specification .. as such, it
runs merge config with allnoconfig first, and then applies the
defconfig on top. So if something was perhaps being selected by an
option, or a default configuration was being assumed .. you will see
some minor deltas.

Bruce

>
> Pierluigi
>
> On 06/06/19 15:47, Bruce Ashfield wrote:
> > On Thu, Jun 6, 2019 at 9:38 AM Pierluigi Greto <pierluigi.greto@bisdn.d=
e> wrote:
> >> Hi,
> >>
> >> I have to create a custom 4.14.49 linux kernel. In my recipe I have ad=
ded my defconfig, but yocto it's not taking in consideration the defconfig.=
 Instead it's building the kernel using the default values. Also the compil=
ation task is to fast for building the kernel. My target system is an arm a=
rchitecture (DEFAULTTUNE ?=3D "cortexa9").
> >> I have tried also to append this on my recipe but the result does not =
change:
> > Can you share your kernel recipe and layer(s) + defconfig ? Things are
> > working fine for me, but if I can see (and build) your recipes perhaps
> > something can be spotted.
> >
> > Bruce
> >
> >> do_compile_prepend() {
> >>       cp ${WORKDIR}/defconfig ${B}/defconfig
> >>       cp ${WORKDIR}/defconfig ${B}/.config
> >>       oe_runmake -C ${B} ARCH=3D${ARCH} ${S}/defconfig
> >> }
> >>
> >> If i try to "cheat" and add cp ${WORKDIR}/defconfig ${S}/.config on th=
e do_compile_prepend obviously make will not work: "kernel-source is not cl=
ean, please run 'make mrprop' ".
> >>
> >> Any suggestions is very welcome.
> >>
> >> Thank you,
> >> Pierluigi
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

