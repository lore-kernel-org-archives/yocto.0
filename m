Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D69C3E00C75; Mon, 29 Oct 2018 09:05:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, URI_NOVOWEL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	*  0.5 URI_NOVOWEL URI: URI hostname has long non-vowel sequence
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43A4BE00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:05:05 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id a132so5267465qkg.1
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=71+MaUVMSXo9WRN9g9mhJnAw1lCE54poN0zPv49mv9s=;
	b=h5brmMz+RVtW5VUyINHaNvJdC9h6tuouBSSjSaGHyevvlh/CZE56fd9DUpBndwBX/t
	rZKZ/EKXTtS/jnyH1+Pw5Ze2cKqaKJqZhXOMGp2GHOmj37I8KVnTi1CcDXdNoJQ6+mms
	KN0Hhn0o7VCc/yvHxs5qcKyCbYttbXRLDdAvu02jVoXsVQJXXwCuIpMdu006W/Soei+Q
	Xg3B0LBbGrngb3cEeF4PD9EN22nuf+wByC+K+lEeZYFQeSKgI80BVgflvjMIXiPMMPIj
	m6vrH0XX72GBwcCtB58czaFeqEZzNgm54CDwFcZzhUVzS6XMtrMjMzHnhPWCsnb1fWiv
	HSnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=71+MaUVMSXo9WRN9g9mhJnAw1lCE54poN0zPv49mv9s=;
	b=B6oxIFFqP0LLkoWGC8ffeiYxwCRrGymEZWXx2CEdLCrqAU5F+KHarAOekVgSFmP8Wb
	U3FpMjfuXc7eOcHywePzHW07LX2j+hr7j9rVBMQPyKcUYiFLH/YZ2BYPoQzJyWU1zBYt
	lrZIGZR0wmd5+TAiBC3gvsefgrsWpVwwb0185mN+c+xlbGMDoRKSCoNIFUgozEky8DZt
	mFmbJ1wiGr0FX6RJRs4zDGYkTIEm3LkBLVZfY6axtp94h00fhZwIiLNt35t55w6ZD24B
	gDRi0D846Qf5+QS5Y2HZZJ/yO9uXgzjyN8gt3dg3hUMOhQwCy4cfaQ9DPZSJ/H+bvrNZ
	HsJA==
X-Gm-Message-State: AGRZ1gL0dw7YmSdDanTsoIgZGOVGOQJNONAyRwbSqXsdU1hhkA3l1MxL
	vRzoA+t7yX8r2d4ZieiPjp4saLOXMahBgbobCxX5A/Il
X-Google-Smtp-Source: AJdET5c+KThh7HMTOQhQTNhgbfy46tQrG9cN9/EGDLhG3ApyS1KkBYoJCj1fZfmN2ly03G3UwfnuLINzu8+THr3/z2Q=
X-Received: by 2002:a37:a84b:: with SMTP id r72mr13149809qke.2.1540829104291; 
	Mon, 29 Oct 2018 09:05:04 -0700 (PDT)
MIME-Version: 1.0
References: <b792369ca9124b358835683d7e50cb70@ifm.com>
In-Reply-To: <b792369ca9124b358835683d7e50cb70@ifm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Oct 2018 09:04:37 -0700
Message-ID: <CAMKF1srj4fH9ka4GPEDVJS4L=UDgziLWK+rrOG9z3MBxgW4YnQ@mail.gmail.com>
To: Kamal.Pandey@ifm.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Compilation error while backporting xserver-xorg of poky master branch to rocko
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
X-List-Received-Date: Mon, 29 Oct 2018 16:05:06 -0000
X-Groupsio-MsgNum: 42960
Content-Type: multipart/related; boundary="0000000000006be0c20579603b12"

--0000000000006be0c20579603b12
Content-Type: multipart/alternative; boundary="0000000000006be0c00579603b11"

--0000000000006be0c00579603b11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 24, 2018 at 7:05 AM Pandey, Kamal <Kamal.Pandey@ifm.com> wrote:

> Hello,
>
> I am trying to run Weston 5.0 using poky=E2=80=99s rocko branch, so I bac=
kported a
> few packages from poky master branch to my own custom layer. But in this
> process xserver-xorg is giving me a compilation error. The contents of th=
e
> log file are as follows:
>
>
>

it seems that you are updating core packages like xorg-xserver since you
have not cited the full list, I cant assess full gravity of these
backports. but if you need newer versions of these kind of core packages my
advise is always
to upgrade to relevant yocto release instead.  Since they do have impact on
full distro and there might be indirect dependencies which is not yet
revealed, since you are only at compile stage



> aarch64-pdm3-linux-gcc
> --sysroot=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarc=
h64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot
> -DHAVE_CONFIG_H -I. -I../../../xorg-server-1.20.1/hw/xwayland
> -I../../include    -I../../../xorg-server-1.20.1/glamor
> -I../../../xorg-server-1.20.1/dri3 -DHAVE_DIX_CONFIG_H
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/libdrm
> -DHAVE_DIX_CONFIG_H -Wall -Wpointer-arith -Wmissing-declarations -Wformat=
=3D2
> -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs
> -Wbad-function-cast -Wold-style-definition -Wdeclaration-after-statement
> -Wunused -Wuninitialized -Wshadow -Wmissing-noreturn
> -Wmissing-format-attribute -Wredundant-decls -Wlogical-op -Werror=3Dimpli=
cit
> -Werror=3Dnonnull -Werror=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-br=
aces
> -Werror=3Dsequence-point -Werror=3Dreturn-type -Werror=3Dtrigraphs
> -Werror=3Darray-bounds -Werror=3Dwrite-strings -Werror=3Daddress
> -Werror=3Dint-to-pointer-cast -Werror=3Dpointer-to-int-cast
> -fno-strict-aliasing -fno-strict-aliasing -D_DEFAULT_SOURCE -D_BSD_SOURCE
> -DHAS_FCHOWN -DHAS_STICKY_DIR_BIT
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/libdrm
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/pixman-1
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/freetype2
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/X11/dri
> -I../../../xorg-server-1.20.1/include -I../../include
> -I../../../xorg-server-1.20.1/Xext -I../../../xorg-server-1.20.1/composit=
e
> -I../../../xorg-server-1.20.1/damageext
> -I../../../xorg-server-1.20.1/xfixes -I../../../xorg-server-1.20.1/Xi
> -I../../../xorg-server-1.20.1/mi -I../../../xorg-server-1.20.1/miext/sync
> -I../../../xorg-server-1.20.1/miext/shadow
> -I../../../xorg-server-1.20.1/miext/damage
> -I../../../xorg-server-1.20.1/render -I../../../xorg-server-1.20.1/randr
> -I../../../xorg-server-1.20.1/fb -I../../../xorg-server-1.20.1/dbe
> -I../../../xorg-server-1.20.1/present -fvisibility=3Dhidden   -O2 -pipe -=
g
> -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/=
work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0=3D/usr/src/debug/xserver-x=
org/2_1.20.1-r0
> -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/=
work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/=
work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot=3D
> -pthread -c -o Xwayland-tablet-unstable-v2-protocol.o `test -f
> 'tablet-unstable-v2-protocol.c' || echo
> '../../../xorg-server-1.20.1/hw/xwayland/'`tablet-unstable-v2-protocol.c
>
> aarch64-pdm3-linux-gcc
> --sysroot=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarc=
h64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot
> -DHAVE_CONFIG_H -I. -I../../../xorg-server-1.20.1/hw/xwayland
> -I../../include    -I../../../xorg-server-1.20.1/glamor
> -I../../../xorg-server-1.20.1/dri3 -DHAVE_DIX_CONFIG_H
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/libdrm
> -DHAVE_DIX_CONFIG_H -Wall -Wpointer-arith -Wmissing-declarations -Wformat=
=3D2
> -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs
> -Wbad-function-cast -Wold-style-definition -Wdeclaration-after-statement
> -Wunused -Wuninitialized -Wshadow -Wmissing-noreturn
> -Wmissing-format-attribute -Wredundant-decls -Wlogical-op -Werror=3Dimpli=
cit
> -Werror=3Dnonnull -Werror=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-br=
aces
> -Werror=3Dsequence-point -Werror=3Dreturn-type -Werror=3Dtrigraphs
> -Werror=3Darray-bounds -Werror=3Dwrite-strings -Werror=3Daddress
> -Werror=3Dint-to-pointer-cast -Werror=3Dpointer-to-int-cast
> -fno-strict-aliasing -fno-strict-aliasing -D_DEFAULT_SOURCE -D_BSD_SOURCE
> -DHAS_FCHOWN -DHAS_STICKY_DIR_BIT
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/libdrm
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/pixman-1
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/freetype2
> -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-l=
inux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/X11/dri
> -I../../../xorg-server-1.20.1/include -I../../include
> -I../../../xorg-server-1.20.1/Xext -I../../../xorg-server-1.20.1/composit=
e
> -I../../../xorg-server-1.20.1/damageext
> -I../../../xorg-server-1.20.1/xfixes -I../../../xorg-server-1.20.1/Xi
> -I../../../xorg-server-1.20.1/mi -I../../../xorg-server-1.20.1/miext/sync
> -I../../../xorg-server-1.20.1/miext/shadow
> -I../../../xorg-server-1.20.1/miext/damage
> -I../../../xorg-server-1.20.1/render -I../../../xorg-server-1.20.1/randr
> -I../../../xorg-server-1.20.1/fb -I../../../xorg-server-1.20.1/dbe
> -I../../../xorg-server-1.20.1/present -fvisibility=3Dhidden   -O2 -pipe -=
g
> -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/=
work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0=3D/usr/src/debug/xserver-x=
org/2_1.20.1-r0
> -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/=
work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/=
work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot=3D
> -pthread -c -o Xwayland-xwayland-keyboard-grab-unstable-v1-protocol.o `te=
st
> -f 'xwayland-keyboard-grab-unstable-v1-protocol.c' || echo
> '../../../xorg-server-1.20.1/hw/xwayland/'`xwayland-keyboard-grab-unstabl=
e-v1-protocol.c
>
> make[2]: *** No rule to make target '../../glx/libglxvnd.la', needed by
> 'Xwayland'.  Stop.
>
> make[2]: *** Waiting for unfinished jobs....
>
> make[2]: Leaving directory
> '/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-li=
nux/xserver-xorg/2_1.20.1-r0/build/hw/xwayland'
>
> Makefile:611: recipe for target 'all-recursive' failed
>
> make[1]: *** [all-recursive] Error 1
>
> make[1]: Leaving directory
> '/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-li=
nux/xserver-xorg/2_1.20.1-r0/build/hw'
>
> Makefile:813: recipe for target 'all-recursive' failed
>
> make: *** [all-recursive] Error 1
>
> ERROR: oe_runmake failed
>
> WARNING: exit code 1 from a shell command.
>
> ERROR: Function failed: do_compile (log file is located at
> /media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-lin=
ux/xserver-xorg/2_1.20.1-r0/temp/log.do_compile.2603)
>
>
>
> Can somebody provide me a few pointers for this. For more info feel free
> to reply.
>
>
>
> Best Regards
>
> Kamal Pandey
>
> Junior Software Engineer
>
> [image: ifm_logo_sqrs]ifm engineering pvt. ltd.
>
> Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Road,
> Bavdhan, Pune, India - 411021 | Web: www.ifm.com | Phone: +91-20-22951910
> Extn:215 | CIN: U29213PN2010FTC13676
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000006be0c00579603b11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On W=
ed, Oct 24, 2018 at 7:05 AM Pandey, Kamal &lt;<a href=3D"mailto:Kamal.Pande=
y@ifm.com">Kamal.Pandey@ifm.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">





<div lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-5840019201465309580WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal">I am trying to run Weston 5.0 using poky=E2=80=99s r=
ocko branch, so I backported a few packages from poky master branch to my o=
wn custom layer. But in this process xserver-xorg is giving me a compilatio=
n error. The contents of the log file are
 as follows:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0</p></div></div></blockquote><div><br><=
/div><div><div class=3D"gmail_default" style=3D"font-family:monospace,monos=
pace">it seems that you are updating core packages like xorg-xserver since =
you</div><div class=3D"gmail_default" style=3D"font-family:monospace,monosp=
ace">have not cited the full list, I cant assess full gravity of these back=
ports. but if you need newer versions of these kind of core packages my adv=
ise is always</div><div class=3D"gmail_default" style=3D"font-family:monosp=
ace,monospace">to upgrade to relevant yocto release instead.=C2=A0 Since th=
ey do have impact on</div><div class=3D"gmail_default" style=3D"font-family=
:monospace,monospace">full distro and there might be indirect dependencies =
which is not yet revealed, since you are only at compile stage</div><br></d=
iv><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"EN-IN" link=
=3D"#0563C1" vlink=3D"#954F72"><div class=3D"m_-5840019201465309580WordSect=
ion1"><p class=3D"MsoNormal"><u></u></p>
<p class=3D"MsoNormal">aarch64-pdm3-linux-gcc=C2=A0 --sysroot=3D/media/iepl=
/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xo=
rg/2_1.20.1-r0/recipe-sysroot -DHAVE_CONFIG_H -I. -I../../../xorg-server-1.=
20.1/hw/xwayland -I../../include=C2=A0=C2=A0=C2=A0 -I../../../xorg-server-1=
.20.1/glamor
 -I../../../xorg-server-1.20.1/dri3 -DHAVE_DIX_CONFIG_H -I/media/iepl/iepl1=
/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1=
.20.1-r0/recipe-sysroot/usr/include/libdrm -DHAVE_DIX_CONFIG_H -Wall -Wpoin=
ter-arith -Wmissing-declarations
 -Wformat=3D2 -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs -Wb=
ad-function-cast -Wold-style-definition -Wdeclaration-after-statement -Wunu=
sed -Wuninitialized -Wshadow -Wmissing-noreturn -Wmissing-format-attribute =
-Wredundant-decls -Wlogical-op -Werror=3Dimplicit
 -Werror=3Dnonnull -Werror=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-bra=
ces -Werror=3Dsequence-point -Werror=3Dreturn-type -Werror=3Dtrigraphs -Wer=
ror=3Darray-bounds -Werror=3Dwrite-strings -Werror=3Daddress -Werror=3Dint-=
to-pointer-cast -Werror=3Dpointer-to-int-cast -fno-strict-aliasing
 -fno-strict-aliasing -D_DEFAULT_SOURCE -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_ST=
ICKY_DIR_BIT -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aar=
ch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/libdrm =
-I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-lin=
ux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/pixman-1
 -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-li=
nux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/freetype2 -I/media/=
iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserve=
r-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/X11/dri
 -I../../../xorg-server-1.20.1/include -I../../include -I../../../xorg-serv=
er-1.20.1/Xext -I../../../xorg-server-1.20.1/composite -I../../../xorg-serv=
er-1.20.1/damageext -I../../../xorg-server-1.20.1/xfixes -I../../../xorg-se=
rver-1.20.1/Xi -I../../../xorg-server-1.20.1/mi
 -I../../../xorg-server-1.20.1/miext/sync -I../../../xorg-server-1.20.1/mie=
xt/shadow=C2=A0 -I../../../xorg-server-1.20.1/miext/damage -I../../../xorg-=
server-1.20.1/render -I../../../xorg-server-1.20.1/randr -I../../../xorg-se=
rver-1.20.1/fb -I../../../xorg-server-1.20.1/dbe
 -I../../../xorg-server-1.20.1/present -fvisibility=3Dhidden=C2=A0=C2=A0 -O=
2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/media/iepl/=
iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xor=
g/2_1.20.1-r0=3D/usr/src/debug/xserver-xorg/2_1.20.1-r0
 -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/w=
ork/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot-native=3D -f=
debug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work=
/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot=3D=C2=A0
 -pthread -c -o Xwayland-tablet-unstable-v2-protocol.o `test -f &#39;tablet=
-unstable-v2-protocol.c&#39; || echo &#39;../../../xorg-server-1.20.1/hw/xw=
ayland/&#39;`tablet-unstable-v2-protocol.c<u></u><u></u></p>
<p class=3D"MsoNormal">aarch64-pdm3-linux-gcc=C2=A0 --sysroot=3D/media/iepl=
/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xo=
rg/2_1.20.1-r0/recipe-sysroot -DHAVE_CONFIG_H -I. -I../../../xorg-server-1.=
20.1/hw/xwayland -I../../include=C2=A0=C2=A0=C2=A0 -I../../../xorg-server-1=
.20.1/glamor
 -I../../../xorg-server-1.20.1/dri3 -DHAVE_DIX_CONFIG_H -I/media/iepl/iepl1=
/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1=
.20.1-r0/recipe-sysroot/usr/include/libdrm -DHAVE_DIX_CONFIG_H -Wall -Wpoin=
ter-arith -Wmissing-declarations
 -Wformat=3D2 -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs -Wb=
ad-function-cast -Wold-style-definition -Wdeclaration-after-statement -Wunu=
sed -Wuninitialized -Wshadow -Wmissing-noreturn -Wmissing-format-attribute =
-Wredundant-decls -Wlogical-op -Werror=3Dimplicit
 -Werror=3Dnonnull -Werror=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-bra=
ces -Werror=3Dsequence-point -Werror=3Dreturn-type -Werror=3Dtrigraphs -Wer=
ror=3Darray-bounds -Werror=3Dwrite-strings -Werror=3Daddress -Werror=3Dint-=
to-pointer-cast -Werror=3Dpointer-to-int-cast -fno-strict-aliasing
 -fno-strict-aliasing -D_DEFAULT_SOURCE -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_ST=
ICKY_DIR_BIT -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aar=
ch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/libdrm =
-I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-lin=
ux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/pixman-1
 -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-li=
nux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/freetype2 -I/media/=
iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserve=
r-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/X11/dri
 -I../../../xorg-server-1.20.1/include -I../../include -I../../../xorg-serv=
er-1.20.1/Xext -I../../../xorg-server-1.20.1/composite -I../../../xorg-serv=
er-1.20.1/damageext -I../../../xorg-server-1.20.1/xfixes -I../../../xorg-se=
rver-1.20.1/Xi -I../../../xorg-server-1.20.1/mi
 -I../../../xorg-server-1.20.1/miext/sync -I../../../xorg-server-1.20.1/mie=
xt/shadow=C2=A0 -I../../../xorg-server-1.20.1/miext/damage -I../../../xorg-=
server-1.20.1/render -I../../../xorg-server-1.20.1/randr -I../../../xorg-se=
rver-1.20.1/fb -I../../../xorg-server-1.20.1/dbe
 -I../../../xorg-server-1.20.1/present -fvisibility=3Dhidden=C2=A0=C2=A0 -O=
2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/media/iepl/=
iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xor=
g/2_1.20.1-r0=3D/usr/src/debug/xserver-xorg/2_1.20.1-r0
 -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/w=
ork/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot-native=3D -f=
debug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work=
/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot=3D=C2=A0
 -pthread -c -o Xwayland-xwayland-keyboard-grab-unstable-v1-protocol.o `tes=
t -f &#39;xwayland-keyboard-grab-unstable-v1-protocol.c&#39; || echo &#39;.=
./../../xorg-server-1.20.1/hw/xwayland/&#39;`xwayland-keyboard-grab-unstabl=
e-v1-protocol.c<u></u><u></u></p>
<p class=3D"MsoNormal">make[2]: *** No rule to make target &#39;../../glx/<=
a href=3D"http://libglxvnd.la" target=3D"_blank">libglxvnd.la</a>&#39;, nee=
ded by &#39;Xwayland&#39;.=C2=A0 Stop.<u></u><u></u></p>
<p class=3D"MsoNormal">make[2]: *** Waiting for unfinished jobs....<u></u><=
u></u></p>
<p class=3D"MsoNormal">make[2]: Leaving directory &#39;/media/iepl/iepl1/wo=
rk/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20=
.1-r0/build/hw/xwayland&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">Makefile:611: recipe for target &#39;all-recursive&#=
39; failed<u></u><u></u></p>
<p class=3D"MsoNormal">make[1]: *** [all-recursive] Error 1<u></u><u></u></=
p>
<p class=3D"MsoNormal">make[1]: Leaving directory &#39;/media/iepl/iepl1/wo=
rk/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20=
.1-r0/build/hw&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">Makefile:813: recipe for target &#39;all-recursive&#=
39; failed<u></u><u></u></p>
<p class=3D"MsoNormal">make: *** [all-recursive] Error 1<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: oe_runmake failed<u></u><u></u></p>
<p class=3D"MsoNormal">WARNING: exit code 1 from a shell command.<u></u><u>=
</u></p>
<p class=3D"MsoNormal">ERROR: Function failed: do_compile (log file is loca=
ted at /media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm=
3-linux/xserver-xorg/2_1.20.1-r0/temp/log.do_compile.2603)<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Can somebody provide me a few pointers for this. For=
 more info feel free to reply.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black">Best Regards
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black">Kamal Pandey<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black">Junior Software Engineer</span><span lang=3D"EN-US" style=3D"col=
or:black"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:b=
lack"><img width=3D"32" height=3D"32" style=3D"width:.3333in;height:.3333in=
" id=3D"m_-5840019201465309580Picture_x0020_1" src=3D"cid:image001.png@01D4=
6BCF.EB204570" alt=3D"ifm_logo_sqrs"></span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;color:black=
">ifm
 engineering pvt. ltd.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-f=
amily:&quot;Trebuchet MS&quot;,sans-serif;color:black">Survey No. 1/10/16, =
3rd floor, Above SBI, Bavdhan Branch, N.D.A. Road, Bavdhan, Pune, India - 4=
11021 | Web:
</span><span lang=3D"EN-US"><a href=3D"http://www.ifm.com/" target=3D"_blan=
k"><span style=3D"font-size:8.0pt;font-family:&quot;Trebuchet MS&quot;,sans=
-serif;color:black">www.ifm.com</span></a></span><span lang=3D"EN-US" style=
=3D"font-size:8.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;color:b=
lack">
 | Phone: +91-20-22951910 Extn:215 | CIN: U29213PN2010FTC13676</span><span>=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000006be0c00579603b11--

--0000000000006be0c20579603b12
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <166c08f5fe04cff311>
X-Attachment-Id: 166c08f5fe04cff311

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
RK5CYII=

--0000000000006be0c20579603b12
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <>
X-Attachment-Id: 

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
RK5CYII=

--0000000000006be0c20579603b12--
