Return-Path: <djszapi@archlinux.us>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D236DE013A7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:08:19 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id y14so486295pdi.30
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:08:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=vZkak3pbrkmIR+54kKjz/5TxDZSbpEDrgi2W2E0vgsQ=;
	b=pRK0+p7oTrAvvJamkOsBrjUONU8PirijlMYjpsB6qAnZdO8bUhl8sPN22yvQqAeYHX
	7kQQv4WVeTlJzvG1KFbkWijxAOv5d/mPrmLShGRxXZ5vT7Qe4mf5aRby7GMjQeX9Ud3/
	OlPTya+fOAam0xokJ56rSo4wMacJmY6xfWD2Yft8SwZcEQKdXA1x66m/fQi700Q6kIkd
	v5MeBkKDO3kX0swOFW2KOZWnSz9wZSdn6/L2HEaCsbFK/qwyOtD6kKbhfX7rex5ppAoV
	P+7aJCc2s1FwchG7jm6gAtbiLDKKUcRbrbgIknb6pRQyFGyU1yUlUOTVvVTPdDk+33ll
	sk5w==
MIME-Version: 1.0
X-Received: by 10.68.163.131 with SMTP id yi3mr43168523pbb.55.1374678498879;
	Wed, 24 Jul 2013 08:08:18 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 08:08:18 -0700 (PDT)
In-Reply-To: <CAN20qYp+MW8+LMWS29ZDfmNoh+yRkadLsnbatY8btX8yAU7Rsg@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
	<CAN20qYp+MW8+LMWS29ZDfmNoh+yRkadLsnbatY8btX8yAU7Rsg@mail.gmail.com>
Date: Wed, 24 Jul 2013 16:08:18 +0100
X-Google-Sender-Auth: bwRtf3wdSe43zJxoLxJW0v7Dm2Q
Message-ID: <CAOMwXhNt-p4iEJnuGYb75WJtA+5PbnsSouJSriQaa-rnRsOn2Q@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Bill Traynor <btraynor@gmail.com>
X-Gm-Message-State: ALoCoQlqhWJLFuOAT7Zv1lYQKHg2Arbow3qckimhldM+kZnfYFp4VMWPXSC4WbSYcG6AWzQapQWJ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: FW: FW: [OE-core] Doc: external toolchain
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
X-List-Received-Date: Wed, 24 Jul 2013 15:08:19 -0000
Content-Type: multipart/alternative; boundary=047d7bacb46e9b3b9804e243478a

--047d7bacb46e9b3b9804e243478a
Content-Type: text/plain; charset=ISO-8859-1

I was using that based on the non-official documentation (i.e. presentation
at the Linux event).


On Wed, Jul 24, 2013 at 4:06 PM, Bill Traynor <btraynor@gmail.com> wrote:

> Try with:
>
> TCMODE = "external-csl"
> EXTERNAL_TOOLCHAIN = "/path/to/sourcery/toolchain"
>
> On Wed, Jul 24, 2013 at 3:47 AM, Rifenbark, Scott M
> <scott.m.rifenbark@intel.com> wrote:
> > Hi,
> >
> >
> >
> > Can anyone address the toolchain questions here for Laszlo?
> >
> >
> >
> > Thanks,
> >
> > Scott
> >
> >
> >
> > From: djszapi@archlinux.us [mailto:djszapi@archlinux.us] On Behalf Of
> Laszlo
> > Papp
> > Sent: Tuesday, July 23, 2013 11:52 PM
> > To: Rifenbark, Scott M
> > Cc: Wold, Saul
> > Subject: Re: FW: [OE-core] Doc: external toolchain
> >
> >
> >
> > OK, thanks.
> >
> >
> >
> > I am facing this issue, any clue?
> >
> >
> >
> > ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
> > '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
> >
> > ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
> > '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
> >
> >
> >
> > This is what I have in my build/conf/local.conf:
> >
> >
> >
> > ...
> >
> > TCMODE = "external-sourcery"
> >
> > EXTERNAL_TOOLCHAIN = "/usr"
> >
> > TARGET_PREFIX = "arm-none-linux-gnueabi-"
> >
> > ...
> >
> >
> >
> > The external toolchain does exist:
> >
> >
> >
> > /usr/bin/arm-none-linux-gnueabi-gcc -v
> >
> > Using built-in specs.
> >
> > COLLECT_GCC=/usr/bin/arm-none-linux-gnueabi-gcc
> >
> >
> COLLECT_LTO_WRAPPER=/usr/bin/../libexec/gcc/arm-none-linux-gnueabi/4.7.3/lto-wrapper
> >
> > Target: arm-none-linux-gnueabi
> >
> > Configured with:
> > /scratch/jbrown/2013.05-arm-linux-release/src/gcc-4.7-2013.05/configure
> > --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu
> > --target=arm-none-linux-gnueabi --enable-threads --disable-libmudflap
> > --disable-libssp --disable-libstdcxx-pch
> --enable-extra-sgxxlite-multilibs
> > --with-arch=armv5te --with-gnu-as --with-gnu-ld
> --with-specs='%{save-temps:
> > -fverbose-asm}
> >
> %{funwind-tables|fno-unwind-tables|mabi=*|ffreestanding|nostdlib:;:-funwind-tables}
> > -D__CS_SOURCERYGXX_MAJ__=2013 -D__CS_SOURCERYGXX_MIN__=5
> > -D__CS_SOURCERYGXX_REV__=24 %{O2:%{!fno-remove-local-statics:
> > -fremove-local-statics}}
> %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics:
> > -fremove-local-statics}}}' --enable-languages=c,c++ --enable-shared
> > --enable-lto --enable-symvers=gnu --enable-__cxa_atexit
> > --with-pkgversion='Sourcery CodeBench Lite 2013.05-24'
> > --with-bugurl=https://sourcery.mentor.com/GNUToolchain/ --disable-nls
> > --prefix=/opt/codesourcery
> > --with-sysroot=/opt/codesourcery/arm-none-linux-gnueabi/libc
> >
> --with-build-sysroot=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/libc
> >
> --with-gmp=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >
> --with-mpfr=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >
> --with-mpc=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >
> --with-ppl=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> > --with-host-libstdcxx='-static-libgcc -Wl,-Bstatic,-lstdc++,-Bdynamic
> -lm'
> >
> --with-cloog=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >
> --with-libelf=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> > --disable-libgomp --disable-libitm --enable-poison-system-directories
> >
> --with-build-time-tools=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/bin
> >
> --with-build-time-tools=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/bin
> >
> > Thread model: posix
> >
> > gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-24)
> >
> >
> >
> > On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M
> > <scott.m.rifenbark@intel.com> wrote:
> >
> > Laszlo,
> >
> > Saul forwarded me this email regarding external toolchains.  The "In
> > Progress" version of the YP Reference Manual has a new section on
> toolchains
> > in general.  This section, combined with the TCMODE glossary entry and a
> FAQ
> > entry, both in the reference manual, comprise our information on the
> > external toolchain topic.  Let me know what specifically would need
> > additionally addressed and I can get that on my plate to improve the doc
> > set.
> >
> > Thanks,
> > Scott
> >
> >
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#cross-development-toolchain-generation
> >
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-TCMODE
> >
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#idm622640
> >
> >
> >
> >
> >>-----Original Message-----
> >>From: Saul Wold [mailto:sgw@linux.intel.com]
> >>Sent: Tuesday, July 23, 2013 3:52 PM
> >>To: Rifenbark, Scott M
> >>Subject: Fwd: [OE-core] Doc: external toolchain
> >>
> >>
> >>
> >>
> >>-------- Original Message --------
> >>Subject:       [OE-core] Doc: external toolchain
> >>Date:  Tue, 23 Jul 2013 23:45:28 +0100
> >>From:  Laszlo Papp <lpapp@kde.org>
> >>To:    openembedded-core@lists.openembedded.org
> >>
> >>
> >>
> >>Dear gents and ladies,
> >>
> >>it would be nice to get some documentation about this subject. There is
> >>only one presentation with only a few short slides about the topic:
> >>http://events.linuxfoundation.org/images/stories/slides/elc2013_denys.pd
> >>f
> >>
> >>I am now having some issues currently, and hard time to figure out what
> >>is going on. Note, this thread is not about getting help with that
> >>particular issue, but encouraging you to document this, for me,
> >>fundamental feature more thoroughly.
> >>
> >>Thank you for your understanding.
> >>
> >>Many thanks,
> >>Laszlo
> >>
> >>
> >>
> >
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--047d7bacb46e9b3b9804e243478a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was using that based on the non-official documentation (=
i.e. presentation at the Linux event).</div><div class=3D"gmail_extra"><br>=
<br><div class=3D"gmail_quote">On Wed, Jul 24, 2013 at 4:06 PM, Bill Trayno=
r <span dir=3D"ltr">&lt;<a href=3D"mailto:btraynor@gmail.com" target=3D"_bl=
ank">btraynor@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Try with:<br>
<br>
TCMODE =3D &quot;external-csl&quot;<br>
EXTERNAL_TOOLCHAIN =3D &quot;/path/to/sourcery/toolchain&quot;<br>
<br>
On Wed, Jul 24, 2013 at 3:47 AM, Rifenbark, Scott M<br>
<div><div class=3D"h5">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">s=
cott.m.rifenbark@intel.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Can anyone address the toolchain questions here for Laszlo?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Scott<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; From: <a href=3D"mailto:djszapi@archlinux.us">djszapi@archlinux.us</a>=
 [mailto:<a href=3D"mailto:djszapi@archlinux.us">djszapi@archlinux.us</a>] =
On Behalf Of Laszlo<br>
&gt; Papp<br>
&gt; Sent: Tuesday, July 23, 2013 11:52 PM<br>
&gt; To: Rifenbark, Scott M<br>
&gt; Cc: Wold, Saul<br>
&gt; Subject: Re: FW: [OE-core] Doc: external toolchain<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; OK, thanks.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I am facing this issue, any clue?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ERROR: Failed to obtain CodeSourcery toolchain version: Execution of<b=
r>
&gt; &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; failed: command not found<=
br>
&gt;<br>
&gt; ERROR: Failed to obtain CodeSourcery toolchain version: Execution of<b=
r>
&gt; &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; failed: command not found<=
br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; This is what I have in my build/conf/local.conf:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ...<br>
&gt;<br>
&gt; TCMODE =3D &quot;external-sourcery&quot;<br>
&gt;<br>
&gt; EXTERNAL_TOOLCHAIN =3D &quot;/usr&quot;<br>
&gt;<br>
&gt; TARGET_PREFIX =3D &quot;arm-none-linux-gnueabi-&quot;<br>
&gt;<br>
&gt; ...<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; The external toolchain does exist:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; /usr/bin/arm-none-linux-gnueabi-gcc -v<br>
&gt;<br>
&gt; Using built-in specs.<br>
&gt;<br>
&gt; COLLECT_GCC=3D/usr/bin/arm-none-linux-gnueabi-gcc<br>
&gt;<br>
&gt; COLLECT_LTO_WRAPPER=3D/usr/bin/../libexec/gcc/arm-none-linux-gnueabi/4=
.7.3/lto-wrapper<br>
&gt;<br>
&gt; Target: arm-none-linux-gnueabi<br>
&gt;<br>
&gt; Configured with:<br>
&gt; /scratch/jbrown/2013.05-arm-linux-release/src/gcc-4.7-2013.05/configur=
e<br>
&gt; --build=3Di686-pc-linux-gnu --host=3Di686-pc-linux-gnu<br>
&gt; --target=3Darm-none-linux-gnueabi --enable-threads --disable-libmudfla=
p<br>
&gt; --disable-libssp --disable-libstdcxx-pch --enable-extra-sgxxlite-multi=
libs<br>
&gt; --with-arch=3Darmv5te --with-gnu-as --with-gnu-ld --with-specs=3D&#39;=
%{save-temps:<br>
&gt; -fverbose-asm}<br>
&gt; %{funwind-tables|fno-unwind-tables|mabi=3D*|ffreestanding|nostdlib:;:-=
funwind-tables}<br>
&gt; -D__CS_SOURCERYGXX_MAJ__=3D2013 -D__CS_SOURCERYGXX_MIN__=3D5<br>
&gt; -D__CS_SOURCERYGXX_REV__=3D24 %{O2:%{!fno-remove-local-statics:<br>
&gt; -fremove-local-statics}} %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-st=
atics:<br>
&gt; -fremove-local-statics}}}&#39; --enable-languages=3Dc,c++ --enable-sha=
red<br>
&gt; --enable-lto --enable-symvers=3Dgnu --enable-__cxa_atexit<br>
&gt; --with-pkgversion=3D&#39;Sourcery CodeBench Lite 2013.05-24&#39;<br>
&gt; --with-bugurl=3D<a href=3D"https://sourcery.mentor.com/GNUToolchain/" =
target=3D"_blank">https://sourcery.mentor.com/GNUToolchain/</a> --disable-n=
ls<br>
&gt; --prefix=3D/opt/codesourcery<br>
&gt; --with-sysroot=3D/opt/codesourcery/arm-none-linux-gnueabi/libc<br>
&gt; --with-build-sysroot=3D/scratch/jbrown/2013.05-arm-linux-release/insta=
ll/arm-none-linux-gnueabi/libc<br>
&gt; --with-gmp=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05=
-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/hos=
t-libs-i686-pc-linux-gnu/usr<br>
&gt; --with-mpfr=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.0=
5-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/ho=
st-libs-i686-pc-linux-gnu/usr<br>
&gt; --with-mpc=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05=
-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/hos=
t-libs-i686-pc-linux-gnu/usr<br>
&gt; --with-ppl=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05=
-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/hos=
t-libs-i686-pc-linux-gnu/usr<br>
&gt; --with-host-libstdcxx=3D&#39;-static-libgcc -Wl,-Bstatic,-lstdc++,-Bdy=
namic -lm&#39;<br>
&gt; --with-cloog=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.=
05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/h=
ost-libs-i686-pc-linux-gnu/usr<br>
&gt; --with-libelf=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013=
.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/=
host-libs-i686-pc-linux-gnu/usr<br>
&gt; --disable-libgomp --disable-libitm --enable-poison-system-directories<=
br>
&gt; --with-build-time-tools=3D/scratch/jbrown/2013.05-arm-linux-release/in=
stall/arm-none-linux-gnueabi/bin<br>
&gt; --with-build-time-tools=3D/scratch/jbrown/2013.05-arm-linux-release/in=
stall/arm-none-linux-gnueabi/bin<br>
&gt;<br>
&gt; Thread model: posix<br>
&gt;<br>
&gt; gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-24)<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M<br>
&gt; &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rifenbark@i=
ntel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Laszlo,<br>
&gt;<br>
&gt; Saul forwarded me this email regarding external toolchains. =A0The &qu=
ot;In<br>
&gt; Progress&quot; version of the YP Reference Manual has a new section on=
 toolchains<br>
&gt; in general. =A0This section, combined with the TCMODE glossary entry a=
nd a FAQ<br>
&gt; entry, both in the reference manual, comprise our information on the<b=
r>
&gt; external toolchain topic. =A0Let me know what specifically would need<=
br>
&gt; additionally addressed and I can get that on my plate to improve the d=
oc<br>
&gt; set.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Scott<br>
&gt;<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manu=
al.html#cross-development-toolchain-generation" target=3D"_blank">http://ww=
w.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#cross-development=
-toolchain-generation</a><br>

&gt; <a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manu=
al.html#var-TCMODE" target=3D"_blank">http://www.yoctoproject.org/docs/late=
st/ref-manual/ref-manual.html#var-TCMODE</a><br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manu=
al.html#idm622640" target=3D"_blank">http://www.yoctoproject.org/docs/lates=
t/ref-manual/ref-manual.html#idm622640</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;&gt;-----Original Message-----<br>
&gt;&gt;From: Saul Wold [mailto:<a href=3D"mailto:sgw@linux.intel.com">sgw@=
linux.intel.com</a>]<br>
&gt;&gt;Sent: Tuesday, July 23, 2013 3:52 PM<br>
&gt;&gt;To: Rifenbark, Scott M<br>
&gt;&gt;Subject: Fwd: [OE-core] Doc: external toolchain<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;-------- Original Message --------<br>
&gt;&gt;Subject: =A0 =A0 =A0 [OE-core] Doc: external toolchain<br>
&gt;&gt;Date: =A0Tue, 23 Jul 2013 23:45:28 +0100<br>
&gt;&gt;From: =A0Laszlo Papp &lt;<a href=3D"mailto:lpapp@kde.org">lpapp@kde=
.org</a>&gt;<br>
&gt;&gt;To: =A0 =A0<a href=3D"mailto:openembedded-core@lists.openembedded.o=
rg">openembedded-core@lists.openembedded.org</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;Dear gents and ladies,<br>
&gt;&gt;<br>
&gt;&gt;it would be nice to get some documentation about this subject. Ther=
e is<br>
&gt;&gt;only one presentation with only a few short slides about the topic:=
<br>
&gt;&gt;<a href=3D"http://events.linuxfoundation.org/images/stories/slides/=
elc2013_denys.pd" target=3D"_blank">http://events.linuxfoundation.org/image=
s/stories/slides/elc2013_denys.pd</a><br>
&gt;&gt;f<br>
&gt;&gt;<br>
&gt;&gt;I am now having some issues currently, and hard time to figure out =
what<br>
&gt;&gt;is going on. Note, this thread is not about getting help with that<=
br>
&gt;&gt;particular issue, but encouraging you to document this, for me,<br>
&gt;&gt;fundamental feature more thoroughly.<br>
&gt;&gt;<br>
&gt;&gt;Thank you for your understanding.<br>
&gt;&gt;<br>
&gt;&gt;Many thanks,<br>
&gt;&gt;Laszlo<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br></div>

--047d7bacb46e9b3b9804e243478a--
