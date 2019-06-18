Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A970E00D6B; Tue, 18 Jun 2019 09:08:35 -0700 (PDT)
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
	*      [209.85.222.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 767D3E00D42
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 09:08:34 -0700 (PDT)
Received: by mail-qk1-f180.google.com with SMTP id g18so8940897qkl.3
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 09:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=rKb6hwOc3q1bqZGPIIz91RxxEXaVg+w+G23NiMd1CJs=;
	b=EB1+p7rms5+0OX5HSXvSsThe9yzyreiw1Bivs+ldkp+os67wggljAm0ctIzBWW3L7r
	LU5++iuOBk5Oh1I5yTv1p3eSUTo9sAdx6j/swlTJGneOVC0iFlAQKjGwA+VGK9fB+SW8
	OVPwksaRz20/wb8n8SKAKFM+GAswWt8+rICrQn5x9RMSA8FTbWdk+tFsY1YpMuyk/sHk
	wG3rZIrng+/eVImHl/rtmfmAx1GmPaFxRWJ2r0OwGfWR5z3b1uDiUVTcPgqMUuq27Gsu
	3gPBBijb8JrmFeIUC2/IH4ZCQF79HxVEgsGRTpCQL7D+IWUzN/y6cejMV3SuoQ+IoaKa
	CIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=rKb6hwOc3q1bqZGPIIz91RxxEXaVg+w+G23NiMd1CJs=;
	b=mWvoTXXoJ7AvB0CamMWVlWlUtus2NdG10TjS8J+MUfN98zzORc1VYrN95z3im3KBAi
	Vld1QvSJloSnKfHEQs7tIEjkzVYPYLObBuHN0Kf/P2/HV2EXbfjpUqb06PZtCwlcKS5G
	1BBnn868AGX2pnLJTnGwx04N6OjWDYaa8vLdtxf++i7n54dkxJ84tmuHdNquGWVgM0z6
	g6P9NGUY9EZk1dmVPLfryMpQvLSS4d+W6oo3K8KLuOuqA76RuYndUOYuo9yV10CXIZQw
	GDVX8JJ+MHIj3TmPZEXtc40mEIMScDqNz1Jpz3FjX/DsKiWBX81vjXaydBPuwOsCA/lF
	WAkA==
X-Gm-Message-State: APjAAAWy2vtHCJa9L2dfdL9RtvmjNSinGKjsfhqJC0W2ZSWBAKztR1B9
	gB0Z2dr1G/LcoP+gPN1JbLJQqC4bbxtXaGO0kAo=
X-Google-Smtp-Source: APXvYqwxNCmPxFTdAo3iSWz0Qo6DIa2WclGB0kNs026fPR2n91DQPhPt6JrnklwmJN6NGMlWTimwwvB8MVfvBbBr2mI=
X-Received: by 2002:a05:620a:1407:: with SMTP id
	d7mr83214963qkj.20.1560874113274; 
	Tue, 18 Jun 2019 09:08:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MiauEboBBr0qsqn1jB57AQoEEaOw3wRoavnuQX8TJGtNA@mail.gmail.com>
In-Reply-To: <CAGni2MiauEboBBr0qsqn1jB57AQoEEaOw3wRoavnuQX8TJGtNA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Jun 2019 09:08:06 -0700
Message-ID: <CAMKF1so4oLnAugjsZ6PwUt-8xBLszbwy45dsgRH02S2y00aMXQ@mail.gmail.com>
To: matthew stanger <stangerm2@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: devshell env in warrior
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
X-List-Received-Date: Tue, 18 Jun 2019 16:08:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2019 at 4:55 PM matthew stanger <stangerm2@gmail.com> wrote=
:
>
> I'm trying to figure out why when running devshell in Warrior CC/CFLAGS a=
re not the same as do_compile for a recipe. For example.
> devshell printenv yields:
> CC=3Daarch64-poky-linux-gcc   -fuse-ld=3Dbfd -fmacro-prefix-map=3D/home/m=
att/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f=
-0=3D/usr/src/debug/ursr/18.3+AUTOINC+0a6fb7430f-0 -fdebug-prefix-map=3D/ho=
me/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7=
430f-0=3D/usr/src/debug/ursr/18.3+AUTOINC+0a6fb7430f-0 -fdebug-prefix-map=
=3D/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+=
0a6fb7430f-0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/rdk_warrior/=
build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroo=
t-native=3D  -fdebug-prefix-map=3D/home/matt/rdk_warrior/build/tmp/work-sha=
red/tmobile-7271-kaon-mini/kernel-source=3D/usr/src/kernel
>
> do_compile() {
>     /usr/bin/printenv | sort > debug.log
> }
> yields...
> CC=3Daarch64-poky-linux-gcc  -mcpu=3Dcortex-a53+crc+crypto -fstack-protec=
tor-strong  -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dform=
at-security --sysroot=3D/home/matt/rdk_warrior/build/tmp/work/tmobile_7271_=
kaon_mini-poky-linux/ursr/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroot
>
> This causes some very different behavior out of the makefile. The recipe =
I"m working with has no do_configure, and only calls a makefile through do_=
compile. No appends/prepends or custom functions in the recipe. This recipe=
 is for a lovely Broadcom driver/userspace glob and I'm trying to troublesh=
oot it with x64 but not being able to get a correct working env makes life =
hard. Any idea's of where I might be going wrong?
>

Check that Makefiles are not overriding CC/CXX/LD etc. some old crufty
Makefiles I have seen doing that, you might see something like

CC =3D ${CROSS_COMPILE}gcc etc. which you should convert to weak defines
e.g. CC ?=3D ....

> Cheers
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

