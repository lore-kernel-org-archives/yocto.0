Return-Path: <djszapi@archlinux.us>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F28C6E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:20:41 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id y14so502986pdi.2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:20:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=L/k2bgzvZaDtCvYsW6B2FMt2Dt95hTQd64rTHgN2BRY=;
	b=L0G9LaiGAork+e2XTh7Tzj5jxiJu9w8bhKjtI+PBF3vWKwR54cVhcxJyBpF/3z3Kvq
	NeQl6B1wIxfnwfSUrjwA7jQZDvni6zbNX0p2rPl/Fw8FSB7mTxQjKY00XMzpHri8ZFkw
	WXyVbBeWc/Z3SHLVkIy7+3twm9TFHnK1pi+qUfKhiWiyzZdYpMhrHGn1RMuaZEpDIeE/
	ZPMuUO45cQX4uolEtxLQ98xI3plS8d5t6LOCO3e38eefAX/nfYnZRmAQKrb1VPqBIc7f
	wF8fkIpQtUyUlfcv6IahQpF3UVtFWU27dvvQeRu+oADAfgSxMJGAYmYBylR0r9JaNayC
	FWpA==
MIME-Version: 1.0
X-Received: by 10.68.223.225 with SMTP id qx1mr42612536pbc.157.1374679241198; 
	Wed, 24 Jul 2013 08:20:41 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 08:20:41 -0700 (PDT)
In-Reply-To: <CAN20qYrikM0gNDSOCEsxv_kCSSOTdon8bJqyL4Z-1RKq-z2MHA@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
	<CAN20qYp+MW8+LMWS29ZDfmNoh+yRkadLsnbatY8btX8yAU7Rsg@mail.gmail.com>
	<CAOMwXhNt-p4iEJnuGYb75WJtA+5PbnsSouJSriQaa-rnRsOn2Q@mail.gmail.com>
	<CAN20qYrikM0gNDSOCEsxv_kCSSOTdon8bJqyL4Z-1RKq-z2MHA@mail.gmail.com>
Date: Wed, 24 Jul 2013 16:20:41 +0100
X-Google-Sender-Auth: Yqn4B1yoKFjsbqPsSEqixzyjVT8
Message-ID: <CAOMwXhPvPC_0qC9LTzJmJL8QP-c8Wueemn6UVoTCnyWXsh35Sw@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Bill Traynor <btraynor@gmail.com>
X-Gm-Message-State: ALoCoQn+aSKnd4jes+zEDAOBT/xCiZVSdFwLDU6vqZh2InK52Qw8ZIkmRP0livVbQ4aW1ne0rii1
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
X-List-Received-Date: Wed, 24 Jul 2013 15:20:44 -0000
Content-Type: multipart/alternative; boundary=047d7b160515da220304e24373df

--047d7b160515da220304e24373df
Content-Type: text/plain; charset=ISO-8859-1

If I change external-csl to external-sourcery, busybox keeps failing with
the following error:

ERROR: ExpansionError during parsing
/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta/recipes-core/busybox/
busybox_1.20.2.bb: Failure expanding variable do_configure: ExpansionError:
Failure expanding variable do_configure, expression was
do_prepare_config
        merge_config.sh -m .config ${@" ".join(find_cfgs(d))}
        cml1_do_configure
 which triggered exception NameError: name 'find_cfgs' is not defined
ERROR: Command execution failed: Exited with 1

Got a clue?


On Wed, Jul 24, 2013 at 4:12 PM, Bill Traynor <btraynor@gmail.com> wrote:

> On Wed, Jul 24, 2013 at 11:08 AM, Laszlo Papp <lpapp@kde.org> wrote:
> > I was using that based on the non-official documentation (i.e.
> presentation
> > at the Linux event).
>
> external-sourcery is the new TCMODE and should work, however, I just
> thought trying the old one may work.
>
> >
> >
> > On Wed, Jul 24, 2013 at 4:06 PM, Bill Traynor <btraynor@gmail.com>
> wrote:
> >>
> >> Try with:
> >>
> >> TCMODE = "external-csl"
> >> EXTERNAL_TOOLCHAIN = "/path/to/sourcery/toolchain"
> >>
> >> On Wed, Jul 24, 2013 at 3:47 AM, Rifenbark, Scott M
> >> <scott.m.rifenbark@intel.com> wrote:
> >> > Hi,
> >> >
> >> >
> >> >
> >> > Can anyone address the toolchain questions here for Laszlo?
> >> >
> >> >
> >> >
> >> > Thanks,
> >> >
> >> > Scott
> >> >
> >> >
> >> >
> >> > From: djszapi@archlinux.us [mailto:djszapi@archlinux.us] On Behalf Of
> >> > Laszlo
> >> > Papp
> >> > Sent: Tuesday, July 23, 2013 11:52 PM
> >> > To: Rifenbark, Scott M
> >> > Cc: Wold, Saul
> >> > Subject: Re: FW: [OE-core] Doc: external toolchain
> >> >
> >> >
> >> >
> >> > OK, thanks.
> >> >
> >> >
> >> >
> >> > I am facing this issue, any clue?
> >> >
> >> >
> >> >
> >> > ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
> >> > '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
> >> >
> >> > ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
> >> > '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
> >> >
> >> >
> >> >
> >> > This is what I have in my build/conf/local.conf:
> >> >
> >> >
> >> >
> >> > ...
> >> >
> >> > TCMODE = "external-sourcery"
> >> >
> >> > EXTERNAL_TOOLCHAIN = "/usr"
> >> >
> >> > TARGET_PREFIX = "arm-none-linux-gnueabi-"
> >> >
> >> > ...
> >> >
> >> >
> >> >
> >> > The external toolchain does exist:
> >> >
> >> >
> >> >
> >> > /usr/bin/arm-none-linux-gnueabi-gcc -v
> >> >
> >> > Using built-in specs.
> >> >
> >> > COLLECT_GCC=/usr/bin/arm-none-linux-gnueabi-gcc
> >> >
> >> >
> >> >
> COLLECT_LTO_WRAPPER=/usr/bin/../libexec/gcc/arm-none-linux-gnueabi/4.7.3/lto-wrapper
> >> >
> >> > Target: arm-none-linux-gnueabi
> >> >
> >> > Configured with:
> >> >
> /scratch/jbrown/2013.05-arm-linux-release/src/gcc-4.7-2013.05/configure
> >> > --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu
> >> > --target=arm-none-linux-gnueabi --enable-threads --disable-libmudflap
> >> > --disable-libssp --disable-libstdcxx-pch
> >> > --enable-extra-sgxxlite-multilibs
> >> > --with-arch=armv5te --with-gnu-as --with-gnu-ld
> >> > --with-specs='%{save-temps:
> >> > -fverbose-asm}
> >> >
> >> >
> %{funwind-tables|fno-unwind-tables|mabi=*|ffreestanding|nostdlib:;:-funwind-tables}
> >> > -D__CS_SOURCERYGXX_MAJ__=2013 -D__CS_SOURCERYGXX_MIN__=5
> >> > -D__CS_SOURCERYGXX_REV__=24 %{O2:%{!fno-remove-local-statics:
> >> > -fremove-local-statics}}
> >> > %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics:
> >> > -fremove-local-statics}}}' --enable-languages=c,c++ --enable-shared
> >> > --enable-lto --enable-symvers=gnu --enable-__cxa_atexit
> >> > --with-pkgversion='Sourcery CodeBench Lite 2013.05-24'
> >> > --with-bugurl=https://sourcery.mentor.com/GNUToolchain/ --disable-nls
> >> > --prefix=/opt/codesourcery
> >> > --with-sysroot=/opt/codesourcery/arm-none-linux-gnueabi/libc
> >> >
> >> >
> --with-build-sysroot=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/libc
> >> >
> >> >
> --with-gmp=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >> >
> >> >
> --with-mpfr=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >> >
> >> >
> --with-mpc=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >> >
> >> >
> --with-ppl=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >> > --with-host-libstdcxx='-static-libgcc -Wl,-Bstatic,-lstdc++,-Bdynamic
> >> > -lm'
> >> >
> >> >
> --with-cloog=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >> >
> >> >
> --with-libelf=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
> >> > --disable-libgomp --disable-libitm --enable-poison-system-directories
> >> >
> >> >
> --with-build-time-tools=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/bin
> >> >
> >> >
> --with-build-time-tools=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/bin
> >> >
> >> > Thread model: posix
> >> >
> >> > gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-24)
> >> >
> >> >
> >> >
> >> > On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M
> >> > <scott.m.rifenbark@intel.com> wrote:
> >> >
> >> > Laszlo,
> >> >
> >> > Saul forwarded me this email regarding external toolchains.  The "In
> >> > Progress" version of the YP Reference Manual has a new section on
> >> > toolchains
> >> > in general.  This section, combined with the TCMODE glossary entry
> and a
> >> > FAQ
> >> > entry, both in the reference manual, comprise our information on the
> >> > external toolchain topic.  Let me know what specifically would need
> >> > additionally addressed and I can get that on my plate to improve the
> doc
> >> > set.
> >> >
> >> > Thanks,
> >> > Scott
> >> >
> >> >
> >> >
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#cross-development-toolchain-generation
> >> >
> >> >
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-TCMODE
> >> >
> >> >
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#idm622640
> >> >
> >> >
> >> >
> >> >
> >> >>-----Original Message-----
> >> >>From: Saul Wold [mailto:sgw@linux.intel.com]
> >> >>Sent: Tuesday, July 23, 2013 3:52 PM
> >> >>To: Rifenbark, Scott M
> >> >>Subject: Fwd: [OE-core] Doc: external toolchain
> >> >>
> >> >>
> >> >>
> >> >>
> >> >>-------- Original Message --------
> >> >>Subject:       [OE-core] Doc: external toolchain
> >> >>Date:  Tue, 23 Jul 2013 23:45:28 +0100
> >> >>From:  Laszlo Papp <lpapp@kde.org>
> >> >>To:    openembedded-core@lists.openembedded.org
> >> >>
> >> >>
> >> >>
> >> >>Dear gents and ladies,
> >> >>
> >> >>it would be nice to get some documentation about this subject. There
> is
> >> >>only one presentation with only a few short slides about the topic:
> >> >>
> http://events.linuxfoundation.org/images/stories/slides/elc2013_denys.pd
> >> >>f
> >> >>
> >> >>I am now having some issues currently, and hard time to figure out
> what
> >> >>is going on. Note, this thread is not about getting help with that
> >> >>particular issue, but encouraging you to document this, for me,
> >> >>fundamental feature more thoroughly.
> >> >>
> >> >>Thank you for your understanding.
> >> >>
> >> >>Many thanks,
> >> >>Laszlo
> >> >>
> >> >>
> >> >>
> >> >
> >> >
> >> >
> >> >
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >
> >
>

--047d7b160515da220304e24373df
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If I change external-csl to external-sourcery, busybox kee=
ps failing with the following error:<div><br></div><div><div>ERROR: Expansi=
onError during parsing /home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta=
/recipes-core/busybox/<a href=3D"http://busybox_1.20.2.bb">busybox_1.20.2.b=
b</a>: Failure expanding variable do_configure: ExpansionError: Failure exp=
anding variable do_configure, expression was =A0 =A0 =A0 do_prepare_config<=
/div>
<div>=A0 =A0 =A0 =A0 merge_config.sh -m .config ${@&quot; &quot;.join(find_=
cfgs(d))}</div><div>=A0 =A0 =A0 =A0 cml1_do_configure</div><div>=A0which tr=
iggered exception NameError: name &#39;find_cfgs&#39; is not defined</div><=
div>ERROR: Command execution failed: Exited with 1</div>
</div><div><br></div><div>Got a clue?</div></div><div class=3D"gmail_extra"=
><br><br><div class=3D"gmail_quote">On Wed, Jul 24, 2013 at 4:12 PM, Bill T=
raynor <span dir=3D"ltr">&lt;<a href=3D"mailto:btraynor@gmail.com" target=
=3D"_blank">btraynor@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wed, Jul 24, 2013 at 11=
:08 AM, Laszlo Papp &lt;<a href=3D"mailto:lpapp@kde.org">lpapp@kde.org</a>&=
gt; wrote:<br>

&gt; I was using that based on the non-official documentation (i.e. present=
ation<br>
&gt; at the Linux event).<br>
<br>
</div>external-sourcery is the new TCMODE and should work, however, I just<=
br>
thought trying the old one may work.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jul 24, 2013 at 4:06 PM, Bill Traynor &lt;<a href=3D"mailto:bt=
raynor@gmail.com">btraynor@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Try with:<br>
&gt;&gt;<br>
&gt;&gt; TCMODE =3D &quot;external-csl&quot;<br>
&gt;&gt; EXTERNAL_TOOLCHAIN =3D &quot;/path/to/sourcery/toolchain&quot;<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Jul 24, 2013 at 3:47 AM, Rifenbark, Scott M<br>
&gt;&gt; &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rifenba=
rk@intel.com</a>&gt; wrote:<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Can anyone address the toolchain questions here for Laszlo?<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Scott<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; From: <a href=3D"mailto:djszapi@archlinux.us">djszapi@archlin=
ux.us</a> [mailto:<a href=3D"mailto:djszapi@archlinux.us">djszapi@archlinux=
.us</a>] On Behalf Of<br>
&gt;&gt; &gt; Laszlo<br>
&gt;&gt; &gt; Papp<br>
&gt;&gt; &gt; Sent: Tuesday, July 23, 2013 11:52 PM<br>
&gt;&gt; &gt; To: Rifenbark, Scott M<br>
&gt;&gt; &gt; Cc: Wold, Saul<br>
&gt;&gt; &gt; Subject: Re: FW: [OE-core] Doc: external toolchain<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; OK, thanks.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I am facing this issue, any clue?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ERROR: Failed to obtain CodeSourcery toolchain version: Execu=
tion of<br>
&gt;&gt; &gt; &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; failed: command n=
ot found<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ERROR: Failed to obtain CodeSourcery toolchain version: Execu=
tion of<br>
&gt;&gt; &gt; &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; failed: command n=
ot found<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; This is what I have in my build/conf/local.conf:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ...<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; TCMODE =3D &quot;external-sourcery&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; EXTERNAL_TOOLCHAIN =3D &quot;/usr&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; TARGET_PREFIX =3D &quot;arm-none-linux-gnueabi-&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ...<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The external toolchain does exist:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /usr/bin/arm-none-linux-gnueabi-gcc -v<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Using built-in specs.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; COLLECT_GCC=3D/usr/bin/arm-none-linux-gnueabi-gcc<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; COLLECT_LTO_WRAPPER=3D/usr/bin/../libexec/gcc/arm-none-linux-=
gnueabi/4.7.3/lto-wrapper<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Target: arm-none-linux-gnueabi<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Configured with:<br>
&gt;&gt; &gt; /scratch/jbrown/2013.05-arm-linux-release/src/gcc-4.7-2013.05=
/configure<br>
&gt;&gt; &gt; --build=3Di686-pc-linux-gnu --host=3Di686-pc-linux-gnu<br>
&gt;&gt; &gt; --target=3Darm-none-linux-gnueabi --enable-threads --disable-=
libmudflap<br>
&gt;&gt; &gt; --disable-libssp --disable-libstdcxx-pch<br>
&gt;&gt; &gt; --enable-extra-sgxxlite-multilibs<br>
&gt;&gt; &gt; --with-arch=3Darmv5te --with-gnu-as --with-gnu-ld<br>
&gt;&gt; &gt; --with-specs=3D&#39;%{save-temps:<br>
&gt;&gt; &gt; -fverbose-asm}<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; %{funwind-tables|fno-unwind-tables|mabi=3D*|ffreestanding|nos=
tdlib:;:-funwind-tables}<br>
&gt;&gt; &gt; -D__CS_SOURCERYGXX_MAJ__=3D2013 -D__CS_SOURCERYGXX_MIN__=3D5<=
br>
&gt;&gt; &gt; -D__CS_SOURCERYGXX_REV__=3D24 %{O2:%{!fno-remove-local-static=
s:<br>
&gt;&gt; &gt; -fremove-local-statics}}<br>
&gt;&gt; &gt; %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics:<br>
&gt;&gt; &gt; -fremove-local-statics}}}&#39; --enable-languages=3Dc,c++ --e=
nable-shared<br>
&gt;&gt; &gt; --enable-lto --enable-symvers=3Dgnu --enable-__cxa_atexit<br>
&gt;&gt; &gt; --with-pkgversion=3D&#39;Sourcery CodeBench Lite 2013.05-24&#=
39;<br>
&gt;&gt; &gt; --with-bugurl=3D<a href=3D"https://sourcery.mentor.com/GNUToo=
lchain/" target=3D"_blank">https://sourcery.mentor.com/GNUToolchain/</a> --=
disable-nls<br>
&gt;&gt; &gt; --prefix=3D/opt/codesourcery<br>
&gt;&gt; &gt; --with-sysroot=3D/opt/codesourcery/arm-none-linux-gnueabi/lib=
c<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --with-build-sysroot=3D/scratch/jbrown/2013.05-arm-linux-rele=
ase/install/arm-none-linux-gnueabi/libc<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --with-gmp=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pk=
g-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.e=
xtras/host-libs-i686-pc-linux-gnu/usr<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --with-mpfr=3D/scratch/jbrown/2013.05-arm-linux-release/obj/p=
kg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.=
extras/host-libs-i686-pc-linux-gnu/usr<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --with-mpc=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pk=
g-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.e=
xtras/host-libs-i686-pc-linux-gnu/usr<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --with-ppl=3D/scratch/jbrown/2013.05-arm-linux-release/obj/pk=
g-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.e=
xtras/host-libs-i686-pc-linux-gnu/usr<br>
&gt;&gt; &gt; --with-host-libstdcxx=3D&#39;-static-libgcc -Wl,-Bstatic,-lst=
dc++,-Bdynamic<br>
&gt;&gt; &gt; -lm&#39;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --with-cloog=3D/scratch/jbrown/2013.05-arm-linux-release/obj/=
pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi=
.extras/host-libs-i686-pc-linux-gnu/usr<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --with-libelf=3D/scratch/jbrown/2013.05-arm-linux-release/obj=
/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueab=
i.extras/host-libs-i686-pc-linux-gnu/usr<br>
&gt;&gt; &gt; --disable-libgomp --disable-libitm --enable-poison-system-dir=
ectories<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --with-build-time-tools=3D/scratch/jbrown/2013.05-arm-linux-r=
elease/install/arm-none-linux-gnueabi/bin<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --with-build-time-tools=3D/scratch/jbrown/2013.05-arm-linux-r=
elease/install/arm-none-linux-gnueabi/bin<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thread model: posix<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-24)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M<br>
&gt;&gt; &gt; &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.ri=
fenbark@intel.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Laszlo,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Saul forwarded me this email regarding external toolchains. =
=A0The &quot;In<br>
&gt;&gt; &gt; Progress&quot; version of the YP Reference Manual has a new s=
ection on<br>
&gt;&gt; &gt; toolchains<br>
&gt;&gt; &gt; in general. =A0This section, combined with the TCMODE glossar=
y entry and a<br>
&gt;&gt; &gt; FAQ<br>
&gt;&gt; &gt; entry, both in the reference manual, comprise our information=
 on the<br>
&gt;&gt; &gt; external toolchain topic. =A0Let me know what specifically wo=
uld need<br>
&gt;&gt; &gt; additionally addressed and I can get that on my plate to impr=
ove the doc<br>
&gt;&gt; &gt; set.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt; Scott<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual=
/ref-manual.html#cross-development-toolchain-generation" target=3D"_blank">=
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#cross-de=
velopment-toolchain-generation</a><br>

&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual=
/ref-manual.html#var-TCMODE" target=3D"_blank">http://www.yoctoproject.org/=
docs/latest/ref-manual/ref-manual.html#var-TCMODE</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual=
/ref-manual.html#idm622640" target=3D"_blank">http://www.yoctoproject.org/d=
ocs/latest/ref-manual/ref-manual.html#idm622640</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;-----Original Message-----<br>
&gt;&gt; &gt;&gt;From: Saul Wold [mailto:<a href=3D"mailto:sgw@linux.intel.=
com">sgw@linux.intel.com</a>]<br>
&gt;&gt; &gt;&gt;Sent: Tuesday, July 23, 2013 3:52 PM<br>
&gt;&gt; &gt;&gt;To: Rifenbark, Scott M<br>
&gt;&gt; &gt;&gt;Subject: Fwd: [OE-core] Doc: external toolchain<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;-------- Original Message --------<br>
&gt;&gt; &gt;&gt;Subject: =A0 =A0 =A0 [OE-core] Doc: external toolchain<br>
&gt;&gt; &gt;&gt;Date: =A0Tue, 23 Jul 2013 23:45:28 +0100<br>
&gt;&gt; &gt;&gt;From: =A0Laszlo Papp &lt;<a href=3D"mailto:lpapp@kde.org">=
lpapp@kde.org</a>&gt;<br>
&gt;&gt; &gt;&gt;To: =A0 =A0<a href=3D"mailto:openembedded-core@lists.opene=
mbedded.org">openembedded-core@lists.openembedded.org</a><br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;Dear gents and ladies,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;it would be nice to get some documentation about this subj=
ect. There is<br>
&gt;&gt; &gt;&gt;only one presentation with only a few short slides about t=
he topic:<br>
&gt;&gt; &gt;&gt;<a href=3D"http://events.linuxfoundation.org/images/storie=
s/slides/elc2013_denys.pd" target=3D"_blank">http://events.linuxfoundation.=
org/images/stories/slides/elc2013_denys.pd</a><br>
&gt;&gt; &gt;&gt;f<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;I am now having some issues currently, and hard time to fi=
gure out what<br>
&gt;&gt; &gt;&gt;is going on. Note, this thread is not about getting help w=
ith that<br>
&gt;&gt; &gt;&gt;particular issue, but encouraging you to document this, fo=
r me,<br>
&gt;&gt; &gt;&gt;fundamental feature more thoroughly.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;Thank you for your understanding.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;Many thanks,<br>
&gt;&gt; &gt;&gt;Laszlo<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--047d7b160515da220304e24373df--
