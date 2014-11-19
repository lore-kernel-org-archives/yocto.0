Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C676E007C0; Wed, 19 Nov 2014 14:41:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 871A8E0071C
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 14:41:39 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: =?iso-8859-1?Q?Joseph_Andrew_de_la_Pe=F1a?= <jdelapena@lexmark.com>
Thread-Topic: [yocto] New recipe for toolchain fails install, "ERROR: ld.so:
	object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
Thread-Index: Ac//dyjXh7smuVrBRu2Ap8xoWi/L/QAReyOA//+Q9N2AASZVAIAAHWrzgAd/FICAAL7WNw==
Date: Wed, 19 Nov 2014 22:41:37 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0CDF3F4006@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CDF3F393A@reactor.sldomain.com>
	<546517D3.4030107@gmail.com>
	<86196249137E0843B2E0673D4F731E0CDF3F398B@reactor.sldomain.com>
	<CAJrRHk49orVJh7aHKp4nsULeyVoT4VY425WfcabBqmK5XuXA=w@mail.gmail.com>
	<86196249137E0843B2E0673D4F731E0CDF3F3AA3@reactor.sldomain.com>,
	<CAJrRHk4YCM6pmeZpT__XdOgZifTwq2xus3oNx5vqv50o8zzWmA@mail.gmail.com>
In-Reply-To: <CAJrRHk4YCM6pmeZpT__XdOgZifTwq2xus3oNx5vqv50o8zzWmA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.254.6]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New recipe for toolchain fails install, "ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
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
X-List-Received-Date: Wed, 19 Nov 2014 22:41:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_86196249137E0843B2E0673D4F731E0CDF3F4006reactorsldomain_"

--_000_86196249137E0843B2E0673D4F731E0CDF3F4006reactorsldomain_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Joseph,

Thanks for the clarification.

As far as I understand, I have restructured my recipe as you directed.

However, when I bitbake -c populate_sdk core-image-full-cmdline, the sdk in=
staller script still does not contain the LLVM/clang stuff.

I'm hoping that you can see what I have done wrong.

When I look for build artifacts, here's what I find for clang in the work d=
irectory.

[jimr@krusty work]$ find . -name clang -ls |grep bin/clang
99906923 45428 -rwxr-xr-x   1 jimr     jimr     46517960 Nov 19 12:00 ./spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/sdk/image/usr/bin/clang
94263147 45428 -rwxr-xr-x   2 jimr     jimr     46517960 Nov 19 12:00 ./x86=
_64-nativesdk-pokysdk-linux/nativesdk-llvm/3.5.0-r0/packages-split/nativesd=
k-llvm/usr/bin/clang
94263147 45428 -rwxr-xr-x   2 jimr     jimr     46517960 Nov 19 12:00 ./x86=
_64-nativesdk-pokysdk-linux/nativesdk-llvm/3.5.0-r0/package/usr/bin/clang
88904578 56380 -rwxr-xr-x   1 jimr     jimr     57732373 Nov 19 11:51 ./x86=
_64-nativesdk-pokysdk-linux/nativesdk-llvm/3.5.0-r0/llvm-3.5.0/Release+Asse=
rts/bin/clang
89415572 45432 -rwxr-xr-x   1 jimr     jimr     46517960 Nov 19 12:00 ./x86=
_64-nativesdk-pokysdk-linux/nativesdk-llvm/3.5.0-r0/image/usr/bin/clang

Finding the clang executable in /spectra_ls-poky-linux/core-image-full-cmdl=
ine/1.0-r0/sdk/image/usr/bin/clang would seem to suggest that it should be =
in the SDK, but it is not.

Here are the recipes...

++ meta-spectra-ls-utils/recipes-devtools/llvm/llvm_3.5.0.bb:
#
# This recipe requires package perl-podlators to be installed on the build
# workstation in order to work.
#
# TBD: look for yocto recipe for perl-podlators to be added to REQUIRE
# for this recipe, to remove build machine dependency.
#
SUMMARY =3D "Clang c/c++ compiler with llvm framework"
HOMEPAGE =3D "http://clang.llvm.org"
LICENSE =3D "NCSA"
PR =3D "r0"
LIC_FILES_CHKSUM =3D "file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd781=
4d1d"

SRC_URI =3D "file://llvm-3.5.0.tar.gz \
          "

SRC_URI[md5sum] =3D "e2dd127722ffb305c981d2a02687b4ff"
SRC_URI[sha256sum] =3D "1badb762129feb7ced9484a7969c88cebab9b01b80b83002fc9=
690933cd7d0e0"

#EXTRA_OECONF =3D "--config=3DLinux-yocto "

INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"

INSANE_SKIP_${PN} =3D "staticdev already-stripped"
REQUIRES =3D "virtual/x86_64-pokysdk-linux-gcc-crosssdk"

#everything installed under /usr/ hierarchy.
FILES_${PN} =3D "/usr "
inherit autotools

do_configure () {
        ./configure --enable-optimized --enable-targets=3Dx86,x86_64 --pref=
ix=3D/usr
}

#EXTRA_OECONF=3D"--enable-optimized --enable-targets=3Dx86,x86_64 --prefix=
=3D/usr "


BBCLASSEXTEND=3D"native nativesdk"


++meta-spectra-ls-utils/recipes-devtools/llvm/packagegroup-llvm.bb
LICENSE=3D"NCSA"
RDEPENDS_${PN}=3D "\
  llvm \
  "

++meta-spectra-ls-utils/recipes-devtools/llvm/packagegroup-nativesdk-llvm.b=
b
LICENSE=3D"NCSA"
RDEPENDS_${PN}=3D "\
  llvm \
  "
++meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
#
# Copyright (C) 2007 OpenedHand Ltd
#

SUMMARY =3D "Host packages for the standalone SDK or external toolchain"
PR =3D "r12"
LICENSE =3D "MIT"

inherit packagegroup nativesdk

PACKAGEGROUP_DISABLE_COMPLEMENTARY =3D "1"

RDEPENDS_${PN} =3D "\
    nativesdk-pkgconfig \
    nativesdk-qemu \
    nativesdk-qemu-helper \
    nativesdk-pseudo \
    nativesdk-unfs3 \
    nativesdk-opkg \
    nativesdk-libtool \
    nativesdk-autoconf \
    nativesdk-automake \
    nativesdk-shadow \
    nativesdk-makedevs \
    nativesdk-smartpm \
    nativesdk-llvm \
    nativesdk-postinst-intercept \
    "

RDEPENDS_${PN}_darwin =3D "\
    nativesdk-pkgconfig \
    nativesdk-opkg \
    nativesdk-libtool \
    "

Thank you very much in advance,
-Jim-
________________________________
From: Joseph Andrew de la Pe=F1a [jdelapena@lexmark.com]
Sent: Tuesday, November 18, 2014 8:52 PM
To: Jim Rafert
Cc: nick; yocto@yoctoproject.org
Subject: Re: [yocto] New recipe for toolchain fails install, "ERROR: ld.so:=
 object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."

Good day Jim,

Partly correct. To add more info, native is basically intended for host too=
ls that should be placed into the native/host sysroot. Please don't disrega=
rd that.

The clang compiler is built onto the target sysroot (i586) basically becaus=
e of your recipe.

The beauty of BBCLASSEXTEND is you don't need to name your recipe such as n=
aitvesdk-<name>.bb or <name>-native.bb<http://native.bb> (when using inheri=
t). By default, with no inherits or BBCLASSEXTEND, the recipe's packages fi=
les will be installed into the target sysroot, i586 (which you have experie=
nced).

Here's a quick recipe content for a tool that will be placed in native and =
nativesdk sysroot.

++ tool_1.0.bb<http://tool_1.0.bb>
SUMMARY=3Dtool
LICENSE=3D""
SRC_URI=3D""
S=3D""

# nothing fancy
# FILES_${PN} already includes /usr/bin/* path.
# Thus, all binaries installed in /usr/bin will be part of the primary pack=
age.

BBCLASSEXTEND=3D"native nativesdk"

++ packagegroup-<name>.bb (the specific packagegroup your package must be i=
ncluded)
RDEPENDS_${PN} =3D "\
    tool \
   "

++  nativesdk-packagegroup-sdk-host.bb<http://nativesdk-packagegroup-sdk-ho=
st.bb>  (by default, value of TOOLCHAIN_HOST_TASK, unless you specified oth=
erwise)
RDEPENDS_${PN} =3D "\
    nativesdk-tool \
   "

Basically, that's just it.

Thanks,
Joseph

On Sat, Nov 15, 2014 at 1:09 AM, Jim Rafert <jimr@spectralogic.com<mailto:j=
imr@spectralogic.com>> wrote:
Hi Joseph,

Thanks for the tips.  I totally missed the pod2man problem, and never saw t=
he BBCLASSEXTEND stuff in all my extensive googling.

I researched the BBCLASSEXTENDS variable in the Yocto Project Reference Man=
ual.

From what I read, I understand that adding "native" to BBCLASSEXTEND produc=
es executables that will run on the workstation that I use to build the rec=
ipe with bitbake.  This recipe could be REQUIREd by other recipes that depe=
nd upon it to build.

"nativesdk", on the other hand, should create executables that run on the S=
DKMACHINE architecture that is specified in my local.conf.

Since I only need the  Clang compiler to be available to SDK users for buil=
ding applications outside of the bitbake environment, I think I need "nativ=
esdk", but not "native".

Is my understanding of this correct, or have I totally missed the point som=
ewhere?

Also, would it be more straighforward to just have my recipe inherit the na=
tivesdk class?  I added BBCLASSEXTEND=3D"native nativesdk" to my recipe, an=
d it still seems to be building in i586-poky-linux, which is not the SKDMAC=
HINE architecture.

Once again, thank you for your help.  You have greatly advanced my understa=
nding of building a recipe for the SDK.

-Jim-


________________________________
From: Joseph Andrew de la Pe=F1a [jdelapena@lexmark.com<mailto:jdelapena@le=
xmark.com>]
Sent: Friday, November 14, 2014 12:39 AM
To: Jim Rafert
Cc: nick; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

Subject: Re: [yocto] New recipe for toolchain fails install, "ERROR: ld.so:=
 object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."

Good day Jim,

Seems to be that the main error is due to /bin/sh: pod2man: command not fou=
nd.
I think the tool is not present or any references to its path was not prope=
rly established.

Also, for your expectation to be part of native and nativesdk, please add B=
BCLASSEXTEND =3D "native nativesdk" in your recipe.

Thanks,
- J

On Fri, Nov 14, 2014 at 5:14 AM, Jim Rafert <jimr@spectralogic.com<mailto:j=
imr@spectralogic.com>> wrote:
I noticed that a couple of my attachments didn't make it.  So here they are=
. They're renamed with a .txt extension to slip them past the Argus eyes of=
 MS Exchange.

"These are not the droids you're looking for....Move along"

-Jim-
________________________________________
From: nick [xerofoify@gmail.com<mailto:xerofoify@gmail.com>]
Sent: Thursday, November 13, 2014 1:42 PM
To: Jim Rafert; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] New recipe for toolchain fails install, "ERROR: ld.so:=
 object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."

Hey Jim,
I had a stressful day with other things so I would like some time to unwind=
 but I will try and help out
later if that's OK.
Nick

On 14-11-13 03:13 PM, Jim Rafert wrote:
> Hi folks,
>
> I'm trying to put together a recipe to include llvm and clang in the yoct=
o toolchain.  My goal is to have the clang compiler available for applicati=
on development.  I do not intend to compile the kernel or OS image with cla=
ng.  I have created a recipe and placed it in one of my added layers as fol=
lows:
>
> LICENSE =3D "NCSA"
> PR =3D "r0"
> LIC_FILES_CHKSUM =3D "file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd7=
814d1d"
>
> SRC_URI =3D "file://llvm-3.5.0.tar.gz \
>           "
> SRC_URI[md5sum] =3D "e2dd127722ffb305c981d2a02687b4ff"
> SRC_URI[sha256sum] =3D "1badb762129feb7ced9484a7969c88cebab9b01b80b83002f=
c9690933cd7d0e0"
>
> EXTRA_OECONF =3D "--config=3DLinux-yocto "
>
> INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>
> INSANE_SKIP_${PN} =3D "already-stripped"
>
> #FILES_${PN} =3D "${libdir}/* /usr/bin "
> inherit autotools
>
> do_configure () {
>         ./configure --enable-optimized --enable-targets=3Dx86,x86_64 --ho=
st=3Dx86_64-unknown-linux-gnu --build=3Dx86_64-unknown-linux-gnu
> }
>
> The recipe is copied from another recipe of mine that builds the POCO lib=
raries, so INSANE_SKIP_${PN} =3D "already-stripped" may not actually be nec=
essary, but was left in until I got the recipe running.
>
> I add the recipe to the toolchain by including it in TOOLCHAIN_HOST_TASK =
from my local.conf, thus:
> "TOOLCHAIN_HOST_TASK +=3D " llvm "
>
> This gets the source unpacked, configures, and compiles, but do_install f=
ails with several instances of this message: "ERROR: ld.so: object 'libpseu=
do.so' from LD_PRELOAD cannot be preloaded: ignored."
>
> Even though it doesn't install, the build products are in the work direct=
ory, so I examined them.
>
> [jimr@krusty llvm-3.5.0]$ file /home/jimr/tera/yocto/daisy/build/tmp/work=
/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang
> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r0/=
llvm-3.5.0/Release+Asserts/bin/clang: ELF 32-bit LSB executable, Intel 8038=
6, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2=
.6.16, BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9, not stri=
pped
>
> I was hoping that this would be built for the architecture specified in l=
ocal.conf for the toolchain, which is: SDKMACHINE ?=3D "x86_64"
>
> I think that this architecture mismatch may be the root of the problem wi=
th the LD_PRELOAD of pseudo.  I also would expect that the work directory w=
ould be under x86_64-nativesdk-pokysdk-linux or x86_64-pokysdk-linux rather=
 than i586-poky-linux.
>
> Do any of you Yocto/OE/bitbake experts out there know what I might be doi=
ng wrong, or not doing, that causes this problem?
>
> I have attached the output of the bitbake command, my local.conf file, th=
e recipe, and config.log and config.status from the work directory for your=
 viewing pleasure.
>
> Any help with this would be greatly appreciated.
>
> -Jim-
>
>
>

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto




--_000_86196249137E0843B2E0673D4F731E0CDF3F4006reactorsldomain_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi Joseph,<br>
<br>
Thanks for the clarification.<br>
<br>
As far as I understand, I have restructured my recipe as you directed.<br>
<br>
However, when I bitbake -c populate_sdk core-image-full-cmdline, the sdk in=
staller script still does not contain the LLVM/clang stuff.<br>
<br>
I'm hoping that you can see what I have done wrong.<br>
<br>
When I look for build artifacts, here's what I find for clang in the work d=
irectory.<br>
<br>
<div>[jimr@krusty work]$ find . -name clang -ls |grep bin/clang<br>
99906923 45428 -rwxr-xr-x&nbsp;&nbsp; 1 jimr&nbsp;&nbsp;&nbsp;&nbsp; jimr&n=
bsp;&nbsp;&nbsp;&nbsp; 46517960 Nov 19 12:00 ./spectra_ls-poky-linux/core-i=
mage-full-cmdline/1.0-r0/sdk/image/usr/bin/clang<br>
94263147 45428 -rwxr-xr-x&nbsp;&nbsp; 2 jimr&nbsp;&nbsp;&nbsp;&nbsp; jimr&n=
bsp;&nbsp;&nbsp;&nbsp; 46517960 Nov 19 12:00 ./x86_64-nativesdk-pokysdk-lin=
ux/nativesdk-llvm/3.5.0-r0/packages-split/nativesdk-llvm/usr/bin/clang<br>
94263147 45428 -rwxr-xr-x&nbsp;&nbsp; 2 jimr&nbsp;&nbsp;&nbsp;&nbsp; jimr&n=
bsp;&nbsp;&nbsp;&nbsp; 46517960 Nov 19 12:00 ./x86_64-nativesdk-pokysdk-lin=
ux/nativesdk-llvm/3.5.0-r0/package/usr/bin/clang<br>
88904578 56380 -rwxr-xr-x&nbsp;&nbsp; 1 jimr&nbsp;&nbsp;&nbsp;&nbsp; jimr&n=
bsp;&nbsp;&nbsp;&nbsp; 57732373 Nov 19 11:51 ./x86_64-nativesdk-pokysdk-lin=
ux/nativesdk-llvm/3.5.0-r0/llvm-3.5.0/Release&#43;Asserts/bin/clang<br>
89415572 45432 -rwxr-xr-x&nbsp;&nbsp; 1 jimr&nbsp;&nbsp;&nbsp;&nbsp; jimr&n=
bsp;&nbsp;&nbsp;&nbsp; 46517960 Nov 19 12:00 ./x86_64-nativesdk-pokysdk-lin=
ux/nativesdk-llvm/3.5.0-r0/image/usr/bin/clang<br>
<br>
Finding the clang executable in /spectra_ls-poky-linux/core-image-full-cmdl=
ine/1.0-r0/sdk/image/usr/bin/clang would seem to suggest that it should be =
in the SDK, but it is not.<br>
<br>
Here are the recipes...<br>
<br>
&#43;&#43; meta-spectra-ls-utils/recipes-devtools/llvm/llvm_3.5.0.bb:<br>
#<br>
# This recipe requires package perl-podlators to be installed on the build<=
br>
# workstation in order to work.<br>
#<br>
# TBD: look for yocto recipe for perl-podlators to be added to REQUIRE<br>
# for this recipe, to remove build machine dependency.<br>
#<br>
SUMMARY =3D &quot;Clang c/c&#43;&#43; compiler with llvm framework&quot;<br=
>
HOMEPAGE =3D &quot;http://clang.llvm.org&quot;<br>
LICENSE =3D &quot;NCSA&quot;<br>
PR =3D &quot;r0&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098=
bd7814d1d&quot;<br>
<br>
SRC_URI =3D &quot;file://llvm-3.5.0.tar.gz \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<br>
<br>
SRC_URI[md5sum] =3D &quot;e2dd127722ffb305c981d2a02687b4ff&quot;<br>
SRC_URI[sha256sum] =3D &quot;1badb762129feb7ced9484a7969c88cebab9b01b80b830=
02fc9690933cd7d0e0&quot;<br>
<br>
#EXTRA_OECONF =3D &quot;--config=3DLinux-yocto &quot;<br>
<br>
INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
&nbsp;<br>
INSANE_SKIP_${PN} =3D &quot;staticdev already-stripped&quot;<br>
REQUIRES =3D &quot;virtual/x86_64-pokysdk-linux-gcc-crosssdk&quot;<br>
<br>
#everything installed under /usr/ hierarchy.<br>
FILES_${PN} =3D &quot;/usr &quot;<br>
inherit autotools<br>
<br>
do_configure () {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ./configure --enable-optimized -=
-enable-targets=3Dx86,x86_64 --prefix=3D/usr <br>
}<br>
<br>
#EXTRA_OECONF=3D&quot;--enable-optimized --enable-targets=3Dx86,x86_64 --pr=
efix=3D/usr &quot;<br>
<br>
<br>
BBCLASSEXTEND=3D&quot;native nativesdk&quot;<br>
<br>
<br>
&#43;&#43;meta-spectra-ls-utils/recipes-devtools/llvm/packagegroup-llvm.bb<=
br>
LICENSE=3D&quot;NCSA&quot;<br>
RDEPENDS_${PN}=3D &quot;\<br>
&nbsp; llvm \<br>
&nbsp; &quot;<br>
<br>
<div style=3D"font-family:Tahoma; font-size:13px">&#43;&#43;meta-spectra-ls=
-utils/recipes-devtools/llvm/packagegroup-nativesdk-llvm.bb
<br>
LICENSE=3D&quot;NCSA&quot;<br>
RDEPENDS_${PN}=3D &quot;\<br>
&nbsp; llvm \<br>
&nbsp; &quot;<br>
<font color=3D"#000000" face=3D"Tahoma" size=3D"2">&#43;&#43;</font>meta/re=
cipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb<br>
#<br>
# Copyright (C) 2007 OpenedHand Ltd<br>
#<br>
<br>
SUMMARY =3D &quot;Host packages for the standalone SDK or external toolchai=
n&quot;<br>
PR =3D &quot;r12&quot;<br>
LICENSE =3D &quot;MIT&quot;<br>
<br>
inherit packagegroup nativesdk<br>
<br>
PACKAGEGROUP_DISABLE_COMPLEMENTARY =3D &quot;1&quot;<br>
<br>
RDEPENDS_${PN} =3D &quot;\<br>
&nbsp;&nbsp;&nbsp; nativesdk-pkgconfig \<br>
&nbsp;&nbsp;&nbsp; nativesdk-qemu \<br>
&nbsp;&nbsp;&nbsp; nativesdk-qemu-helper \<br>
&nbsp;&nbsp;&nbsp; nativesdk-pseudo \<br>
&nbsp;&nbsp;&nbsp; nativesdk-unfs3 \<br>
&nbsp;&nbsp;&nbsp; nativesdk-opkg \<br>
&nbsp;&nbsp;&nbsp; nativesdk-libtool \<br>
&nbsp;&nbsp;&nbsp; nativesdk-autoconf \<br>
&nbsp;&nbsp;&nbsp; nativesdk-automake \<br>
&nbsp;&nbsp;&nbsp; nativesdk-shadow \<br>
&nbsp;&nbsp;&nbsp; nativesdk-makedevs \<br>
&nbsp;&nbsp;&nbsp; nativesdk-smartpm \<br>
<span style=3D"background-color: rgb(0, 255, 0);">&nbsp;&nbsp;&nbsp; native=
sdk-llvm \</span><br>
&nbsp;&nbsp;&nbsp; nativesdk-postinst-intercept \<br>
&nbsp;&nbsp;&nbsp; &quot;<br>
<br>
RDEPENDS_${PN}_darwin =3D &quot;\<br>
&nbsp;&nbsp;&nbsp; nativesdk-pkgconfig \<br>
&nbsp;&nbsp;&nbsp; nativesdk-opkg \<br>
&nbsp;&nbsp;&nbsp; nativesdk-libtool \<br>
&nbsp;&nbsp;&nbsp; &quot;<br>
<br>
Thank you very much in advance,<br>
-Jim-<br>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF416814"><font color=3D"#000000" =
face=3D"Tahoma" size=3D"2"><b>From:</b> Joseph Andrew de la Pe=F1a [jdelape=
na@lexmark.com]<br>
<b>Sent:</b> Tuesday, November 18, 2014 8:52 PM<br>
<b>To:</b> Jim Rafert<br>
<b>Cc:</b> nick; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ign=
ored.&quot;<br>
</font><br>
</div>
<div></div>
<div>
<div dir=3D"ltr">Good day Jim,
<div><br>
</div>
<div>Partly correct. To add more info, native is basically intended for hos=
t tools that should be placed into the native/host sysroot. Please don't di=
sregard that.</div>
<div><br>
</div>
<div>The clang compiler is built onto the target sysroot (i586) basically b=
ecause of your recipe.</div>
<div><br>
</div>
<div>The beauty of BBCLASSEXTEND is you don't need to name your recipe such=
 as naitvesdk-&lt;name&gt;.bb or &lt;name&gt;-<a href=3D"http://native.bb" =
target=3D"_blank">native.bb</a> (when using inherit). By default, with no i=
nherits or BBCLASSEXTEND, the recipe's packages
 files will be installed into the target sysroot, i586 (which you have expe=
rienced).</div>
<div><br>
</div>
<div>Here's a quick recipe content for a tool that will be placed in native=
 and nativesdk sysroot.</div>
<div><br>
</div>
<div>&#43;&#43; <a href=3D"http://tool_1.0.bb" target=3D"_blank">tool_1.0.b=
b</a></div>
<div>SUMMARY=3Dtool</div>
<div>LICENSE=3D&quot;&quot;</div>
<div>SRC_URI=3D&quot;&quot;</div>
<div>S=3D&quot;&quot;</div>
<div><br>
</div>
<div># nothing fancy</div>
<div># FILES_${PN} already includes /usr/bin/* path.</div>
<div># Thus, all binaries installed in /usr/bin will be part of the primary=
 package.</div>
<div><br>
</div>
<div>BBCLASSEXTEND=3D&quot;native nativesdk&quot;<br>
</div>
<div><br>
</div>
<div>&#43;&#43; packagegroup-&lt;name&gt;.bb (the specific packagegroup you=
r package must be included)</div>
<div>RDEPENDS_${PN} =3D &quot;\</div>
<div>&nbsp; &nbsp; tool \</div>
<div>&nbsp; &nbsp;&quot;</div>
<div><br>
</div>
<div>&#43;&#43; &nbsp;<a href=3D"http://nativesdk-packagegroup-sdk-host.bb"=
 target=3D"_blank">nativesdk-packagegroup-sdk-host.bb</a> &nbsp;(by default=
, value of TOOLCHAIN_HOST_TASK, unless you specified otherwise)</div>
<div>
<div>RDEPENDS_${PN} =3D &quot;\</div>
<div>&nbsp; &nbsp; nativesdk-tool \</div>
<div>&nbsp; &nbsp;&quot;</div>
</div>
<div><br>
</div>
<div>Basically, that's just it.</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Joseph</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Sat, Nov 15, 2014 at 1:09 AM, Jim Rafert <spa=
n dir=3D"ltr">
&lt;<a href=3D"mailto:jimr@spectralogic.com" target=3D"_blank">jimr@spectra=
logic.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">Hi Joseph,<br>
<br>
Thanks for the tips.&nbsp; I totally missed the pod2man problem, and never =
saw the BBCLASSEXTEND stuff in all my extensive googling.<br>
<br>
I researched the BBCLASSEXTENDS variable in the Yocto Project Reference Man=
ual.&nbsp; <br>
<br>
From what I read, I understand that adding &quot;native&quot; to BBCLASSEXT=
END produces executables that will run on the workstation that I use to bui=
ld the recipe with bitbake.&nbsp; This recipe could be REQUIREd by other re=
cipes that depend upon it to build.<br>
<br>
&quot;nativesdk&quot;, on the other hand, should create executables that ru=
n on the SDKMACHINE architecture that is specified in my local.conf.<br>
<br>
Since I only need the&nbsp; Clang compiler to be available to SDK users for=
 building applications outside of the bitbake environment, I think I need &=
quot;nativesdk&quot;, but not &quot;native&quot;.<br>
<br>
Is my understanding of this correct, or have I totally missed the point som=
ewhere?<br>
<br>
Also, would it be more straighforward to just have my recipe inherit the na=
tivesdk class?&nbsp; I added BBCLASSEXTEND=3D&quot;native nativesdk&quot; t=
o my recipe, and it still seems to be building in i586-poky-linux, which is=
 not the SKDMACHINE architecture.<br>
<br>
Once again, thank you for your help.&nbsp; You have greatly advanced my und=
erstanding of building a recipe for the SDK.<br>
<br>
-Jim-<br>
<div><br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
</div>
</div>
<div style=3D"font-family:Times New Roman; color:#000000; font-size:16px">
<hr>
<div style=3D"direction:ltr"><font color=3D"#000000" face=3D"Tahoma"><b>Fro=
m:</b> Joseph Andrew de la Pe=F1a [<a href=3D"mailto:jdelapena@lexmark.com"=
 target=3D"_blank">jdelapena@lexmark.com</a>]<br>
<b>Sent:</b> Friday, November 14, 2014 12:39 AM<br>
<b>To:</b> Jim Rafert<br>
<b>Cc:</b> nick; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a>
<div>
<div class=3D"h5"><br>
<b>Subject:</b> Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ign=
ored.&quot;<br>
</div>
</div>
</font><br>
</div>
<div>
<div class=3D"h5">
<div></div>
<div>
<div dir=3D"ltr">Good day Jim,
<div><br>
</div>
<div>Seems to be that the main error is due to&nbsp;/bin/sh: pod2man: comma=
nd not found.</div>
<div>I think the tool is not present or any references to its path was not =
properly established.</div>
<div><br>
</div>
<div>Also, for your expectation to be part of native and nativesdk, please =
add BBCLASSEXTEND =3D &quot;native nativesdk&quot; in your recipe.</div>
<div><br>
</div>
<div>Thanks,</div>
<div>- J</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, Nov 14, 2014 at 5:14 AM, Jim Rafert <spa=
n dir=3D"ltr">
&lt;<a href=3D"mailto:jimr@spectralogic.com" target=3D"_blank">jimr@spectra=
logic.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
I noticed that a couple of my attachments didn't make it.&nbsp; So here the=
y are. They're renamed with a .txt extension to slip them past the Argus ey=
es of MS Exchange.<br>
<br>
&quot;These are not the droids you're looking for....Move along&quot;<br>
<span><br>
-Jim-<br>
________________________________________<br>
From: nick [<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">xerofo=
ify@gmail.com</a>]<br>
Sent: Thursday, November 13, 2014 1:42 PM<br>
To: Jim Rafert; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
</span>Subject: Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ign=
ored.&quot;<br>
<div>
<div><br>
Hey Jim,<br>
I had a stressful day with other things so I would like some time to unwind=
 but I will try and help out<br>
later if that's OK.<br>
Nick<br>
<br>
On 14-11-13 03:13 PM, Jim Rafert wrote:<br>
&gt; Hi folks,<br>
&gt;<br>
&gt; I'm trying to put together a recipe to include llvm and clang in the y=
octo toolchain.&nbsp; My goal is to have the clang compiler available for a=
pplication development.&nbsp; I do not intend to compile the kernel or OS i=
mage with clang.&nbsp; I have created a recipe and
 placed it in one of my added layers as follows:<br>
&gt;<br>
&gt; LICENSE =3D &quot;NCSA&quot;<br>
&gt; PR =3D &quot;r0&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE.TXT;md5=3D47e311aa9caedd1b3a=
bf098bd7814d1d&quot;<br>
&gt;<br>
&gt; SRC_URI =3D &quot;file://llvm-3.5.0.tar.gz \<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;<br>
&gt; SRC_URI[md5sum] =3D &quot;e2dd127722ffb305c981d2a02687b4ff&quot;<br>
&gt; SRC_URI[sha256sum] =3D &quot;1badb762129feb7ced9484a7969c88cebab9b01b8=
0b83002fc9690933cd7d0e0&quot;<br>
&gt;<br>
&gt; EXTRA_OECONF =3D &quot;--config=3DLinux-yocto &quot;<br>
&gt;<br>
&gt; INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
&gt;<br>
&gt; INSANE_SKIP_${PN} =3D &quot;already-stripped&quot;<br>
&gt;<br>
&gt; #FILES_${PN} =3D &quot;${libdir}/* /usr/bin &quot;<br>
&gt; inherit autotools<br>
&gt;<br>
&gt; do_configure () {<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;./configure --enable-optimized --enab=
le-targets=3Dx86,x86_64 --host=3Dx86_64-unknown-linux-gnu --build=3Dx86_64-=
unknown-linux-gnu<br>
&gt; }<br>
&gt;<br>
&gt; The recipe is copied from another recipe of mine that builds the POCO =
libraries, so INSANE_SKIP_${PN} =3D &quot;already-stripped&quot; may not ac=
tually be necessary, but was left in until I got the recipe running.<br>
&gt;<br>
&gt; I add the recipe to the toolchain by including it in TOOLCHAIN_HOST_TA=
SK from my local.conf, thus:<br>
&gt; &quot;TOOLCHAIN_HOST_TASK &#43;=3D &quot; llvm &quot;<br>
&gt;<br>
&gt; This gets the source unpacked, configures, and compiles, but do_instal=
l fails with several instances of this message: &quot;ERROR: ld.so: object =
'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.&quot;<br>
&gt;<br>
&gt; Even though it doesn't install, the build products are in the work dir=
ectory, so I examined them.<br>
&gt;<br>
&gt; [jimr@krusty llvm-3.5.0]$ file /home/jimr/tera/yocto/daisy/build/tmp/w=
ork/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release&#43;Asserts/bin/clang<=
br>
&gt; /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-=
r0/llvm-3.5.0/Release&#43;Asserts/bin/clang: ELF 32-bit LSB executable, Int=
el 80386, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/=
Linux 2.6.16, BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9,
 not stripped<br>
&gt;<br>
&gt; I was hoping that this would be built for the architecture specified i=
n local.conf for the toolchain, which is: SDKMACHINE ?=3D &quot;x86_64&quot=
;<br>
&gt;<br>
&gt; I think that this architecture mismatch may be the root of the problem=
 with the LD_PRELOAD of pseudo.&nbsp; I also would expect that the work dir=
ectory would be under x86_64-nativesdk-pokysdk-linux or x86_64-pokysdk-linu=
x rather than i586-poky-linux.<br>
&gt;<br>
&gt; Do any of you Yocto/OE/bitbake experts out there know what I might be =
doing wrong, or not doing, that causes this problem?<br>
&gt;<br>
&gt; I have attached the output of the bitbake command, my local.conf file,=
 the recipe, and config.log and config.status from the work directory for y=
our viewing pleasure.<br>
&gt;<br>
&gt; Any help with this would be greatly appreciated.<br>
&gt;<br>
&gt; -Jim-<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div>
</div>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_86196249137E0843B2E0673D4F731E0CDF3F4006reactorsldomain_--
