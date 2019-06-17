Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B7EBE00D64; Mon, 17 Jun 2019 07:05:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
	[209.85.222.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A22E00D30
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 07:05:27 -0700 (PDT)
Received: by mail-qk1-f193.google.com with SMTP id p144so6186997qke.11
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 07:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=v7Jrg27Y8S4GftmZu/ApvRAf1kkWyXQg/cpc5PEEZtU=;
	b=G+zo7EqR61PTkacnht6PWNWEYQ+oXycw9vhOhYlumwDGNzR0ltuvbp7slNasQPZ9j7
	YF7DaA1J4DrTUId5hbVYXQGmHnJWJcGiCH6yiYCF1NJU5i/LHwVKdYSgN9hlLRBLZmxE
	upUlNbrlLct0HUJSSbh4U4/lEt7YoLjA0PvrTSYFUMmQ9tlKPn6iVrhTiATdUOrrLYNd
	EztUCab8RHEK87wgcsITC6Dtc5qrGuy5aDUxj4r9l8SaRJsgeYie44FAYGZT3lfsFDyp
	aPZraXZ54xkMaIHQH0Gz3CVbpVCzztUWXnOkRFqmo1K48P1Ti/Hm2zaaLpUNN33IAHgw
	uHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=v7Jrg27Y8S4GftmZu/ApvRAf1kkWyXQg/cpc5PEEZtU=;
	b=s1LRpx4AmsvUG90V2/aWySc/1+g1QmhrRQBA8xwMtIbgBxl0yTEXzQ8Rsvj2EkCqDh
	DA3ZuR/xbMgwrhR3Vx97cCm+9EVBjrLLNFy1FM1oWNYxNTwfWnGz6Pv5qaKvHv3kygcR
	i582DZW9syD7tFW4Ff/jhYBhrfJqg45yUKaYZ33LeLz16ftMAq8XVXOrjQUwJpZ2JPDZ
	8iYLS1nlKkhdCtr1Mu2sJdVdv8PaKGwqQCfNK97KOKm+8ON/OVKjG8KLRRq0DTJZXfgP
	IMojzqQb2AnSMF3Xc0XYFcKIvNfM/PbO1ASYVbgjNxFPd2dqCHwJuuRWwxWHlggAXWNz
	Pqxw==
X-Gm-Message-State: APjAAAXwPdAmgT4GJ25+vWOI5W90WGRciy9ExDLdmzOZzpyzetqoGmil
	Clvf0Z5pOtiwUw1SL5P8DI6/pKmrAcSpyw0bAa0=
X-Google-Smtp-Source: APXvYqwtLZb9dK7dkFk4Xr287AxvWtT4RVU6QEJ/qNKEz9k0apX3s8Ow/5Z6OqsdxtezVJEfFRmTy3+9F0uFVvGNKxE=
X-Received: by 2002:a37:4d16:: with SMTP id a22mr87412824qkb.103.1560780327320;
	Mon, 17 Jun 2019 07:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
	<CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
	<trinity-90f4bc6a-aa89-4bf8-aa92-72aec6a019e5-1560776407716@3c-app-gmx-bs08>
In-Reply-To: <trinity-90f4bc6a-aa89-4bf8-aa92-72aec6a019e5-1560776407716@3c-app-gmx-bs08>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 17 Jun 2019 16:05:15 +0200
Message-ID: <CAGAf8LwnPTFedqXA6zwSF22bK_VPs2otSsVg5e=hDAXp+q5Csg@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: cortexa9t2hf instead of cortexa9hf
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
X-List-Received-Date: Mon, 17 Jun 2019 14:05:29 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Arno,

Let me try to explain my point of view. Since here (my best guess) we
have some asynchronous bitbake code which went South upon introducing
T2 HW extension.

Point [1]: as far as I understand arm, cortexa9t2hf is is just a
superset of previous cortexa9hf (HW wise). NEON HW extension (NEON
media coprocessor) exists in both of them. In other words:
cortexa9t2hf = cortexa9hf HW + T2 HW extension.

Point [2]:
> bitbake gives me in 2.5:
> TUNE_FEATURES        = "arm armv7a vfp thumb neon callconvention-hard cortexa9"
> TARGET_FPU           = "hard"
>
> and in 2.7:
> TUNE_FEATURES        = "arm vfp cortexa9 neon thumb callconvention-hard"
> TARGET_FPU           = "hard"

These two lines are the same: you are able to use 32b arm mode, 16bit
thumb mode, using armv7 HW with neon HW extension, and using HW FP
extension as well. The Cortex in both cases is A9.

I expect that somebody somewhere in bitbake version 1.42 - 100% sure
(since 2.5/Sumo uses bitbake 1.38) dropped "armv7a" as TUNE FEATURE,
and I have no idea if this is done intentionally or not.

Because of that I copied Alex and Ross to CC: into email, so they
should unveil this mystery (I would prefer "armv7" to stay in bitbake
1.42, since A8 and A9 belongs to armv7, A15 belongs to armv8 (IIRC).

Bottom line: nothing to be done by you, Arno, seems that bitbake 1.42
should return "armv7" as TUNE FEATURE.

Best Regards,
Zoran
_______


On Mon, Jun 17, 2019 at 3:00 PM Arno Steffens <star@gmx.li> wrote:
>
> Hello Zoran,
> thanks. As far as I understand is thumb2 another mode of coding, that might create more compact code.
> But I want to keep all compatible to my previous tool-chain and settings.
> The only file where I can found this "cortexa9t2hf" is
> ./meta/conf/machine/include/tune-cortexa9.inc
> but I can't see how I can control Yocto to generate "cortexa9hf-neon" as before.
> Or have I been wrong the time before?
>
> bitbake gives me in 2.5:
>
> TUNE_FEATURES        = "arm armv7a vfp thumb neon callconvention-hard cortexa9"
> TARGET_FPU           = "hard"
>
> and in 2.7:
> TUNE_FEATURES        = "arm vfp cortexa9 neon thumb callconvention-hard"
> TARGET_FPU           = "hard"
>
> so armv7a seem to be missing. In terms of thumb both is same. But is that the reason? Where to set it?
> Arno
>
> >
> > Hello Arno,
> >
> > Your question, per say, has little to do with YOCTO forum. But I'll
> > try (as my best) to answer your question.
> >
> > Cortexa9hf should be armv7 A9 Hard Floating (it contains HW FP unit).
> >
> > Cortexa9t2hf is by analogy armv7 A9 T2 Hard Floating. Now, the
> > question is what is T2? T2 is addition to the previous architecture
> > Cortexa9hf, and addition is Thumb-2 mode.
> >
> > Hope this helps,
> >
> > Zoran
> > _______
> >
> > On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wrote:
> > >
> > > I switched from Yocto 2.5 to 2.7 and recognised a new architetcure name.
> > > Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do something wrong or what exactly does this t2 mean?
> > > Target system is a Zynq7020 system.
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >

