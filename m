Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E439E00D7E; Thu,  6 Jun 2019 06:47:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69425E00D6B
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 06:47:35 -0700 (PDT)
Received: by mail-lj1-f195.google.com with SMTP id j24so2109745ljg.1
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 06:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=WWd8fwm4h6Vw6BVZwSZ6ulmF6T2rYEV+J9nHSeIuBss=;
	b=G0V6/PF9yPTef6P8LwtDysV7Ms6td1sYobXVHmjGJLOGQUI/0HvXz25P9kOGRTawWW
	7gUe7MKYS1ghBAhND8CIhXGC2Z158JtkvSqHdK1GU2dynZDXFiWx/tQIrsiSuZr8xRnq
	VNU7K7gha6/xYsB9NJ64tVxfGBdzm3NVAdvj4loYa72U61TSQaJqBrHeUHnuxMvIfr+b
	ULar/LZbMCicz/7CjG0f7df5Tnbk0QYYPxOp5TkqpaYn/9QpIFXtqqt0F91+g8mrExpL
	n5sdEUWUh+PPb5raTlg+KLxYATuzOd0ywSF5hwoBsKdPZPVrKmdZTR/olMYso9tLAR/q
	Cu0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=WWd8fwm4h6Vw6BVZwSZ6ulmF6T2rYEV+J9nHSeIuBss=;
	b=c77bRfutbqaqPQ9NL4qPTHsdybHJaAxyfGUmuJq9RMDEu4/SPRyQ1Zaj7foQESob7Z
	fYx0gk8Ty+OHrLIgFE6Uni9b5AjQj/tclQc6VCm7XUYDp1y6Hidzo0a/TGhjoAl2SnGx
	k2k0wHiAqHw+JukC7hoA2mrO4mdl7mRaUeqz8vQGhlFG7FV+6m1wWC+beHd+4nBvro/1
	2ccmC5V0BPT7yd+QFrdouHeeh2biQORTVHqNqcU1WCG50DpJkyplF9GZyxlLhRemmIrq
	WwaxmdeuO8fZOFAfzEBP9L6NEH0RQTnIr5sbxmCquj2m10JkwoA3zTaxiI2w5C7y8ozN
	qmmg==
X-Gm-Message-State: APjAAAWitoq/JZFX+oamPB92JxaVX57KZOdpfCAK1QLMTRK2RJ05pqSs
	TbIy6Qke5lwl67Bw/3Rh8HaO4IH76hZMMg1Ny6+FLwUT
X-Google-Smtp-Source: APXvYqyH+acatdNpvlkXDqOAIpYS75s9nnsHFB9Ls+279lFZDk/utIS0tbdSXXu0cZk6K+/xxQRgQ0ukRyrMErf57V4=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr2940690ljg.62.1559828854221; 
	Thu, 06 Jun 2019 06:47:34 -0700 (PDT)
MIME-Version: 1.0
References: <421b2493-0fe5-c286-bf96-e6888264806a@bisdn.de>
In-Reply-To: <421b2493-0fe5-c286-bf96-e6888264806a@bisdn.de>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 6 Jun 2019 09:47:22 -0400
Message-ID: <CADkTA4POtjuyzbwNLs3ZwwJwCbrY_4V7Ccp2+LcECnCzpphQ1Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 06 Jun 2019 13:47:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 6, 2019 at 9:38 AM Pierluigi Greto <pierluigi.greto@bisdn.de> w=
rote:
>
> Hi,
>
> I have to create a custom 4.14.49 linux kernel. In my recipe I have added=
 my defconfig, but yocto it's not taking in consideration the defconfig. In=
stead it's building the kernel using the default values. Also the compilati=
on task is to fast for building the kernel. My target system is an arm arch=
itecture (DEFAULTTUNE ?=3D "cortexa9").
> I have tried also to append this on my recipe but the result does not cha=
nge:

Can you share your kernel recipe and layer(s) + defconfig ? Things are
working fine for me, but if I can see (and build) your recipes perhaps
something can be spotted.

Bruce

>
> do_compile_prepend() {
>      cp ${WORKDIR}/defconfig ${B}/defconfig
>      cp ${WORKDIR}/defconfig ${B}/.config
>      oe_runmake -C ${B} ARCH=3D${ARCH} ${S}/defconfig
> }
>
> If i try to "cheat" and add cp ${WORKDIR}/defconfig ${S}/.config on the d=
o_compile_prepend obviously make will not work: "kernel-source is not clean=
, please run 'make mrprop' ".
>
> Any suggestions is very welcome.
>
> Thank you,
> Pierluigi
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

