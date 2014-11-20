Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53668E0087D; Wed, 19 Nov 2014 21:26:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og109.obsmtp.com (exprod8og109.obsmtp.com [64.18.3.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4A91E007B9
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 21:26:17 -0800 (PST)
Received: from mail-lb0-f182.google.com ([209.85.217.182]) (using TLSv1) by
	exprod8ob109.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVG17eLASfQ5U7g7Kbqg4yRdGvoncIZET@postini.com;
	Wed, 19 Nov 2014 21:26:18 PST
Received: by mail-lb0-f182.google.com with SMTP id f15so1841758lbj.13
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 21:26:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=NudnS4328LCLMg8tCSSshtQ5jQHk0gMqk3B5PoPHmWo=;
	b=bjJ3fVhJc6TSa2Fn4ArwgwXL/eq+e8YUoSGKAgFzWoLYUEYEBtDAFXHuIJ6LRRUd7Z
	Gb9r5vp0wRD42zVOJJT0NzeKt4n46t4SM3mnPma9Ntf19hSp2PVi4ErSoQUVzLNJVIpT
	xegzYZAaf8TnFUEKj5Lv1McLEkqmtyY4hqEzgJesqqFzHdV9ydCsW3N7CD4cWLlI1S9J
	JNI11e9UhGOykuSlOQiNY1HDecRnwhTn+msEc7O4jNTE6+cvZAHTQZ5jbeGSN5pvIdQF
	Jybmtn9xrpv9UMKIf0Z2atCFkmiqJ9oIB9h0Rw2iFcTk4oJzw7AELYHQmiOaKOKGIdWG
	IERA==
X-Gm-Message-State: ALoCoQkoDHiUKJ2uMJERBZOpSIQGVCutQum7wGUBrtXy8Wwqv2ReXIFwZHiZoA2A31vrNLgQ8bFWQz2Vi+bOSX24hKt0Km5orgfu4oV7RQz1e8hIW9WjhWpFGAOkIrvzKCktH/4GdG8icLty7gPtMa0F6GCzJ+pdAQ==
X-Received: by 10.112.169.106 with SMTP id ad10mr45905450lbc.13.1416461175347; 
	Wed, 19 Nov 2014 21:26:15 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.112.169.106 with SMTP id ad10mr45905434lbc.13.1416461175053; 
	Wed, 19 Nov 2014 21:26:15 -0800 (PST)
Received: by 10.152.2.40 with HTTP; Wed, 19 Nov 2014 21:26:14 -0800 (PST)
In-Reply-To: <86196249137E0843B2E0673D4F731E0CDF3F4006@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CDF3F393A@reactor.sldomain.com>
	<546517D3.4030107@gmail.com>
	<86196249137E0843B2E0673D4F731E0CDF3F398B@reactor.sldomain.com>
	<CAJrRHk49orVJh7aHKp4nsULeyVoT4VY425WfcabBqmK5XuXA=w@mail.gmail.com>
	<86196249137E0843B2E0673D4F731E0CDF3F3AA3@reactor.sldomain.com>
	<CAJrRHk4YCM6pmeZpT__XdOgZifTwq2xus3oNx5vqv50o8zzWmA@mail.gmail.com>
	<86196249137E0843B2E0673D4F731E0CDF3F4006@reactor.sldomain.com>
Date: Thu, 20 Nov 2014 13:26:14 +0800
Message-ID: <CAJrRHk4X2Z5zKfrPAH1weZoEOARD2bfWzv_gvi=K=P6-bYBgSw@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Jim Rafert <jimr@spectralogic.com>
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
X-List-Received-Date: Thu, 20 Nov 2014 05:26:21 -0000
Content-Type: multipart/alternative; boundary=001a11c389f22d6f2c05084391f7

--001a11c389f22d6f2c05084391f7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Jim,

Please take a look at the dependency chain for the nativesdk-host and also
FILES for nativesdk-llvm.
Just wanted to clarify if you've verified it in /path/to/sdk/sysroots/<x86
host sysroot>/usr/bin?

Thanks,
Joseph

On Thu, Nov 20, 2014 at 6:41 AM, Jim Rafert <jimr@spectralogic.com> wrote:

>  Hi Joseph,
>
> Thanks for the clarification.
>
> As far as I understand, I have restructured my recipe as you directed.
>
> However, when I bitbake -c populate_sdk core-image-full-cmdline, the sdk
> installer script still does not contain the LLVM/clang stuff.
>
> I'm hoping that you can see what I have done wrong.
>
> When I look for build artifacts, here's what I find for clang in the work
> directory.
>
> [jimr@krusty work]$ find . -name clang -ls |grep bin/clang
> 99906923 45428 -rwxr-xr-x   1 jimr     jimr     46517960 Nov 19 12:00
> ./spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/sdk/image/usr/bin/=
clang
> 94263147 45428 -rwxr-xr-x   2 jimr     jimr     46517960 Nov 19 12:00
> ./x86_64-nativesdk-pokysdk-linux/nativesdk-llvm/3.5.0-r0/packages-split/n=
ativesdk-llvm/usr/bin/clang
> 94263147 45428 -rwxr-xr-x   2 jimr     jimr     46517960 Nov 19 12:00
> ./x86_64-nativesdk-pokysdk-linux/nativesdk-llvm/3.5.0-r0/package/usr/bin/=
clang
> 88904578 56380 -rwxr-xr-x   1 jimr     jimr     57732373 Nov 19 11:51
> ./x86_64-nativesdk-pokysdk-linux/nativesdk-llvm/3.5.0-r0/llvm-3.5.0/Relea=
se+Asserts/bin/clang
> 89415572 45432 -rwxr-xr-x   1 jimr     jimr     46517960 Nov 19 12:00
> ./x86_64-nativesdk-pokysdk-linux/nativesdk-llvm/3.5.0-r0/image/usr/bin/cl=
ang
>
> Finding the clang executable in
> /spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/sdk/image/usr/bin/c=
lang
> would seem to suggest that it should be in the SDK, but it is not.
>
> Here are the recipes...
>
> ++ meta-spectra-ls-utils/recipes-devtools/llvm/llvm_3.5.0.bb:
> #
> # This recipe requires package perl-podlators to be installed on the buil=
d
> # workstation in order to work.
> #
> # TBD: look for yocto recipe for perl-podlators to be added to REQUIRE
> # for this recipe, to remove build machine dependency.
> #
> SUMMARY =3D "Clang c/c++ compiler with llvm framework"
> HOMEPAGE =3D "http://clang.llvm.org"
> LICENSE =3D "NCSA"
> PR =3D "r0"
> LIC_FILES_CHKSUM =3D
> "file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd7814d1d"
>
> SRC_URI =3D "file://llvm-3.5.0.tar.gz \
>           "
>
> SRC_URI[md5sum] =3D "e2dd127722ffb305c981d2a02687b4ff"
> SRC_URI[sha256sum] =3D
> "1badb762129feb7ced9484a7969c88cebab9b01b80b83002fc9690933cd7d0e0"
>
> #EXTRA_OECONF =3D "--config=3DLinux-yocto "
>
> INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>
> INSANE_SKIP_${PN} =3D "staticdev already-stripped"
> REQUIRES =3D "virtual/x86_64-pokysdk-linux-gcc-crosssdk"
>
> #everything installed under /usr/ hierarchy.
> FILES_${PN} =3D "/usr "
> inherit autotools
>
> do_configure () {
>         ./configure --enable-optimized --enable-targets=3Dx86,x86_64
> --prefix=3D/usr
> }
>
> #EXTRA_OECONF=3D"--enable-optimized --enable-targets=3Dx86,x86_64
> --prefix=3D/usr "
>
>
> BBCLASSEXTEND=3D"native nativesdk"
>
>
> ++meta-spectra-ls-utils/recipes-devtools/llvm/packagegroup-llvm.bb
> LICENSE=3D"NCSA"
> RDEPENDS_${PN}=3D "\
>   llvm \
>   "
>
> ++meta-spectra-ls-utils/recipes-devtools/llvm/
> packagegroup-nativesdk-llvm.bb
> LICENSE=3D"NCSA"
> RDEPENDS_${PN}=3D "\
>   llvm \
>   "
> ++meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
> #
> # Copyright (C) 2007 OpenedHand Ltd
> #
>
> SUMMARY =3D "Host packages for the standalone SDK or external toolchain"
> PR =3D "r12"
> LICENSE =3D "MIT"
>
> inherit packagegroup nativesdk
>
> PACKAGEGROUP_DISABLE_COMPLEMENTARY =3D "1"
>
> RDEPENDS_${PN} =3D "\
>     nativesdk-pkgconfig \
>     nativesdk-qemu \
>     nativesdk-qemu-helper \
>     nativesdk-pseudo \
>     nativesdk-unfs3 \
>     nativesdk-opkg \
>     nativesdk-libtool \
>     nativesdk-autoconf \
>     nativesdk-automake \
>     nativesdk-shadow \
>     nativesdk-makedevs \
>     nativesdk-smartpm \
>     nativesdk-llvm \
>     nativesdk-postinst-intercept \
>     "
>
> RDEPENDS_${PN}_darwin =3D "\
>     nativesdk-pkgconfig \
>     nativesdk-opkg \
>     nativesdk-libtool \
>     "
>
> Thank you very much in advance,
> -Jim-
>   ------------------------------
> *From:* Joseph Andrew de la Pe=C3=B1a [jdelapena@lexmark.com]
> *Sent:* Tuesday, November 18, 2014 8:52 PM
>
> *To:* Jim Rafert
> *Cc:* nick; yocto@yoctoproject.org
> *Subject:* Re: [yocto] New recipe for toolchain fails install, "ERROR:
> ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored=
."
>
>   Good day Jim,
>
>  Partly correct. To add more info, native is basically intended for host
> tools that should be placed into the native/host sysroot. Please don't
> disregard that.
>
>  The clang compiler is built onto the target sysroot (i586) basically
> because of your recipe.
>
>  The beauty of BBCLASSEXTEND is you don't need to name your recipe such
> as naitvesdk-<name>.bb or <name>-native.bb (when using inherit). By
> default, with no inherits or BBCLASSEXTEND, the recipe's packages files
> will be installed into the target sysroot, i586 (which you have
> experienced).
>
>  Here's a quick recipe content for a tool that will be placed in native
> and nativesdk sysroot.
>
>  ++ tool_1.0.bb
> SUMMARY=3Dtool
> LICENSE=3D""
> SRC_URI=3D""
> S=3D""
>
>  # nothing fancy
> # FILES_${PN} already includes /usr/bin/* path.
> # Thus, all binaries installed in /usr/bin will be part of the primary
> package.
>
>  BBCLASSEXTEND=3D"native nativesdk"
>
>  ++ packagegroup-<name>.bb (the specific packagegroup your package must
> be included)
> RDEPENDS_${PN} =3D "\
>     tool \
>    "
>
>  ++  nativesdk-packagegroup-sdk-host.bb  (by default, value of
> TOOLCHAIN_HOST_TASK, unless you specified otherwise)
>  RDEPENDS_${PN} =3D "\
>     nativesdk-tool \
>    "
>
>  Basically, that's just it.
>
>  Thanks,
> Joseph
>
> On Sat, Nov 15, 2014 at 1:09 AM, Jim Rafert <jimr@spectralogic.com> wrote=
:
>
>>  Hi Joseph,
>>
>> Thanks for the tips.  I totally missed the pod2man problem, and never sa=
w
>> the BBCLASSEXTEND stuff in all my extensive googling.
>>
>> I researched the BBCLASSEXTENDS variable in the Yocto Project Reference
>> Manual.
>>
>> From what I read, I understand that adding "native" to BBCLASSEXTEND
>> produces executables that will run on the workstation that I use to buil=
d
>> the recipe with bitbake.  This recipe could be REQUIREd by other recipes
>> that depend upon it to build.
>>
>> "nativesdk", on the other hand, should create executables that run on th=
e
>> SDKMACHINE architecture that is specified in my local.conf.
>>
>> Since I only need the  Clang compiler to be available to SDK users for
>> building applications outside of the bitbake environment, I think I need
>> "nativesdk", but not "native".
>>
>> Is my understanding of this correct, or have I totally missed the point
>> somewhere?
>>
>> Also, would it be more straighforward to just have my recipe inherit the
>> nativesdk class?  I added BBCLASSEXTEND=3D"native nativesdk" to my recip=
e,
>> and it still seems to be building in i586-poky-linux, which is not the
>> SKDMACHINE architecture.
>>
>> Once again, thank you for your help.  You have greatly advanced my
>> understanding of building a recipe for the SDK.
>>
>> -Jim-
>>
>>
>>   ------------------------------
>> *From:* Joseph Andrew de la Pe=C3=B1a [jdelapena@lexmark.com]
>> *Sent:* Friday, November 14, 2014 12:39 AM
>> *To:* Jim Rafert
>> *Cc:* nick; yocto@yoctoproject.org
>>
>> *Subject:* Re: [yocto] New recipe for toolchain fails install, "ERROR:
>> ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignore=
d."
>>
>>    Good day Jim,
>>
>>  Seems to be that the main error is due to /bin/sh: pod2man: command not
>> found.
>> I think the tool is not present or any references to its path was not
>> properly established.
>>
>>  Also, for your expectation to be part of native and nativesdk, please
>> add BBCLASSEXTEND =3D "native nativesdk" in your recipe.
>>
>>  Thanks,
>> - J
>>
>> On Fri, Nov 14, 2014 at 5:14 AM, Jim Rafert <jimr@spectralogic.com>
>> wrote:
>>
>>> I noticed that a couple of my attachments didn't make it.  So here they
>>> are. They're renamed with a .txt extension to slip them past the Argus =
eyes
>>> of MS Exchange.
>>>
>>> "These are not the droids you're looking for....Move along"
>>>
>>> -Jim-
>>> ________________________________________
>>> From: nick [xerofoify@gmail.com]
>>> Sent: Thursday, November 13, 2014 1:42 PM
>>> To: Jim Rafert; yocto@yoctoproject.org
>>> Subject: Re: [yocto] New recipe for toolchain fails install, "ERROR:
>>> ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignor=
ed."
>>>
>>> Hey Jim,
>>> I had a stressful day with other things so I would like some time to
>>> unwind but I will try and help out
>>> later if that's OK.
>>> Nick
>>>
>>> On 14-11-13 03:13 PM, Jim Rafert wrote:
>>> > Hi folks,
>>> >
>>> > I'm trying to put together a recipe to include llvm and clang in the
>>> yocto toolchain.  My goal is to have the clang compiler available for
>>> application development.  I do not intend to compile the kernel or OS i=
mage
>>> with clang.  I have created a recipe and placed it in one of my added
>>> layers as follows:
>>> >
>>> > LICENSE =3D "NCSA"
>>> > PR =3D "r0"
>>> > LIC_FILES_CHKSUM =3D
>>> "file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd7814d1d"
>>> >
>>> > SRC_URI =3D "file://llvm-3.5.0.tar.gz \
>>> >           "
>>> > SRC_URI[md5sum] =3D "e2dd127722ffb305c981d2a02687b4ff"
>>> > SRC_URI[sha256sum] =3D
>>> "1badb762129feb7ced9484a7969c88cebab9b01b80b83002fc9690933cd7d0e0"
>>> >
>>> > EXTRA_OECONF =3D "--config=3DLinux-yocto "
>>> >
>>> > INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>>> >
>>> > INSANE_SKIP_${PN} =3D "already-stripped"
>>> >
>>> > #FILES_${PN} =3D "${libdir}/* /usr/bin "
>>> > inherit autotools
>>> >
>>> > do_configure () {
>>> >         ./configure --enable-optimized --enable-targets=3Dx86,x86_64
>>> --host=3Dx86_64-unknown-linux-gnu --build=3Dx86_64-unknown-linux-gnu
>>> > }
>>> >
>>> > The recipe is copied from another recipe of mine that builds the POCO
>>> libraries, so INSANE_SKIP_${PN} =3D "already-stripped" may not actually=
 be
>>> necessary, but was left in until I got the recipe running.
>>> >
>>> > I add the recipe to the toolchain by including it in
>>> TOOLCHAIN_HOST_TASK from my local.conf, thus:
>>> > "TOOLCHAIN_HOST_TASK +=3D " llvm "
>>> >
>>> > This gets the source unpacked, configures, and compiles, but
>>> do_install fails with several instances of this message: "ERROR: ld.so:
>>> object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
>>> >
>>> > Even though it doesn't install, the build products are in the work
>>> directory, so I examined them.
>>> >
>>> > [jimr@krusty llvm-3.5.0]$ file
>>> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r=
0/llvm-3.5.0/Release+Asserts/bin/clang
>>> >
>>> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r=
0/llvm-3.5.0/Release+Asserts/bin/clang:
>>> ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically
>>> linked (uses shared libs), for GNU/Linux 2.6.16,
>>> BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9, not strippe=
d
>>> >
>>> > I was hoping that this would be built for the architecture specified
>>> in local.conf for the toolchain, which is: SDKMACHINE ?=3D "x86_64"
>>> >
>>> > I think that this architecture mismatch may be the root of the proble=
m
>>> with the LD_PRELOAD of pseudo.  I also would expect that the work direc=
tory
>>> would be under x86_64-nativesdk-pokysdk-linux or x86_64-pokysdk-linux
>>> rather than i586-poky-linux.
>>> >
>>> > Do any of you Yocto/OE/bitbake experts out there know what I might be
>>> doing wrong, or not doing, that causes this problem?
>>> >
>>> > I have attached the output of the bitbake command, my local.conf file=
,
>>> the recipe, and config.log and config.status from the work directory fo=
r
>>> your viewing pleasure.
>>> >
>>> > Any help with this would be greatly appreciated.
>>> >
>>> > -Jim-
>>> >
>>> >
>>> >
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>

--001a11c389f22d6f2c05084391f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Jim,<div><br></div><div>Please take a look at the=
 dependency chain for the nativesdk-host and also FILES for nativesdk-llvm.=
</div><div>Just wanted to clarify if you&#39;ve verified it in /path/to/sdk=
/sysroots/&lt;x86 host sysroot&gt;/usr/bin?</div><div><br></div><div>Thanks=
,</div><div>Joseph</div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Thu, Nov 20, 2014 at 6:41 AM, Jim Rafert <span dir=3D"ltr">=
&lt;<a href=3D"mailto:jimr@spectralogic.com" target=3D"_blank">jimr@spectra=
logic.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div>
<div style=3D"direction:ltr;font-family:Tahoma;color:#000000;font-size:10pt=
">Hi Joseph,<br>
<br>
Thanks for the clarification.<br>
<br>
As far as I understand, I have restructured my recipe as you directed.<br>
<br>
However, when I bitbake -c populate_sdk core-image-full-cmdline, the sdk in=
staller script still does not contain the LLVM/clang stuff.<br>
<br>
I&#39;m hoping that you can see what I have done wrong.<br>
<br>
When I look for build artifacts, here&#39;s what I find for clang in the wo=
rk directory.<br>
<br>
<div>[jimr@krusty work]$ find . -name clang -ls |grep bin/clang<br>
99906923 45428 -rwxr-xr-x=C2=A0=C2=A0 1 jimr=C2=A0=C2=A0=C2=A0=C2=A0 jimr=
=C2=A0=C2=A0=C2=A0=C2=A0 46517960 Nov 19 12:00 ./spectra_ls-poky-linux/core=
-image-full-cmdline/1.0-r0/sdk/image/usr/bin/clang<br>
94263147 45428 -rwxr-xr-x=C2=A0=C2=A0 2 jimr=C2=A0=C2=A0=C2=A0=C2=A0 jimr=
=C2=A0=C2=A0=C2=A0=C2=A0 46517960 Nov 19 12:00 ./x86_64-nativesdk-pokysdk-l=
inux/nativesdk-llvm/3.5.0-r0/packages-split/nativesdk-llvm/usr/bin/clang<br=
>
94263147 45428 -rwxr-xr-x=C2=A0=C2=A0 2 jimr=C2=A0=C2=A0=C2=A0=C2=A0 jimr=
=C2=A0=C2=A0=C2=A0=C2=A0 46517960 Nov 19 12:00 ./x86_64-nativesdk-pokysdk-l=
inux/nativesdk-llvm/3.5.0-r0/package/usr/bin/clang<br>
88904578 56380 -rwxr-xr-x=C2=A0=C2=A0 1 jimr=C2=A0=C2=A0=C2=A0=C2=A0 jimr=
=C2=A0=C2=A0=C2=A0=C2=A0 57732373 Nov 19 11:51 ./x86_64-nativesdk-pokysdk-l=
inux/nativesdk-llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang<br>
89415572 45432 -rwxr-xr-x=C2=A0=C2=A0 1 jimr=C2=A0=C2=A0=C2=A0=C2=A0 jimr=
=C2=A0=C2=A0=C2=A0=C2=A0 46517960 Nov 19 12:00 ./x86_64-nativesdk-pokysdk-l=
inux/nativesdk-llvm/3.5.0-r0/image/usr/bin/clang<br>
<br>
Finding the clang executable in /spectra_ls-poky-linux/core-image-full-cmdl=
ine/1.0-r0/sdk/image/usr/bin/clang would seem to suggest that it should be =
in the SDK, but it is not.<br>
<br>
Here are the recipes...<br>
<br>
++ meta-spectra-ls-utils/recipes-devtools/llvm/<a href=3D"http://llvm_3.5.0=
.bb" target=3D"_blank">llvm_3.5.0.bb</a>:<br>
#<br>
# This recipe requires package perl-podlators to be installed on the build<=
br>
# workstation in order to work.<br>
#<br>
# TBD: look for yocto recipe for perl-podlators to be added to REQUIRE<br>
# for this recipe, to remove build machine dependency.<br>
#<br>
SUMMARY =3D &quot;Clang c/c++ compiler with llvm framework&quot;<br>
HOMEPAGE =3D &quot;<a href=3D"http://clang.llvm.org" target=3D"_blank">http=
://clang.llvm.org</a>&quot;<span class=3D""><br>
LICENSE =3D &quot;NCSA&quot;<br>
PR =3D &quot;r0&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098=
bd7814d1d&quot;<br>
<br>
SRC_URI =3D &quot;file://llvm-3.5.0.tar.gz \<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;<br>
<br>
SRC_URI[md5sum] =3D &quot;e2dd127722ffb305c981d2a02687b4ff&quot;<br>
SRC_URI[sha256sum] =3D &quot;1badb762129feb7ced9484a7969c88cebab9b01b80b830=
02fc9690933cd7d0e0&quot;<br>
<br></span>
#EXTRA_OECONF =3D &quot;--config=3DLinux-yocto &quot;<br>
<br>
INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
=C2=A0<br>
INSANE_SKIP_${PN} =3D &quot;staticdev already-stripped&quot;<br>
REQUIRES =3D &quot;virtual/x86_64-pokysdk-linux-gcc-crosssdk&quot;<br>
<br>
#everything installed under /usr/ hierarchy.<br>
FILES_${PN} =3D &quot;/usr &quot;<br>
inherit autotools<br>
<br>
do_configure () {<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ./configure --enable-optimized -=
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
++meta-spectra-ls-utils/recipes-devtools/llvm/<a href=3D"http://packagegrou=
p-llvm.bb" target=3D"_blank">packagegroup-llvm.bb</a><br>
LICENSE=3D&quot;NCSA&quot;<br>
RDEPENDS_${PN}=3D &quot;\<br>
=C2=A0 llvm \<br>
=C2=A0 &quot;<br>
<br>
<div style=3D"font-family:Tahoma;font-size:13px">++meta-spectra-ls-utils/re=
cipes-devtools/llvm/<a href=3D"http://packagegroup-nativesdk-llvm.bb" targe=
t=3D"_blank">packagegroup-nativesdk-llvm.bb</a>
<br>
LICENSE=3D&quot;NCSA&quot;<br>
RDEPENDS_${PN}=3D &quot;\<br>
=C2=A0 llvm \<br>
=C2=A0 &quot;<br>
<font color=3D"#000000" face=3D"Tahoma">++</font>meta/recipes-core/packageg=
roups/<a href=3D"http://nativesdk-packagegroup-sdk-host.bb" target=3D"_blan=
k">nativesdk-packagegroup-sdk-host.bb</a><br>
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
=C2=A0=C2=A0=C2=A0 nativesdk-pkgconfig \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-qemu \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-qemu-helper \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-pseudo \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-unfs3 \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-opkg \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-libtool \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-autoconf \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-automake \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-shadow \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-makedevs \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-smartpm \<br>
<span style=3D"background-color:rgb(0,255,0)">=C2=A0=C2=A0=C2=A0 nativesdk-=
llvm \</span><br>
=C2=A0=C2=A0=C2=A0 nativesdk-postinst-intercept \<br>
=C2=A0=C2=A0=C2=A0 &quot;<br>
<br>
RDEPENDS_${PN}_darwin =3D &quot;\<br>
=C2=A0=C2=A0=C2=A0 nativesdk-pkgconfig \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-opkg \<br>
=C2=A0=C2=A0=C2=A0 nativesdk-libtool \<br>
=C2=A0=C2=A0=C2=A0 &quot;<br>
<br>
Thank you very much in advance,<br>
-Jim-<br>
</div>
</div>
<div style=3D"font-family:Times New Roman;color:#000000;font-size:16px">
<hr>
<div style=3D"direction:ltr"><font color=3D"#000000" face=3D"Tahoma"><span =
class=3D""><b>From:</b> Joseph Andrew de la Pe=C3=B1a [<a href=3D"mailto:jd=
elapena@lexmark.com" target=3D"_blank">jdelapena@lexmark.com</a>]<br>
</span><b>Sent:</b> Tuesday, November 18, 2014 8:52 PM<div><div class=3D"h5=
"><br>
<b>To:</b> Jim Rafert<br>
<b>Cc:</b> nick; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object &#39;libpseudo.so&#39; from LD_PRELOAD cannot be preloa=
ded: ignored.&quot;<br>
</div></div></font><br>
</div><div><div class=3D"h5">
<div></div>
<div>
<div dir=3D"ltr">Good day Jim,
<div><br>
</div>
<div>Partly correct. To add more info, native is basically intended for hos=
t tools that should be placed into the native/host sysroot. Please don&#39;=
t disregard that.</div>
<div><br>
</div>
<div>The clang compiler is built onto the target sysroot (i586) basically b=
ecause of your recipe.</div>
<div><br>
</div>
<div>The beauty of BBCLASSEXTEND is you don&#39;t need to name your recipe =
such as naitvesdk-&lt;name&gt;.bb or &lt;name&gt;-<a href=3D"http://native.=
bb" target=3D"_blank">native.bb</a> (when using inherit). By default, with =
no inherits or BBCLASSEXTEND, the recipe&#39;s packages
 files will be installed into the target sysroot, i586 (which you have expe=
rienced).</div>
<div><br>
</div>
<div>Here&#39;s a quick recipe content for a tool that will be placed in na=
tive and nativesdk sysroot.</div>
<div><br>
</div>
<div>++ <a href=3D"http://tool_1.0.bb" target=3D"_blank">tool_1.0.bb</a></d=
iv>
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
<div>++ packagegroup-&lt;name&gt;.bb (the specific packagegroup your packag=
e must be included)</div>
<div>RDEPENDS_${PN} =3D &quot;\</div>
<div>=C2=A0 =C2=A0 tool \</div>
<div>=C2=A0 =C2=A0&quot;</div>
<div><br>
</div>
<div>++ =C2=A0<a href=3D"http://nativesdk-packagegroup-sdk-host.bb" target=
=3D"_blank">nativesdk-packagegroup-sdk-host.bb</a> =C2=A0(by default, value=
 of TOOLCHAIN_HOST_TASK, unless you specified otherwise)</div>
<div>
<div>RDEPENDS_${PN} =3D &quot;\</div>
<div>=C2=A0 =C2=A0 nativesdk-tool \</div>
<div>=C2=A0 =C2=A0&quot;</div>
</div>
<div><br>
</div>
<div>Basically, that&#39;s just it.</div>
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
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>
<div style=3D"direction:ltr;font-family:Tahoma;color:#000000;font-size:10pt=
">Hi Joseph,<br>
<br>
Thanks for the tips.=C2=A0 I totally missed the pod2man problem, and never =
saw the BBCLASSEXTEND stuff in all my extensive googling.<br>
<br>
I researched the BBCLASSEXTENDS variable in the Yocto Project Reference Man=
ual.=C2=A0 <br>
<br>
From what I read, I understand that adding &quot;native&quot; to BBCLASSEXT=
END produces executables that will run on the workstation that I use to bui=
ld the recipe with bitbake.=C2=A0 This recipe could be REQUIREd by other re=
cipes that depend upon it to build.<br>
<br>
&quot;nativesdk&quot;, on the other hand, should create executables that ru=
n on the SDKMACHINE architecture that is specified in my local.conf.<br>
<br>
Since I only need the=C2=A0 Clang compiler to be available to SDK users for=
 building applications outside of the bitbake environment, I think I need &=
quot;nativesdk&quot;, but not &quot;native&quot;.<br>
<br>
Is my understanding of this correct, or have I totally missed the point som=
ewhere?<br>
<br>
Also, would it be more straighforward to just have my recipe inherit the na=
tivesdk class?=C2=A0 I added BBCLASSEXTEND=3D&quot;native nativesdk&quot; t=
o my recipe, and it still seems to be building in i586-poky-linux, which is=
 not the SKDMACHINE architecture.<br>
<br>
Once again, thank you for your help.=C2=A0 You have greatly advanced my und=
erstanding of building a recipe for the SDK.<br>
<br>
-Jim-<br>
<div><br>
<div style=3D"font-family:Tahoma;font-size:13px"><br>
</div>
</div>
<div style=3D"font-family:Times New Roman;color:#000000;font-size:16px">
<hr>
<div style=3D"direction:ltr"><font color=3D"#000000" face=3D"Tahoma"><b>Fro=
m:</b> Joseph Andrew de la Pe=C3=B1a [<a href=3D"mailto:jdelapena@lexmark.c=
om" target=3D"_blank">jdelapena@lexmark.com</a>]<br>
<b>Sent:</b> Friday, November 14, 2014 12:39 AM<br>
<b>To:</b> Jim Rafert<br>
<b>Cc:</b> nick; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a>
<div>
<div><br>
<b>Subject:</b> Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object &#39;libpseudo.so&#39; from LD_PRELOAD cannot be preloa=
ded: ignored.&quot;<br>
</div>
</div>
</font><br>
</div>
<div>
<div>
<div></div>
<div>
<div dir=3D"ltr">Good day Jim,
<div><br>
</div>
<div>Seems to be that the main error is due to=C2=A0/bin/sh: pod2man: comma=
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
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I noticed that a couple of my attachments didn&#39;t make it.=C2=A0 So here=
 they are. They&#39;re renamed with a .txt extension to slip them past the =
Argus eyes of MS Exchange.<br>
<br>
&quot;These are not the droids you&#39;re looking for....Move along&quot;<b=
r>
<span><br>
-Jim-<br>
________________________________________<br>
From: nick [<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">xerofo=
ify@gmail.com</a>]<br>
Sent: Thursday, November 13, 2014 1:42 PM<br>
To: Jim Rafert; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
</span>Subject: Re: [yocto] New recipe for toolchain fails install, &quot;E=
RROR: ld.so: object &#39;libpseudo.so&#39; from LD_PRELOAD cannot be preloa=
ded: ignored.&quot;<br>
<div>
<div><br>
Hey Jim,<br>
I had a stressful day with other things so I would like some time to unwind=
 but I will try and help out<br>
later if that&#39;s OK.<br>
Nick<br>
<br>
On 14-11-13 03:13 PM, Jim Rafert wrote:<br>
&gt; Hi folks,<br>
&gt;<br>
&gt; I&#39;m trying to put together a recipe to include llvm and clang in t=
he yocto toolchain.=C2=A0 My goal is to have the clang compiler available f=
or application development.=C2=A0 I do not intend to compile the kernel or =
OS image with clang.=C2=A0 I have created a recipe and
 placed it in one of my added layers as follows:<br>
&gt;<br>
&gt; LICENSE =3D &quot;NCSA&quot;<br>
&gt; PR =3D &quot;r0&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE.TXT;md5=3D47e311aa9caedd1b3a=
bf098bd7814d1d&quot;<br>
&gt;<br>
&gt; SRC_URI =3D &quot;file://llvm-3.5.0.tar.gz \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
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
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0./configure --enable-optimized --enab=
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
&gt; &quot;TOOLCHAIN_HOST_TASK +=3D &quot; llvm &quot;<br>
&gt;<br>
&gt; This gets the source unpacked, configures, and compiles, but do_instal=
l fails with several instances of this message: &quot;ERROR: ld.so: object =
&#39;libpseudo.so&#39; from LD_PRELOAD cannot be preloaded: ignored.&quot;<=
br>
&gt;<br>
&gt; Even though it doesn&#39;t install, the build products are in the work=
 directory, so I examined them.<br>
&gt;<br>
&gt; [jimr@krusty llvm-3.5.0]$ file /home/jimr/tera/yocto/daisy/build/tmp/w=
ork/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang<br>
&gt; /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-=
r0/llvm-3.5.0/Release+Asserts/bin/clang: ELF 32-bit LSB executable, Intel 8=
0386, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linu=
x 2.6.16, BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9,
 not stripped<br>
&gt;<br>
&gt; I was hoping that this would be built for the architecture specified i=
n local.conf for the toolchain, which is: SDKMACHINE ?=3D &quot;x86_64&quot=
;<br>
&gt;<br>
&gt; I think that this architecture mismatch may be the root of the problem=
 with the LD_PRELOAD of pseudo.=C2=A0 I also would expect that the work dir=
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
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--001a11c389f22d6f2c05084391f7--
