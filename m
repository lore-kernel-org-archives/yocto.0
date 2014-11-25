Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9F0BE00927; Tue, 25 Nov 2014 03:38:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,URIBL_BLACK autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.236 listed in list.dnswl.org]
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail4.adam.net.au (webmail4.adam.net.au [202.136.110.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2448E008FC
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 03:38:47 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sAPBcfNx016722;
	Tue, 25 Nov 2014 22:08:41 +1030
Message-Id: <c68edcb4bb64d1815bcf347b3c8042af75864a58@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>,
	peterengcomau001@adam.com.au
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <2765347.88ba3R8xYF@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 25 Nov 2014 22:08:41 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: New error in 1.7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Nov 2014 11:38:52 -0000
Content-Type: multipart/alternative;
	boundary="=_a51fa3e4ac02ce0e16530c65d5d2c4ce"

--=_a51fa3e4ac02ce0e16530c65d5d2c4ce
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0A=0A=09=C2=A0=0A the change to oprofile.inc and the associated patch a=
ppear to be=0Aalready present in the meta data.=0AAny other ideas what c=
ould be causing the problem?=0ALachlan=0A=0A----- Original Message -----=
=0A From: "Paul Eggleton" .eggleton@linux.intel.com> =0ATo:=0ACc:=0ASent=
:Tue, 25 Nov 2014 10:09:47 +0000=0ASubject:Re: [yocto] New error in 1.7=
=0A=0A Hi there,=0A=0A On Tuesday 25 November 2014 19:27:13 peterengcoma=
u001@adam.com.au=0Awrote:=0A > thank you. i have fixed the curl problem=
 but a new problem has=0Aoccured=0A > with the build. This problem did n=
ot appear in v1.6.1. The problem=0Ais:=0A > =0A > lachlan@lachlan-SVP132=
15PXB:~/poky/build-atmel$ bitbake=0A > atmel-qt5-demo-image -c populate_=
sdk=0A > =0A > Loading cache: 100%=0A > =0A >=0A|#######################=
####################################################=0A >=0A|###########=
################################################################=0A > |#=
####|=0A > ETA: 00:00:00=0A > =0A > Loaded 2108 entries from dependency=
 cache.=0A > =0A > NOTE: Resolving any missing task queue dependencies=
=0A > =0A > Build Configuration:=0A > =0A > BB_VERSION =3D "1.24.0"=0A >=
 =0A > BUILD_SYS =3D "x86_64-linux"=0A > =0A > NATIVELSBSTRING =3D "Ubun=
tu-14.04"=0A > =0A > TARGET_SYS =3D "arm-poky-linux-gnueabi"=0A > =0A >=
 MACHINE =3D "sama5d3xek"=0A > =0A > DISTRO =3D "poky"=0A > =0A > DISTRO=
_VERSION =3D "1.7"=0A > =0A > TUNE_FEATURES =3D "arm armv7a vfp thumb ca=
llconvention-hard=0Acortexa5"=0A > =0A > =0A > TARGET_FPU =3D "vfp"=0A >=
 =0A > meta-atmel =3D "my_branch:711809b0d91f816b10e70508986b3f43098000b=
a"=0A > =0A > meta-qt5 =3D "my_branch:0732e184acef5e0200f46d7f95702774e5=
de1904"=0A > =0A > meta=0A > =0A > meta-yocto=0A > =0A > meta-yocto-bsp=
 =3D "dizzy:db7f4f31c915a59c502cac4be905d23df5246b3d"=0A > =0A > meta-oe=
=0A > =0A > meta-python=0A > =0A > meta-networking=0A > =0A > meta-ruby=
 =3D "my_branch:9efaed99125b1c4324663d9a1b2d3319c74e7278"=0A > =0A > NOT=
E: Preparing runqueue=0A > =0A > NOTE: Executing SetScene Tasks=0A > =0A=
 > NOTE: Executing RunQueue Tasks=0A > =0A > ERROR: Function failed: do_=
configure (log file is located at=0A >=0A/home/lachlan/poky/build-atmel/=
tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/=0A > gstreamer1.0-plugins-=
hantro/1.0-r1/temp/log.do_configure.5736)=0A > =0A > =0A > ERROR: Logfil=
e of failure stored in:=0A >=0A/home/lachlan/poky/build-atmel/tmp/work/c=
ortexa5t2hf-vfp-poky-linux-gnueabi/=0A > gstreamer1.0-plugins-hantro/1.0=
-r1/temp/log.do_configure.5736=0A > Log data follows:=0A > | DEBUG: Exec=
uting python function sysroot_cleansstate=0A > | =0A > | DEBUG: Python f=
unction sysroot_cleansstate finished=0A > | =0A > | DEBUG: SITE files ['=
endian-little', 'bit-32', 'arm-common',=0A > =0A > 'common-linux', 'comm=
on-glibc', 'arm-linux', 'arm-linux-gnueabi',=0A > 'common']=0A > =0A > |=
 DEBUG: Executing shell function autotools_preconfigure=0A > | =0A > | D=
EBUG: Shell function autotools_preconfigure finished=0A > | =0A > | DEBU=
G: Executing python function autotools_copy_aclocals=0A > | =0A > | DEBU=
G: Python function autotools_copy_aclocals finished=0A > | =0A > | DEBUG=
: Executing shell function do_configure=0A > | =0A > | automake (GNU aut=
omake) 1.14.1=0A > | =0A > | Copyright (C) 2013 Free Software Foundation=
, Inc.=0A > | =0A > | License GPLv2+: GNU GPL version 2 or later=0A > |=
 =0A > | This is free software: you are free to change and redistribute=
=0Ait.=0A > | =0A > | =0A > | There is NO WARRANTY, to the extent permit=
ted by law.=0A > | =0A > | =0A > | =0A > | Written by Tom Tromey=0A > |=
 =0A > | and Alexandre Duret-Lutz .=0A > | =0A > | AUTOV is 1.14=0A > |=
 =0A > | NOTE: Executing ACLOCAL=3D"aclocal=0A > =0A >=0A--system-acdir=
=3D/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky=0A >=0A=
-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/build/aclocal-copy/=0A=
 >=0A--automake-acdir=3D/home/lachlan/poky/build-atmel/tmp/sysroots/x86_=
64-linux/u=0A > sr/share/aclocal-1.14" autoreconf --verbose --install --=
force=0A > --exclude=3Dautopoint -I=0A >=0A/home/lachlan/poky/build-atme=
l/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/=0A > gstreamer1.0-plugin=
s-hantro/1.0-r1/gst-hantro-g1-1.0/m4/=0A > | autoreconf: Entering direct=
ory `'=0A > | =0A > | autoreconf: configure.ac: not using Gettext=0A > |=
 =0A > | autoreconf: running: aclocal=0A > =0A >=0A--system-acdir=3D/hom=
e/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky=0A >=0A-linux-=
gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/build/aclocal-copy/=0A >=0A--=
automake-acdir=3D/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linu=
x/u=0A > sr/share/aclocal-1.14 -I=0A >=0A/home/lachlan/poky/build-atmel/=
tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/=0A > gstreamer1.0-plugins-=
hantro/1.0-r1/gst-hantro-g1-1.0/m4/ -I=0A >=0A/home/lachlan/poky/build-a=
tmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/=0A > gstreamer1.0-plu=
gins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/ --force=0A-I m4 -I=0A > common/=
m4=0A > =0A > | autoreconf: configure.ac: tracing=0A > | =0A > | autorec=
onf: running: libtoolize --copy --force=0A > | =0A > | libtoolize: putti=
ng auxiliary files in `.'.=0A > | =0A > | libtoolize: copying file `./lt=
main.sh'=0A > | =0A > | libtoolize: putting macros in `m4'.=0A > | =0A >=
 | libtoolize: copying file `m4/libtool.m4'=0A > | =0A > | libtoolize: c=
opying file `m4/ltoptions.m4'=0A > | =0A > | libtoolize: copying file `m=
4/ltsugar.m4'=0A > | =0A > | libtoolize: copying file `m4/ltversion.m4'=
=0A > | =0A > | libtoolize: copying file `m4/lt~obsolete.m4'=0A > | =0A=
 > | libtoolize: Remember to add `LT_INIT' to configure.ac.=0A > | =0A >=
 | libtoolize: Consider adding `AC_CONFIG_MACRO_DIR([m4])' to=0A > =0A >=
 configure.ac and=0A > =0A > | libtoolize: rerunning libtoolize, to keep=
 the correct libtool=0A > =0A > macros in-tree=0A > =0A > | autoreconf:=
 running:=0A >=0A/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linu=
x/usr/bin/autoconf=0A >=0A--include=3D/home/lachlan/poky/build-atmel/tmp=
/work/cortexa5t2hf-vfp-poky-linu=0A > x-gnueabi/gstreamer1.0-plugins-han=
tro/1.0-r1/gst-hantro-g1-1.0/m4/=0A--force=0A > =0A > | autoreconf: runn=
ing:=0A >=0A/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr=
/bin/autoheader=0A >=0A--include=3D/home/lachlan/poky/build-atmel/tmp/wo=
rk/cortexa5t2hf-vfp-poky-linu=0A > x-gnueabi/gstreamer1.0-plugins-hantro=
/1.0-r1/gst-hantro-g1-1.0/m4/=0A--force=0A > =0A > | autoreconf: running=
: automake --add-missing --copy=0A--force-missing=0A > | =0A > | =0A > |=
 Makefile.am: error: required file './AUTHORS' not found=0A=0A This is l=
ikely a result of the --foreign option being removed - see:=0A=0A=0Ahttp=
://www.yoctoproject.org/docs/1.7/ref-manual/ref-manual.html#migration-1.=
7-autotools-class-changes=0A=0A Cheers,=0A Paul=0A=0A -- =0A=0A Paul Egg=
leton=0A Intel Open Source Technology Centre=0A -- =0A _________________=
______________________________=0A yocto mailing list=0A yocto@yoctoproje=
ct.org=0A https://lists.yoctoproject.org/listinfo/yocto=0A@yoctoproject.=
org>@adam.com.au>---- Message sent via Adam Internet=0AWebMail - http://=
www.adam.com.au/

--=_a51fa3e4ac02ce0e16530c65d5d2c4ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><p>=C2=A0<br />=0A=09=09=09=09the change to oprofile.inc and=
 the associated patch appear to be already present in the meta data.<br=
 />Any other ideas what could be causing the problem?<br />Lachlan<br />=
</p>=0A<blockquote>=0A<br />----- Original Message -----<br /><div style=
=3D"width:100%;background:rgb(228,228,228);">=0A<div style=3D"font-weigh=
t:bold;">From:</div> "Paul Eggleton" .eggleton@linux.intel.com&gt;</div>=
=0A<br /><div style=3D"font-weight:bold;">To:</div><br /><div style=3D"f=
ont-weight:bold;">Cc:</div><br /><div style=3D"font-weight:bold;">Sent:<=
/div>Tue, 25 Nov 2014 10:09:47 +0000<br /><div style=3D"font-weight:bold=
;">Subject:</div>Re: [yocto] New error in 1.7<br /><br /><br />=0AHi the=
re,<br /><br />=0AOn Tuesday 25 November 2014 19:27:13 peterengcomau001@=
adam.com.au wrote:<br />=0A&gt; thank you. i have fixed the curl problem=
 but a new problem has occured<br />=0A&gt; with the build. This problem=
 did not appear in v1.6.1. The problem is:<br />=0A&gt; <br />=0A&gt;=
 =09lachlan@lachlan-SVP13215PXB:~/poky/build-atmel$ bitbake<br />=0A&gt;=
 atmel-qt5-demo-image -c populate_sdk<br />=0A&gt; <br />=0A&gt; =09Load=
ing cache: 100%<br />=0A&gt; <br />=0A&gt; |############################=
###############################################<br />=0A&gt; |##########=
#################################################################<br />=
=0A&gt; |#####|<br />=0A&gt; ETA: 00:00:00<br />=0A&gt; <br />=0A&gt;=
 =09Loaded 2108 entries from dependency cache.<br />=0A&gt; <br />=0A&gt=
; =09NOTE: Resolving any missing task queue dependencies<br />=0A&gt; <b=
r />=0A&gt; =09Build Configuration:<br />=0A&gt; <br />=0A&gt; =09BB_VER=
SION =3D "1.24.0"<br />=0A&gt; <br />=0A&gt; =09BUILD_SYS =3D "x86_64-li=
nux"<br />=0A&gt; <br />=0A&gt; =09NATIVELSBSTRING =3D "Ubuntu-14.04"<br=
 />=0A&gt; <br />=0A&gt; =09TARGET_SYS =3D "arm-poky-linux-gnueabi"<br /=
>=0A&gt; <br />=0A&gt; =09MACHINE =3D "sama5d3xek"<br />=0A&gt; <br />=
=0A&gt; =09DISTRO =3D "poky"<br />=0A&gt; <br />=0A&gt; =09DISTRO_VERSIO=
N =3D "1.7"<br />=0A&gt; <br />=0A&gt; =09TUNE_FEATURES =3D "arm armv7a=
 vfp thumb callconvention-hard cortexa5"<br />=0A&gt; <br />=0A&gt; <br=
 />=0A&gt; =09TARGET_FPU =3D "vfp"<br />=0A&gt; <br />=0A&gt; =09meta-at=
mel =3D "my_branch:711809b0d91f816b10e70508986b3f43098000ba"<br />=0A&gt=
; <br />=0A&gt; =09meta-qt5 =3D "my_branch:0732e184acef5e0200f46d7f95702=
774e5de1904"<br />=0A&gt; <br />=0A&gt; =09meta<br />=0A&gt; <br />=0A&g=
t; =09meta-yocto<br />=0A&gt; <br />=0A&gt; =09meta-yocto-bsp =3D "dizzy=
:db7f4f31c915a59c502cac4be905d23df5246b3d"<br />=0A&gt; <br />=0A&gt;=
 =09meta-oe<br />=0A&gt; <br />=0A&gt; =09meta-python<br />=0A&gt; <br /=
>=0A&gt; =09meta-networking<br />=0A&gt; <br />=0A&gt; =09meta-ruby =3D=
 "my_branch:9efaed99125b1c4324663d9a1b2d3319c74e7278"<br />=0A&gt; <br /=
>=0A&gt; =09NOTE: Preparing runqueue<br />=0A&gt; <br />=0A&gt; =09NOTE:=
 Executing SetScene Tasks<br />=0A&gt; <br />=0A&gt; =09NOTE: Executing=
 RunQueue Tasks<br />=0A&gt; <br />=0A&gt; =09ERROR: Function failed: do=
_configure (log file is located at<br />=0A&gt; /home/lachlan/poky/build=
-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/<br />=0A&gt; gstrea=
mer1.0-plugins-hantro/1.0-r1/temp/log.do_configure.5736)<br />=0A&gt; <b=
r />=0A&gt; <br />=0A&gt; =09ERROR: Logfile of failure stored in:<br />=
=0A&gt; /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-li=
nux-gnueabi/<br />=0A&gt; gstreamer1.0-plugins-hantro/1.0-r1/temp/log.do=
_configure.5736<br />=0A&gt; =09Log data follows:<br />=0A&gt; =09| DEBU=
G: Executing python function sysroot_cleansstate<br />=0A&gt; =09| <br /=
>=0A&gt; =09| DEBUG: Python function sysroot_cleansstate finished<br />=
=0A&gt; =09| <br />=0A&gt; =09| DEBUG: SITE files ['endian-little', 'bit=
-32', 'arm-common',<br />=0A&gt; <br />=0A&gt; 'common-linux', 'common-g=
libc', 'arm-linux', 'arm-linux-gnueabi',<br />=0A&gt; 'common']<br />=0A=
&gt; <br />=0A&gt; =09| DEBUG: Executing shell function autotools_precon=
figure<br />=0A&gt; =09| <br />=0A&gt; =09| DEBUG: Shell function autoto=
ols_preconfigure finished<br />=0A&gt; =09| <br />=0A&gt; =09| DEBUG: Ex=
ecuting python function autotools_copy_aclocals<br />=0A&gt; =09| <br />=
=0A&gt; =09| DEBUG: Python function autotools_copy_aclocals finished<br=
 />=0A&gt; =09| <br />=0A&gt; =09| DEBUG: Executing shell function do_co=
nfigure<br />=0A&gt; =09| <br />=0A&gt; =09| automake (GNU automake) 1.1=
4.1<br />=0A&gt; =09| <br />=0A&gt; =09| Copyright (C) 2013 Free Softwar=
e Foundation, Inc.<br />=0A&gt; =09| <br />=0A&gt; =09| License GPLv2+:=
 GNU GPL version 2 or later<br />=0A&gt; =09| <br />=0A&gt; =09| This is=
 free software: you are free to change and redistribute it.<br />=0A&gt;=
 =09| <br />=0A&gt; =09| <br />=0A&gt; =09| There is NO WARRANTY, to the=
 extent permitted by law.<br />=0A&gt; =09| <br />=0A&gt; =09| <br />=0A=
&gt; =09| <br />=0A&gt; =09| Written by Tom Tromey<br />=0A&gt; =09| <br=
 />=0A&gt; =09| and Alexandre Duret-Lutz .<br />=0A&gt; =09| <br />=0A&g=
t; =09| AUTOV is 1.14<br />=0A&gt; =09| <br />=0A&gt; =09| NOTE: Executi=
ng ACLOCAL=3D"aclocal<br />=0A&gt; <br />=0A&gt; --system-acdir=3D/home/=
lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky<br />=0A&gt; -li=
nux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/build/aclocal-copy/<br />=
=0A&gt; --automake-acdir=3D/home/lachlan/poky/build-atmel/tmp/sysroots/x=
86_64-linux/u<br />=0A&gt; sr/share/aclocal-1.14" autoreconf --verbose -=
-install --force<br />=0A&gt; --exclude=3Dautopoint -I<br />=0A&gt; /hom=
e/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/=
<br />=0A&gt; gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/<b=
r />=0A&gt; =09| autoreconf: Entering directory `'<br />=0A&gt; =09| <br=
 />=0A&gt; =09| autoreconf: configure.ac: not using Gettext<br />=0A&gt;=
 =09| <br />=0A&gt; =09| autoreconf: running: aclocal<br />=0A&gt; <br /=
>=0A&gt; --system-acdir=3D/home/lachlan/poky/build-atmel/tmp/work/cortex=
a5t2hf-vfp-poky<br />=0A&gt; -linux-gnueabi/gstreamer1.0-plugins-hantro/=
1.0-r1/build/aclocal-copy/<br />=0A&gt; --automake-acdir=3D/home/lachlan=
/poky/build-atmel/tmp/sysroots/x86_64-linux/u<br />=0A&gt; sr/share/aclo=
cal-1.14 -I<br />=0A&gt; /home/lachlan/poky/build-atmel/tmp/work/cortexa=
5t2hf-vfp-poky-linux-gnueabi/<br />=0A&gt; gstreamer1.0-plugins-hantro/1=
0-r1/gst-hantro-g1-1.0/m4/ -I<br />=0A&gt; /home/lachlan/poky/build-atm=
el/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/<br />=0A&gt; gstreamer1=
0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/ --force -I m4 -I<br />=0A=
&gt; common/m4<br />=0A&gt; <br />=0A&gt; =09| autoreconf: configure.ac:=
 tracing<br />=0A&gt; =09| <br />=0A&gt; =09| autoreconf: running: libto=
olize --copy --force<br />=0A&gt; =09| <br />=0A&gt; =09| libtoolize: pu=
tting auxiliary files in `.'.<br />=0A&gt; =09| <br />=0A&gt; =09| libto=
olize: copying file `./ltmain.sh'<br />=0A&gt; =09| <br />=0A&gt; =09| l=
ibtoolize: putting macros in `m4'.<br />=0A&gt; =09| <br />=0A&gt; =09|=
 libtoolize: copying file `m4/libtool.m4'<br />=0A&gt; =09| <br />=0A&gt=
; =09| libtoolize: copying file `m4/ltoptions.m4'<br />=0A&gt; =09| <br=
 />=0A&gt; =09| libtoolize: copying file `m4/ltsugar.m4'<br />=0A&gt;=
 =09| <br />=0A&gt; =09| libtoolize: copying file `m4/ltversion.m4'<br /=
>=0A&gt; =09| <br />=0A&gt; =09| libtoolize: copying file `m4/lt~obsolet=
e.m4'<br />=0A&gt; =09| <br />=0A&gt; =09| libtoolize: Remember to add `=
LT_INIT' to configure.ac.<br />=0A&gt; =09| <br />=0A&gt; =09| libtooliz=
e: Consider adding `AC_CONFIG_MACRO_DIR([m4])' to<br />=0A&gt; <br />=0A=
&gt; configure.ac and<br />=0A&gt; <br />=0A&gt; =09| libtoolize: rerunn=
ing libtoolize, to keep the correct libtool<br />=0A&gt; <br />=0A&gt; m=
acros in-tree<br />=0A&gt; <br />=0A&gt; =09| autoreconf: running:<br />=
=0A&gt; /home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/bin=
/autoconf<br />=0A&gt; --include=3D/home/lachlan/poky/build-atmel/tmp/wo=
rk/cortexa5t2hf-vfp-poky-linu<br />=0A&gt; x-gnueabi/gstreamer1.0-plugin=
s-hantro/1.0-r1/gst-hantro-g1-1.0/m4/ --force<br />=0A&gt; <br />=0A&gt;=
 =09| autoreconf: running:<br />=0A&gt; /home/lachlan/poky/build-atmel/t=
mp/sysroots/x86_64-linux/usr/bin/autoheader<br />=0A&gt; --include=3D/ho=
me/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linu<br />=0A=
&gt; x-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/m4/=
 --force<br />=0A&gt; <br />=0A&gt; =09| autoreconf: running: automake -=
-add-missing --copy --force-missing<br />=0A&gt; =09| <br />=0A&gt; =09|=
 <br />=0A&gt; =09| Makefile.am: error: required file './AUTHORS' not fo=
und<br /><br />=0AThis is likely a result of the --foreign option being=
 removed - see:<br /><br />=0A  http://www.yoctoproject.org/docs/1.7/ref=
-manual/ref-manual.html#migration-1.7-autotools-class-changes<br /><br /=
>=0ACheers,<br />=0APaul<br /><br />=0A-- <br /><br />=0APaul Eggleton<b=
r />=0AIntel Open Source Technology Centre<br />=0A-- <br />=0A_________=
______________________________________<br />=0Ayocto mailing list<br />=
=0Ayocto@yoctoproject.org<br />=0Ahttps://lists.yoctoproject.org/listinf=
o/yocto<br />@yoctoproject.org&gt;@adam.com.au&gt;</blockquote>---- Mess=
age sent via Adam Internet WebMail  - http://www.adam.com.au/</body></ht=
ml>

--=_a51fa3e4ac02ce0e16530c65d5d2c4ce--
