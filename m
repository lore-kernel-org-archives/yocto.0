Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EED0E00D00; Tue, 18 Jun 2019 12:03:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA878E00C93
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 12:03:38 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id x15so4460074wmj.3
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 12:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=2h2GnD/HVyx5XrP+dzRF3IxM5nItoEDKPREOMY+BJpM=;
	b=O1BZ3X6ztbeUJZthsPQq+ZBiq1uWDpEWpo5aUasJgKTYRaQQgmm5EUN4X+oFFSMw6m
	jMYUFqpMHY6qV+53r9o/b/qpPIq9E+jGBx7eJxnGEPgUowa99VH5gVr7vgL0iWtYlFDD
	AO6+ZXOlmCC7vuZN01AwA0pJIo4eKuM/3tHi0eD0QoUz5dJGUGn0ZHSLKIBRolJr+xAZ
	sIF3xf5clW8AgbBuSaCdxK2WqgvCU7TEncP4WMj5Gh7oo42tEHxp8xdAlbbX+9Qq68LL
	VYEYTRlDJV11vjgTaGvGm/1f28lGzAtoRXqoZ9oYCMpx6jJrudbNdOf/TO7Ucdgev/W8
	2SOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2h2GnD/HVyx5XrP+dzRF3IxM5nItoEDKPREOMY+BJpM=;
	b=j07m9j/zsPcoxpnTn5hwx/ANNhZ7iIHzyFhk+MeXLvr8arRaPI54U2xSPIkax3WegD
	EsjvUw0WmwirdIaHGYqLcDPfm8CfDFbrSZMy+ZIqlhgDtx7msVTIzmstS2XRSY5gzRCn
	0lCc/N69vvZJPBbA+klIQeBR8/rgW/h1EtBwqbvMh7mK4LsQiNJmKHzNJBbjL+EgtJMj
	rz3LJkSOQxMrWwF2ZAgJqW74tjDWrpzzAaFAMHrMymdjc5SBSNa0PzQ57DF6MfRrEIT/
	Qc21G1tBomILjPNr+OlJpAW5LneWl6U8wnI1nj6d/mCL+5uffSJnmaZsFGVEcz6PxCQ/
	nZuw==
X-Gm-Message-State: APjAAAVuaUqSa2YSlv7wGpNu0kL9IBenyBGtH/G4LTkzSIpN/Z2mSUkX
	LalLyIR8Ri/UI2ovf/2c/9q5EsaV
X-Google-Smtp-Source: APXvYqyvGo8+lVcrYYuv8hNGFYbs27oIfyOXiCZuemMS/YH+xM/oc7JODDe8ocNisixR3AAytIsffg==
X-Received: by 2002:a05:600c:2199:: with SMTP id
	e25mr204695wme.72.1560884617849; 
	Tue, 18 Jun 2019 12:03:37 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id
	b2sm20596628wrp.72.2019.06.18.12.03.36
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 18 Jun 2019 12:03:37 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 18 Jun 2019 21:03:43 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Message-ID: <20190618190343.GC1501@jama>
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
	<CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
	<trinity-90f4bc6a-aa89-4bf8-aa92-72aec6a019e5-1560776407716@3c-app-gmx-bs08>
	<CAGAf8LwnPTFedqXA6zwSF22bK_VPs2otSsVg5e=hDAXp+q5Csg@mail.gmail.com>
	<trinity-fe27ef88-5231-4c98-92a3-47d5fb327d83-1560793656274@3c-app-gmx-bs55>
	<20190618171345.GB1501@jama>
	<CAGAf8LwYfO93pTwkKzsxHJPaJUz12vm9d+HBufyLS+bzDqR0hQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAf8LwYfO93pTwkKzsxHJPaJUz12vm9d+HBufyLS+bzDqR0hQ@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
X-List-Received-Date: Tue, 18 Jun 2019 19:03:40 -0000
X-Groupsio-MsgNum: 45644
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4ZLFUWh1odzi/v6L"
Content-Disposition: inline

--4ZLFUWh1odzi/v6L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2019 at 08:47:32PM +0200, Zoran Stojsavljevic wrote:
> > Just ARM_INSTRUCTION_SET to "arm" which will give you "cortexa9hf" again
> > (not "armv7a").
>=20
> I think this is impossible for the current state of YOCTO affairs. I
> do not think bitbake is able to determine type of arm silicon, since

Have you read the commit which enabled thumb by default for MACHINEs
which support it?

bitbake is still just a parser of the metadata and executor of our
tasks, it doesn't (and shouldn't) need to know anything about arm silicons.

DEFAULTTUNE is still set in the MACHINE config (through one of the .inc
files) and ARM_INSTRUCTION_SET is just another variable which says if
it should include -mthumb or -marm by default in TUNE_CCARGS, read
conf/machine/include/arm/feature-arm-thumb.inc

Cheers,

> it needs to implement the following instruction somewhere beneath (in
> privileged mode):
> asm volatile("mrc p15, 0, r0, c0, c0, 0" : "=3Dr"(reg_value) );
>=20
> But according to the variable MACHINE (example: MACHINE ??=3D
> "beaglebone"), it is able to determine that the platform is a type of
> armv7a.
>=20
> My two cent worth thinking,
> Zoran
> _______
>=20
>=20
> On Tue, Jun 18, 2019 at 7:13 PM Martin Jansa <martin.jansa@gmail.com> wro=
te:
> >
> > On Mon, Jun 17, 2019 at 07:47:36PM +0200, Arno Steffens wrote:
> > > Thanks for explaining this.
> > > I take some time to read about thumb/thumb2. The feedback is mixed. I=
t seems to generate more compact code, but some say it speeds up, others it=
 slows down because of reduced function set - and it can cause strange effe=
cts.
> > > And mixing this causes time to switch processor mode. So, as I am not=
 an expert in this and can't decide what ist best on per function base and =
speed is of highest priority, I think I better should use not thumb(2).
> > >
> > > So, do I get it right that with this cortexa9t2hf I just have the opt=
ion to compile it for thumb2? But without using a dedicated compiler option=
 it generates same "standard" arm code and the difference is just to adapt =
all the Makefiles for this suffix.
> > >
> > > According to Martin I can get the previous setting by just set ARM_IN=
STRUCTION_SET to "arm" instead of "armv7a". Mh - I just afraid that I lose =
other kinds of optimisation. (I am just a user not an expert in arm archite=
cture).
> >
> > I didn't say anything about changing the DEFAULTTUNE.
> >
> > Just ARM_INSTRUCTION_SET to "arm" which will give you "cortexa9hf" again
> > (not "armv7a").
> >
> > > On the other hand for those like me it is better go the standard way.=
 Once I am sure compiler results will not become worse (see above) I go for=
 the pain and renaming my toolchain/makefiles/stuff.
> >
> > The results should be almost the same, maybe slightly better, depends on
> > the actual code as Khem mentioned.
> >
> > But if this causes you a lot of pain "renaming my toolchain/makefiles/s=
tuff"
> > then you should probably spend the time on your tooling instead of
> > replacing one hardcoded value with another.
> >
> > Cheers,
> >
> > >
> > > Thanks for you taking the time.
> > > Arno
> > >
> > > > Hello Arno,
> > > >
> > > > Let me try to explain my point of view. Since here (my best guess) =
we
> > > > have some asynchronous bitbake code which went South upon introduci=
ng
> > > > T2 HW extension.
> > > >
> > > > Point [1]: as far as I understand arm, cortexa9t2hf is is just a
> > > > superset of previous cortexa9hf (HW wise). NEON HW extension (NEON
> > > > media coprocessor) exists in both of them. In other words:
> > > > cortexa9t2hf =3D cortexa9hf HW + T2 HW extension.
> > > >
> > > > Point [2]:
> > > > > bitbake gives me in 2.5:
> > > > > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconventio=
n-hard cortexa9"
> > > > > TARGET_FPU           =3D "hard"
> > > > >
> > > > > and in 2.7:
> > > > > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconvent=
ion-hard"
> > > > > TARGET_FPU           =3D "hard"
> > > >
> > > > These two lines are the same: you are able to use 32b arm mode, 16b=
it
> > > > thumb mode, using armv7 HW with neon HW extension, and using HW FP
> > > > extension as well. The Cortex in both cases is A9.
> > > >
> > > > I expect that somebody somewhere in bitbake version 1.42 - 100% sure
> > > > (since 2.5/Sumo uses bitbake 1.38) dropped "armv7a" as TUNE FEATURE,
> > > > and I have no idea if this is done intentionally or not.
> > > >
> > > > Because of that I copied Alex and Ross to CC: into email, so they
> > > > should unveil this mystery (I would prefer "armv7" to stay in bitba=
ke
> > > > 1.42, since A8 and A9 belongs to armv7, A15 belongs to armv8 (IIRC).
> > > >
> > > > Bottom line: nothing to be done by you, Arno, seems that bitbake 1.=
42
> > > > should return "armv7" as TUNE FEATURE.
> > > >
> > > > Best Regards,
> > > > Zoran
> > > > _______
> > > >
> > > >
> > > > On Mon, Jun 17, 2019 at 3:00 PM Arno Steffens <star@gmx.li> wrote:
> > > > >
> > > > > Hello Zoran,
> > > > > thanks. As far as I understand is thumb2 another mode of coding, =
that might create more compact code.
> > > > > But I want to keep all compatible to my previous tool-chain and s=
ettings.
> > > > > The only file where I can found this "cortexa9t2hf" is
> > > > > ./meta/conf/machine/include/tune-cortexa9.inc
> > > > > but I can't see how I can control Yocto to generate "cortexa9hf-n=
eon" as before.
> > > > > Or have I been wrong the time before?
> > > > >
> > > > > bitbake gives me in 2.5:
> > > > >
> > > > > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconventio=
n-hard cortexa9"
> > > > > TARGET_FPU           =3D "hard"
> > > > >
> > > > > and in 2.7:
> > > > > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconvent=
ion-hard"
> > > > > TARGET_FPU           =3D "hard"
> > > > >
> > > > > so armv7a seem to be missing. In terms of thumb both is same. But=
 is that the reason? Where to set it?
> > > > > Arno
> > > > >
> > > > > >
> > > > > > Hello Arno,
> > > > > >
> > > > > > Your question, per say, has little to do with YOCTO forum. But =
I'll
> > > > > > try (as my best) to answer your question.
> > > > > >
> > > > > > Cortexa9hf should be armv7 A9 Hard Floating (it contains HW FP =
unit).
> > > > > >
> > > > > > Cortexa9t2hf is by analogy armv7 A9 T2 Hard Floating. Now, the
> > > > > > question is what is T2? T2 is addition to the previous architec=
ture
> > > > > > Cortexa9hf, and addition is Thumb-2 mode.
> > > > > >
> > > > > > Hope this helps,
> > > > > >
> > > > > > Zoran
> > > > > > _______
> > > > > >
> > > > > > On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wro=
te:
> > > > > > >
> > > > > > > I switched from Yocto 2.5 to 2.7 and recognised a new archite=
tcure name.
> > > > > > > Instead of cortexa9hf it is now build for cortexa9t2hf? Did I=
 do something wrong or what exactly does this t2 mean?
> > > > > > > Target system is a Zynq7020 system.
> > > > > > > --
> > > > > > > _______________________________________________
> > > > > > > yocto mailing list
> > > > > > > yocto@yoctoproject.org
> > > > > > > https://lists.yoctoproject.org/listinfo/yocto
> > > > > >
> > > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--4ZLFUWh1odzi/v6L
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXQk1jwAKCRA3VSO3ZXaA
HN5aAJ9JS/x/Tx5T0O0Qdn6bv8dcPYwISACfWO7qSoAiuohJFvy/XWbIqKQ3xdY=
=3XMI
-----END PGP SIGNATURE-----

--4ZLFUWh1odzi/v6L--
