Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61955E00901; Tue, 23 Oct 2018 12:35:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
	[209.85.217.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F15BE008D7
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 12:35:31 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id g201so1633349vsd.12
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 12:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=tvFbPp1CrzZxnCbBduzLJG9xLY7rz16VB6xhLtD+0X4=;
	b=WbgHpGgxV5I1PwvalGB0VAvyA2W8HvkcB+8ZYo6IUWMwKIVVskfu7nBpdCxcswGdzt
	JCo/DdeOKabO2KaGLgk2jFFz2YPJf8DwPI/cTZrz0JZk9PRJptJ31NCxpIi/qVNC7j7W
	I1WLSA6pxQmgQKieCbQBvHfL7dVaXCrulbB5TSnEjoBlU0Sbv1qQ+LQ8NAr2zpfx4yCM
	4WTM9xvs2GCYLz/eVJZshaWO1OFKsJ4hwVzJ1he5ACMWnvM/J+jUNKijYYg0L9friHg2
	B7hjwXulneL0N0EHc3cx01iyvvH44txKl3kn27Ha64HwZ/RmBKAIxFmnXTe8fKKFz/n5
	6ESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=tvFbPp1CrzZxnCbBduzLJG9xLY7rz16VB6xhLtD+0X4=;
	b=odbddXNV0s4MLnK4yxaOMTpI3HOk7rzBvjU+pyDzR6UJCka1IooHreuVIx0eiJ8qKx
	F8JLdRSIWVw6n05WY3UCQAKzCBcnsj+52dMjqtapr2uL+66Olwan2ZF+yTRsKrP+XD5a
	ZpEtAkuixo6ihviMdncbV5PoEij31Spide1+7SBlxMlR/P7kK4NIm3KaCW2+MRZ4j2er
	T54KaVKyHI+g2yxYdtTBjsP7tlxKSOZCu15MYu3JA+gVhiDbqnUzcTJiEmoWzhibLXZn
	xE51Ccw0h9vsMvjQTtOCFWPVqTsM6CMfzgvAWPKShZ9+dqlC40p3NgGuSeWSF2GRJBpO
	8Fig==
X-Gm-Message-State: ABuFfohOyCIz+fWNeYNxl9Db+cis/xUb3i0Ekw1IBIzOMa9u1JG1hsSk
	H/RE+wTsT+lRtm2//2surQDS1qrPtoDhKwJIiPE=
X-Google-Smtp-Source: ACcGV63X4BscVxxAw45EJXDx+KL96PEua1mNNp/m15xo/R4H54KyzQlT72BtPgZS6DGyQ3S5MJ6dbrzK/D+v+Oc5aik=
X-Received: by 2002:a67:7344:: with SMTP id o65mr21481214vsc.223.1540323330459;
	Tue, 23 Oct 2018 12:35:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2914:0:0:0:0:0 with HTTP; Tue, 23 Oct 2018 12:35:29
	-0700 (PDT)
In-Reply-To: <CAKPYHZ5SaK_jM+5bseW4LnqF5mSLi8-9N-e_0y+70fEQm6UQWw@mail.gmail.com>
References: <CAKPYHZ5SaK_jM+5bseW4LnqF5mSLi8-9N-e_0y+70fEQm6UQWw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 23 Oct 2018 12:35:29 -0700
Message-ID: <CAJ86T=W1nW+eZCb1vvgncLHFAp2uSg_3HujA5XFkRA68a4_V0A@mail.gmail.com>
To: "Dhanush K.S" <dhanush.ks@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Busybox_1.23.2 fails at do_compile on Poky-Sumo
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
X-List-Received-Date: Tue, 23 Oct 2018 19:35:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 23, 2018 at 2:58 AM, Dhanush K.S <dhanush.ks@gmail.com> wrote:
> Hello Yocto,
>
> I'm currently building an image with the busybox_1.23.2.bb recipe include=
d,
> using Yocto Sumo 2.5 with the Bitbake version 1.37.0. It is running on a
> CentOS host building images for the target ARM cortexa8. This busybox rec=
ipe
> is placed in another custom layer. Though this recipe compiles without
> errors in Poky-Fido, in Poky-Sumo I get compilation errors due to missing
> header files. Please take a look at the link below for the log.do_compile
> output.
>
> https://pastebin.com/yYXJnC2e

From the log of the failing command, the cross compiler is being
called without a --sysroot option, which usually means the CC value
set by the build environment is being ignored or over-ridden.

I guess your custom busybox recipe is missing the following update:

  http://git.openembedded.org/openembedded-core/commit/?id=3Db7c265e1edd5c8=
2126c1f3915ba5ca9efef57c00

Which is required in order to work correctly with versions of OE
containing the following change:

  http://git.openembedded.org/openembedded-core/commit/?id=3Daeb653861a0ec3=
9ea7a014c0622980edcbf653fa

> Both limits.h and byteswap.h don't exist in Poky-Fido as well, but compil=
es
> without problems, unlike on Sumo. Does this have to do with the wrong
> Toolchains used or due to glibc (FYI: glibc_2.27 is been used)? If it has=
 to
> do with the Toolchains, which one should I be using and how do I go about
> it? Could someone please point me in the right direction?

Generally you should not expect a third party layer originally created
for fido to "just work" with sumo.

Perhaps ask whoever maintains your custom layers and recipes whether
they have a version which has been tested with sumo.

> Here is the Build Config:
>
> Build Configuration:
> BB_VERSION           =3D "1.37.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal-4.8"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "arm-cortex-a8"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "2.5"
> TUNE_FEATURES        =3D "arm armv7a vfp neon callconvention-hard cortexa=
8"
> TARGET_FPU           =3D "hard"
> meta-networking
> meta-python          =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2=
"
> meta-userbsp-ti
> meta
> meta-poky
> meta-yocto-bsp
> meta-user-common      =3D "<unknown>:<unknown>"
> meta-oe              =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2=
"
> workspace            =3D "<unknown>:<unknown>"
>
> Thanks in advance!
> Regards,
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
> Dhanush
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

