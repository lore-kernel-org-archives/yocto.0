Return-Path: <gokulraj.kana@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D372E00994; Thu,  6 Jun 2019 09:46:48 -0700 (PDT)
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
	*      [209.85.160.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7FC1E00942
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 09:46:46 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id s57so3427887qte.8
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 09:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=581z+qzZtccaHH1cX/TLQ+DdWY9L5sLFQoGreJ/P+iQ=;
	b=OGU7D1tTeE1+tkKehJ+4+YYL/+WBVsOcCr1NYUCYUQD8oo0OZCyT1MKjPllaitrtAU
	7EiBFsyiZT/AyoV+6nMr7Tnn6YhiuMVOgsDBlG9L20ld0tF1w/g359vTMIKIB0BWvFax
	MsNfzuCmuCfXyD1AzgBCCApxlj2GjoAz5TgcTifh7wm1LtVhjF+2FMaE1vHmHvG0/Xm1
	NU77z08/Q7Gop8/8h0tKoF+DVSdp4hBlz3lIVx5SJbMQU3AMb9cPlRWfWgjhse6xiWlY
	vv60ZRwNs6JIOKqURirZIfvUIM4qKKPn86+pXpGVLjt7Pon3IgHJVmVHBCeWNM7UNKZv
	m5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=581z+qzZtccaHH1cX/TLQ+DdWY9L5sLFQoGreJ/P+iQ=;
	b=XjoGJwPU0yfYBL1SLSFhCfbEeUxQTGFuW5vmcDqL9BAKcDbhUSUGGREEULKYaAuPGi
	P1f6RrhsPG8HAl0UHDf8d07SF/eY4t33udZV5V+2MsmXTWvCcKlVYqUXrIFJsA4/99bk
	OxLNCll+lcRuUqeWSwCZ7gJX7rk+xpGXm0yUlzZij846ymxq+vv6MPl940R2NtXC4cMb
	7e3GfahOzecq/LWBrbABnJI05QP2T5t4NfFGd59wzn5ueTVEsxT3tyUa6WzoyPSgUKO+
	lpi5occUPdp+369Q+NTzYfSWZwOrhh52m4Eg7kyllU17slPMXRd9P7DJUzbuW5deuxPe
	R84Q==
X-Gm-Message-State: APjAAAWUXtgpBLOJCXgyC/5nTjfi2O9YDivsK9IuKpIl+T1Xgm3PO7kS
	eVNInhLQeokpy4a2hiCVSw8caDS0hYwENUT8jj0=
X-Google-Smtp-Source: APXvYqwhIspYY4osz6KEnPHbutEsX+Lh/9kKcbQ+D29OkA9eaRSd/bdjLmHuXSFkEfnLgvE5c/gJqRIN8Upx97V2Gzg=
X-Received: by 2002:aed:3a87:: with SMTP id o7mr40857221qte.310.1559839605782; 
	Thu, 06 Jun 2019 09:46:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP4eQ-pUhBiqESOk-5uNGcbRkHW+=+wOpi=dTZDQ55ygGgBJQ@mail.gmail.com>
	<CAJTo0LYb7YDwOPS36q0Jo5RJXRwCx4p5e+xQ2J7KofODOVARJg@mail.gmail.com>
In-Reply-To: <CAJTo0LYb7YDwOPS36q0Jo5RJXRwCx4p5e+xQ2J7KofODOVARJg@mail.gmail.com>
From: Gokul Raj <gokulraj.kana@gmail.com>
Date: Thu, 6 Jun 2019 22:16:33 +0530
Message-ID: <CAFP4eQ_1fk7ZvafF7vxpmvx3x4ntnwpdBBMYUJGJCfG4mPtrEA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Thu, 06 Jun 2019 16:46:48 -0000
X-Groupsio-MsgNum: 45517
Content-Type: multipart/mixed; boundary="0000000000009c49a7058aaa7591"

--0000000000009c49a7058aaa7591
Content-Type: multipart/alternative; boundary="0000000000009c49a4058aaa758f"

--0000000000009c49a4058aaa758f
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

Thanks for the suggestion. I have tried with inheriting autotools-brokensep
bbclass. Now bitbake got the path for compilation. But, bitbake compilation
refering to native kernel src path for module compilation. For your
information this package comes with both kernel module and userspace
binary. Single makefile helps building both kernel module and userspace
binary. Attached log for your reference.

Any suggestion to compile this package.

Regards,
Gokul Raj K

On Thu, Jun 6, 2019 at 10:01 PM Burton, Ross <ross.burton@intel.com> wrote:

> Sounds like the makefiles are broken and can't handle out-of-tree
> builds.  Try replacing inherit autotools with inherit
> autotools-brokensep (and if that fixes it, file a bug with jool as
> their build is broken).
>
>
> Ross
>
> On Thu, 6 Jun 2019 at 17:27, Gokul Raj <gokulraj.kana@gmail.com> wrote:
> >
> > Hi All,
> >
> > I'm new to yocto and I'm trying to create recipe for Jool network
> translator package. Tried to compile this package in manually and I'm able
> to compile with following steps.
> > Manual Steps:
> >
> > ./autogen.sh
> > ./configure
> > make
> > make install
> >
> > Yocto Receipe:
> >
> > DESCRIPTION = "Jool is an Open Source IPv4/IPv6 Translator"
> > SECTION = "networking"
> > LICENSE = "GPLv2"
> > LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
> >
> > SRCREV = "v4.0.1"
> > SRC_URI = "git://github.com/NICMx/Jool.git;protocol=http"
> >
> > DEPENDS = "libnl iptables"
> >
> > S = "${WORKDIR}/git"
> >
> > inherit autotools module
> >
> > Getting following error message /bin/bash: line 20: cd: src/mod: No such
> file or directory       But, the src/mod is present in the source
> directory. Help me resolve this issue.
> >
> > Yocto Build Error:
> >
> > ERROR: jool-4.0.1-r0 do_compile: oe_runmake failed
> > ERROR: jool-4.0.1-r0 do_compile: Function failed: do_compile (log file
> is located at
> /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)
> > ERROR: Logfile of failure stored in:
> /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423
> > Log data follows:
> > | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> > | DEBUG: Executing shell function do_compile
> > | NOTE: make -j 6
> KERNEL_SRC=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source
> KERNEL_PATH=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source
> KERNEL_VERSION=5.0.7-yocto-standard CC=arm-enigma-linux-gnueabi-gcc
> -mno-thumb-interwork -marm -fuse-ld=bfd
> -fmacro-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=/usr/src/debug/jool/4.0.1-r0
>
> -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=/usr/src/debug/jool/4.0.1-r0
>
> -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot=
>
> -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot-native=
> -fdebug-prefix-map=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source=/usr/src/kernel
> LD=arm-enigma-linux-gnueabi-ld.bfd   AR=arm-enigma-linux-gnueabi-ar
> O=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-build-artifacts
> KBUILD_EXTRA_SYMBOLS=
> > | Making all in src/mod
> > | /bin/bash: line 20: cd: src/mod: No such file or directory
> > | Makefile:343: recipe for target 'all-recursive' failed
> > | make: *** [all-recursive] Error 1
> > | ERROR: oe_runmake failed
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_compile (log file is located at
> /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)
> > ERROR: Task
> (/home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:do_compile)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 570 tasks of which 563 didn't need to be
> rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >   /home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:
> do_compile
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> >
> > Source git link: https://github.com/NICMx/Jool
> >
> > Help me in fixing this issue.
> >
> > Regards,
> > Gokul Raj K
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000009c49a4058aaa758f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ross,</div><div><br></div><div>Thanks for the sugg=
estion. I have tried with inheriting autotools-brokensep bbclass. Now bitba=
ke got the path for compilation. But, bitbake compilation refering to nativ=
e kernel src path for module compilation. For your information this package=
 comes with both kernel module and userspace binary. Single makefile helps =
building both kernel module and userspace binary. Attached log for your ref=
erence.</div><div><br></div><div>Any suggestion to compile this package.</d=
iv><div><br></div><div>Regards,</div><div>Gokul Raj K<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun =
6, 2019 at 10:01 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.co=
m">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Sounds like the makefiles are broken and can&#39;t =
handle out-of-tree<br>
builds.=C2=A0 Try replacing inherit autotools with inherit<br>
autotools-brokensep (and if that fixes it, file a bug with jool as<br>
their build is broken).<br>
<br>
<br>
Ross<br>
<br>
On Thu, 6 Jun 2019 at 17:27, Gokul Raj &lt;<a href=3D"mailto:gokulraj.kana@=
gmail.com" target=3D"_blank">gokulraj.kana@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I&#39;m new to yocto and I&#39;m trying to create recipe for Jool netw=
ork translator package. Tried to compile this package in manually and I&#39=
;m able to compile with following steps.<br>
&gt; Manual Steps:<br>
&gt;<br>
&gt; ./autogen.sh<br>
&gt; ./configure<br>
&gt; make<br>
&gt; make install<br>
&gt;<br>
&gt; Yocto Receipe:<br>
&gt;<br>
&gt; DESCRIPTION =3D &quot;Jool is an Open Source IPv4/IPv6 Translator&quot=
;<br>
&gt; SECTION =3D &quot;networking&quot;<br>
&gt; LICENSE =3D &quot;GPLv2&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Db234ee4d69f5fce4486a80=
fdaf4a4263&quot;<br>
&gt;<br>
&gt; SRCREV =3D &quot;v4.0.1&quot;<br>
&gt; SRC_URI =3D &quot;git://<a href=3D"http://github.com/NICMx/Jool.git;pr=
otocol=3Dhttp" rel=3D"noreferrer" target=3D"_blank">github.com/NICMx/Jool.g=
it;protocol=3Dhttp</a>&quot;<br>
&gt;<br>
&gt; DEPENDS =3D &quot;libnl iptables&quot;<br>
&gt;<br>
&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;<br>
&gt; inherit autotools module<br>
&gt;<br>
&gt; Getting following error message /bin/bash: line 20: cd: src/mod: No su=
ch file or directory=C2=A0 =C2=A0 =C2=A0 =C2=A0But, the src/mod is present =
in the source directory. Help me resolve this issue.<br>
&gt;<br>
&gt; Yocto Build Error:<br>
&gt;<br>
&gt; ERROR: jool-4.0.1-r0 do_compile: oe_runmake failed<br>
&gt; ERROR: jool-4.0.1-r0 do_compile: Function failed: do_compile (log file=
 is located at /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/=
jool/4.0.1-r0/temp/log.do_compile.58423)<br>
&gt; ERROR: Logfile of failure stored in: /home/graj/poky/build/tmp/work/qe=
muarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423<br>
&gt; Log data follows:<br>
&gt; | DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;a=
rm-common&#39;, &#39;arm-32&#39;, &#39;common-linux&#39;, &#39;common-glibc=
&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<=
br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | NOTE: make -j 6 KERNEL_SRC=3D/home/graj/poky/build/tmp/work-shared/q=
emuarm/kernel-source KERNEL_PATH=3D/home/graj/poky/build/tmp/work-shared/qe=
muarm/kernel-source KERNEL_VERSION=3D5.0.7-yocto-standard CC=3Darm-enigma-l=
inux-gnueabi-gcc=C2=A0 -mno-thumb-interwork -marm -fuse-ld=3Dbfd -fmacro-pr=
efix-map=3D/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool=
/4.0.1-r0=3D/usr/src/debug/jool/4.0.1-r0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -fdebug-prefix-map=3D/home/graj/p=
oky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=3D/usr/src/de=
bug/jool/4.0.1-r0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 -fdebug-prefix-map=3D/home/graj/poky/build/tmp/work/qe=
muarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot=3D=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -fdebug-prefix-=
map=3D/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.=
1-r0/recipe-sysroot-native=3D=C2=A0 -fdebug-prefix-map=3D/home/graj/poky/bu=
ild/tmp/work-shared/qemuarm/kernel-source=3D/usr/src/kernel LD=3Darm-enigma=
-linux-gnueabi-ld.bfd=C2=A0 =C2=A0AR=3Darm-enigma-linux-gnueabi-ar=C2=A0 O=
=3D/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-build-artifacts KBU=
ILD_EXTRA_SYMBOLS=3D<br>
&gt; | Making all in src/mod<br>
&gt; | /bin/bash: line 20: cd: src/mod: No such file or directory<br>
&gt; | Makefile:343: recipe for target &#39;all-recursive&#39; failed<br>
&gt; | make: *** [all-recursive] Error 1<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_compile (log file is located at /home/gra=
j/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.d=
o_compile.58423)<br>
&gt; ERROR: Task (/home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0=
.1.bb:do_compile) failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 570 tasks of which 563 didn&#39;t need =
to be rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0/home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.=
1.bb:do_compile<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt;<br>
&gt; Source git link: <a href=3D"https://github.com/NICMx/Jool" rel=3D"nore=
ferrer" target=3D"_blank">https://github.com/NICMx/Jool</a><br>
&gt;<br>
&gt; Help me in fixing this issue.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Gokul Raj K<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--0000000000009c49a4058aaa758f--

--0000000000009c49a7058aaa7591
Content-Type: application/octet-stream; name="log.do_compile.65759"
Content-Disposition: attachment; filename="log.do_compile.65759"
Content-Transfer-Encoding: base64
Content-ID: <f_jwkw69830>
X-Attachment-Id: f_jwkw69830

REVCVUc6IFNJVEUgZmlsZXMgWydlbmRpYW4tbGl0dGxlJywgJ2JpdC0zMicsICdhcm0tY29tbW9u
JywgJ2FybS0zMicsICdjb21tb24tbGludXgnLCAnY29tbW9uLWdsaWJjJywgJ2FybS1saW51eCcs
ICdhcm0tbGludXgtZ251ZWFiaScsICdjb21tb24nXQpERUJVRzogRXhlY3V0aW5nIHNoZWxsIGZ1
bmN0aW9uIGRvX2NvbXBpbGUKTk9URTogbWFrZSAtaiA2IEtFUk5FTF9TUkM9L2hvbWUvZ3Jhai9w
b2t5L2J1aWxkL3RtcC93b3JrLXNoYXJlZC9xZW11YXJtL2tlcm5lbC1zb3VyY2UgS0VSTkVMX1BB
VEg9L2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrLXNoYXJlZC9xZW11YXJtL2tlcm5lbC1z
b3VyY2UgS0VSTkVMX1ZFUlNJT049NS4wLjcteW9jdG8tc3RhbmRhcmQgQ0M9YXJtLWVuaWdtYS1s
aW51eC1nbnVlYWJpLWdjYyAgLW1uby10aHVtYi1pbnRlcndvcmsgLW1hcm0gLWZ1c2UtbGQ9YmZk
IC1mbWFjcm8tcHJlZml4LW1hcD0vaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFy
bS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwPS91c3Ivc3JjL2RlYnVnL2pvb2wv
NC4wLjEtcjAgICAgICAgICAgICAgICAgICAgICAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL2dy
YWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wv
NC4wLjEtcjA9L3Vzci9zcmMvZGVidWcvam9vbC80LjAuMS1yMCAgICAgICAgICAgICAgICAgICAg
ICAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVh
cm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9yZWNpcGUtc3lzcm9vdD0gICAg
ICAgICAgICAgICAgICAgICAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL2dyYWovcG9reS9idWls
ZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvcmVj
aXBlLXN5c3Jvb3QtbmF0aXZlPSAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL2dyYWovcG9reS9i
dWlsZC90bXAvd29yay1zaGFyZWQvcWVtdWFybS9rZXJuZWwtc291cmNlPS91c3Ivc3JjL2tlcm5l
bCBMRD1hcm0tZW5pZ21hLWxpbnV4LWdudWVhYmktbGQuYmZkICAgQVI9YXJtLWVuaWdtYS1saW51
eC1nbnVlYWJpLWFyICBPPS9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay1zaGFyZWQvcWVt
dWFybS9rZXJuZWwtYnVpbGQtYXJ0aWZhY3RzIEtCVUlMRF9FWFRSQV9TWU1CT0xTPQpNYWtpbmcg
YWxsIGluIHNyYy9tb2QKbWFrZVsxXTogRW50ZXJpbmcgZGlyZWN0b3J5ICcvaG9tZS9ncmFqL3Bv
a3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4x
LXIwL2dpdC9zcmMvbW9kJwptYWtlIC1DIHNpaXQKbWFrZSAtQyBuYXQ2NAptYWtlWzJdOiBFbnRl
cmluZyBkaXJlY3RvcnkgJy9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVu
aWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdCcKbWFrZVsy
XTogRW50ZXJpbmcgZGlyZWN0b3J5ICcvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVt
dWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL25hdDY0
JwptYWtlIC1DIC9saWIvbW9kdWxlcy80LjQuMC0xNTAtZ2VuZXJpYy9idWlsZCBNPSRQV0QgSk9P
TF9GTEFHUz0iIgptYWtlIC1DIC9saWIvbW9kdWxlcy80LjQuMC0xNTAtZ2VuZXJpYy9idWlsZCBN
PSRQV0QgSk9PTF9GTEFHUz0iIgptYWtlWzNdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL2dy
YWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wv
NC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdCcKbWFrZVszXTogd2FybmluZzogam9ic2VydmVyIHVu
YXZhaWxhYmxlOiB1c2luZyAtajEuICBBZGQgJysnIHRvIHBhcmVudCBtYWtlIHJ1bGUuCm1ha2Vb
M106IEVudGVyaW5nIGRpcmVjdG9yeSAnL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3Fl
bXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2
NCcKbWFrZVszXTogd2FybmluZzogam9ic2VydmVyIHVuYXZhaWxhYmxlOiB1c2luZyAtajEuICBB
ZGQgJysnIHRvIHBhcmVudCBtYWtlIHJ1bGUuCm1ha2VbNF06IEVudGVyaW5nIGRpcmVjdG9yeSAn
L2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrLXNoYXJlZC9xZW11YXJtL2tlcm5lbC1idWls
ZC1hcnRpZmFjdHMnCm1ha2VbNF06IEVudGVyaW5nIGRpcmVjdG9yeSAnL2hvbWUvZ3Jhai9wb2t5
L2J1aWxkL3RtcC93b3JrLXNoYXJlZC9xZW11YXJtL2tlcm5lbC1idWlsZC1hcnRpZmFjdHMnCiAg
TEQgICAgICAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGlu
dXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL3NpaXQvYnVpbHQtaW4ubwogIExE
ICAgICAgL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4
LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC9idWlsdC1pbi5vCiAgQ0Mg
W01dICAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgt
Z251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL3NpaXQvLi4vLi4vY29tbW9uL2NvbW1v
bi1nbG9iYWwubwogIENDIFtNXSAgL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVh
cm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC9k
ZWZyYWcubwpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQu
MC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3ByZWZldGNoLmg6MTUsCiAgICAgICAgICAgICAg
ICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJt
L2luY2x1ZGUvYXNtL2F0b21pYy5oOjE1LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMv
bGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L2F0b21pYy5oOjQs
CiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1n
ZW5lcmljL2luY2x1ZGUvbmV0L25ldF9uYW1lc3BhY2UuaDo3LAogICAgICAgICAgICAgICAgIGZy
b20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdu
dWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC8uLi8uLi9tb2QvY29tbW9uL2Rl
ZnJhZy5oOjQsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1w
L3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMv
bW9kL25hdDY0L2RlZnJhZy5jOjE6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvaW5jbHVkZS9saW51eC9wcmVmZXRjaC5oOiBJbiBmdW5jdGlvbiAncHJlZmV0Y2hfcmFu
Z2UnOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2lu
Y2x1ZGUvYXNtL2NhY2hlLmg6NzoyNTogZXJyb3I6ICdDT05GSUdfQVJNX0wxX0NBQ0hFX1NISUZU
JyB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiAn
Q09ORklHX1g4Nl9MMV9DQUNIRV9TSElGVCc/CiAjZGVmaW5lIEwxX0NBQ0hFX1NISUZUICBDT05G
SUdfQVJNX0wxX0NBQ0hFX1NISUZUCiAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMv
YXJjaC9hcm0vaW5jbHVkZS9hc20vY2FjaGUuaDo4OjMxOiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8gJ0wxX0NBQ0hFX1NISUZUJwogI2RlZmluZSBMMV9DQUNIRV9CWVRFUyAgKDEgPDwgTDFf
Q0FDSEVfU0hJRlQpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+
fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgv
cHJlZmV0Y2guaDo1MDoyODogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdMMV9DQUNIRV9C
WVRFUycKICNkZWZpbmUgUFJFRkVUQ0hfU1RSSURFICg0KkwxX0NBQ0hFX0JZVEVTKQogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMvbGludXgtaGVhZGVy
cy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3ByZWZldGNoLmg6NTk6MzQ6IG5vdGU6
IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnUFJFRkVUQ0hfU1RSSURFJwogIGZvciAoY3AgPSBhZGRy
OyBjcCA8IGVuZDsgY3AgKz0gUFJFRkVUQ0hfU1RSSURFKQogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAt
MTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vY2FjaGUuaDo3OjI1OiBub3RlOiBlYWNo
IHVuZGVjbGFyZWQgaWRlbnRpZmllciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVu
Y3Rpb24gaXQgYXBwZWFycyBpbgogI2RlZmluZSBMMV9DQUNIRV9TSElGVCAgQ09ORklHX0FSTV9M
MV9DQUNIRV9TSElGVAogICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJt
L2luY2x1ZGUvYXNtL2NhY2hlLmg6ODozMTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdM
MV9DQUNIRV9TSElGVCcKICNkZWZpbmUgTDFfQ0FDSEVfQllURVMgICgxIDw8IEwxX0NBQ0hFX1NI
SUZUKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4KL3Vzci9z
cmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3ByZWZldGNo
Lmg6NTA6Mjg6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnTDFfQ0FDSEVfQllURVMnCiAj
ZGVmaW5lIFBSRUZFVENIX1NUUklERSAoNCpMMV9DQUNIRV9CWVRFUykKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAt
MTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9wcmVmZXRjaC5oOjU5OjM0OiBub3RlOiBpbiBleHBh
bnNpb24gb2YgbWFjcm8gJ1BSRUZFVENIX1NUUklERScKICBmb3IgKGNwID0gYWRkcjsgY3AgPCBl
bmQ7IGNwICs9IFBSRUZFVENIX1NUUklERSkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIF5+fn5+fn5+fn5+fn5+fgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9zcmMvbGludXgt
aGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L2F0b21pYy5oOjQsCiAgICAg
ICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmlj
L2luY2x1ZGUvbmV0L25ldF9uYW1lc3BhY2UuaDo3LAogICAgICAgICAgICAgICAgIGZyb20gL2hv
bWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkv
am9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC8uLi8uLi9tb2QvY29tbW9uL2RlZnJhZy5o
OjQsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsv
cWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL25h
dDY0L2RlZnJhZy5jOjE6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMv
YXJjaC9hcm0vaW5jbHVkZS9hc20vYXRvbWljLmg6IEF0IHRvcCBsZXZlbDoKL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9hdG9taWMu
aDoyMjI6MzogZXJyb3I6IGNvbmZsaWN0aW5nIHR5cGVzIGZvciAnYXRvbWljNjRfdCcKIH0gYXRv
bWljNjRfdDsKICAgXn5+fn5+fn5+fgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3ByZWZldGNoLmg6MTMs
CiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1n
ZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2F0b21pYy5oOjE1LAogICAgICAgICAgICAgICAg
IGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xp
bnV4L2F0b21pYy5oOjQsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFk
ZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbmV0L25ldF9uYW1lc3BhY2UuaDo3LAogICAg
ICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0t
ZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC8uLi8u
Li9tb2QvY29tbW9uL2RlZnJhZy5oOjQsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFq
L3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQu
MC4xLXIwL2dpdC9zcmMvbW9kL25hdDY0L2RlZnJhZy5jOjE6Ci91c3Ivc3JjL2xpbnV4LWhlYWRl
cnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC90eXBlcy5oOjE4MjozOiBub3RlOiBw
cmV2aW91cyBkZWNsYXJhdGlvbiBvZiAnYXRvbWljNjRfdCcgd2FzIGhlcmUKIH0gYXRvbWljNjRf
dDsKICAgXn5+fn5+fn5+fgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9zcmMvbGludXgtaGVh
ZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS90aHJlYWRfaW5mby5o
OjE3LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0x
NTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RocmVhZF9pbmZvLmg6NTQsCiAgICAgICAgICAgICAg
ICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUv
YXNtLWdlbmVyaWMvcHJlZW1wdC5oOjQsCiAgICAgICAgICAgICAgICAgZnJvbSBhcmNoL2FybS9p
bmNsdWRlL2dlbmVyYXRlZC9hc20vcHJlZW1wdC5oOjEsCiAgICAgICAgICAgICAgICAgZnJvbSAv
dXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvcHJl
ZW1wdC5oOjU5LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00
LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3NwaW5sb2NrLmg6NTAsCiAgICAgICAgICAg
ICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1
ZGUvbGludXgvc2VxbG9jay5oOjM1LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWUuaDo1LAogICAg
ICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJp
Yy9pbmNsdWRlL2xpbnV4L2t0aW1lLmg6MjQsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3Ny
Yy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvdGltZXIuaDo1
LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAt
Z2VuZXJpYy9pbmNsdWRlL2xpbnV4L3dvcmtxdWV1ZS5oOjgsCiAgICAgICAgICAgICAgICAgZnJv
bSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbmV0L25l
dF9uYW1lc3BhY2UuaDo4LAogICAgICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1
aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9n
aXQvc3JjL21vZC9uYXQ2NC8uLi8uLi9tb2QvY29tbW9uL2RlZnJhZy5oOjQsCiAgICAgICAgICAg
ICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEt
bGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL25hdDY0L2RlZnJhZy5jOjE6
Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVk
ZS9hc20vcGFnZS5oOjEwNzoyOiBlcnJvcjogI2Vycm9yIFVua25vd24gdXNlciBvcGVyYXRpb25z
IG1vZGVsCiAjZXJyb3IgVW5rbm93biB1c2VyIG9wZXJhdGlvbnMgbW9kZWwKICBefn5+fgpJbiBm
aWxlIGluY2x1ZGVkIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJp
Yy9pbmNsdWRlL2xpbnV4L2xpc3QuaDo3LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMv
bGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVyLmg6NCwK
ICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvaW5jbHVkZS9saW51eC93b3JrcXVldWUuaDo4LAogICAgICAgICAgICAgICAgIGZyb20g
L3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL25ldC9uZXRf
bmFtZXNwYWNlLmg6OCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWls
ZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0
L3NyYy9tb2QvbmF0NjQvLi4vLi4vbW9kL2NvbW1vbi9kZWZyYWcuaDo0LAogICAgICAgICAgICAg
ICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxp
bnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC9kZWZyYWcuYzoxOgov
dXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUv
YXNtL21lbW9yeS5oOjQwOjI0OiB3YXJuaW5nOiAiQ09ORklHX1BBR0VfT0ZGU0VUVUwiIGlzIG5v
dCBkZWZpbmVkLCBldmFsdWF0ZXMgdG8gMCBbLVd1bmRlZl0KICNkZWZpbmUgVEFTS19TSVpFICAo
VUwoQ09ORklHX1BBR0VfT0ZGU0VUKSAtIFVMKFNaXzE2TSkpCiAgICAgICAgICAgICAgICAgICAg
ICAgIF5+fn5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1n
ZW5lcmljL2luY2x1ZGUvdWFwaS9saW51eC9jb25zdC5oOjE5OjIwOiBub3RlOiBpbiBkZWZpbml0
aW9uIG9mIG1hY3JvICdfX0FDJwogI2RlZmluZSBfX0FDKFgsWSkgKFgjI1kpCiAgICAgICAgICAg
ICAgICAgICAgXgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gv
YXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjI5OjE1OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8gJ19BQycKICNkZWZpbmUgVUwoeCkgX0FDKHgsIFVMKQogICAgICAgICAgICAgICBefn4KL3Vz
ci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2Fz
bS9tZW1vcnkuaDo0MDoyMTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdVTCcKICNkZWZp
bmUgVEFTS19TSVpFICAoVUwoQ09ORklHX1BBR0VfT0ZGU0VUKSAtIFVMKFNaXzE2TSkpCiAgICAg
ICAgICAgICAgICAgICAgIF5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVy
aWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6NTk6NTogbm90ZTogaW4gZXhwYW5zaW9u
IG9mIG1hY3JvICdUQVNLX1NJWkUnCiAjaWYgVEFTS19TSVpFID4gTU9EVUxFU19WQUREUgogICAg
IF5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gv
YXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjMyOjI1OiB3YXJuaW5nOiAiQ09ORklHX1BBR0VfT0ZG
U0VUVUwiIGlzIG5vdCBkZWZpbmVkLCBldmFsdWF0ZXMgdG8gMCBbLVd1bmRlZl0KICNkZWZpbmUg
UEFHRV9PRkZTRVQgIFVMKENPTkZJR19QQUdFX09GRlNFVCkKICAgICAgICAgICAgICAgICAgICAg
ICAgIF5+fn5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1n
ZW5lcmljL2luY2x1ZGUvdWFwaS9saW51eC9jb25zdC5oOjE5OjIwOiBub3RlOiBpbiBkZWZpbml0
aW9uIG9mIG1hY3JvICdfX0FDJwogI2RlZmluZSBfX0FDKFgsWSkgKFgjI1kpCiAgICAgICAgICAg
ICAgICAgICAgXgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gv
YXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjI5OjE1OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8gJ19BQycKICNkZWZpbmUgVUwoeCkgX0FDKHgsIFVMKQogICAgICAgICAgICAgICBefn4KL3Vz
ci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2Fz
bS9tZW1vcnkuaDozMjoyMjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdVTCcKICNkZWZp
bmUgUEFHRV9PRkZTRVQgIFVMKENPTkZJR19QQUdFX09GRlNFVCkKICAgICAgICAgICAgICAgICAg
ICAgIF5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0v
aW5jbHVkZS9hc20vbWVtb3J5Lmg6NTM6MjU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAn
UEFHRV9PRkZTRVQnCiAjZGVmaW5lIE1PRFVMRVNfVkFERFIgIChQQUdFX09GRlNFVCAtIFNaXzE2
TSkKICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhl
YWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6NTk6
MTc6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnTU9EVUxFU19WQUREUicKICNpZiBUQVNL
X1NJWkUgPiBNT0RVTEVTX1ZBRERSCiAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fgpJbiBm
aWxlIGluY2x1ZGVkIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJp
Yy9hcmNoL2FybS9pbmNsdWRlL2FzbS9wYWdlLmg6MTYzLAogICAgICAgICAgICAgICAgIGZyb20g
L3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRl
L2FzbS90aHJlYWRfaW5mby5oOjE3LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RocmVhZF9pbmZvLmg6
NTQsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1
MC1nZW5lcmljL2luY2x1ZGUvYXNtLWdlbmVyaWMvcHJlZW1wdC5oOjQsCiAgICAgICAgICAgICAg
ICAgZnJvbSBhcmNoL2FybS9pbmNsdWRlL2dlbmVyYXRlZC9hc20vcHJlZW1wdC5oOjEsCiAgICAg
ICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmlj
L2luY2x1ZGUvbGludXgvcHJlZW1wdC5oOjU5LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9z
cmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3NwaW5sb2Nr
Lmg6NTAsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4w
LTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvc2VxbG9jay5oOjM1LAogICAgICAgICAgICAgICAg
IGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xp
bnV4L3RpbWUuaDo1LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVy
cy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L2t0aW1lLmg6MjQsCiAgICAgICAgICAg
ICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1
ZGUvbGludXgvdGltZXIuaDo1LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgt
aGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3dvcmtxdWV1ZS5oOjgsCiAg
ICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5l
cmljL2luY2x1ZGUvbmV0L25ldF9uYW1lc3BhY2UuaDo4LAogICAgICAgICAgICAgICAgIGZyb20g
L2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVh
Ymkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC8uLi8uLi9tb2QvY29tbW9uL2RlZnJh
Zy5oOjQsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dv
cmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9k
L25hdDY0L2RlZnJhZy5jOjE6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVy
aWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6NTM6Mzc6IHdhcm5pbmc6IHRoZSByaWdo
dCBvcGVyYW5kIG9mICI+IiBjaGFuZ2VzIHNpZ24gd2hlbiBwcm9tb3RlZAogI2RlZmluZSBNT0RV
TEVTX1ZBRERSICAoUEFHRV9PRkZTRVQgLSBTWl8xNk0pCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBeCi91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMv
YXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6NTk6MTc6IG5vdGU6IGluIGV4cGFuc2lvbiBv
ZiBtYWNybyAnTU9EVUxFU19WQUREUicKICNpZiBUQVNLX1NJWkUgPiBNT0RVTEVTX1ZBRERSCiAg
ICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fgogIENDIFtNXSAgL2hvbWUvZ3Jhai9wb2t5L2J1
aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9n
aXQvc3JjL21vZC9zaWl0Ly4uLy4uL2NvbW1vbi9zaWl0L3hsYXQubwpJbiBmaWxlIGluY2x1ZGVk
IGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xp
bnV4L2xpc3QuaDo3LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVy
cy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVyLmg6NCwKICAgICAgICAgICAg
ICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVk
ZS9saW51eC93b3JrcXVldWUuaDo4LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL25ldC9uZXRfbmFtZXNwYWNlLmg6
OCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9x
ZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2QvbmF0
NjQvLi4vLi4vbW9kL2NvbW1vbi9kZWZyYWcuaDo0LAogICAgICAgICAgICAgICAgIGZyb20gL2hv
bWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkv
am9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC9kZWZyYWcuYzoxOgovdXNyL3NyYy9saW51
eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5o
OiBJbiBmdW5jdGlvbiAnX192aXJ0X3RvX3BoeXMnOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQu
NC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjMyOjI1OiBlcnJv
cjogJ0NPTkZJR19QQUdFX09GRlNFVFVMJyB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBm
dW5jdGlvbik7IGRpZCB5b3UgbWVhbiAnQ09ORklHX1NORF9PU1NFTVVMJz8KICNkZWZpbmUgUEFH
RV9PRkZTRVQgIFVMKENPTkZJR19QQUdFX09GRlNFVCkKICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5l
cmljL2luY2x1ZGUvdWFwaS9saW51eC9jb25zdC5oOjE5OjIwOiBub3RlOiBpbiBkZWZpbml0aW9u
IG9mIG1hY3JvICdfX0FDJwogI2RlZmluZSBfX0FDKFgsWSkgKFgjI1kpCiAgICAgICAgICAgICAg
ICAgICAgXgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJt
L2luY2x1ZGUvYXNtL21lbW9yeS5oOjI5OjE1OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g
J19BQycKICNkZWZpbmUgVUwoeCkgX0FDKHgsIFVMKQogICAgICAgICAgICAgICBefn4KL3Vzci9z
cmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9t
ZW1vcnkuaDozMjoyMjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdVTCcKICNkZWZpbmUg
UEFHRV9PRkZTRVQgIFVMKENPTkZJR19QQUdFX09GRlNFVCkKICAgICAgICAgICAgICAgICAgICAg
IF5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5j
bHVkZS9hc20vbWVtb3J5Lmg6MjM3OjI2OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ1BB
R0VfT0ZGU0VUJwogIHJldHVybiAocGh5c19hZGRyX3QpeCAtIFBBR0VfT0ZGU0VUICsgUEhZU19P
RkZTRVQ7CiAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn4KL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1vcnku
aDoxMzU6Mjk6IGVycm9yOiAnQ09ORklHX1BIWVNfT0ZGU0VUVUwnIHVuZGVjbGFyZWQgKGZpcnN0
IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuICdDT05GSUdfU05EX09TU0VNVUwn
PwogI2RlZmluZSBQTEFUX1BIWVNfT0ZGU0VUIFVMKENPTkZJR19QSFlTX09GRlNFVCkKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMvbGludXgt
aGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL3VhcGkvbGludXgvY29uc3QuaDoxOToy
MDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyAnX19BQycKICNkZWZpbmUgX19BQyhYLFkp
IChYIyNZKQogICAgICAgICAgICAgICAgICAgIF4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQu
MC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1vcnkuaDoyOToxNTogbm90ZTog
aW4gZXhwYW5zaW9uIG9mIG1hY3JvICdfQUMnCiAjZGVmaW5lIFVMKHgpIF9BQyh4LCBVTCkKICAg
ICAgICAgICAgICAgXn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMv
YXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MTM1OjI2OiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8gJ1VMJwogI2RlZmluZSBQTEFUX1BIWVNfT0ZGU0VUIFVMKENPTkZJR19QSFlTX09G
RlNFVCkKICAgICAgICAgICAgICAgICAgICAgICAgICBefgovdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjIzMjoyMTog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdQTEFUX1BIWVNfT0ZGU0VUJwogI2RlZmluZSBQ
SFlTX09GRlNFVCBQTEFUX1BIWVNfT0ZGU0VUCiAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+
fn5+fn5+fn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2Fy
bS9pbmNsdWRlL2FzbS9tZW1vcnkuaDoyMzc6NDA6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNy
byAnUEhZU19PRkZTRVQnCiAgcmV0dXJuIChwaHlzX2FkZHJfdCl4IC0gUEFHRV9PRkZTRVQgKyBQ
SFlTX09GRlNFVDsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+
fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0v
aW5jbHVkZS9hc20vbWVtb3J5Lmg6IEluIGZ1bmN0aW9uICdfX3BoeXNfdG9fdmlydCc6Ci91c3Iv
c3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20v
bWVtb3J5Lmg6MTM1OjI5OiBlcnJvcjogJ0NPTkZJR19QSFlTX09GRlNFVFVMJyB1bmRlY2xhcmVk
IChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiAnQ09ORklHX1NORF9P
U1NFTVVMJz8KICNkZWZpbmUgUExBVF9QSFlTX09GRlNFVCBVTChDT05GSUdfUEhZU19PRkZTRVQp
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Ci91c3Ivc3Jj
L2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS91YXBpL2xpbnV4L2NvbnN0
Lmg6MTk6MjA6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8gJ19fQUMnCiAjZGVmaW5lIF9f
QUMoWCxZKSAoWCMjWSkKICAgICAgICAgICAgICAgICAgICBeCi91c3Ivc3JjL2xpbnV4LWhlYWRl
cnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6Mjk6MTU6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnX0FDJwogI2RlZmluZSBVTCh4KSBfQUMoeCwg
VUwpCiAgICAgICAgICAgICAgIF5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1n
ZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjEzNToyNjogbm90ZTogaW4gZXhw
YW5zaW9uIG9mIG1hY3JvICdVTCcKICNkZWZpbmUgUExBVF9QSFlTX09GRlNFVCBVTChDT05GSUdf
UEhZU19PRkZTRVQpCiAgICAgICAgICAgICAgICAgICAgICAgICAgXn4KL3Vzci9zcmMvbGludXgt
aGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1vcnkuaDoy
MzI6MjE6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnUExBVF9QSFlTX09GRlNFVCcKICNk
ZWZpbmUgUEhZU19PRkZTRVQgUExBVF9QSFlTX09GRlNFVAogICAgICAgICAgICAgICAgICAgICBe
fn5+fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMv
YXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MjQyOjEzOiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8gJ1BIWVNfT0ZGU0VUJwogIHJldHVybiB4IC0gUEhZU19PRkZTRVQgKyBQQUdFX09G
RlNFVDsKICAgICAgICAgICAgIF5+fn5+fn5+fn5+CiAgQ0MgW01dICAvaG9tZS9ncmFqL3Bva3kv
YnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIw
L2dpdC9zcmMvbW9kL3NpaXQvLi4vLi4vY29tbW9uL25ldGxpbmsvY29uZmlnLm8KL3Vzci9zcmMv
bGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1v
cnkuaDozMjoyNTogZXJyb3I6ICdDT05GSUdfUEFHRV9PRkZTRVRVTCcgdW5kZWNsYXJlZCAoZmly
c3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4gJ0NPTkZJR19TTkRfT1NTRU1V
TCc/CiAjZGVmaW5lIFBBR0VfT0ZGU0VUICBVTChDT05GSUdfUEFHRV9PRkZTRVQpCiAgICAgICAg
ICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMvbGludXgtaGVhZGVy
cy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL3VhcGkvbGludXgvY29uc3QuaDoxOToyMDogbm90
ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyAnX19BQycKICNkZWZpbmUgX19BQyhYLFkpIChYIyNZ
KQogICAgICAgICAgICAgICAgICAgIF4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAt
Z2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1vcnkuaDoyOToxNTogbm90ZTogaW4gZXhw
YW5zaW9uIG9mIG1hY3JvICdfQUMnCiAjZGVmaW5lIFVMKHgpIF9BQyh4LCBVTCkKICAgICAgICAg
ICAgICAgXn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9h
cm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MzI6MjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNy
byAnVUwnCiAjZGVmaW5lIFBBR0VfT0ZGU0VUICBVTChDT05GSUdfUEFHRV9PRkZTRVQpCiAgICAg
ICAgICAgICAgICAgICAgICBefgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5l
cmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjI0MjoyNzogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvICdQQUdFX09GRlNFVCcKICByZXR1cm4geCAtIFBIWVNfT0ZGU0VUICsgUEFH
RV9PRkZTRVQ7CiAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+CkluIGZpbGUg
aW5jbHVkZWQgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2lu
Y2x1ZGUvbGludXgvcHJlZmV0Y2guaDoxNSwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3Jj
L2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXRv
bWljLmg6MTUsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQu
NC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvYXRvbWljLmg6NCwKICAgICAgICAgICAgICAg
ICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9u
ZXQvbmV0X25hbWVzcGFjZS5oOjcsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bv
a3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4x
LXIwL2dpdC9zcmMvbW9kL25hdDY0Ly4uLy4uL21vZC9jb21tb24vZGVmcmFnLmg6NCwKICAgICAg
ICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVu
aWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2QvbmF0NjQvZGVmcmFn
LmM6MToKL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xp
bnV4L2ppZmZpZXMuaDogQXQgdG9wIGxldmVsOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4w
LTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2NhY2hlLmg6NzoyNTogZXJyb3I6ICdD
T05GSUdfQVJNX0wxX0NBQ0hFX1NISUZUJyB1bmRlY2xhcmVkIGhlcmUgKG5vdCBpbiBhIGZ1bmN0
aW9uKTsgZGlkIHlvdSBtZWFuICdDT05GSUdfWDg2X0wxX0NBQ0hFX1NISUZUJz8KICNkZWZpbmUg
TDFfQ0FDSEVfU0hJRlQgIENPTkZJR19BUk1fTDFfQ0FDSEVfU0hJRlQKICAgICAgICAgICAgICAg
ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMvbGludXgtaGVhZGVy
cy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9jYWNoZS5oOjg6MzE6IG5v
dGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnTDFfQ0FDSEVfU0hJRlQnCiAjZGVmaW5lIEwxX0NB
Q0hFX0JZVEVTICAoMSA8PCBMMV9DQUNIRV9TSElGVCkKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF5+fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvaW5jbHVkZS9saW51eC9jYWNoZS5oOjEyOjI1OiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8gJ0wxX0NBQ0hFX0JZVEVTJwogI2RlZmluZSBTTVBfQ0FDSEVfQllURVMgTDFfQ0FDSEVf
QllURVMKICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xp
bnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9jYWNoZS5oOjQ3OjMw
OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ1NNUF9DQUNIRV9CWVRFUycKICAgX19hdHRy
aWJ1dGVfXygoX19hbGlnbmVkX18oU01QX0NBQ0hFX0JZVEVTKSwgICBcCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQu
NC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvY2FjaGUuaDo1MzozNjogbm90ZTogaW4gZXhw
YW5zaW9uIG9mIG1hY3JvICdfX2NhY2hlbGluZV9hbGlnbmVkJwogI2RlZmluZSBfX2NhY2hlbGlu
ZV9hbGlnbmVkX2luX3NtcCBfX2NhY2hlbGluZV9hbGlnbmVkCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMvbGludXgtaGVhZGVy
cy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L2ppZmZpZXMuaDo3NjoxMjogbm90ZTog
aW4gZXhwYW5zaW9uIG9mIG1hY3JvICdfX2NhY2hlbGluZV9hbGlnbmVkX2luX3NtcCcKIGV4dGVy
biB1NjQgX19jYWNoZWxpbmVfYWxpZ25lZF9pbl9zbXAgamlmZmllc182NDsKICAgICAgICAgICAg
Xn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC91c3Ivc3Jj
L2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9rdGltZS5oOjMw
NCwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUw
LWdlbmVyaWMvaW5jbHVkZS9saW51eC90aW1lci5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAv
dXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvd29y
a3F1ZXVlLmg6OCwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMt
NC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9uZXQvbmV0X25hbWVzcGFjZS5oOjgsCiAgICAgICAg
ICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmln
bWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL25hdDY0Ly4uLy4uL21v
ZC9jb21tb24vZGVmcmFnLmg6NCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9r
eS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEt
cjAvZ2l0L3NyYy9tb2QvbmF0NjQvZGVmcmFnLmM6MToKL3Vzci9zcmMvbGludXgtaGVhZGVycy00
LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6IEluIGZ1bmN0aW9u
ICdkb19zZXR0aW1lb2ZkYXknOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5l
cmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBpbmcuaDo1MToyNzogd2FybmluZzogcGFzc2luZyBh
cmd1bWVudCAxIG9mICdkb19zZXR0aW1lb2ZkYXk2NCcgZnJvbSBpbmNvbXBhdGlibGUgcG9pbnRl
ciB0eXBlIFstV2luY29tcGF0aWJsZS1wb2ludGVyLXR5cGVzXQogIHJldHVybiBkb19zZXR0aW1l
b2ZkYXk2NCh0cyk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+Ci91c3Ivc3JjL2xpbnV4
LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjEz
OjU1OiBub3RlOiBleHBlY3RlZCAnY29uc3Qgc3RydWN0IHRpbWVzcGVjNjQgKicgYnV0IGFyZ3Vt
ZW50IGlzIG9mIHR5cGUgJ2NvbnN0IHN0cnVjdCB0aW1lc3BlYyAqJwogZXh0ZXJuIGludCBkb19z
ZXR0aW1lb2ZkYXk2NChjb25zdCBzdHJ1Y3QgdGltZXNwZWM2NCAqdHMpOwogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Xn4KL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6
IEluIGZ1bmN0aW9uICdfX2dldG5zdGltZW9mZGF5JzoKL3Vzci9zcmMvbGludXgtaGVhZGVycy00
LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6NTY6Mjg6IHdhcm5p
bmc6IHBhc3NpbmcgYXJndW1lbnQgMSBvZiAnX19nZXRuc3RpbWVvZmRheTY0JyBmcm9tIGluY29t
cGF0aWJsZSBwb2ludGVyIHR5cGUgWy1XaW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdCiAgcmV0
dXJuIF9fZ2V0bnN0aW1lb2ZkYXk2NCh0cyk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICBe
fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgv
dGltZWtlZXBpbmcuaDo0MTo1MDogbm90ZTogZXhwZWN0ZWQgJ3N0cnVjdCB0aW1lc3BlYzY0ICon
IGJ1dCBhcmd1bWVudCBpcyBvZiB0eXBlICdzdHJ1Y3QgdGltZXNwZWMgKicKIGV4dGVybiBpbnQg
X19nZXRuc3RpbWVvZmRheTY0KHN0cnVjdCB0aW1lc3BlYzY0ICp0dik7CiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB+fn5+fn5+fn5+fn5+fn5+fn5+Xn4KL3Vzci9zcmMvbGludXgtaGVh
ZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6IEluIGZ1
bmN0aW9uICdnZXRuc3RpbWVvZmRheSc6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUw
LWdlbmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjYxOjE5OiB3YXJuaW5nOiBwYXNz
aW5nIGFyZ3VtZW50IDEgb2YgJ2dldG5zdGltZW9mZGF5NjQnIGZyb20gaW5jb21wYXRpYmxlIHBv
aW50ZXIgdHlwZSBbLVdpbmNvbXBhdGlibGUtcG9pbnRlci10eXBlc10KICBnZXRuc3RpbWVvZmRh
eTY0KHRzKTsKICAgICAgICAgICAgICAgICAgIF5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40
LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjQyOjQ5OiBub3RlOiBl
eHBlY3RlZCAnc3RydWN0IHRpbWVzcGVjNjQgKicgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUgJ3N0
cnVjdCB0aW1lc3BlYyAqJwogZXh0ZXJuIHZvaWQgZ2V0bnN0aW1lb2ZkYXk2NChzdHJ1Y3QgdGlt
ZXNwZWM2NCAqdHYpOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICB+fn5+fn5+fn5+fn5+
fn5+fn5+Xn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRl
L2xpbnV4L3RpbWVrZWVwaW5nLmg6IEluIGZ1bmN0aW9uICdrdGltZV9nZXRfdHMnOgovdXNyL3Ny
Yy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBp
bmcuaDo2NjoxNzogd2FybmluZzogcGFzc2luZyBhcmd1bWVudCAxIG9mICdrdGltZV9nZXRfdHM2
NCcgZnJvbSBpbmNvbXBhdGlibGUgcG9pbnRlciB0eXBlIFstV2luY29tcGF0aWJsZS1wb2ludGVy
LXR5cGVzXQogIGt0aW1lX2dldF90czY0KHRzKTsKICAgICAgICAgICAgICAgICBefgovdXNyL3Ny
Yy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBp
bmcuaDozNzo0Nzogbm90ZTogZXhwZWN0ZWQgJ3N0cnVjdCB0aW1lc3BlYzY0IConIGJ1dCBhcmd1
bWVudCBpcyBvZiB0eXBlICdzdHJ1Y3QgdGltZXNwZWMgKicKIGV4dGVybiB2b2lkIGt0aW1lX2dl
dF90czY0KHN0cnVjdCB0aW1lc3BlYzY0ICp0cyk7CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB+fn5+fn5+fn5+fn5+fn5+fn5+Xn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAt
Z2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6IEluIGZ1bmN0aW9uICdrdGltZV9n
ZXRfcmVhbF90cyc6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5j
bHVkZS9saW51eC90aW1la2VlcGluZy5oOjcxOjE5OiB3YXJuaW5nOiBwYXNzaW5nIGFyZ3VtZW50
IDEgb2YgJ2dldG5zdGltZW9mZGF5NjQnIGZyb20gaW5jb21wYXRpYmxlIHBvaW50ZXIgdHlwZSBb
LVdpbmNvbXBhdGlibGUtcG9pbnRlci10eXBlc10KICBnZXRuc3RpbWVvZmRheTY0KHRzKTsKICAg
ICAgICAgICAgICAgICAgIF5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVy
aWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjQyOjQ5OiBub3RlOiBleHBlY3RlZCAnc3Ry
dWN0IHRpbWVzcGVjNjQgKicgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUgJ3N0cnVjdCB0aW1lc3Bl
YyAqJwogZXh0ZXJuIHZvaWQgZ2V0bnN0aW1lb2ZkYXk2NChzdHJ1Y3QgdGltZXNwZWM2NCAqdHYp
OwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICB+fn5+fn5+fn5+fn5+fn5+fn5+Xn4KL3Vz
ci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVr
ZWVwaW5nLmg6IEluIGZ1bmN0aW9uICdnZXRyYXdtb25vdG9uaWMnOgovdXNyL3NyYy9saW51eC1o
ZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBpbmcuaDo3Njoy
MDogd2FybmluZzogcGFzc2luZyBhcmd1bWVudCAxIG9mICdnZXRyYXdtb25vdG9uaWM2NCcgZnJv
bSBpbmNvbXBhdGlibGUgcG9pbnRlciB0eXBlIFstV2luY29tcGF0aWJsZS1wb2ludGVyLXR5cGVz
XQogIGdldHJhd21vbm90b25pYzY0KHRzKTsKICAgICAgICAgICAgICAgICAgICBefgovdXNyL3Ny
Yy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBp
bmcuaDozNjo1MDogbm90ZTogZXhwZWN0ZWQgJ3N0cnVjdCB0aW1lc3BlYzY0IConIGJ1dCBhcmd1
bWVudCBpcyBvZiB0eXBlICdzdHJ1Y3QgdGltZXNwZWMgKicKIGV4dGVybiB2b2lkIGdldHJhd21v
bm90b25pYzY0KHN0cnVjdCB0aW1lc3BlYzY0ICp0cyk7CiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB+fn5+fn5+fn5+fn5+fn5+fn5+Xn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQu
MC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6IEluIGZ1bmN0aW9uICdn
ZXRfbW9ub3RvbmljX2NvYXJzZSc6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjgxOjk6IGVycm9yOiBpbmNvbXBhdGli
bGUgdHlwZXMgd2hlbiByZXR1cm5pbmcgdHlwZSAnc3RydWN0IHRpbWVzcGVjNjQnIGJ1dCAnc3Ry
dWN0IHRpbWVzcGVjJyB3YXMgZXhwZWN0ZWQKICByZXR1cm4gZ2V0X21vbm90b25pY19jb2Fyc2U2
NCgpOwogICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMvbGludXgtaGVh
ZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6IEluIGZ1
bmN0aW9uICdnZXRib290dGltZSc6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjg2OjIzOiB3YXJuaW5nOiBwYXNzaW5n
IGFyZ3VtZW50IDEgb2YgJ2dldGJvb3R0aW1lNjQnIGZyb20gaW5jb21wYXRpYmxlIHBvaW50ZXIg
dHlwZSBbLVdpbmNvbXBhdGlibGUtcG9pbnRlci10eXBlc10KICByZXR1cm4gZ2V0Ym9vdHRpbWU2
NCh0cyk7CiAgICAgICAgICAgICAgICAgICAgICAgXn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00
LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6NDM6NDY6IG5vdGU6
IGV4cGVjdGVkICdzdHJ1Y3QgdGltZXNwZWM2NCAqJyBidXQgYXJndW1lbnQgaXMgb2YgdHlwZSAn
c3RydWN0IHRpbWVzcGVjIConCiBleHRlcm4gdm9pZCBnZXRib290dGltZTY0KHN0cnVjdCB0aW1l
c3BlYzY0ICp0cyk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn5+fn5+fn5+fn5+fn5+
fn5efgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0x
NTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3BhZ2UtZmxhZ3MtbGF5b3V0Lmg6MjcsCiAgICAgICAg
ICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2lu
Y2x1ZGUvbGludXgvbW16b25lLmg6MTgsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9s
aW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvZ2ZwLmg6NSwKICAg
ICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVy
aWMvaW5jbHVkZS9saW51eC9wZXJjcHVfY291bnRlci5oOjE1LAogICAgICAgICAgICAgICAgIGZy
b20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL25ldC9k
c3Rfb3BzLmg6NCwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMt
NC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9uZXQvbmV0bnMvaXB2Ni5oOjksCiAgICAgICAgICAg
ICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1
ZGUvbmV0L25ldF9uYW1lc3BhY2UuaDoxOCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dy
YWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wv
NC4wLjEtcjAvZ2l0L3NyYy9tb2QvbmF0NjQvLi4vLi4vbW9kL2NvbW1vbi9kZWZyYWcuaDo0LAog
ICAgICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVh
cm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC9k
ZWZyYWcuYzoxOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gv
YXJtL2luY2x1ZGUvYXNtL3NwYXJzZW1lbS5oOiBBdCB0b3AgbGV2ZWw6Ci91c3Ivc3JjL2xpbnV4
LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vc3BhcnNlbWVt
Lmg6MjE6MjogZXJyb3I6ICNlcnJvciBTcGFyc2VtZW0gaXMgbm90IHN1cHBvcnRlZCBvbiB0aGlz
IHBsYXRmb3JtCiAjZXJyb3IgU3BhcnNlbWVtIGlzIG5vdCBzdXBwb3J0ZWQgb24gdGhpcyBwbGF0
Zm9ybQogIF5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvZ2ZwLmg6NSwKICAgICAgICAgICAgICAg
ICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9s
aW51eC9wZXJjcHVfY291bnRlci5oOjE1LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMv
bGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL25ldC9kc3Rfb3BzLmg6NCwK
ICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvaW5jbHVkZS9uZXQvbmV0bnMvaXB2Ni5oOjksCiAgICAgICAgICAgICAgICAgZnJvbSAv
dXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbmV0L25ldF9u
YW1lc3BhY2UuaDoxOCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWls
ZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0
L3NyYy9tb2QvbmF0NjQvLi4vLi4vbW9kL2NvbW1vbi9kZWZyYWcuaDo0LAogICAgICAgICAgICAg
ICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxp
bnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9uYXQ2NC9kZWZyYWcuYzoxOgov
dXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvbW16
b25lLmg6ODYzOjEwOiBmYXRhbCBlcnJvcjogYXNtL21tem9uZS5oOiBObyBzdWNoIGZpbGUgb3Ig
ZGlyZWN0b3J5CiAjaW5jbHVkZSA8YXNtL21tem9uZS5oPgogICAgICAgICAgXn5+fn5+fn5+fn5+
fn4KY29tcGlsYXRpb24gdGVybWluYXRlZC4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0x
NTAtZ2VuZXJpYy9zY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI4NTogcmVjaXBlIGZvciB0YXJnZXQg
Jy9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVl
YWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2QvbmF0NjQvZGVmcmFnLm8nIGZhaWxlZAptYWtl
WzVdOiAqKiogWy9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1s
aW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2QvbmF0NjQvZGVmcmFnLm9dIEVy
cm9yIDEKL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9NYWtlZmlsZTox
NDU0OiByZWNpcGUgZm9yIHRhcmdldCAnX21vZHVsZV8vaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1w
L3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMv
bW9kL25hdDY0JyBmYWlsZWQKbWFrZVs0XTogKioqIFtfbW9kdWxlXy9ob21lL2dyYWovcG9reS9i
dWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAv
Z2l0L3NyYy9tb2QvbmF0NjRdIEVycm9yIDIKbWFrZVs0XTogTGVhdmluZyBkaXJlY3RvcnkgJy9o
b21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay1zaGFyZWQvcWVtdWFybS9rZXJuZWwtYnVpbGQt
YXJ0aWZhY3RzJwpNYWtlZmlsZToxNTI6IHJlY2lwZSBmb3IgdGFyZ2V0ICdzdWItbWFrZScgZmFp
bGVkCm1ha2VbM106ICoqKiBbc3ViLW1ha2VdIEVycm9yIDIKbWFrZVszXTogTGVhdmluZyBkaXJl
Y3RvcnkgJy91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMnCk1ha2VmaWxl
OjU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdhbGwnIGZhaWxlZAptYWtlWzJdOiAqKiogW2FsbF0gRXJy
b3IgMgptYWtlWzJdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3Rt
cC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3Jj
L21vZC9uYXQ2NCcKTWFrZWZpbGU6ODogcmVjaXBlIGZvciB0YXJnZXQgJ25hdDY0JyBmYWlsZWQK
bWFrZVsxXTogKioqIFtuYXQ2NF0gRXJyb3IgMgptYWtlWzFdOiAqKiogV2FpdGluZyBmb3IgdW5m
aW5pc2hlZCBqb2JzLi4uLgogIENDIFtNXSAgL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3Jr
L3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9z
aWl0Ly4uL2NvbW1vbi9yZmM2MTQ1LzR0bzYubwpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9z
cmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS90
aHJlYWRfaW5mby5oOjE3LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVh
ZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RocmVhZF9pbmZvLmg6NTQsCiAg
ICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5l
cmljL2luY2x1ZGUvYXNtLWdlbmVyaWMvcHJlZW1wdC5oOjQsCiAgICAgICAgICAgICAgICAgZnJv
bSBhcmNoL2FybS9pbmNsdWRlL2dlbmVyYXRlZC9hc20vcHJlZW1wdC5oOjEsCiAgICAgICAgICAg
ICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1
ZGUvbGludXgvcHJlZW1wdC5oOjU5LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3NwaW5sb2NrLmg6NTAs
CiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1n
ZW5lcmljL2luY2x1ZGUvbGludXgvbW1fdHlwZXMuaDo4LAogICAgICAgICAgICAgICAgIGZyb20g
L3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L2tt
ZW1jaGVjay5oOjQsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvc2tidWZmLmg6MTgsCiAgICAgICAgICAg
ICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1
ZGUvbGludXgvaXAuaDoyMCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9i
dWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAv
Z2l0L3NyYy9tb2Qvc2lpdC8uLi8uLi9tb2QvY29tbW9uL3JmYzYxNDUvY29tbW9uLmg6NCwKICAg
ICAgICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJt
LWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdC8uLi8u
Li9tb2QvY29tbW9uL3JmYzYxNDUvNHRvNi5oOjExLAogICAgICAgICAgICAgICAgIGZyb20gL2hv
bWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkv
am9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uL2NvbW1vbi9yZmM2MTQ1LzR0bzYuYzox
OgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1
ZGUvYXNtL3BhZ2UuaDoxMDc6MjogZXJyb3I6ICNlcnJvciBVbmtub3duIHVzZXIgb3BlcmF0aW9u
cyBtb2RlbAogI2Vycm9yIFVua25vd24gdXNlciBvcGVyYXRpb25zIG1vZGVsCiAgXn5+fn4KSW4g
ZmlsZSBpbmNsdWRlZCBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVy
aWMvaW5jbHVkZS9saW51eC9saXN0Lmg6NywKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3Jj
L2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9tbV90eXBlcy5o
OjcsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1
MC1nZW5lcmljL2luY2x1ZGUvbGludXgva21lbWNoZWNrLmg6NCwKICAgICAgICAgICAgICAgICBm
cm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51
eC9za2J1ZmYuaDoxOCwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRl
cnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9pcC5oOjIwLAogICAgICAgICAgICAg
ICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxp
bnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uLy4uL21vZC9jb21t
b24vcmZjNjE0NS9jb21tb24uaDo0LAogICAgICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jhai9w
b2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAu
MS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uLy4uL21vZC9jb21tb24vcmZjNjE0NS80dG82Lmg6MTEs
CiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVt
dWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL3NpaXQv
Li4vY29tbW9uL3JmYzYxNDUvNHRvNi5jOjE6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAt
MTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6NDA6MjQ6IHdhcm5pbmc6
ICJDT05GSUdfUEFHRV9PRkZTRVRVTCIgaXMgbm90IGRlZmluZWQsIGV2YWx1YXRlcyB0byAwIFst
V3VuZGVmXQogI2RlZmluZSBUQVNLX1NJWkUgIChVTChDT05GSUdfUEFHRV9PRkZTRVQpIC0gVUwo
U1pfMTZNKSkKICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Ci91c3Iv
c3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS91YXBpL2xpbnV4L2Nv
bnN0Lmg6MTk6MjA6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8gJ19fQUMnCiAjZGVmaW5l
IF9fQUMoWCxZKSAoWCMjWSkKICAgICAgICAgICAgICAgICAgICBeCi91c3Ivc3JjL2xpbnV4LWhl
YWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6Mjk6
MTU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnX0FDJwogI2RlZmluZSBVTCh4KSBfQUMo
eCwgVUwpCiAgICAgICAgICAgICAgIF5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1
MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjQwOjIxOiBub3RlOiBpbiBl
eHBhbnNpb24gb2YgbWFjcm8gJ1VMJwogI2RlZmluZSBUQVNLX1NJWkUgIChVTChDT05GSUdfUEFH
RV9PRkZTRVQpIC0gVUwoU1pfMTZNKSkKICAgICAgICAgICAgICAgICAgICAgXn4KL3Vzci9zcmMv
bGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1v
cnkuaDo1OTo1OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ1RBU0tfU0laRScKICNpZiBU
QVNLX1NJWkUgPiBNT0RVTEVTX1ZBRERSCiAgICAgXn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhl
YWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MzI6
MjU6IHdhcm5pbmc6ICJDT05GSUdfUEFHRV9PRkZTRVRVTCIgaXMgbm90IGRlZmluZWQsIGV2YWx1
YXRlcyB0byAwIFstV3VuZGVmXQogI2RlZmluZSBQQUdFX09GRlNFVCAgVUwoQ09ORklHX1BBR0Vf
T0ZGU0VUKQogICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Ci91c3Iv
c3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS91YXBpL2xpbnV4L2Nv
bnN0Lmg6MTk6MjA6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8gJ19fQUMnCiAjZGVmaW5l
IF9fQUMoWCxZKSAoWCMjWSkKICAgICAgICAgICAgICAgICAgICBeCi91c3Ivc3JjL2xpbnV4LWhl
YWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6Mjk6
MTU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnX0FDJwogI2RlZmluZSBVTCh4KSBfQUMo
eCwgVUwpCiAgICAgICAgICAgICAgIF5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1
MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjMyOjIyOiBub3RlOiBpbiBl
eHBhbnNpb24gb2YgbWFjcm8gJ1VMJwogI2RlZmluZSBQQUdFX09GRlNFVCAgVUwoQ09ORklHX1BB
R0VfT0ZGU0VUKQogICAgICAgICAgICAgICAgICAgICAgXn4KL3Vzci9zcmMvbGludXgtaGVhZGVy
cy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1vcnkuaDo1MzoyNTog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdQQUdFX09GRlNFVCcKICNkZWZpbmUgTU9EVUxF
U19WQUREUiAgKFBBR0VfT0ZGU0VUIC0gU1pfMTZNKQogICAgICAgICAgICAgICAgICAgICAgICAg
Xn5+fn5+fn5+fn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNo
L2FybS9pbmNsdWRlL2FzbS9tZW1vcnkuaDo1OToxNzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1h
Y3JvICdNT0RVTEVTX1ZBRERSJwogI2lmIFRBU0tfU0laRSA+IE1PRFVMRVNfVkFERFIKICAgICAg
ICAgICAgICAgICBefn5+fn5+fn5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJvbSAvdXNyL3NyYy9s
aW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL3BhZ2Uu
aDoxNjMsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4w
LTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL3RocmVhZF9pbmZvLmg6MTcsCiAgICAg
ICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmlj
L2luY2x1ZGUvbGludXgvdGhyZWFkX2luZm8uaDo1NCwKICAgICAgICAgICAgICAgICBmcm9tIC91
c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9hc20tZ2VuZXJp
Yy9wcmVlbXB0Lmg6NCwKICAgICAgICAgICAgICAgICBmcm9tIGFyY2gvYXJtL2luY2x1ZGUvZ2Vu
ZXJhdGVkL2FzbS9wcmVlbXB0Lmg6MSwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xp
bnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9wcmVlbXB0Lmg6NTks
CiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1n
ZW5lcmljL2luY2x1ZGUvbGludXgvc3BpbmxvY2suaDo1MCwKICAgICAgICAgICAgICAgICBmcm9t
IC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9t
bV90eXBlcy5oOjgsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgva21lbWNoZWNrLmg6NCwKICAgICAgICAg
ICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5j
bHVkZS9saW51eC9za2J1ZmYuaDoxOCwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xp
bnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9pcC5oOjIwLAogICAg
ICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0t
ZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uLy4u
L21vZC9jb21tb24vcmZjNjE0NS9jb21tb24uaDo0LAogICAgICAgICAgICAgICAgIGZyb20gL2hv
bWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkv
am9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uLy4uL21vZC9jb21tb24vcmZjNjE0NS80
dG82Lmg6MTEsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1w
L3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMv
bW9kL3NpaXQvLi4vY29tbW9uL3JmYzYxNDUvNHRvNi5jOjE6Ci91c3Ivc3JjL2xpbnV4LWhlYWRl
cnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6NTM6Mzc6
IHdhcm5pbmc6IHRoZSByaWdodCBvcGVyYW5kIG9mICI+IiBjaGFuZ2VzIHNpZ24gd2hlbiBwcm9t
b3RlZAogI2RlZmluZSBNT0RVTEVTX1ZBRERSICAoUEFHRV9PRkZTRVQgLSBTWl8xNk0pCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCi91c3Ivc3JjL2xpbnV4LWhlYWRlcnMt
NC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6NTk6MTc6IG5v
dGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnTU9EVUxFU19WQUREUicKICNpZiBUQVNLX1NJWkUg
PiBNT0RVTEVTX1ZBRERSCiAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fgpJbiBmaWxlIGlu
Y2x1ZGVkIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNs
dWRlL2xpbnV4L2xpc3QuaDo3LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgt
aGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L21tX3R5cGVzLmg6NywKICAg
ICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVy
aWMvaW5jbHVkZS9saW51eC9rbWVtY2hlY2suaDo0LAogICAgICAgICAgICAgICAgIGZyb20gL3Vz
ci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3NrYnVm
Zi5oOjE4LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQu
MC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L2lwLmg6MjAsCiAgICAgICAgICAgICAgICAgZnJv
bSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251
ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL3NpaXQvLi4vLi4vbW9kL2NvbW1vbi9yZmM2
MTQ1L2NvbW1vbi5oOjQsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVp
bGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dp
dC9zcmMvbW9kL3NpaXQvLi4vLi4vbW9kL2NvbW1vbi9yZmM2MTQ1LzR0bzYuaDoxMSwKICAgICAg
ICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVu
aWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdC8uLi9jb21t
b24vcmZjNjE0NS80dG82LmM6MToKL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2Vu
ZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1vcnkuaDogSW4gZnVuY3Rpb24gJ19fdmlydF90
b19waHlzJzoKL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2Fy
bS9pbmNsdWRlL2FzbS9tZW1vcnkuaDozMjoyNTogZXJyb3I6ICdDT05GSUdfUEFHRV9PRkZTRVRV
TCcgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g
J0NPTkZJR19TTkRfT1NTRU1VTCc/CiAjZGVmaW5lIFBBR0VfT0ZGU0VUICBVTChDT05GSUdfUEFH
RV9PRkZTRVQpCiAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn4KL3Vz
ci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL3VhcGkvbGludXgv
Y29uc3QuaDoxOToyMDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyAnX19BQycKICNkZWZp
bmUgX19BQyhYLFkpIChYIyNZKQogICAgICAgICAgICAgICAgICAgIF4KL3Vzci9zcmMvbGludXgt
aGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1vcnkuaDoy
OToxNTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdfQUMnCiAjZGVmaW5lIFVMKHgpIF9B
Qyh4LCBVTCkKICAgICAgICAgICAgICAgXn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAt
MTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MzI6MjI6IG5vdGU6IGlu
IGV4cGFuc2lvbiBvZiBtYWNybyAnVUwnCiAjZGVmaW5lIFBBR0VfT0ZGU0VUICBVTChDT05GSUdf
UEFHRV9PRkZTRVQpCiAgICAgICAgICAgICAgICAgICAgICBefgovdXNyL3NyYy9saW51eC1oZWFk
ZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjIzNzoy
Njogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdQQUdFX09GRlNFVCcKICByZXR1cm4gKHBo
eXNfYWRkcl90KXggLSBQQUdFX09GRlNFVCArIFBIWVNfT0ZGU0VUOwogICAgICAgICAgICAgICAg
ICAgICAgICAgIF5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MzI6MjU6IG5vdGU6IGVhY2ggdW5k
ZWNsYXJlZCBpZGVudGlmaWVyIGlzIHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFjaCBmdW5jdGlv
biBpdCBhcHBlYXJzIGluCiAjZGVmaW5lIFBBR0VfT0ZGU0VUICBVTChDT05GSUdfUEFHRV9PRkZT
RVQpCiAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMv
bGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL3VhcGkvbGludXgvY29uc3Qu
aDoxOToyMDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyAnX19BQycKICNkZWZpbmUgX19B
QyhYLFkpIChYIyNZKQogICAgICAgICAgICAgICAgICAgIF4KL3Vzci9zcmMvbGludXgtaGVhZGVy
cy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1vcnkuaDoyOToxNTog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdfQUMnCiAjZGVmaW5lIFVMKHgpIF9BQyh4LCBV
TCkKICAgICAgICAgICAgICAgXn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MzI6MjI6IG5vdGU6IGluIGV4cGFu
c2lvbiBvZiBtYWNybyAnVUwnCiAjZGVmaW5lIFBBR0VfT0ZGU0VUICBVTChDT05GSUdfUEFHRV9P
RkZTRVQpCiAgICAgICAgICAgICAgICAgICAgICBefgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQu
NC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjIzNzoyNjogbm90
ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdQQUdFX09GRlNFVCcKICByZXR1cm4gKHBoeXNfYWRk
cl90KXggLSBQQUdFX09GRlNFVCArIFBIWVNfT0ZGU0VUOwogICAgICAgICAgICAgICAgICAgICAg
ICAgIF5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMv
YXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MTM1OjI5OiBlcnJvcjogJ0NPTkZJR19QSFlT
X09GRlNFVFVMJyB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5
b3UgbWVhbiAnQ09ORklHX1NORF9PU1NFTVVMJz8KICNkZWZpbmUgUExBVF9QSFlTX09GRlNFVCBV
TChDT05GSUdfUEhZU19PRkZTRVQpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+
fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5j
bHVkZS91YXBpL2xpbnV4L2NvbnN0Lmg6MTk6MjA6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFj
cm8gJ19fQUMnCiAjZGVmaW5lIF9fQUMoWCxZKSAoWCMjWSkKICAgICAgICAgICAgICAgICAgICBe
Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVk
ZS9hc20vbWVtb3J5Lmg6Mjk6MTU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnX0FDJwog
I2RlZmluZSBVTCh4KSBfQUMoeCwgVUwpCiAgICAgICAgICAgICAgIF5+fgovdXNyL3NyYy9saW51
eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5o
OjEzNToyNjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdVTCcKICNkZWZpbmUgUExBVF9Q
SFlTX09GRlNFVCBVTChDT05GSUdfUEhZU19PRkZTRVQpCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgXn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9p
bmNsdWRlL2FzbS9tZW1vcnkuaDoyMzI6MjE6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAn
UExBVF9QSFlTX09GRlNFVCcKICNkZWZpbmUgUEhZU19PRkZTRVQgUExBVF9QSFlTX09GRlNFVAog
ICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRl
cnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MjM3OjQw
OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ1BIWVNfT0ZGU0VUJwogIHJldHVybiAocGh5
c19hZGRyX3QpeCAtIFBBR0VfT0ZGU0VUICsgUEhZU19PRkZTRVQ7CiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOiBJbiBmdW5j
dGlvbiAnX19waHlzX3RvX3ZpcnQnOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1n
ZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjEzNToyOTogZXJyb3I6ICdDT05G
SUdfUEhZU19PRkZTRVRVTCcgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24p
OyBkaWQgeW91IG1lYW4gJ0NPTkZJR19TTkRfT1NTRU1VTCc/CiAjZGVmaW5lIFBMQVRfUEhZU19P
RkZTRVQgVUwoQ09ORklHX1BIWVNfT0ZGU0VUKQogICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5l
cmljL2luY2x1ZGUvdWFwaS9saW51eC9jb25zdC5oOjE5OjIwOiBub3RlOiBpbiBkZWZpbml0aW9u
IG9mIG1hY3JvICdfX0FDJwogI2RlZmluZSBfX0FDKFgsWSkgKFgjI1kpCiAgICAgICAgICAgICAg
ICAgICAgXgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJt
L2luY2x1ZGUvYXNtL21lbW9yeS5oOjI5OjE1OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g
J19BQycKICNkZWZpbmUgVUwoeCkgX0FDKHgsIFVMKQogICAgICAgICAgICAgICBefn4KL3Vzci9z
cmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9t
ZW1vcnkuaDoxMzU6MjY6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnVUwnCiAjZGVmaW5l
IFBMQVRfUEhZU19PRkZTRVQgVUwoQ09ORklHX1BIWVNfT0ZGU0VUKQogICAgICAgICAgICAgICAg
ICAgICAgICAgIF5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJj
aC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MjMyOjIxOiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8gJ1BMQVRfUEhZU19PRkZTRVQnCiAjZGVmaW5lIFBIWVNfT0ZGU0VUIFBMQVRfUEhZU19P
RkZTRVQKICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9saW51
eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5o
OjI0MjoxMzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdQSFlTX09GRlNFVCcKICByZXR1
cm4geCAtIFBIWVNfT0ZGU0VUICsgUEFHRV9PRkZTRVQ7CiAgICAgICAgICAgICBefn5+fn5+fn5+
fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1
ZGUvYXNtL21lbW9yeS5oOjMyOjI1OiBlcnJvcjogJ0NPTkZJR19QQUdFX09GRlNFVFVMJyB1bmRl
Y2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiAnQ09ORklH
X1NORF9PU1NFTVVMJz8KICNkZWZpbmUgUEFHRV9PRkZTRVQgIFVMKENPTkZJR19QQUdFX09GRlNF
VCkKICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9s
aW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvdWFwaS9saW51eC9jb25zdC5o
OjE5OjIwOiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvICdfX0FDJwogI2RlZmluZSBfX0FD
KFgsWSkgKFgjI1kpCiAgICAgICAgICAgICAgICAgICAgXgovdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL21lbW9yeS5oOjI5OjE1OiBu
b3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ19BQycKICNkZWZpbmUgVUwoeCkgX0FDKHgsIFVM
KQogICAgICAgICAgICAgICBefn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2Vu
ZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9tZW1vcnkuaDozMjoyMjogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvICdVTCcKICNkZWZpbmUgUEFHRV9PRkZTRVQgIFVMKENPTkZJR19QQUdFX09G
RlNFVCkKICAgICAgICAgICAgICAgICAgICAgIF5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40
LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vbWVtb3J5Lmg6MjQyOjI3OiBub3Rl
OiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ1BBR0VfT0ZGU0VUJwogIHJldHVybiB4IC0gUEhZU19P
RkZTRVQgKyBQQUdFX09GRlNFVDsKICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+
fn4KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUw
LWdlbmVyaWMvaW5jbHVkZS9saW51eC9jYWNoZS5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAv
dXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvcHJp
bnRrLmg6OCwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40
LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9rZXJuZWwuaDoxMywKICAgICAgICAgICAgICAg
ICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9s
aW51eC9za2J1ZmYuaDoxNywKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhl
YWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9pcC5oOjIwLAogICAgICAgICAg
ICAgICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21h
LWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uLy4uL21vZC9j
b21tb24vcmZjNjE0NS9jb21tb24uaDo0LAogICAgICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jh
ai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80
LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uLy4uL21vZC9jb21tb24vcmZjNjE0NS80dG82Lmg6
MTEsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsv
cWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL3Np
aXQvLi4vY29tbW9uL3JmYzYxNDUvNHRvNi5jOjE6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40
LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9wcmVmZXRjaC5oOiBJbiBmdW5jdGlvbiAncHJl
ZmV0Y2hfcmFuZ2UnOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2Fy
Y2gvYXJtL2luY2x1ZGUvYXNtL2NhY2hlLmg6NzoyNTogZXJyb3I6ICdDT05GSUdfQVJNX0wxX0NB
Q0hFX1NISUZUJyB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5
b3UgbWVhbiAnQ09ORklHX1g4Nl9MMV9DQUNIRV9TSElGVCc/CiAjZGVmaW5lIEwxX0NBQ0hFX1NI
SUZUICBDT05GSUdfQVJNX0wxX0NBQ0hFX1NISUZUCiAgICAgICAgICAgICAgICAgICAgICAgICBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUw
LWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vY2FjaGUuaDo4OjMxOiBub3RlOiBpbiBleHBh
bnNpb24gb2YgbWFjcm8gJ0wxX0NBQ0hFX1NISUZUJwogI2RlZmluZSBMMV9DQUNIRV9CWVRFUyAg
KDEgPDwgTDFfQ0FDSEVfU0hJRlQpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+
fn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1
ZGUvbGludXgvcHJlZmV0Y2guaDo1MDoyODogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdM
MV9DQUNIRV9CWVRFUycKICNkZWZpbmUgUFJFRkVUQ0hfU1RSSURFICg0KkwxX0NBQ0hFX0JZVEVT
KQogICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3ByZWZldGNoLmg6NTk6
MzQ6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnUFJFRkVUQ0hfU1RSSURFJwogIGZvciAo
Y3AgPSBhZGRyOyBjcCA8IGVuZDsgY3AgKz0gUFJFRkVUQ0hfU1RSSURFKQogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJv
bSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgv
YXRvbWljLmg6NCwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMt
NC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9zcGlubG9jay5oOjQwNiwKICAgICAgICAg
ICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5j
bHVkZS9saW51eC9tbV90eXBlcy5oOjgsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9s
aW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgva21lbWNoZWNrLmg6
NCwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUw
LWdlbmVyaWMvaW5jbHVkZS9saW51eC9za2J1ZmYuaDoxOCwKICAgICAgICAgICAgICAgICBmcm9t
IC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9p
cC5oOjIwLAogICAgICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93
b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21v
ZC9zaWl0Ly4uLy4uL21vZC9jb21tb24vcmZjNjE0NS9jb21tb24uaDo0LAogICAgICAgICAgICAg
ICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxp
bnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uLy4uL21vZC9jb21t
b24vcmZjNjE0NS80dG82Lmg6MTEsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bv
a3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4x
LXIwL2dpdC9zcmMvbW9kL3NpaXQvLi4vY29tbW9uL3JmYzYxNDUvNHRvNi5jOjE6Ci91c3Ivc3Jj
L2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXRv
bWljLmg6IEF0IHRvcCBsZXZlbDoKL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2Vu
ZXJpYy9hcmNoL2FybS9pbmNsdWRlL2FzbS9hdG9taWMuaDoyMjI6MzogZXJyb3I6IGNvbmZsaWN0
aW5nIHR5cGVzIGZvciAnYXRvbWljNjRfdCcKIH0gYXRvbWljNjRfdDsKICAgXn5+fn5+fn5+fgpJ
biBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2Vu
ZXJpYy9pbmNsdWRlL2xpbnV4L2tlcm5lbC5oOjgsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNy
L3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvc2tidWZm
Lmg6MTcsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4w
LTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvaXAuaDoyMCwKICAgICAgICAgICAgICAgICBmcm9t
IC9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVl
YWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdC8uLi8uLi9tb2QvY29tbW9uL3JmYzYx
NDUvY29tbW9uLmg6NCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWls
ZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0
L3NyYy9tb2Qvc2lpdC8uLi8uLi9tb2QvY29tbW9uL3JmYzYxNDUvNHRvNi5oOjExLAogICAgICAg
ICAgICAgICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5p
Z21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uL2NvbW1v
bi9yZmM2MTQ1LzR0bzYuYzoxOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5l
cmljL2luY2x1ZGUvbGludXgvdHlwZXMuaDoxODI6Mzogbm90ZTogcHJldmlvdXMgZGVjbGFyYXRp
b24gb2YgJ2F0b21pYzY0X3QnIHdhcyBoZXJlCiB9IGF0b21pYzY0X3Q7CiAgIF5+fn5+fn5+fn4K
SW4gZmlsZSBpbmNsdWRlZCBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvaW5jbHVkZS9saW51eC9jYWNoZS5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNy
L3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvcHJpbnRr
Lmg6OCwKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAt
MTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9rZXJuZWwuaDoxMywKICAgICAgICAgICAgICAgICBm
cm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51
eC9za2J1ZmYuaDoxNywKICAgICAgICAgICAgICAgICBmcm9tIC91c3Ivc3JjL2xpbnV4LWhlYWRl
cnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9pcC5oOjIwLAogICAgICAgICAgICAg
ICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxp
bnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uLy4uL21vZC9jb21t
b24vcmZjNjE0NS9jb21tb24uaDo0LAogICAgICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jhai9w
b2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAu
MS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uLy4uL21vZC9jb21tb24vcmZjNjE0NS80dG82Lmg6MTEs
CiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVt
dWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL3NpaXQv
Li4vY29tbW9uL3JmYzYxNDUvNHRvNi5jOjE6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAt
MTUwLWdlbmVyaWMvYXJjaC9hcm0vaW5jbHVkZS9hc20vY2FjaGUuaDo3OjI1OiBlcnJvcjogJ0NP
TkZJR19BUk1fTDFfQ0FDSEVfU0hJRlQnIHVuZGVjbGFyZWQgaGVyZSAobm90IGluIGEgZnVuY3Rp
b24pOyBkaWQgeW91IG1lYW4gJ0NPTkZJR19YODZfTDFfQ0FDSEVfU0hJRlQnPwogI2RlZmluZSBM
MV9DQUNIRV9TSElGVCAgQ09ORklHX0FSTV9MMV9DQUNIRV9TSElGVAogICAgICAgICAgICAgICAg
ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2NhY2hlLmg6ODozMTogbm90
ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdMMV9DQUNIRV9TSElGVCcKICNkZWZpbmUgTDFfQ0FD
SEVfQllURVMgICgxIDw8IEwxX0NBQ0hFX1NISUZUKQogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2Vu
ZXJpYy9pbmNsdWRlL2xpbnV4L2NhY2hlLmg6MTI6MjU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBt
YWNybyAnTDFfQ0FDSEVfQllURVMnCiAjZGVmaW5lIFNNUF9DQUNIRV9CWVRFUyBMMV9DQUNIRV9C
WVRFUwogICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4KL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L2NhY2hlLmg6NDc6MzA6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnU01QX0NBQ0hFX0JZVEVTJwogICBfX2F0dHJp
YnV0ZV9fKChfX2FsaWduZWRfXyhTTVBfQ0FDSEVfQllURVMpLCAgIFwKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40
LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9jYWNoZS5oOjUzOjM2OiBub3RlOiBpbiBleHBh
bnNpb24gb2YgbWFjcm8gJ19fY2FjaGVsaW5lX2FsaWduZWQnCiAjZGVmaW5lIF9fY2FjaGVsaW5l
X2FsaWduZWRfaW5fc21wIF9fY2FjaGVsaW5lX2FsaWduZWQKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvamlmZmllcy5oOjc2OjEyOiBub3RlOiBp
biBleHBhbnNpb24gb2YgbWFjcm8gJ19fY2FjaGVsaW5lX2FsaWduZWRfaW5fc21wJwogZXh0ZXJu
IHU2NCBfX2NhY2hlbGluZV9hbGlnbmVkX2luX3NtcCBqaWZmaWVzXzY0OwogICAgICAgICAgICBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3Vzci9zcmMv
bGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L2t0aW1lLmg6MzA0
LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAt
Z2VuZXJpYy9pbmNsdWRlL2xpbnV4L3JjdXBkYXRlLmg6NDcsCiAgICAgICAgICAgICAgICAgZnJv
bSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgv
cmJ0cmVlLmg6MzQsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvbW1fdHlwZXMuaDo5LAogICAgICAgICAg
ICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNs
dWRlL2xpbnV4L2ttZW1jaGVjay5oOjQsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9s
aW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvc2tidWZmLmg6MTgs
CiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1n
ZW5lcmljL2luY2x1ZGUvbGludXgvaXAuaDoyMCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21l
L2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pv
b2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdC8uLi8uLi9tb2QvY29tbW9uL3JmYzYxNDUvY29t
bW9uLmg6NCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWlsZC90bXAv
d29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9t
b2Qvc2lpdC8uLi8uLi9tb2QvY29tbW9uL3JmYzYxNDUvNHRvNi5oOjExLAogICAgICAgICAgICAg
ICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxp
bnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uL2NvbW1vbi9yZmM2
MTQ1LzR0bzYuYzoxOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2lu
Y2x1ZGUvbGludXgvdGltZWtlZXBpbmcuaDogSW4gZnVuY3Rpb24gJ2RvX3NldHRpbWVvZmRheSc6
Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC90
aW1la2VlcGluZy5oOjUxOjI3OiB3YXJuaW5nOiBwYXNzaW5nIGFyZ3VtZW50IDEgb2YgJ2RvX3Nl
dHRpbWVvZmRheTY0JyBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUgWy1XaW5jb21wYXRp
YmxlLXBvaW50ZXItdHlwZXNdCiAgcmV0dXJuIGRvX3NldHRpbWVvZmRheTY0KHRzKTsKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAt
Z2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6MTM6NTU6IG5vdGU6IGV4cGVjdGVk
ICdjb25zdCBzdHJ1Y3QgdGltZXNwZWM2NCAqJyBidXQgYXJndW1lbnQgaXMgb2YgdHlwZSAnY29u
c3Qgc3RydWN0IHRpbWVzcGVjIConCiBleHRlcm4gaW50IGRvX3NldHRpbWVvZmRheTY0KGNvbnN0
IHN0cnVjdCB0aW1lc3BlYzY0ICp0cyk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5efgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1
MC1nZW5lcmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBpbmcuaDogSW4gZnVuY3Rpb24gJ19fZ2V0
bnN0aW1lb2ZkYXknOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2lu
Y2x1ZGUvbGludXgvdGltZWtlZXBpbmcuaDo1NjoyODogd2FybmluZzogcGFzc2luZyBhcmd1bWVu
dCAxIG9mICdfX2dldG5zdGltZW9mZGF5NjQnIGZyb20gaW5jb21wYXRpYmxlIHBvaW50ZXIgdHlw
ZSBbLVdpbmNvbXBhdGlibGUtcG9pbnRlci10eXBlc10KICByZXR1cm4gX19nZXRuc3RpbWVvZmRh
eTY0KHRzKTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+Ci91c3Ivc3JjL2xpbnV4LWhl
YWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjQxOjUw
OiBub3RlOiBleHBlY3RlZCAnc3RydWN0IHRpbWVzcGVjNjQgKicgYnV0IGFyZ3VtZW50IGlzIG9m
IHR5cGUgJ3N0cnVjdCB0aW1lc3BlYyAqJwogZXh0ZXJuIGludCBfX2dldG5zdGltZW9mZGF5NjQo
c3RydWN0IHRpbWVzcGVjNjQgKnR2KTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+
fn5+fn5+fn5+fn5+fn5+fn5efgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5l
cmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBpbmcuaDogSW4gZnVuY3Rpb24gJ2dldG5zdGltZW9m
ZGF5JzoKL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xp
bnV4L3RpbWVrZWVwaW5nLmg6NjE6MTk6IHdhcm5pbmc6IHBhc3NpbmcgYXJndW1lbnQgMSBvZiAn
Z2V0bnN0aW1lb2ZkYXk2NCcgZnJvbSBpbmNvbXBhdGlibGUgcG9pbnRlciB0eXBlIFstV2luY29t
cGF0aWJsZS1wb2ludGVyLXR5cGVzXQogIGdldG5zdGltZW9mZGF5NjQodHMpOwogICAgICAgICAg
ICAgICAgICAgXn4KL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNs
dWRlL2xpbnV4L3RpbWVrZWVwaW5nLmg6NDI6NDk6IG5vdGU6IGV4cGVjdGVkICdzdHJ1Y3QgdGlt
ZXNwZWM2NCAqJyBidXQgYXJndW1lbnQgaXMgb2YgdHlwZSAnc3RydWN0IHRpbWVzcGVjIConCiBl
eHRlcm4gdm9pZCBnZXRuc3RpbWVvZmRheTY0KHN0cnVjdCB0aW1lc3BlYzY0ICp0dik7CiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn5+fn5+fn5+fn5+fn5+fn5efgovdXNyL3NyYy9s
aW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBpbmcu
aDogSW4gZnVuY3Rpb24gJ2t0aW1lX2dldF90cyc6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40
LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjY2OjE3OiB3YXJuaW5n
OiBwYXNzaW5nIGFyZ3VtZW50IDEgb2YgJ2t0aW1lX2dldF90czY0JyBmcm9tIGluY29tcGF0aWJs
ZSBwb2ludGVyIHR5cGUgWy1XaW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdCiAga3RpbWVfZ2V0
X3RzNjQodHMpOwogICAgICAgICAgICAgICAgIF5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40
LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjM3OjQ3OiBub3RlOiBl
eHBlY3RlZCAnc3RydWN0IHRpbWVzcGVjNjQgKicgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUgJ3N0
cnVjdCB0aW1lc3BlYyAqJwogZXh0ZXJuIHZvaWQga3RpbWVfZ2V0X3RzNjQoc3RydWN0IHRpbWVz
cGVjNjQgKnRzKTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn5+fn5+fn5+fn5+fn5+
fn5efgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGlu
dXgvdGltZWtlZXBpbmcuaDogSW4gZnVuY3Rpb24gJ2t0aW1lX2dldF9yZWFsX3RzJzoKL3Vzci9z
cmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3RpbWVrZWVw
aW5nLmg6NzE6MTk6IHdhcm5pbmc6IHBhc3NpbmcgYXJndW1lbnQgMSBvZiAnZ2V0bnN0aW1lb2Zk
YXk2NCcgZnJvbSBpbmNvbXBhdGlibGUgcG9pbnRlciB0eXBlIFstV2luY29tcGF0aWJsZS1wb2lu
dGVyLXR5cGVzXQogIGdldG5zdGltZW9mZGF5NjQodHMpOwogICAgICAgICAgICAgICAgICAgXn4K
L3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L3Rp
bWVrZWVwaW5nLmg6NDI6NDk6IG5vdGU6IGV4cGVjdGVkICdzdHJ1Y3QgdGltZXNwZWM2NCAqJyBi
dXQgYXJndW1lbnQgaXMgb2YgdHlwZSAnc3RydWN0IHRpbWVzcGVjIConCiBleHRlcm4gdm9pZCBn
ZXRuc3RpbWVvZmRheTY0KHN0cnVjdCB0aW1lc3BlYzY0ICp0dik7CiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIH5+fn5+fn5+fn5+fn5+fn5+fn5efgovdXNyL3NyYy9saW51eC1oZWFkZXJz
LTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBpbmcuaDogSW4gZnVuY3Rp
b24gJ2dldHJhd21vbm90b25pYyc6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdl
bmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjc2OjIwOiB3YXJuaW5nOiBwYXNzaW5n
IGFyZ3VtZW50IDEgb2YgJ2dldHJhd21vbm90b25pYzY0JyBmcm9tIGluY29tcGF0aWJsZSBwb2lu
dGVyIHR5cGUgWy1XaW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdCiAgZ2V0cmF3bW9ub3Rvbmlj
NjQodHMpOwogICAgICAgICAgICAgICAgICAgIF5+Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40
LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC90aW1la2VlcGluZy5oOjM2OjUwOiBub3RlOiBl
eHBlY3RlZCAnc3RydWN0IHRpbWVzcGVjNjQgKicgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUgJ3N0
cnVjdCB0aW1lc3BlYyAqJwogZXh0ZXJuIHZvaWQgZ2V0cmF3bW9ub3RvbmljNjQoc3RydWN0IHRp
bWVzcGVjNjQgKnRzKTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn5+fn5+fn5+
fn5+fn5+fn5efgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1
ZGUvbGludXgvdGltZWtlZXBpbmcuaDogSW4gZnVuY3Rpb24gJ2dldF9tb25vdG9uaWNfY29hcnNl
JzoKL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4
L3RpbWVrZWVwaW5nLmg6ODE6OTogZXJyb3I6IGluY29tcGF0aWJsZSB0eXBlcyB3aGVuIHJldHVy
bmluZyB0eXBlICdzdHJ1Y3QgdGltZXNwZWM2NCcgYnV0ICdzdHJ1Y3QgdGltZXNwZWMnIHdhcyBl
eHBlY3RlZAogIHJldHVybiBnZXRfbW9ub3RvbmljX2NvYXJzZTY0KCk7CiAgICAgICAgIF5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5l
cmljL2luY2x1ZGUvbGludXgvdGltZWtlZXBpbmcuaDogSW4gZnVuY3Rpb24gJ2dldGJvb3R0aW1l
JzoKL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4
L3RpbWVrZWVwaW5nLmg6ODY6MjM6IHdhcm5pbmc6IHBhc3NpbmcgYXJndW1lbnQgMSBvZiAnZ2V0
Ym9vdHRpbWU2NCcgZnJvbSBpbmNvbXBhdGlibGUgcG9pbnRlciB0eXBlIFstV2luY29tcGF0aWJs
ZS1wb2ludGVyLXR5cGVzXQogIHJldHVybiBnZXRib290dGltZTY0KHRzKTsKICAgICAgICAgICAg
ICAgICAgICAgICBefgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2lu
Y2x1ZGUvbGludXgvdGltZWtlZXBpbmcuaDo0Mzo0Njogbm90ZTogZXhwZWN0ZWQgJ3N0cnVjdCB0
aW1lc3BlYzY0IConIGJ1dCBhcmd1bWVudCBpcyBvZiB0eXBlICdzdHJ1Y3QgdGltZXNwZWMgKicK
IGV4dGVybiB2b2lkIGdldGJvb3R0aW1lNjQoc3RydWN0IHRpbWVzcGVjNjQgKnRzKTsKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfn5+fn5+fn5+fn5+fn5+fn5+fl5+CkluIGZpbGUgaW5jbHVk
ZWQgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUv
bGludXgvcGFnZS1mbGFncy1sYXlvdXQuaDoyNywKICAgICAgICAgICAgICAgICBmcm9tIC91c3Iv
c3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvaW5jbHVkZS9saW51eC9tbV90eXBl
cy5oOjE0LAogICAgICAgICAgICAgICAgIGZyb20gL3Vzci9zcmMvbGludXgtaGVhZGVycy00LjQu
MC0xNTAtZ2VuZXJpYy9pbmNsdWRlL2xpbnV4L2ttZW1jaGVjay5oOjQsCiAgICAgICAgICAgICAg
ICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUv
bGludXgvc2tidWZmLmg6MTgsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1o
ZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvaXAuaDoyMCwKICAgICAgICAg
ICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdt
YS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdC8uLi8uLi9tb2Qv
Y29tbW9uL3JmYzYxNDUvY29tbW9uLmg6NCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dy
YWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wv
NC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdC8uLi8uLi9tb2QvY29tbW9uL3JmYzYxNDUvNHRvNi5o
OjExLAogICAgICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3Jr
L3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9z
aWl0Ly4uL2NvbW1vbi9yZmM2MTQ1LzR0bzYuYzoxOgovdXNyL3NyYy9saW51eC1oZWFkZXJzLTQu
NC4wLTE1MC1nZW5lcmljL2FyY2gvYXJtL2luY2x1ZGUvYXNtL3NwYXJzZW1lbS5oOiBBdCB0b3Ag
bGV2ZWw6Ci91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvYXJjaC9hcm0v
aW5jbHVkZS9hc20vc3BhcnNlbWVtLmg6MjE6MjogZXJyb3I6ICNlcnJvciBTcGFyc2VtZW0gaXMg
bm90IHN1cHBvcnRlZCBvbiB0aGlzIHBsYXRmb3JtCiAjZXJyb3IgU3BhcnNlbWVtIGlzIG5vdCBz
dXBwb3J0ZWQgb24gdGhpcyBwbGF0Zm9ybQogIF5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJvbSAv
dXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvbmV0
Lmg6MjIsCiAgICAgICAgICAgICAgICAgZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4w
LTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvc2tidWZmLmg6MjksCiAgICAgICAgICAgICAgICAg
ZnJvbSAvdXNyL3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGlu
dXgvaXAuaDoyMCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWlsZC90
bXAvd29yay9xZW11YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3Ny
Yy9tb2Qvc2lpdC8uLi8uLi9tb2QvY29tbW9uL3JmYzYxNDUvY29tbW9uLmg6NCwKICAgICAgICAg
ICAgICAgICBmcm9tIC9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11YXJtLWVuaWdt
YS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdC8uLi8uLi9tb2Qv
Y29tbW9uL3JmYzYxNDUvNHRvNi5oOjExLAogICAgICAgICAgICAgICAgIGZyb20gL2hvbWUvZ3Jh
ai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5pZ21hLWxpbnV4LWdudWVhYmkvam9vbC80
LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0Ly4uL2NvbW1vbi9yZmM2MTQ1LzR0bzYuYzoxOgovdXNy
L3NyYy9saW51eC1oZWFkZXJzLTQuNC4wLTE1MC1nZW5lcmljL2luY2x1ZGUvbGludXgvcmFuZG9t
Lmg6OTc6MTE6IGZhdGFsIGVycm9yOiBhc20vYXJjaHJhbmRvbS5oOiBObyBzdWNoIGZpbGUgb3Ig
ZGlyZWN0b3J5CiAjIGluY2x1ZGUgPGFzbS9hcmNocmFuZG9tLmg+CiAgICAgICAgICAgXn5+fn5+
fn5+fn5+fn5+fn5+CmNvbXBpbGF0aW9uIHRlcm1pbmF0ZWQuCi91c3Ivc3JjL2xpbnV4LWhlYWRl
cnMtNC40LjAtMTUwLWdlbmVyaWMvc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyODU6IHJlY2lwZSBm
b3IgdGFyZ2V0ICcvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEt
bGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL3NpaXQvLi4vY29tbW9uL3Jm
YzYxNDUvNHRvNi5vJyBmYWlsZWQKbWFrZVs1XTogKioqIFsvaG9tZS9ncmFqL3Bva3kvYnVpbGQv
dG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9z
cmMvbW9kL3NpaXQvLi4vY29tbW9uL3JmYzYxNDUvNHRvNi5vXSBFcnJvciAxCi91c3Ivc3JjL2xp
bnV4LWhlYWRlcnMtNC40LjAtMTUwLWdlbmVyaWMvTWFrZWZpbGU6MTQ1NDogcmVjaXBlIGZvciB0
YXJnZXQgJ19tb2R1bGVfL2hvbWUvZ3Jhai9wb2t5L2J1aWxkL3RtcC93b3JrL3FlbXVhcm0tZW5p
Z21hLWxpbnV4LWdudWVhYmkvam9vbC80LjAuMS1yMC9naXQvc3JjL21vZC9zaWl0JyBmYWlsZWQK
bWFrZVs0XTogKioqIFtfbW9kdWxlXy9ob21lL2dyYWovcG9reS9idWlsZC90bXAvd29yay9xZW11
YXJtLWVuaWdtYS1saW51eC1nbnVlYWJpL2pvb2wvNC4wLjEtcjAvZ2l0L3NyYy9tb2Qvc2lpdF0g
RXJyb3IgMgptYWtlWzRdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvZ3Jhai9wb2t5L2J1aWxk
L3RtcC93b3JrLXNoYXJlZC9xZW11YXJtL2tlcm5lbC1idWlsZC1hcnRpZmFjdHMnCk1ha2VmaWxl
OjE1MjogcmVjaXBlIGZvciB0YXJnZXQgJ3N1Yi1tYWtlJyBmYWlsZWQKbWFrZVszXTogKioqIFtz
dWItbWFrZV0gRXJyb3IgMgptYWtlWzNdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL3Vzci9zcmMvbGlu
dXgtaGVhZGVycy00LjQuMC0xNTAtZ2VuZXJpYycKTWFrZWZpbGU6NTogcmVjaXBlIGZvciB0YXJn
ZXQgJ2FsbCcgZmFpbGVkCm1ha2VbMl06ICoqKiBbYWxsXSBFcnJvciAyCm1ha2VbMl06IExlYXZp
bmcgZGlyZWN0b3J5ICcvaG9tZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmln
bWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9zcmMvbW9kL3NpaXQnCk1ha2VmaWxl
Ojg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdzaWl0JyBmYWlsZWQKbWFrZVsxXTogKioqIFtzaWl0XSBF
cnJvciAyCm1ha2VbMV06IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9tZS9ncmFqL3Bva3kvYnVpbGQv
dG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9qb29sLzQuMC4xLXIwL2dpdC9z
cmMvbW9kJwpNYWtlZmlsZTozNDM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdhbGwtcmVjdXJzaXZlJyBm
YWlsZWQKbWFrZTogKioqIFthbGwtcmVjdXJzaXZlXSBFcnJvciAxCkVSUk9SOiBvZV9ydW5tYWtl
IGZhaWxlZApXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9tIGEgc2hlbGwgY29tbWFuZC4KRVJST1I6
IEZ1bmN0aW9uIGZhaWxlZDogZG9fY29tcGlsZSAobG9nIGZpbGUgaXMgbG9jYXRlZCBhdCAvaG9t
ZS9ncmFqL3Bva3kvYnVpbGQvdG1wL3dvcmsvcWVtdWFybS1lbmlnbWEtbGludXgtZ251ZWFiaS9q
b29sLzQuMC4xLXIwL3RlbXAvbG9nLmRvX2NvbXBpbGUuNjU3NTkpCg==

--0000000000009c49a7058aaa7591--
