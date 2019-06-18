Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A58BE00D42; Tue, 18 Jun 2019 10:13:43 -0700 (PDT)
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
	*      [209.85.221.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F737E00CD5
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 10:13:40 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id m3so376742wrv.2
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 10:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=xgaz9PsmDzxoly/6Nv07inxFU3OZXhBJLQOz1PL8lIE=;
	b=PvEqGRWHkTRpHctXBgtih7z34B5zKzQyh9dqc7vsAGsar6Xx3WJBtfJPXryyael3rJ
	zu2cNPNnPwhyVSXbTuY0zqCrGc9MUom1Tq5tzAKU5Xg8EkOpDgHqmIqAX6HyitFg5sJq
	K7rGK3qvUXl9xWJ37S97l1XeQzrULe8gOlydsj4smubWcaPMi7CGat1Zxl63nzKSxFkB
	uoPzHc7vSK3iChqVn1Zm+Nle9yo/bHcw8XgP7IiMNhTXpT4VXzSnhi/k5VIyE2jkWNzj
	/s33PXILqbdUK7bm5giVL8pe3x/wARq3Y+m2KgAFI9d2W6ON4dYXyXAaHegqy5swSfMS
	WHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=xgaz9PsmDzxoly/6Nv07inxFU3OZXhBJLQOz1PL8lIE=;
	b=IklTrW3keB0E2RPB6lAWx0jrMw+0n5Vxsm0kS0jHRHDtZWUcHnWCf6nA8WtgSA+vnf
	Ae/YS5i8fmuNx5ofmbaHXisfEbRLpZGMuhEdw/vDGQYxoqDuVhjpFfKxD+BcrWiPAp5f
	Y99zQGkMdZh8lTh/MVsIjDcCLldjd8UqVflf5qqDaPcDet2QeVeFxlQGQMiX+aAFgSd5
	tlRBpd+3WWfWodL6zCMFx9+IQO9i/+hADgWdFaacIx34MshDOrIsoFEo29rhl+YliJzF
	4g4STPVoFHSMkhgO6+KICuWhKAyhPQv+hCFAxOIgjQmYPxuWDETaxgY1I5t091nWZwiT
	OEEQ==
X-Gm-Message-State: APjAAAVl9zY9gAdq/RWZb78L467sQAtqMBbzxS9DTRpM01+gd80ODqOC
	sw9r0vuwAnYVUOkEz6MIpmE=
X-Google-Smtp-Source: APXvYqyRomrsjVeQhaGlpPocgrL2bvp1r7xyBNE8otO5iUF+Nv6MzOnrCxKd2D/6O3y+qthqYwMbGw==
X-Received: by 2002:adf:e843:: with SMTP id d3mr3552582wrn.249.1560878019629; 
	Tue, 18 Jun 2019 10:13:39 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id 72sm9989341wrk.22.2019.06.18.10.13.38
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 18 Jun 2019 10:13:38 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 18 Jun 2019 19:13:45 +0200
To: Arno Steffens <star@gmx.li>
Message-ID: <20190618171345.GB1501@jama>
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
	<CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
	<trinity-90f4bc6a-aa89-4bf8-aa92-72aec6a019e5-1560776407716@3c-app-gmx-bs08>
	<CAGAf8LwnPTFedqXA6zwSF22bK_VPs2otSsVg5e=hDAXp+q5Csg@mail.gmail.com>
	<trinity-fe27ef88-5231-4c98-92a3-47d5fb327d83-1560793656274@3c-app-gmx-bs55>
MIME-Version: 1.0
In-Reply-To: <trinity-fe27ef88-5231-4c98-92a3-47d5fb327d83-1560793656274@3c-app-gmx-bs55>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
X-List-Received-Date: Tue, 18 Jun 2019 17:13:43 -0000
X-Groupsio-MsgNum: 45642
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="A6N2fC+uXW/VQSAv"
Content-Disposition: inline

--A6N2fC+uXW/VQSAv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2019 at 07:47:36PM +0200, Arno Steffens wrote:
> Thanks for explaining this.
> I take some time to read about thumb/thumb2. The feedback is mixed. It se=
ems to generate more compact code, but some say it speeds up, others it slo=
ws down because of reduced function set - and it can cause strange effects.
> And mixing this causes time to switch processor mode. So, as I am not an =
expert in this and can't decide what ist best on per function base and spee=
d is of highest priority, I think I better should use not thumb(2).
>=20
> So, do I get it right that with this cortexa9t2hf I just have the option =
to compile it for thumb2? But without using a dedicated compiler option it =
generates same "standard" arm code and the difference is just to adapt all =
the Makefiles for this suffix.
>=20
> According to Martin I can get the previous setting by just set ARM_INSTRU=
CTION_SET to "arm" instead of "armv7a". Mh - I just afraid that I lose othe=
r kinds of optimisation. (I am just a user not an expert in arm architectur=
e).

I didn't say anything about changing the DEFAULTTUNE.

Just ARM_INSTRUCTION_SET to "arm" which will give you "cortexa9hf" again
(not "armv7a").

> On the other hand for those like me it is better go the standard way. Onc=
e I am sure compiler results will not become worse (see above) I go for the=
 pain and renaming my toolchain/makefiles/stuff.

The results should be almost the same, maybe slightly better, depends on
the actual code as Khem mentioned.

But if this causes you a lot of pain "renaming my toolchain/makefiles/stuff"
then you should probably spend the time on your tooling instead of
replacing one hardcoded value with another.

Cheers,

>=20
> Thanks for you taking the time.
> Arno
>=20
> > Hello Arno,
> >
> > Let me try to explain my point of view. Since here (my best guess) we
> > have some asynchronous bitbake code which went South upon introducing
> > T2 HW extension.
> >
> > Point [1]: as far as I understand arm, cortexa9t2hf is is just a
> > superset of previous cortexa9hf (HW wise). NEON HW extension (NEON
> > media coprocessor) exists in both of them. In other words:
> > cortexa9t2hf =3D cortexa9hf HW + T2 HW extension.
> >
> > Point [2]:
> > > bitbake gives me in 2.5:
> > > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-ha=
rd cortexa9"
> > > TARGET_FPU           =3D "hard"
> > >
> > > and in 2.7:
> > > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconvention-=
hard"
> > > TARGET_FPU           =3D "hard"
> >
> > These two lines are the same: you are able to use 32b arm mode, 16bit
> > thumb mode, using armv7 HW with neon HW extension, and using HW FP
> > extension as well. The Cortex in both cases is A9.
> >
> > I expect that somebody somewhere in bitbake version 1.42 - 100% sure
> > (since 2.5/Sumo uses bitbake 1.38) dropped "armv7a" as TUNE FEATURE,
> > and I have no idea if this is done intentionally or not.
> >
> > Because of that I copied Alex and Ross to CC: into email, so they
> > should unveil this mystery (I would prefer "armv7" to stay in bitbake
> > 1.42, since A8 and A9 belongs to armv7, A15 belongs to armv8 (IIRC).
> >
> > Bottom line: nothing to be done by you, Arno, seems that bitbake 1.42
> > should return "armv7" as TUNE FEATURE.
> >
> > Best Regards,
> > Zoran
> > _______
> >
> >
> > On Mon, Jun 17, 2019 at 3:00 PM Arno Steffens <star@gmx.li> wrote:
> > >
> > > Hello Zoran,
> > > thanks. As far as I understand is thumb2 another mode of coding, that=
 might create more compact code.
> > > But I want to keep all compatible to my previous tool-chain and setti=
ngs.
> > > The only file where I can found this "cortexa9t2hf" is
> > > ./meta/conf/machine/include/tune-cortexa9.inc
> > > but I can't see how I can control Yocto to generate "cortexa9hf-neon"=
 as before.
> > > Or have I been wrong the time before?
> > >
> > > bitbake gives me in 2.5:
> > >
> > > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-ha=
rd cortexa9"
> > > TARGET_FPU           =3D "hard"
> > >
> > > and in 2.7:
> > > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconvention-=
hard"
> > > TARGET_FPU           =3D "hard"
> > >
> > > so armv7a seem to be missing. In terms of thumb both is same. But is =
that the reason? Where to set it?
> > > Arno
> > >
> > > >
> > > > Hello Arno,
> > > >
> > > > Your question, per say, has little to do with YOCTO forum. But I'll
> > > > try (as my best) to answer your question.
> > > >
> > > > Cortexa9hf should be armv7 A9 Hard Floating (it contains HW FP unit=
).
> > > >
> > > > Cortexa9t2hf is by analogy armv7 A9 T2 Hard Floating. Now, the
> > > > question is what is T2? T2 is addition to the previous architecture
> > > > Cortexa9hf, and addition is Thumb-2 mode.
> > > >
> > > > Hope this helps,
> > > >
> > > > Zoran
> > > > _______
> > > >
> > > > On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wrote:
> > > > >
> > > > > I switched from Yocto 2.5 to 2.7 and recognised a new architetcur=
e name.
> > > > > Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do =
something wrong or what exactly does this t2 mean?
> > > > > Target system is a Zynq7020 system.
> > > > > --
> > > > > _______________________________________________
> > > > > yocto mailing list
> > > > > yocto@yoctoproject.org
> > > > > https://lists.yoctoproject.org/listinfo/yocto
> > > >
> >
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--A6N2fC+uXW/VQSAv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXQkbyAAKCRA3VSO3ZXaA
HHVKAKCZ4ImJD5o0M25zQw3xiPvg87aYSgCfTmOwbrWZQQXZDyDBhgTcAejNVFU=
=6yNt
-----END PGP SIGNATURE-----

--A6N2fC+uXW/VQSAv--
