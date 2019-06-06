Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F8E8E009EA; Thu,  6 Jun 2019 09:31:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E67BFE00994
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 09:31:12 -0700 (PDT)
Received: by mail-it1-f195.google.com with SMTP id l21so954798ita.2
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 09:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=LUXcBUe5pcLobM4EdFwKmc1WLvDJyJ3DSl8yeaLgo1s=;
	b=wsQYCqN9XMpxIzL+YNMRVqXw8LQuety0tvB2m3jeEcdP6YAD3yRzPcsg8c/pwD2Mze
	4nxcnWGzkX+7M4T2epgf2scUEPpJu1LCI+l4wnQP85lQjHc+m7fZ7VjNScfCcejTF1GQ
	Ck97pbtm96lVqXoo+Q3vwajTRXYWlQ47kv7bjMWZbxIJBT8/zaiVVk26whs5bcC1RVn3
	qFG35vQ5NKNkWU+i7Io2UbwRWxwFJU7j94I49CCo3slro35Q594mp/jDQXsoeDlHjRbw
	UgUGjAu9OnwjGKtdiyz+fDUr3BKGl2HNkZA3acHLDPpiOU+mbUoGGbL1DPzGNx+QeeIT
	onSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=LUXcBUe5pcLobM4EdFwKmc1WLvDJyJ3DSl8yeaLgo1s=;
	b=AEPx89jnzsQ6PC6daJ+pW3NsW9AvKWHf/Xd8NPLgju+BqPZqnna2CwpyrgcCvW8X3S
	0yEDHxYCmVehH4h1VK5g/BmkpVHpNni8F/1N2GdudkW3gWoTSy+9nBnGZ2W0forUV3qh
	oeS1dCzE92/dZwsAYPpmXoWEBV5UJawJOrjxjlcf2Eko4tQhX9TgN0HWKgkjYoss/Zzr
	/vsL5KPEUkl5sv+aOawOPwN5lrNbKslmNbcRhU75Tl8u7L4YL4a0KkZz3mn21F8bPfuD
	/wrbJA3H4l33qcOb8LlCYt6r64hf3hFpTPgGHdmr3QH+x/DHiIyGieYS96+XW3ph7e3G
	hFsw==
X-Gm-Message-State: APjAAAW8tFKCqnOPW2BFcTTNLMWOjHAL7S4yOM7yieDCK5UeQEN2/dgt
	x5LcGL4FLwCgJc0Zfj/DvwTUHwHhQarfyaqRJchbqQ==
X-Google-Smtp-Source: APXvYqwlomqG5Vo+Z8M0aXK+Tc7Qx47TSl4DY19p+H/gVSETcYDteP/pHvwDg8ft2DuCOSkrFqhqxIkBVuEW0J26pMw=
X-Received: by 2002:a24:19cd:: with SMTP id b196mr838581itb.74.1559838672454; 
	Thu, 06 Jun 2019 09:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP4eQ-pUhBiqESOk-5uNGcbRkHW+=+wOpi=dTZDQ55ygGgBJQ@mail.gmail.com>
In-Reply-To: <CAFP4eQ-pUhBiqESOk-5uNGcbRkHW+=+wOpi=dTZDQ55ygGgBJQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 6 Jun 2019 17:30:59 +0100
Message-ID: <CAJTo0LYb7YDwOPS36q0Jo5RJXRwCx4p5e+xQ2J7KofODOVARJg@mail.gmail.com>
To: Gokul Raj <gokulraj.kana@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Error in building new recipe for Jool network translator
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
X-List-Received-Date: Thu, 06 Jun 2019 16:31:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sounds like the makefiles are broken and can't handle out-of-tree
builds.  Try replacing inherit autotools with inherit
autotools-brokensep (and if that fixes it, file a bug with jool as
their build is broken).


Ross

On Thu, 6 Jun 2019 at 17:27, Gokul Raj <gokulraj.kana@gmail.com> wrote:
>
> Hi All,
>
> I'm new to yocto and I'm trying to create recipe for Jool network transla=
tor package. Tried to compile this package in manually and I'm able to comp=
ile with following steps.
> Manual Steps:
>
> ./autogen.sh
> ./configure
> make
> make install
>
> Yocto Receipe:
>
> DESCRIPTION =3D "Jool is an Open Source IPv4/IPv6 Translator"
> SECTION =3D "networking"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf4a42=
63"
>
> SRCREV =3D "v4.0.1"
> SRC_URI =3D "git://github.com/NICMx/Jool.git;protocol=3Dhttp"
>
> DEPENDS =3D "libnl iptables"
>
> S =3D "${WORKDIR}/git"
>
> inherit autotools module
>
> Getting following error message /bin/bash: line 20: cd: src/mod: No such =
file or directory       But, the src/mod is present in the source directory=
. Help me resolve this issue.
>
> Yocto Build Error:
>
> ERROR: jool-4.0.1-r0 do_compile: oe_runmake failed
> ERROR: jool-4.0.1-r0 do_compile: Function failed: do_compile (log file is=
 located at /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/joo=
l/4.0.1-r0/temp/log.do_compile.58423)
> ERROR: Logfile of failure stored in: /home/graj/poky/build/tmp/work/qemua=
rm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', '=
common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 6 KERNEL_SRC=3D/home/graj/poky/build/tmp/work-shared/qemu=
arm/kernel-source KERNEL_PATH=3D/home/graj/poky/build/tmp/work-shared/qemua=
rm/kernel-source KERNEL_VERSION=3D5.0.7-yocto-standard CC=3Darm-enigma-linu=
x-gnueabi-gcc  -mno-thumb-interwork -marm -fuse-ld=3Dbfd -fmacro-prefix-map=
=3D/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r=
0=3D/usr/src/debug/jool/4.0.1-r0                      -fdebug-prefix-map=3D=
/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=
=3D/usr/src/debug/jool/4.0.1-r0                      -fdebug-prefix-map=3D/=
home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/re=
cipe-sysroot=3D                      -fdebug-prefix-map=3D/home/graj/poky/b=
uild/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot-nat=
ive=3D  -fdebug-prefix-map=3D/home/graj/poky/build/tmp/work-shared/qemuarm/=
kernel-source=3D/usr/src/kernel LD=3Darm-enigma-linux-gnueabi-ld.bfd   AR=
=3Darm-enigma-linux-gnueabi-ar  O=3D/home/graj/poky/build/tmp/work-shared/q=
emuarm/kernel-build-artifacts KBUILD_EXTRA_SYMBOLS=3D
> | Making all in src/mod
> | /bin/bash: line 20: cd: src/mod: No such file or directory
> | Makefile:343: recipe for target 'all-recursive' failed
> | make: *** [all-recursive] Error 1
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at /home/graj/p=
oky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_c=
ompile.58423)
> ERROR: Task (/home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.=
bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 570 tasks of which 563 didn't need to be r=
erun and 1 failed.
>
> Summary: 1 task failed:
>   /home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:do_compi=
le
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
> Source git link: https://github.com/NICMx/Jool
>
> Help me in fixing this issue.
>
> Regards,
> Gokul Raj K
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

