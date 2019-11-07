Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC850E00BA1; Thu,  7 Nov 2019 13:36:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E482E00B65
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 13:36:21 -0800 (PST)
Received: by mail-lj1-f169.google.com with SMTP id v8so3933414ljh.5
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2019 13:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ewUMIwh9RbRM/Qsps+MJbkU/ys07qzePobKZNTHn4wc=;
	b=JKQfe3JCQk+SHsVWO1korROU49cUIV2yXViyzE/Ap2UPzdzIaWWltHTuCjACuFwiI+
	MiXXZkBCv/HbvgUEul0qVzzW58koBv2ovEI+ybYh3e+TFUS6uC0OwWPeK76uvA3VuUhn
	5HQWCW0XeKALa4jGRpEU3i7JlqG9YZ6qCRBVxOjgNISESEuGBGVY64DQhsuYu9bUzVfO
	tWDvjVbe+cEcPG20qOP4Dku3CH32IFiExOw4wuz+78CsVCUmFN+AVBKWpHQdaUys6duk
	zvN+2u/WCzlJc5QmffhLZ0I1jUnFvVh2nnfSu3bhkknPnbHZ23M6k/WgQd78LWAcWVMK
	pGow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ewUMIwh9RbRM/Qsps+MJbkU/ys07qzePobKZNTHn4wc=;
	b=Req7JTiZWbxnG/oSGfxvb1R9R1sTLELLEgyZWyH8sonBxJyi2L53GgMS+w6XUatLy7
	cpkZTqbh4i6moxmcFmFeVvHKItXHpnv4B6zJGfqjWex5Zd3FI/QsSKOMC86i0M5CfKKi
	ca2eBv0ZVTDkBWVxbdFS5767rWTakoY7XQpkxI36ubUOA2DHgAlen8ieyZ/1RXD2deRm
	YgXaUK/SufH9obaFr5YrD5F09dIxaC1a6zMfJwCq5QmThna+7L5oFCXNpGOvsoWvnUHP
	VJMnL6vp2U+YXcZIabsINLDimkBOHNmzqDyJ8aq5I8T8kDsEid7ipZ4Vg01ruRVyfTzs
	kUJA==
X-Gm-Message-State: APjAAAXUmbanEACQU8WibEElYQz10cohp5GQzEYzhf6TzqcqAPplqmP3
	uF5PogmRaH/ULxaIF+3TS1UcZQuXyybEGTEMxB+rZe5ksxHJIo2L
X-Google-Smtp-Source: APXvYqwOwaLFG/Jec7cIZVZaZOkh7zQthAyLOzhOQKl9zGoE8bVxbMwAr9mWhxaHSEi35ogv0UAJ9foj+wZM8TW+RDI=
X-Received: by 2002:a2e:3c08:: with SMTP id j8mr4021090lja.28.1573162580175;
	Thu, 07 Nov 2019 13:36:20 -0800 (PST)
MIME-Version: 1.0
References: <87wocb79tw.fsf@xn--hllmanns-n4a.de>
In-Reply-To: <87wocb79tw.fsf@xn--hllmanns-n4a.de>
From: Rudolf Streif <rudolf.streif@ibeeto.com>
Date: Thu, 7 Nov 2019 13:36:08 -0800
Message-ID: <CAPxNcndkjjW_EEnxWuLN1n8q9TskWW-gngTRkcamJtRf=cfppw@mail.gmail.com>
To: berthold-yocto@xn--hllmanns-n4a.de
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto newbie: Need help with recipe
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
X-List-Received-Date: Thu, 07 Nov 2019 21:36:23 -0000
Content-Type: multipart/alternative; boundary="000000000000c401230596c874e5"

--000000000000c401230596c874e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Berthold,

Welcome to the Yocto Project.

This line is the problem with your recipe:

PACKAGES =3D "${PN}"

This tells the build system to only create one package, the default
package. Because this line FILES_${PN} =3D "${bindir}" tells the build syst=
em
to include everything in ${bindir} into that package the package also
includes the .debug directory which is then flagged by the QA checker. To
fix this:

PACKAGES =3D "${PN}-dbg ${PN}"

You have to specify the debug package before the default package as the
variable is processed from left to right and whatever is consumed by a
package will not be packaged anymore. However, even simpler is to remove
the PACKAGES line altogether as the default already does it correctly.

Best regards,
:rjs



On Thu, Nov 7, 2019 at 12:04 PM Berthold H=C3=B6llmann <
berthold-yocto@h=C3=B6llmanns.de> wrote:

>
> Hello,
>
> I'm trying my way around yocto. I thought I try adding a small project
> of mine to a Raspberry Pi image as a first try in writing recipes. At
> least I managed to get the project compiling, but the generation of the
> packages is failing:
>
> $ bitbake  qtlissajous
> ...
> ERROR: qtlissajous-git-r0 do_package_qa: QA Issue: non debug package
> contains .debug directory: qtlissajous path
> /work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/qtlissajous/git-r0/packa=
ges-split/qtlissajous/usr/bin/.debug/lissajous_explorer
> [debug-files]
> ERROR: qtlissajous-git-r0 do_package_qa: QA run found fatal errors. Pleas=
e
> consider fixing them.
> ERROR: qtlissajous-git-r0 do_package_qa:
> ERROR: qtlissajous-git-r0 do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-l=
inux-gnueabi/qtlissajous/git-r0/temp/log.do_package_qa.4823
> ERROR: Task
> (/home/build/shared/rpi/meta-qtlissajous/recipes-qtlissajous/qtlissajous/=
qtlissajous_git.bb:do_package_qa)
> failed with exit code '1'
> ...
>
> $ (cd
> /home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-l=
inux-gnueabi/qtlissajous/git-r0/packages-split/;find
> -type f)
>
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_doubleslider=
.cpp
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_phaselabel.c=
pp
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.cpp
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.h
>
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explorer=
.cpp
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explorer=
.h
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.cpp
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.h
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/main.cpp
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.cpp
> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.h
> ./qtlissajous-tools/usr/bin/lissajous_explorer
> ./qtlissajous/usr/bin/.debug/lissajous_explorer
> ./qtlissajous-tools.shlibdeps
>
> My qtlissajous_git.gg file is:
>
> -------------------------------------------------------
> DESCRIPTION =3D "Explore Lissajous figures for Raspberry Pi"
> SECTION =3D "games"
> DEPENDS +=3D "qtbase"
>
> PACKAGES =3D "${PN}"
>
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D
> "file://LICENSE;md5=3D7e26fc87b2c255632232dc535ed2700b;sha256=3Dc8ea5a5ce=
0ef734ec1d0be3e214bed71673f1ffc628fe86bbd055d61abd52cc8"
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>
> SRCREV =3D "${AUTOREV}"
> SRC_URI =3D "git://gitlab.com/bhoel/qlissajousexplorer.git;protocol=3Dhtt=
ps"
>
> S =3D "${WORKDIR}/git"
>
> require recipes-qt/qt5/qt5.inc
>
> FILES_${PN} =3D "${bindir}"
> FILES_${PN}-dbg +=3D "${bindir}/.debug"
>
> do_install() {
>       install -d ${D}/usr/bin
>       install -m 0755 lissajous_explorer ${D}/usr/bin
> }
>
> RDEPENDS_${PN} =3D "qtbase-plugins"
> -------------------------------------------------------
>
> Why is the release executable ending up in the tools tree?
> Why is the debug executable ending up in the release tree?
> Is this the right place to ask this kind of questions?
>
> Thank you
> Berthold
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


--=20
Rudolf J Streif
CEO/CTO
ibeeto, Streif Enterprises Inc.

--000000000000c401230596c874e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Bert=
hold,<div><br></div><div>Welcome to the Yocto Project.</div><div><br></div>=
<div>This line is the problem with your recipe:</div><div><br></div><div>PA=
CKAGES =3D &quot;${PN}&quot;<br></div><div><br></div><div>This tells the bu=
ild system to only create one package, the default package. Because this li=
ne FILES_${PN} =3D &quot;${bindir}&quot; tells the build system to include =
everything in ${bindir} into that package the package also includes the .de=
bug directory which is then flagged by the QA checker. To fix this:</div><d=
iv><br></div><div>PACKAGES =3D &quot;${PN}-dbg ${PN}&quot;<br></div><div><b=
r></div><div>You have to specify the debug package before the default packa=
ge as the variable is processed from left to right and whatever is consumed=
 by a package will not be packaged anymore. However, even simpler is to rem=
ove the PACKAGES line altogether as the default already does it correctly.<=
/div><div><br></div><div>Best=C2=A0regards,</div><div>:rjs</div><div><br></=
div><div><br></div></div></div></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 2019 at 12:04 PM Bertho=
ld H=C3=B6llmann &lt;<a href=3D"mailto:berthold-yocto@h%C3%B6llmanns.de">be=
rthold-yocto@h=C3=B6llmanns.de</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><br>
Hello,<br>
<br>
I&#39;m trying my way around yocto. I thought I try adding a small project<=
br>
of mine to a Raspberry Pi image as a first try in writing recipes. At<br>
least I managed to get the project compiling, but the generation of the<br>
packages is failing:<br>
<br>
$ bitbake=C2=A0 qtlissajous<br>
...<br>
ERROR: qtlissajous-git-r0 do_package_qa: QA Issue: non debug package contai=
ns .debug directory: qtlissajous path /work/cortexa7t2hf-neon-vfpv4-poky-li=
nux-gnueabi/qtlissajous/git-r0/packages-split/qtlissajous/usr/bin/.debug/li=
ssajous_explorer [debug-files]<br>
ERROR: qtlissajous-git-r0 do_package_qa: QA run found fatal errors. Please =
consider fixing them.<br>
ERROR: qtlissajous-git-r0 do_package_qa: <br>
ERROR: qtlissajous-git-r0 do_package_qa: Function failed: do_package_qa<br>
ERROR: Logfile of failure stored in: /home/build/shared/rpi/rpi2-build/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/qtlissajous/git-r0/temp/log=
.do_package_qa.4823<br>
ERROR: Task (/home/build/shared/rpi/meta-qtlissajous/recipes-qtlissajous/qt=
lissajous/qtlissajous_git.bb:do_package_qa) failed with exit code &#39;1&#3=
9;<br>
...<br>
<br>
$ (cd /home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-po=
ky-linux-gnueabi/qtlissajous/git-r0/packages-split/;find=C2=A0 -type f)<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_doubleslider.c=
pp<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_phaselabel.cpp=
<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.cpp<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.h<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explorer.c=
pp<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explorer.h=
<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.cpp<b=
r>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.h<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/main.cpp<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.cpp<br>
./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.h<br>
./qtlissajous-tools/usr/bin/lissajous_explorer<br>
./qtlissajous/usr/bin/.debug/lissajous_explorer<br>
./qtlissajous-tools.shlibdeps<br>
<br>
My <a href=3D"http://qtlissajous_git.gg" rel=3D"noreferrer" target=3D"_blan=
k">qtlissajous_git.gg</a> file is:<br>
<br>
-------------------------------------------------------<br>
DESCRIPTION =3D &quot;Explore Lissajous figures for Raspberry Pi&quot;<br>
SECTION =3D &quot;games&quot;<br>
DEPENDS +=3D &quot;qtbase&quot;<br>
<br>
PACKAGES =3D &quot;${PN}&quot;<br>
<br>
LICENSE =3D &quot;MIT&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D7e26fc87b2c255632232dc535ed=
2700b;sha256=3Dc8ea5a5ce0ef734ec1d0be3e214bed71673f1ffc628fe86bbd055d61abd5=
2cc8&quot;<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&quot;<br>
<br>
SRCREV =3D &quot;${AUTOREV}&quot;<br>
SRC_URI =3D &quot;git://<a href=3D"http://gitlab.com/bhoel/qlissajousexplor=
er.git;protocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">gitlab.com/bh=
oel/qlissajousexplorer.git;protocol=3Dhttps</a>&quot;<br>
<br>
S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
require recipes-qt/qt5/qt5.inc<br>
<br>
FILES_${PN} =3D &quot;${bindir}&quot;<br>
FILES_${PN}-dbg +=3D &quot;${bindir}/.debug&quot;<br>
<br>
do_install() {<br>
=C2=A0 =C2=A0 =C2=A0 install -d ${D}/usr/bin<br>
=C2=A0 =C2=A0 =C2=A0 install -m 0755 lissajous_explorer ${D}/usr/bin<br>
}<br>
<br>
RDEPENDS_${PN} =3D &quot;qtbase-plugins&quot;<br>
-------------------------------------------------------<br>
<br>
Why is the release executable ending up in the tools tree?<br>
Why is the debug executable ending up in the release tree?<br>
Is this the right place to ask this kind of questions?<br>
<br>
Thank you<br>
Berthold<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Rudolf J Streif<div>CEO/CTO</di=
v><div>ibeeto, Streif Enterprises Inc.</div></div></div>

--000000000000c401230596c874e5--
