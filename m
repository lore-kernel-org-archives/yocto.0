Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5322AE00D6B; Tue, 18 Jun 2019 13:55:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32BD8E00D42
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 13:55:44 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id x2so17241702qtr.0
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 13:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=FOWWkd7VNNeDASKNttpvElB9Fe4MpxOUpMpJvhqGw0Y=;
	b=sNmamsq+FUAZc5PAt//Op0rW/wpEznafU+UzHQLqjGH9P+znRlI5pT2RpiyoOlpZ6F
	sa+qMaL2BBvaY7BZ5YCR5VtCTtLx7wHaG2vi1ieb3mUe5BaGqgJdX9cD8B8CC81LPds9
	pwOy5CiFcmtMyh0M4Y1aHdxistDF8ZgEu/7a64TyFfxQnSk/Xd9cpOUg+zNZMDm1Ik4c
	ff+h9csltbkza6Q1XPI/QUbXUgBhGXRl+xqMjgs0Ben6it7JwKSq6TT9N7oeJxIgAL30
	vxw7PibCgGsOOwusFMakNbStCW+fHqVNtQ3oUfAFQvPbF4W5dIwran+mn2V9O75oAK9Y
	53/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=FOWWkd7VNNeDASKNttpvElB9Fe4MpxOUpMpJvhqGw0Y=;
	b=tjDMpDGdOdS7rPbv/Cmnjg6aVwmXuN7k1SMV+YpiiN96CIf3ehRCuYURN1YSvOEMlQ
	cxP6TJ0NcAkvEC6WDmSpudY7CJGQSFkkhQy38UuByuJz51Em7f4MqpguZb3S8BfnPhPf
	wuHNMDc/WNE8yTfiDpwHIkotBcuupmuAsFzqrcQ0v6IC+jZWUA8IpCj9kLwrIDnvX47c
	tc8fVrTSgqVC3R4KodcN+OkfO3SOt6BiavBQ09URCMR3J1//+aIyoz3OUdkfk77LKI1r
	u1tE2kPstZuA+yKgNjD8oO41bHs8wdEN1iMpcJpM3KvXPm4dn0lz57lsp9YMIX6GGtxO
	Kcew==
X-Gm-Message-State: APjAAAUtGI+2/Sr8arZRQrdqbOgYBCRgMjObqSD0NDFueFkxcE9bxQtD
	mw3TGouw4l7EdD5K3KmCKcyrvwbJ81SLJFX5k+w=
X-Google-Smtp-Source: APXvYqwz8JhtTkOgCGrA6vIy6ZrZYh6zlK7xpW2TD/Tve/38PdNbW2Vxbq4ICsGeUSgy7TSEvG1k2jwHuPpcI/LY8o0=
X-Received: by 2002:ac8:3485:: with SMTP id w5mr24530910qtb.142.1560891343339; 
	Tue, 18 Jun 2019 13:55:43 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
	<CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
	<trinity-90f4bc6a-aa89-4bf8-aa92-72aec6a019e5-1560776407716@3c-app-gmx-bs08>
	<CAGAf8LwnPTFedqXA6zwSF22bK_VPs2otSsVg5e=hDAXp+q5Csg@mail.gmail.com>
	<trinity-fe27ef88-5231-4c98-92a3-47d5fb327d83-1560793656274@3c-app-gmx-bs55>
	<20190618171345.GB1501@jama>
	<CAGAf8LwYfO93pTwkKzsxHJPaJUz12vm9d+HBufyLS+bzDqR0hQ@mail.gmail.com>
	<20190618190343.GC1501@jama>
In-Reply-To: <20190618190343.GC1501@jama>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 18 Jun 2019 22:55:31 +0200
Message-ID: <CAGAf8LyR-Ec9jh5OwjPKuF+AMDWU3DNt6TzsAiQYx+XKTL7QAQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Arno Steffens <star@gmx.li>, Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 18 Jun 2019 20:55:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> bitbake is still just a parser of the metadata and executor of our
> tasks, it doesn't (and shouldn't) need to know anything about arm silicon=
s.

You precisely formulated my latest thoughts in one sentence. :-)

Cheers,
Zoran
_______

On Tue, Jun 18, 2019 at 9:03 PM Martin Jansa <martin.jansa@gmail.com> wrote=
:
>
> On Tue, Jun 18, 2019 at 08:47:32PM +0200, Zoran Stojsavljevic wrote:
> > > Just ARM_INSTRUCTION_SET to "arm" which will give you "cortexa9hf" ag=
ain
> > > (not "armv7a").
> >
> > I think this is impossible for the current state of YOCTO affairs. I
> > do not think bitbake is able to determine type of arm silicon, since
>
> Have you read the commit which enabled thumb by default for MACHINEs
> which support it?
>
> bitbake is still just a parser of the metadata and executor of our
> tasks, it doesn't (and shouldn't) need to know anything about arm silicon=
s.
>
> DEFAULTTUNE is still set in the MACHINE config (through one of the .inc
> files) and ARM_INSTRUCTION_SET is just another variable which says if
> it should include -mthumb or -marm by default in TUNE_CCARGS, read
> conf/machine/include/arm/feature-arm-thumb.inc
>
> Cheers,
>
> > it needs to implement the following instruction somewhere beneath (in
> > privileged mode):
> > asm volatile("mrc p15, 0, r0, c0, c0, 0" : "=3Dr"(reg_value) );
> >
> > But according to the variable MACHINE (example: MACHINE ??=3D
> > "beaglebone"), it is able to determine that the platform is a type of
> > armv7a.
> >
> > My two cent worth thinking,
> > Zoran
> > _______
> >
> >
> > On Tue, Jun 18, 2019 at 7:13 PM Martin Jansa <martin.jansa@gmail.com> w=
rote:
> > >
> > > On Mon, Jun 17, 2019 at 07:47:36PM +0200, Arno Steffens wrote:
> > > > Thanks for explaining this.
> > > > I take some time to read about thumb/thumb2. The feedback is mixed.=
 It seems to generate more compact code, but some say it speeds up, others =
it slows down because of reduced function set - and it can cause strange ef=
fects.
> > > > And mixing this causes time to switch processor mode. So, as I am n=
ot an expert in this and can't decide what ist best on per function base an=
d speed is of highest priority, I think I better should use not thumb(2).
> > > >
> > > > So, do I get it right that with this cortexa9t2hf I just have the o=
ption to compile it for thumb2? But without using a dedicated compiler opti=
on it generates same "standard" arm code and the difference is just to adap=
t all the Makefiles for this suffix.
> > > >
> > > > According to Martin I can get the previous setting by just set ARM_=
INSTRUCTION_SET to "arm" instead of "armv7a". Mh - I just afraid that I los=
e other kinds of optimisation. (I am just a user not an expert in arm archi=
tecture).
> > >
> > > I didn't say anything about changing the DEFAULTTUNE.
> > >
> > > Just ARM_INSTRUCTION_SET to "arm" which will give you "cortexa9hf" ag=
ain
> > > (not "armv7a").
> > >
> > > > On the other hand for those like me it is better go the standard wa=
y. Once I am sure compiler results will not become worse (see above) I go f=
or the pain and renaming my toolchain/makefiles/stuff.
> > >
> > > The results should be almost the same, maybe slightly better, depends=
 on
> > > the actual code as Khem mentioned.
> > >
> > > But if this causes you a lot of pain "renaming my toolchain/makefiles=
/stuff"
> > > then you should probably spend the time on your tooling instead of
> > > replacing one hardcoded value with another.
> > >
> > > Cheers,
> > >
> > > >
> > > > Thanks for you taking the time.
> > > > Arno
> > > >
> > > > > Hello Arno,
> > > > >
> > > > > Let me try to explain my point of view. Since here (my best guess=
) we
> > > > > have some asynchronous bitbake code which went South upon introdu=
cing
> > > > > T2 HW extension.
> > > > >
> > > > > Point [1]: as far as I understand arm, cortexa9t2hf is is just a
> > > > > superset of previous cortexa9hf (HW wise). NEON HW extension (NEO=
N
> > > > > media coprocessor) exists in both of them. In other words:
> > > > > cortexa9t2hf =3D cortexa9hf HW + T2 HW extension.
> > > > >
> > > > > Point [2]:
> > > > > > bitbake gives me in 2.5:
> > > > > > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvent=
ion-hard cortexa9"
> > > > > > TARGET_FPU           =3D "hard"
> > > > > >
> > > > > > and in 2.7:
> > > > > > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconve=
ntion-hard"
> > > > > > TARGET_FPU           =3D "hard"
> > > > >
> > > > > These two lines are the same: you are able to use 32b arm mode, 1=
6bit
> > > > > thumb mode, using armv7 HW with neon HW extension, and using HW F=
P
> > > > > extension as well. The Cortex in both cases is A9.
> > > > >
> > > > > I expect that somebody somewhere in bitbake version 1.42 - 100% s=
ure
> > > > > (since 2.5/Sumo uses bitbake 1.38) dropped "armv7a" as TUNE FEATU=
RE,
> > > > > and I have no idea if this is done intentionally or not.
> > > > >
> > > > > Because of that I copied Alex and Ross to CC: into email, so they
> > > > > should unveil this mystery (I would prefer "armv7" to stay in bit=
bake
> > > > > 1.42, since A8 and A9 belongs to armv7, A15 belongs to armv8 (IIR=
C).
> > > > >
> > > > > Bottom line: nothing to be done by you, Arno, seems that bitbake =
1.42
> > > > > should return "armv7" as TUNE FEATURE.
> > > > >
> > > > > Best Regards,
> > > > > Zoran
> > > > > _______
> > > > >
> > > > >
> > > > > On Mon, Jun 17, 2019 at 3:00 PM Arno Steffens <star@gmx.li> wrote=
:
> > > > > >
> > > > > > Hello Zoran,
> > > > > > thanks. As far as I understand is thumb2 another mode of coding=
, that might create more compact code.
> > > > > > But I want to keep all compatible to my previous tool-chain and=
 settings.
> > > > > > The only file where I can found this "cortexa9t2hf" is
> > > > > > ./meta/conf/machine/include/tune-cortexa9.inc
> > > > > > but I can't see how I can control Yocto to generate "cortexa9hf=
-neon" as before.
> > > > > > Or have I been wrong the time before?
> > > > > >
> > > > > > bitbake gives me in 2.5:
> > > > > >
> > > > > > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvent=
ion-hard cortexa9"
> > > > > > TARGET_FPU           =3D "hard"
> > > > > >
> > > > > > and in 2.7:
> > > > > > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconve=
ntion-hard"
> > > > > > TARGET_FPU           =3D "hard"
> > > > > >
> > > > > > so armv7a seem to be missing. In terms of thumb both is same. B=
ut is that the reason? Where to set it?
> > > > > > Arno
> > > > > >
> > > > > > >
> > > > > > > Hello Arno,
> > > > > > >
> > > > > > > Your question, per say, has little to do with YOCTO forum. Bu=
t I'll
> > > > > > > try (as my best) to answer your question.
> > > > > > >
> > > > > > > Cortexa9hf should be armv7 A9 Hard Floating (it contains HW F=
P unit).
> > > > > > >
> > > > > > > Cortexa9t2hf is by analogy armv7 A9 T2 Hard Floating. Now, th=
e
> > > > > > > question is what is T2? T2 is addition to the previous archit=
ecture
> > > > > > > Cortexa9hf, and addition is Thumb-2 mode.
> > > > > > >
> > > > > > > Hope this helps,
> > > > > > >
> > > > > > > Zoran
> > > > > > > _______
> > > > > > >
> > > > > > > On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> w=
rote:
> > > > > > > >
> > > > > > > > I switched from Yocto 2.5 to 2.7 and recognised a new archi=
tetcure name.
> > > > > > > > Instead of cortexa9hf it is now build for cortexa9t2hf? Did=
 I do something wrong or what exactly does this t2 mean?
> > > > > > > > Target system is a Zynq7020 system.
> > > > > > > > --
> > > > > > > > _______________________________________________
> > > > > > > > yocto mailing list
> > > > > > > > yocto@yoctoproject.org
> > > > > > > > https://lists.yoctoproject.org/listinfo/yocto
> > > > > > >
> > > > >
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> > > --
> > > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

