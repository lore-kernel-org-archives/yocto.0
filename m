Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBC70E00F67; Wed, 30 Sep 2015 05:09:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF20CE00EE8
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 05:09:21 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so192036470wic.1
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 05:09:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=nv2Ca+oUidhXTNMFh/RlTCJ0+pyeoAxFm3JI22A/KMU=;
	b=Ta7ecPOvmCeR8Oi9nRL7z+OeWnYCy/1R35IUYbQsP9r3AOXgYakZeNAZ694mZGd/iM
	ZXAM1Ug163AC8rbgO2btk4R6LDChDsg63XfONeb0Q7cCMe1IedhIO99xnmrYXBGstZUY
	4SKi3qdUjDtbjhi3lBmzNCA6YnVntZPhp1CTQX3Fg5LR5Tn1c6h5UihMTeLX4AzLJR6Y
	a9vzLK8cA8b6SA0xVlUwn/7XXG41srenN38tKDUUdiSrfk2XumKOcWkcgiruwyP3HZre
	p+gVHlFtYvoc0SNsrWDnipGrnD1PfdZ7YLB4EooN7d91QE8qJQB80eKB/D1GMIpkdu97
	VaUQ==
X-Gm-Message-State: ALoCoQmLdupPeCgPcV6fz+PT7aYTbVux3UlTXqRBnnCVRdAGTXLOrd6XPxYPgT3lWr22JbySFd8d
X-Received: by 10.194.7.106 with SMTP id i10mr3881755wja.86.1443614960619;
	Wed, 30 Sep 2015 05:09:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.27.77.212 with HTTP; Wed, 30 Sep 2015 05:08:51 -0700 (PDT)
In-Reply-To: <1443576480.45410.YahooMailBasic@web162601.mail.bf1.yahoo.com>
References: <1443576480.45410.YahooMailBasic@web162601.mail.bf1.yahoo.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 30 Sep 2015 15:08:51 +0300
Message-ID: <CAHiDW_Hs_nUQrPzAbK-8rGgrFY5_MGbc6cgtSQeFKrtj=O0c-Q@mail.gmail.com>
To: Simon Castillo <smcas_m@yahoo.com.mx>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to create and install a library in yocto -- Hello Library
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
X-List-Received-Date: Wed, 30 Sep 2015 12:09:23 -0000
Content-Type: multipart/alternative; boundary=047d7b5d27ceebd3c60520f5cc71

--047d7b5d27ceebd3c60520f5cc71
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 30 September 2015 at 04:28, Simon Castillo <smcas_m@yahoo.com.mx> wrote:

> Hello to all,
>
> I have searching for a way to include a library-only in yocto.  I found
> couple links with suggestions but I was unsuccessful in the to package it
> in the final image.  Reading the yocto documentation, I see a paragraph
> mentioning about static libraries but there is no examples.
>
>  I will try to be precise with the hopes to find help to tackle this issu=
e.
>
> NOTE:   Couple steps like creating a LICENSE file, crate the layer and
> update the local.conf file are omitted
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> The problem:
> - Creating a library that it is desired to be part of the final image (fo=
r
> example core-image-base, core-image-sato). No application, only a library
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> Test scenario:
>
> Let's say that we desire to create a simple library called simple lib.
>
> The source code is as follows (taken from this link [
> http://www.adp-gmbh.ch/cpp/gcc/create_lib.html], copied here just for
> convenience)
>
> calc_mean.c
> //#include <stdio.h>
>
> double mean(double a, double b) {
>   return (a+b) / 2;
> }
>
> calc_mean.h
> double mean(double, double);
>
> Now we want to create a recipe that can compile, create a library and can
> be included in the final image (let's assume core-image-base)
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> RECIPE
> Recipe name =3D> simplelib_0.1.0.bb
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
> DESCRIPTION =3D "Simple Library on yocto"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dc0b0999e102092552f1dfe93fb9b00=
68"
>
> PR =3D "r0"
> SRC_URI =3D "file://simplelib.zip"
>
> S =3D "${WORKDIR}/simplelib/"
>
> do_compile(){
>         ${CC} -c calc_mean.c -o calc_mean.o
>         ${AR} rcs libmean.a calc_mean.o
> }
>
> do_install{
>         install -d ${D}${libdir}
>         install -m 0644 libmean.a ${D}${libdir}
> }
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Test results for RECIPE:
>
> $ bitbake simplelib
>
> RUNS without any problem.  The files generated are shown below
>
> =E2=94=9C=E2=94=80=E2=94=80 configure.sstate
> =E2=94=9C=E2=94=80=E2=94=80 deploy-ipks
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 cortexa8hf-vfp-neon
> =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 simplelib-dbg_0.1.0-r0_cortex=
a8hf-vfp-neon.ipk
> =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 simplelib-dev_0.1.0-r0_cortex=
a8hf-vfp-neon.ipk
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 simplelib-staticdev_0.1.0-r0_=
cortexa8hf-vfp-neon.ipk
> =E2=94=9C=E2=94=80=E2=94=80 image
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 usr
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 lib
> =E2=94=82           =E2=94=94=E2=94=80=E2=94=80 libmean.a
> =E2=94=9C=E2=94=80=E2=94=80 license-destdir
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 simplelib
> =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 generic_GPLv2
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 LICENSE
> =E2=94=9C=E2=94=80=E2=94=80 package
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 usr
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 lib
> =E2=94=82           =E2=94=94=E2=94=80=E2=94=80 libmean.a
> =E2=94=9C=E2=94=80=E2=94=80 packages-split
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-dbg
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-dev
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-doc
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-locale
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 simplelib-staticdev
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 usr
> =E2=94=82           =E2=94=94=E2=94=80=E2=94=80 lib
> =E2=94=82               =E2=94=94=E2=94=80=E2=94=80 libmean.a
>
=E2=94=9C=E2=94=80=E2=94=80 pkgdata
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 runtime
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-dbg
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-dbg.package=
d
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-dev
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-dev.package=
d
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-doc
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-locale
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-staticdev
> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 simplelib-staticdev.p=
ackaged
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 runtime-reverse
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-dbg -> ../r=
untime/simplelib-dbg
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 simplelib-dev -> ../r=
untime/simplelib-dev
> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 simplelib-staticdev -=
> ../runtime/simplelib-staticdev
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 runtime-rprovides
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 shlibs2
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 simplelib
> =E2=94=9C=E2=94=80=E2=94=80 pseudo
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 files.db
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 logs.db
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 pseudo.lock
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 pseudo.log
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 pseudo.pid
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 pseudo.socket
> =E2=94=9C=E2=94=80=E2=94=80 simplelib
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 calc_mean.c
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 calc_mean.h
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 calc_mean.o
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 libmean.a
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 LICENSE
> =E2=94=9C=E2=94=80=E2=94=80 sysroot-destdir
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 sysroot-providers
> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 simplelib
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 usr
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 lib
> =E2=94=82           =E2=94=94=E2=94=80=E2=94=80 libmean.a
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Test result to include library in the image
>
> $ bitbake core-image-base
>
> FAILS,
>
>  * opkg_install_cmd: Cannot install package simplelib.
>
> ERROR: Function failed: do_rootfs
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> TRY ONE,
>
> Change the recipe and add RDEPENDS_${PN}-dev =3D ""  as suggested by
> https://lists.yoctoproject.org/pipermail/yocto/2014-September/021676.html
>
> FAILS, same error
>  * opkg_install_cmd: Cannot install package simplelib.
>

This really should help: your problem is probably that the actual simplelib
package is not created (because there are no files to put into it), but the
-dev package still RDEPENDS on it by default. The log file might give you
more details though.  "grep RDEPENDS pkgdata/runtime/*" in work directory
should show what the RDEPENDS are.

How are you adding the library to your image? You should be adding the
package "simplelib-staticdev" to it (assuming you really only want a static
.a).



> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> TRY TWO
>
> Modify recipe adding below lines (based on
> http://stackoverflow.com/questions/28792597/how-to-add-a-new-library-usin=
g-yocto
> )
>
> PACKAGES =3D "${PN} ${PN}-dev ${PN}-dbg ${PN}-staticdev"
>
> FILES_${PN} =3D " \
>         ${libdir}/simplelib/ \
> "

FAILS, same error
>  * opkg_install_cmd: Cannot install package simplelib.
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>

This SO question was fixing a slightly different problem: adding any files
to FILES_${PN} would solve your problem as well (because the ${PN} package
would then exist) but the files you refer to do not exist so nothing is
added...

I am sure that it is something simple and common that many have done in the
> past but unfortunately I can not find an example on how to do it.  Hope
> somebody could provide a hint on how to fix this problem.
>


Hope that helps,
  Jussi

--047d7b5d27ceebd3c60520f5cc71
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 30 September 2015 at 04:28, Simon Castillo <span dir=3D"ltr">&lt;<a =
href=3D"mailto:smcas_m@yahoo.com.mx" target=3D"_blank">smcas_m@yahoo.com.mx=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex">Hello to all,<br>
<br>
I have searching for a way to include a library-only in yocto.=C2=A0 I foun=
d couple links with suggestions but I was unsuccessful in the to package it=
 in the final image.=C2=A0 Reading the yocto documentation, I see a paragra=
ph mentioning about static libraries but there is no examples.<br>
<br>
=C2=A0I will try to be precise with the hopes to find help to tackle this i=
ssue.<br>
<br>
NOTE:=C2=A0 =C2=A0Couple steps like creating a LICENSE file, crate the laye=
r and update the local.conf file are omitted<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>
The problem:<br>
- Creating a library that it is desired to be part of the final image (for =
example core-image-base, core-image-sato). No application, only a library<b=
r>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>
Test scenario:<br>
<br>
Let&#39;s say that we desire to create a simple library called simple lib.<=
br>
<br>
The source code is as follows (taken from this link [<a href=3D"http://www.=
adp-gmbh.ch/cpp/gcc/create_lib.html" rel=3D"noreferrer" target=3D"_blank">h=
ttp://www.adp-gmbh.ch/cpp/gcc/create_lib.html</a>], copied here just for co=
nvenience)<br>
<br>
calc_mean.c<br>
//#include &lt;stdio.h&gt;<br>
<br>
double mean(double a, double b) {<br>
=C2=A0 return (a+b) / 2;<br>
}<br>
<br>
calc_mean.h<br>
double mean(double, double);<br>
<br>
Now we want to create a recipe that can compile, create a library and can b=
e included in the final image (let&#39;s assume core-image-base)<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>
RECIPE<br>
Recipe name =3D&gt; <a href=3D"http://simplelib_0.1.0.bb" rel=3D"noreferrer=
" target=3D"_blank">simplelib_0.1.0.bb</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>
<br>
DESCRIPTION =3D &quot;Simple Library on yocto&quot;<br>
LICENSE =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dc0b0999e102092552f1dfe93fb9=
b0068&quot;<br>
<br>
PR =3D &quot;r0&quot;<br>
SRC_URI =3D &quot;file://simplelib.zip&quot;<br>
<br>
S =3D &quot;${WORKDIR}/simplelib/&quot;<br>
<br>
do_compile(){<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${CC} -c calc_mean.c -o calc_mean.o<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${AR} rcs libmean.a calc_mean.o<br>
}<br>
<br>
do_install{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${libdir}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 libmean.a ${D}${libdir}<br>
}<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Test results for RECIPE:<br>
<br>
$ bitbake simplelib<br>
<br>
RUNS without any problem.=C2=A0 The files generated are shown below<br>
<br>
=E2=94=9C=E2=94=80=E2=94=80 configure.sstate<br>
=E2=94=9C=E2=94=80=E2=94=80 deploy-ipks<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 cortexa8hf-vfp-neon<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 simple=
lib-dbg_0.1.0-r0_cortexa8hf-vfp-neon.ipk<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 simple=
lib-dev_0.1.0-r0_cortexa8hf-vfp-neon.ipk<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 simple=
lib-staticdev_0.1.0-r0_cortexa8hf-vfp-neon.ipk<br>
=E2=94=9C=E2=94=80=E2=94=80 image<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 lib<br=
>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=
=E2=94=80 libmean.a<br>
=E2=94=9C=E2=94=80=E2=94=80 license-destdir<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 simplelib<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 generi=
c_GPLv2<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 LICENS=
E<br>
=E2=94=9C=E2=94=80=E2=94=80 package<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 lib<br=
>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=
=E2=94=80 libmean.a<br>
=E2=94=9C=E2=94=80=E2=94=80 packages-split<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-dbg<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-dev<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-doc<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-locale<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 simplelib-staticdev<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 usr<br=
>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=
=E2=94=80 lib<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=
=94=E2=94=80=E2=94=80 libmean.a<br>
</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-=
style:solid;padding-left:1ex">=E2=94=9C=E2=94=80=E2=94=80 pkgdata<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 runtime<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dbg<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dbg.packaged<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dev<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dev.packaged<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-doc<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-locale<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-staticdev<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 sim=
plelib-staticdev.packaged<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 runtime-reverse<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dbg -&gt; ../runtime/simplelib-dbg<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dev -&gt; ../runtime/simplelib-dev<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 sim=
plelib-staticdev -&gt; ../runtime/simplelib-staticdev<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 runtime-rprovides<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 shlibs2<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 simplelib<br>
=E2=94=9C=E2=94=80=E2=94=80 pseudo<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 files.db<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 logs.db<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 pseudo.lock<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 pseudo.log<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 pseudo.pid<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 pseudo.socket<br>
=E2=94=9C=E2=94=80=E2=94=80 simplelib<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 calc_mean.c<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 calc_mean.h<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 calc_mean.o<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 libmean.a<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 LICENSE<br>
=E2=94=9C=E2=94=80=E2=94=80 sysroot-destdir<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sysroot-providers<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 sim=
plelib<br>
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr<br>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 lib<br=
>
=E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=
=E2=94=80 libmean.a<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Test result to include library in the image<br>
<br>
$ bitbake core-image-base<br>
<br>
FAILS,<br>
<br>
=C2=A0* opkg_install_cmd: Cannot install package simplelib.<br>
<br>
ERROR: Function failed: do_rootfs<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
TRY ONE,<br>
<br>
Change the recipe and add RDEPENDS_${PN}-dev =3D &quot;&quot;=C2=A0 as sugg=
ested by <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-Sep=
tember/021676.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/pipermail/yocto/2014-September/021676.html</a><br>
<br>
FAILS, same error<br>
=C2=A0* opkg_install_cmd: Cannot install package simplelib.<br>
</blockquote><div><br></div><div>This really should help: your problem is p=
robably that the actual simplelib package is not created (because there are=
 no files to put into it), but the -dev package still RDEPENDS on it by def=
ault. The log file might give you more details though. =C2=A0&quot;grep RDE=
PENDS pkgdata/runtime/*&quot; in work directory should show what the RDEPEN=
DS are.</div><div><br></div><div>How are you adding the library to your ima=
ge? You should be adding the package &quot;simplelib-staticdev&quot; to it =
(assuming you really only want a static .a).</div><div><br></div><div>=C2=
=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-=
style:solid;padding-left:1ex">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
TRY TWO<br>
<br>
Modify recipe adding below lines (based on <a href=3D"http://stackoverflow.=
com/questions/28792597/how-to-add-a-new-library-using-yocto" rel=3D"norefer=
rer" target=3D"_blank">http://stackoverflow.com/questions/28792597/how-to-a=
dd-a-new-library-using-yocto</a>)<br>
<br>
PACKAGES =3D &quot;${PN} ${PN}-dev ${PN}-dbg ${PN}-staticdev&quot;<br>
<br>
FILES_${PN} =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdir}/simplelib/ \<br>
&quot;=C2=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);=
border-left-style:solid;padding-left:1ex">
FAILS, same error<br>
=C2=A0* opkg_install_cmd: Cannot install package simplelib.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></blockquote><div><br></di=
v><div><div>This SO question was fixing a slightly different problem: addin=
g any files to=C2=A0FILES_${PN} would solve your problem as well (because t=
he ${PN} package would then exist) but the files you refer to do not exist =
so nothing is added...=C2=A0</div><div><br></div></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;borde=
r-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">I a=
m sure that it is something simple and common that many have done in the pa=
st but unfortunately I can not find an example on how to do it.=C2=A0 Hope =
somebody could provide a hint on how to fix this problem.<br></blockquote><=
div><br></div><div><br></div><div>Hope that helps,</div><div>=C2=A0 Jussi=
=C2=A0</div></div></div></div>

--047d7b5d27ceebd3c60520f5cc71--
