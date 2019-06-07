Return-Path: <gokulraj.kana@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CC35E00A96; Thu,  6 Jun 2019 20:16:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gokulraj.kana[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7D39E00951
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 20:16:42 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d23so730037qto.2
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 20:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=cl7hev1hz0Q/0KNnFsEf/ql4O3dtdT/KqbT7Ay7z1Rs=;
	b=NL5wS0Bb368kiKuN5yWmKtf4ACpIjOWKsQs89GXWzXTTC6Yirl0dkg/8vVyeRgwhZi
	li5p1deN8rS2xrYNBH+PrhQzCnmaEYstiL8s7NQlB3BUxOWM8K18Jjmy5f/HEe12Xmdg
	in0MAnZiWmyeE2t69zhSSaJ/Qkzizjdc5QicQvAZQP+Y7Vurv0ABDP8MrW5oVUgI8Wsy
	N5UpGSGNJlroIxe01qW5oXYOJSM8oru3YAaBfaXgGTeOkvmVHIDIm0p5piaCj+pwZDyh
	+srLW4DQ+acKloxS97sRYamJz/wLa8kzu4pDz9nM4hGXxcMFQxwAifArOW61BOD4hFns
	4f2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=cl7hev1hz0Q/0KNnFsEf/ql4O3dtdT/KqbT7Ay7z1Rs=;
	b=tL39lWPnSq5dqzNsFYmzuCn3d/wM/MtTDqdajVY0VoK1EjYfs6jhA1ta/ulyEezDxr
	y9eSv5rmHJNRPLELxXFazf+aGBWQiINA3VCVbtLzpgrDpV2RUGQMI6gXra+XGMzzFqe3
	d74qtmjTlFe6E54sJUJnKKK/2hcvYulXtTzw90LkCrylwL1Lypok1JHweywUuZ6LTD9b
	u/j5nmCvaehn9iWH7AxvH+iZSFKBNDokIkWd/wQHQ64VuHnoPKDh5S/m5KN7kXt1BpFv
	ff4rewpl1TSstJPKL0U9Fgi/H5qvEHEFd2xqAQvBxP0iHwOF13Kdn8Aie+siAd5DPAxD
	rTHg==
X-Gm-Message-State: APjAAAVkkNTf+pYnuStMmaCRvxiIehpOTnfTTGjtuLj9hA/4z4HsBmsY
	n5dMuRyHxLeoxqNQHpahAZyZxAC6KBmspk92gOpv6rFTsWSIPA==
X-Google-Smtp-Source: APXvYqwYXmQ55E5e2oVCrEwsTRBGxHG664lvtnkEm4L9OyYxodC0XHUCMuxacH0T6HE8VZte30rszmDJjUgD/MvzDIU=
X-Received: by 2002:aed:2a43:: with SMTP id k3mr44336080qtf.301.1559877401749; 
	Thu, 06 Jun 2019 20:16:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP4eQ-pUhBiqESOk-5uNGcbRkHW+=+wOpi=dTZDQ55ygGgBJQ@mail.gmail.com>
	<CAJTo0LYb7YDwOPS36q0Jo5RJXRwCx4p5e+xQ2J7KofODOVARJg@mail.gmail.com>
	<CAFP4eQ_1fk7ZvafF7vxpmvx3x4ntnwpdBBMYUJGJCfG4mPtrEA@mail.gmail.com>
	<2f565e97-c162-4dba-3f7e-5f78e0039d43@windriver.com>
In-Reply-To: <2f565e97-c162-4dba-3f7e-5f78e0039d43@windriver.com>
From: Gokul Raj <gokulraj.kana@gmail.com>
Date: Fri, 7 Jun 2019 08:46:07 +0530
Message-ID: <CAFP4eQ_tKC0-Jt607gRmBUjTK--zU=NEgxzKF4vbLCTkJLcAjQ@mail.gmail.com>
To: mark.hatle@windriver.com
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
X-List-Received-Date: Fri, 07 Jun 2019 03:16:44 -0000
Content-Type: multipart/alternative; boundary="0000000000006cabac058ab34201"

--0000000000006cabac058ab34201
Content-Type: text/plain; charset="UTF-8"

Thanks Mark, I'll check them out.

Regards,
Gokul Raj K


On Fri, 7 Jun, 2019, 2:54 AM Mark Hatle, <mark.hatle@windriver.com> wrote:

> On 6/6/19 11:46 AM, Gokul Raj wrote:
> > Hi Ross,
> >
> > Thanks for the suggestion. I have tried with inheriting
> autotools-brokensep
> > bbclass. Now bitbake got the path for compilation. But, bitbake
> compilation
> > refering to native kernel src path for module compilation. For your
> information
> > this package comes with both kernel module and userspace binary. Single
> makefile
> > helps building both kernel module and userspace binary. Attached log for
> your
> > reference.
> >
> > Any suggestion to compile this package.
>
> You will need to break this into two components.  The userspace compile is
> likely what you have mostly working.  The kernel module compilation though
> needs
> to be a 'machine specific' recipe, tied to the machine and kernel.
>
> Look at the Yocto Project documentation about building out of tree kernel
> modules.
>
> --Mark
>
> > Regards,
> > Gokul Raj K
> >
> > On Thu, Jun 6, 2019 at 10:01 PM Burton, Ross <ross.burton@intel.com
> > <mailto:ross.burton@intel.com>> wrote:
> >
> >     Sounds like the makefiles are broken and can't handle out-of-tree
> >     builds.  Try replacing inherit autotools with inherit
> >     autotools-brokensep (and if that fixes it, file a bug with jool as
> >     their build is broken).
> >
> >
> >     Ross
> >
> >     On Thu, 6 Jun 2019 at 17:27, Gokul Raj <gokulraj.kana@gmail.com
> >     <mailto:gokulraj.kana@gmail.com>> wrote:
> >     >
> >     > Hi All,
> >     >
> >     > I'm new to yocto and I'm trying to create recipe for Jool network
> >     translator package. Tried to compile this package in manually and
> I'm able
> >     to compile with following steps.
> >     > Manual Steps:
> >     >
> >     > ./autogen.sh
> >     > ./configure
> >     > make
> >     > make install
> >     >
> >     > Yocto Receipe:
> >     >
> >     > DESCRIPTION = "Jool is an Open Source IPv4/IPv6 Translator"
> >     > SECTION = "networking"
> >     > LICENSE = "GPLv2"
> >     > LIC_FILES_CHKSUM =
> "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
> >     >
> >     > SRCREV = "v4.0.1"
> >     > SRC_URI = "git://github.com/NICMx/Jool.git;protocol=http
> >     <http://github.com/NICMx/Jool.git;protocol=http>"
> >     >
> >     > DEPENDS = "libnl iptables"
> >     >
> >     > S = "${WORKDIR}/git"
> >     >
> >     > inherit autotools module
> >     >
> >     > Getting following error message /bin/bash: line 20: cd: src/mod:
> No such
> >     file or directory       But, the src/mod is present in the source
> directory.
> >     Help me resolve this issue.
> >     >
> >     > Yocto Build Error:
> >     >
> >     > ERROR: jool-4.0.1-r0 do_compile: oe_runmake failed
> >     > ERROR: jool-4.0.1-r0 do_compile: Function failed: do_compile (log
> file is
> >     located at
> >
>  /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)
> >     > ERROR: Logfile of failure stored in:
> >
>  /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423
> >     > Log data follows:
> >     > | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'arm-32',
> >     'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
> 'common']
> >     > | DEBUG: Executing shell function do_compile
> >     > | NOTE: make -j 6
> >
>  KERNEL_SRC=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source
> >
>  KERNEL_PATH=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source
> >     KERNEL_VERSION=5.0.7-yocto-standard CC=arm-enigma-linux-gnueabi-gcc
> >     -mno-thumb-interwork -marm -fuse-ld=bfd
> >
>  -fmacro-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=/usr/src/debug/jool/4.0.1-r0
> >
> >
>  -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=/usr/src/debug/jool/4.0.1-r0
> >
> >
>  -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot=
> >
> >
>  -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot-native=
> >
>  -fdebug-prefix-map=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source=/usr/src/kernel
> >     LD=arm-enigma-linux-gnueabi-ld.bfd   AR=arm-enigma-linux-gnueabi-ar
> >
>  O=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-build-artifacts
> >     KBUILD_EXTRA_SYMBOLS=
> >     > | Making all in src/mod
> >     > | /bin/bash: line 20: cd: src/mod: No such file or directory
> >     > | Makefile:343: recipe for target 'all-recursive' failed
> >     > | make: *** [all-recursive] Error 1
> >     > | ERROR: oe_runmake failed
> >     > | WARNING: exit code 1 from a shell command.
> >     > | ERROR: Function failed: do_compile (log file is located at
> >
>  /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)
> >     > ERROR: Task
> >     (/home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:
> do_compile)
> >     failed with exit code '1'
> >     > NOTE: Tasks Summary: Attempted 570 tasks of which 563 didn't need
> to be
> >     rerun and 1 failed.
> >     >
> >     > Summary: 1 task failed:
> >     >   /home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:
> do_compile
> >     > Summary: There were 2 ERROR messages shown, returning a non-zero
> exit code.
> >     >
> >     > Source git link: https://github.com/NICMx/Jool
> >     >
> >     > Help me in fixing this issue.
> >     >
> >     > Regards,
> >     > Gokul Raj K
> >     >
> >     > --
> >     > _______________________________________________
> >     > yocto mailing list
> >     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>
>

--0000000000006cabac058ab34201
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks Mark, I&#39;ll check them out.=C2=A0<div dir=3D"au=
to"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto">Gokul Raj K=
<br><div dir=3D"auto"><br></div></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, 7 Jun, 2019, 2:54 AM Mark Hat=
le, &lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle@windriver.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 6/6/19 11:46 AM=
, Gokul Raj wrote:<br>
&gt; Hi Ross,<br>
&gt; <br>
&gt; Thanks for the suggestion. I have tried with inheriting autotools-brok=
ensep<br>
&gt; bbclass. Now bitbake got the path for compilation. But, bitbake compil=
ation<br>
&gt; refering to native kernel src path for module compilation. For your in=
formation<br>
&gt; this package comes with both kernel module and userspace binary. Singl=
e makefile<br>
&gt; helps building both kernel module and userspace binary. Attached log f=
or your<br>
&gt; reference.<br>
&gt; <br>
&gt; Any suggestion to compile this package.<br>
<br>
You will need to break this into two components.=C2=A0 The userspace compil=
e is<br>
likely what you have mostly working.=C2=A0 The kernel module compilation th=
ough needs<br>
to be a &#39;machine specific&#39; recipe, tied to the machine and kernel.<=
br>
<br>
Look at the Yocto Project documentation about building out of tree kernel m=
odules.<br>
<br>
--Mark<br>
<br>
&gt; Regards,<br>
&gt; Gokul Raj K<br>
&gt; <br>
&gt; On Thu, Jun 6, 2019 at 10:01 PM Burton, Ross &lt;<a href=3D"mailto:ros=
s.burton@intel.com" target=3D"_blank" rel=3D"noreferrer">ross.burton@intel.=
com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank" =
rel=3D"noreferrer">ross.burton@intel.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Sounds like the makefiles are broken and can&#39;t =
handle out-of-tree<br>
&gt;=C2=A0 =C2=A0 =C2=A0builds.=C2=A0 Try replacing inherit autotools with =
inherit<br>
&gt;=C2=A0 =C2=A0 =C2=A0autotools-brokensep (and if that fixes it, file a b=
ug with jool as<br>
&gt;=C2=A0 =C2=A0 =C2=A0their build is broken).<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Ross<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Thu, 6 Jun 2019 at 17:27, Gokul Raj &lt;<a href=
=3D"mailto:gokulraj.kana@gmail.com" target=3D"_blank" rel=3D"noreferrer">go=
kulraj.kana@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:gokulraj.kana@gmail.co=
m" target=3D"_blank" rel=3D"noreferrer">gokulraj.kana@gmail.com</a>&gt;&gt;=
 wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi All,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I&#39;m new to yocto and I&#39;m trying to cre=
ate recipe for Jool network<br>
&gt;=C2=A0 =C2=A0 =C2=A0translator package. Tried to compile this package i=
n manually and I&#39;m able<br>
&gt;=C2=A0 =C2=A0 =C2=A0to compile with following steps.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Manual Steps:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ./autogen.sh<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ./configure<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; make<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; make install<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Yocto Receipe:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; DESCRIPTION =3D &quot;Jool is an Open Source I=
Pv4/IPv6 Translator&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; SECTION =3D &quot;networking&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; LICENSE =3D &quot;GPLv2&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=
=3Db234ee4d69f5fce4486a80fdaf4a4263&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; SRCREV =3D &quot;v4.0.1&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; SRC_URI =3D &quot;git://<a href=3D"http://gith=
ub.com/NICMx/Jool.git;protocol=3Dhttp" rel=3D"noreferrer noreferrer" target=
=3D"_blank">github.com/NICMx/Jool.git;protocol=3Dhttp</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://github.com/NICMx/Jool.git;pro=
tocol=3Dhttp" rel=3D"noreferrer noreferrer" target=3D"_blank">http://github=
.com/NICMx/Jool.git;protocol=3Dhttp</a>&gt;&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; DEPENDS =3D &quot;libnl iptables&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; inherit autotools module<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Getting following error message /bin/bash: lin=
e 20: cd: src/mod: No such<br>
&gt;=C2=A0 =C2=A0 =C2=A0file or directory=C2=A0 =C2=A0 =C2=A0 =C2=A0But, th=
e src/mod is present in the source directory.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Help me resolve this issue.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Yocto Build Error:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ERROR: jool-4.0.1-r0 do_compile: oe_runmake fa=
iled<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ERROR: jool-4.0.1-r0 do_compile: Function fail=
ed: do_compile (log file is<br>
&gt;=C2=A0 =C2=A0 =C2=A0located at<br>
&gt;=C2=A0 =C2=A0 =C2=A0/home/graj/poky/build/tmp/work/qemuarm-enigma-linux=
-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ERROR: Logfile of failure stored in:<br>
&gt;=C2=A0 =C2=A0 =C2=A0/home/graj/poky/build/tmp/work/qemuarm-enigma-linux=
-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Log data follows:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | DEBUG: SITE files [&#39;endian-little&#39;, =
&#39;bit-32&#39;, &#39;arm-common&#39;, &#39;arm-32&#39;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;common-linux&#39;, &#39;common-glibc&#39;, &#3=
9;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | DEBUG: Executing shell function do_compile<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | NOTE: make -j 6<br>
&gt;=C2=A0 =C2=A0 =C2=A0KERNEL_SRC=3D/home/graj/poky/build/tmp/work-shared/=
qemuarm/kernel-source<br>
&gt;=C2=A0 =C2=A0 =C2=A0KERNEL_PATH=3D/home/graj/poky/build/tmp/work-shared=
/qemuarm/kernel-source<br>
&gt;=C2=A0 =C2=A0 =C2=A0KERNEL_VERSION=3D5.0.7-yocto-standard CC=3Darm-enig=
ma-linux-gnueabi-gcc=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0-mno-thumb-interwork -marm -fuse-ld=3Dbfd<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fmacro-prefix-map=3D/home/graj/poky/build/tmp/work=
/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=3D/usr/src/debug/jool/4.0.1-r0=
=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/graj/poky/build/tmp/work=
/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=3D/usr/src/debug/jool/4.0.1-r0=
=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/graj/poky/build/tmp/work=
/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot=3D=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/graj/poky/build/tmp/work=
/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot-native=3D=C2=A0<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/graj/poky/build/tmp/work=
-shared/qemuarm/kernel-source=3D/usr/src/kernel<br>
&gt;=C2=A0 =C2=A0 =C2=A0LD=3Darm-enigma-linux-gnueabi-ld.bfd=C2=A0 =C2=A0AR=
=3Darm-enigma-linux-gnueabi-ar=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0O=3D/home/graj/poky/build/tmp/work-shared/qemuarm/k=
ernel-build-artifacts<br>
&gt;=C2=A0 =C2=A0 =C2=A0KBUILD_EXTRA_SYMBOLS=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | Making all in src/mod<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | /bin/bash: line 20: cd: src/mod: No such fil=
e or directory<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | Makefile:343: recipe for target &#39;all-rec=
ursive&#39; failed<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | make: *** [all-recursive] Error 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | ERROR: oe_runmake failed<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | WARNING: exit code 1 from a shell command.<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; | ERROR: Function failed: do_compile (log file=
 is located at<br>
&gt;=C2=A0 =C2=A0 =C2=A0/home/graj/poky/build/tmp/work/qemuarm-enigma-linux=
-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ERROR: Task<br>
&gt;=C2=A0 =C2=A0 =C2=A0(/home/graj/poky/meta-enigma/recipes-example/jool/j=
ool_4.0.1.bb:do_compile)<br>
&gt;=C2=A0 =C2=A0 =C2=A0failed with exit code &#39;1&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; NOTE: Tasks Summary: Attempted 570 tasks of wh=
ich 563 didn&#39;t need to be<br>
&gt;=C2=A0 =C2=A0 =C2=A0rerun and 1 failed.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0/home/graj/poky/meta-enigma/recipe=
s-example/jool/jool_4.0.1.bb:do_compile<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Summary: There were 2 ERROR messages shown, re=
turning a non-zero exit code.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Source git link: <a href=3D"https://github.com=
/NICMx/Jool" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github=
.com/NICMx/Jool</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Help me in fixing this issue.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Gokul Raj K<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ______________________________________________=
_<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; yocto mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"mailto:yocto@yoctoproject.org" targ=
et=3D"_blank" rel=3D"noreferrer">yocto@yoctoproject.org</a> &lt;mailto:<a h=
ref=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">=
yocto@yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"https://lists.yoctoproject.org/list=
info/yocto" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/listinfo/yocto</a><br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--0000000000006cabac058ab34201--
