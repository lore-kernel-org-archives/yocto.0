Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DC92E00DCA; Thu,  1 Mar 2018 03:08:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5468DE00DCA
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 03:08:05 -0800 (PST)
Received: by mail-it0-f45.google.com with SMTP id k135so7216100ite.2
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 03:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jmA4w6Ncei0cS1LvWixNX3INMrWAPf91dHalyI2YckA=;
	b=jMn6C7UVc5/Ato2Gxb30qOx8IyR2wNbcsDtmefi52xjkyIeJjp9V9dp2wzbEm+nckJ
	R7m4ntKerpBwBvbweQDXH+a/kqebWmbLPgKU3nAs10Yqusxx+hjlvYmVu/2a4AW+WV+Q
	UiS0Gn8Wx2H8oC0khdqj0nZfwW4CbMwUdBzGlDM91t3a6iVo1IDSW7vMP7tSlAprilDF
	0elPe4nF8eqUzYTB4U6kRVmdyGDymWfrEsefeacidZta2yX8QZv2kIMV1Z2CFMzOco8z
	uW/39G/X2+QSr7DuEm8jMeWg+XOvt/j66IMYxMAM6G5UmDaqoVjUq0ZVVLqK71KKZJH/
	Y9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jmA4w6Ncei0cS1LvWixNX3INMrWAPf91dHalyI2YckA=;
	b=MaV9GKbQiXz1GgLDKjWIXG7dbWhDPOVf8TS8OYTece++JqMqfqMOaoWHyz/tlERvbP
	Q7Z4KdqnjLWK9JXtnEJpRcFxh4PnFJ5qDqcPCb0hrnbD4LGxlEBhRohbb/JtOnY+AVCD
	bIUgQY3hSIX69qtXAhU8rflJMKE3WM9mQLSgljqzYtlB7JYGckZ1ZHXoK3Q5Otxk5leb
	9/0hFTiEjM5Mo38u8OU9H7WUVrMNeAmxADd9LttxIrEParPN93N45SquXGe+TkN3tEcq
	wmdxl+U0j+zjKZb0AClfmF+4qJD1yUaHa7erkXYQmbq0i3r/Ij4mrcON53PbvmrokmuR
	UmnA==
X-Gm-Message-State: APf1xPBjYXAZGGDJp21jcOYFN1TFEHG1mACgdF43pmGIP3NDePbzNYxt
	q+nbJVIThjie9HIRpLE6jOsoKoeHA8l0/f7WGejb9g==
X-Google-Smtp-Source: AG47ELu3WshTl9gRXsFwz/O8Y57mAqUK5f+142zS+lN0MPI2tHSRPhyyi7Hdh56OhaK+F8PVoSH1jkey0pkTtnRjDpU=
X-Received: by 10.36.185.24 with SMTP id w24mr2021888ite.127.1519902485408;
	Thu, 01 Mar 2018 03:08:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.200 with HTTP; Thu, 1 Mar 2018 03:07:45 -0800 (PST)
In-Reply-To: <CANPqCWLBrSwCRbKXePqdmGv2exou5smjq-R9D5yvB6MjQZPqKg@mail.gmail.com>
References: <CANPqCWLBrSwCRbKXePqdmGv2exou5smjq-R9D5yvB6MjQZPqKg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 1 Mar 2018 11:07:45 +0000
Message-ID: <CAJTo0Laa5_7_hn=fHpuG8jVeqE-b4kzMAsCLgJOVQPke2T3Xhg@mail.gmail.com>
To: Abhishekh Awanti <abhishekh@relysys.co.in>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR
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
X-List-Received-Date: Thu, 01 Mar 2018 11:08:08 -0000
Content-Type: multipart/alternative; boundary="f403045d9a50bc85af056657dfc4"

--f403045d9a50bc85af056657dfc4
Content-Type: text/plain; charset="UTF-8"

That usually means that the recipe doesn't inherit pkgconfig, but as this
is an oe-core recipe it should be doing this.  Can you verify this, and if
you can still reproduce it after deleting tmp/ then please attach the
entire log.do_configure.

Ross

On 1 March 2018 at 10:21, Abhishekh Awanti <abhishekh@relysys.co.in> wrote:

> Hi,
>
> I am trying to build the package "*harfbuzz-1.3.0" ,  *but i am getting
> the following configure error
>
> *Build Configuration:*
> *BB_VERSION        = "1.22.0"*
> *BUILD_SYS         = "x86_64-linux"*
> *NATIVELSBSTRING   = "Ubuntu-14.04"*
> *TARGET_SYS        = "arm-poky-linux-gnueabi"*
> *MACHINE           = "iwg21m"*
> *DISTRO            = "poky"*
> *DISTRO_VERSION    = "1.6.1"*
> *TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa15"*
> *TARGET_FPU        = "vfp-neon"*
> *meta              *
> *meta-yocto        *
> *meta-yocto-bsp    = "hmi_tmp:9febda430a88ba23b539394e5d54b59ae87405f6"*
> *meta-renesas      *
> *meta-rzg1         = "master:2ea602f03b9c2378c1d7dc28675a675d18edb0e3"*
> *meta-oe           *
> *meta-multimedia   *
> *meta-networking   = "hmi_tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"*
> *meta-linaro-toolchain =
> "hmi_build:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"*
> *common            *
> *hmi-demo          = "master:2cdb73bb902ecd4462cd0a4a66d5d116d0f7c113"*
> *meta-ndvr         = "<unknown>:<unknown>"*
>
> *NOTE: Preparing runqueue*
> *NOTE: Executing SetScene Tasks*
> *NOTE: Executing RunQueue Tasks*
> *ERROR: Function failed: do_configure (log file is located at
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)*
> *ERROR: Logfile of failure stored in:
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451*
> *Log data follows:*
> *| DEBUG: Executing python function sysroot_cleansstate*
> *| DEBUG: Python function sysroot_cleansstate finished*
> *| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']*
> *| DEBUG: Executing shell function autotools_preconfigure*
> *| DEBUG: Shell function autotools_preconfigure finished*
> *| DEBUG: Executing python function autotools_copy_aclocals*
> *| DEBUG: Python function autotools_copy_aclocals finished*
> *| DEBUG: Executing shell function do_configure*
> *| automake (GNU automake) 1.14*
> *| Copyright (C) 2013 Free Software Foundation, Inc.*
> *| License GPLv2+: GNU GPL version 2 or later
> <http://gnu.org/licenses/gpl-2.0.html
> <http://gnu.org/licenses/gpl-2.0.html>>*
> *| This is free software: you are free to change and redistribute it.*
> *| There is NO WARRANTY, to the extent permitted by law.*
> *| *
> *| Written by Tom Tromey <tromey@redhat.com <tromey@redhat.com>>*
> *|        and Alexandre Duret-Lutz <adl@gnu.org <adl@gnu.org>>.*
> *| AUTOV is 1*
> *| NOTE: Executing ACLOCAL="aclocal
> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/"
> autoreconf --verbose --install --force --exclude=autopoint -I
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/*
> *| autoreconf: Entering directory `.'*
> *| autoreconf: configure.ac <http://configure.ac/>: not using Gettext*
> *| autoreconf: running: aclocal
> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/
> -I
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
> -I
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
> --force -I m4*
> *| autoreconf: configure.ac <http://configure.ac/>: tracing*
> *| autoreconf: running: libtoolize --copy --force*
> *| libtoolize: putting auxiliary files in `.'.*
> *| libtoolize: copying file `./ltmain.sh'*
> *| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.*
> *| libtoolize: copying file `m4/libtool.m4'*
> *| libtoolize: copying file `m4/ltoptions.m4'*
> *| libtoolize: copying file `m4/ltsugar.m4'*
> *| libtoolize: copying file `m4/ltversion.m4'*
> *| libtoolize: copying file `m4/lt~obsolete.m4'*
> *| autoreconf: running:
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
> --include=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
> --force*
> *| configure:17934: error: possibly undefined macro:
> PKG_CONFIG_SYSROOT_DIR*
> *|       If this token and others are legitimate, please use
> m4_pattern_allow.*
> *|       See the Autoconf documentation.*
> *| autoreconf:
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
> failed with exit status: 1*
> *| ERROR: autoreconf execution failed.*
> *| WARNING: exit code 1 from a shell command.*
> *| ERROR: Function failed: do_configure (log file is located at
> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)*
> *ERROR: Task 5
> (/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/../poky/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.0.bb
> <http://harfbuzz_1.3.0.bb/>, do_configure) failed with exit code '1'*
>
> Any help will be appreciated.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f403045d9a50bc85af056657dfc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That usually means that the recipe doesn&#39;t inherit pkg=
config, but as this is an oe-core recipe it should be doing this.=C2=A0 Can=
 you verify this, and if you can still reproduce it after deleting tmp/ the=
n please attach the entire log.do_configure.<div><br></div><div>Ross</div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 1 March 2=
018 at 10:21, Abhishekh Awanti <span dir=3D"ltr">&lt;<a href=3D"mailto:abhi=
shekh@relysys.co.in" target=3D"_blank">abhishekh@relysys.co.in</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-sty=
le:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weigh=
t:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255)=
;text-decoration-style:initial;text-decoration-color:initial;float:none;dis=
play:inline">Hi,</span><div style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial"><br></div><div style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial">I am trying to build the package &quot;<i>=
harfbuzz-1.3.0&quot; ,=C2=A0<span>=C2=A0</span></i>but i=C2=A0am getting th=
e following configure error</div><div style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial"><br></div><div style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial"><div><i>Build Configuration:</i>=
</div><div><i>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.22.0&quot;<=
/i></div><div><i>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_6=
4-linux&quot;</i></div><div><i>NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu=
-14.04&quot;</i></div><div><i>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &qu=
ot;arm-poky-linux-gnueabi&quot;</i></div><div><i>MACHINE=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;iwg21m&quot;</i></div><div><i>DISTRO=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;</i></div><div><=
i>DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.6.1&quot;</i></div><div><i>TUNE_F=
EATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;armv7a vfp neon callconvention-hard co=
rtexa15&quot;</i></div><div><i>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;vfp-neon&quot;</i></div><div><i>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0</i></div><div><i>meta-yocto=C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</i></div><div><i>meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;hmi_tmp:9febd=
a430a88ba23b5393<wbr>94e5d54b59ae87405f6&quot;</i></div><div><i>meta-renesa=
s=C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><div><i>meta-rzg1=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;master:2ea602f03b9c2378c1d7dc<wbr>28675a675d18edb0e3=
&quot;</i></div><div><i>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</i=
></div><div><i>meta-multimedia=C2=A0 =C2=A0</i></div><div><i>meta-networkin=
g=C2=A0 =C2=A0=3D &quot;hmi_tmp:dca466c074c9a35bc0133<wbr>e7e0d65cca0731e2a=
cf&quot;</i></div><div><i>meta-linaro-toolchain =3D &quot;hmi_build:8a06017=
23c06fdb75e6<wbr>2aa0f0cf15fc9d7d90167&quot;</i></div><div><i>common=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><div><i>hmi-demo=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:2cdb73bb902ecd4462cd0a<wbr>4a6=
6d5d116d0f7c113&quot;</i></div><div><i>meta-ndvr=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</i></div><div><i><br=
></i></div><div><i>NOTE: Preparing runqueue</i></div><div><i>NOTE: Executin=
g SetScene Tasks</i></div><div><i>NOTE: Executing RunQueue Tasks</i></div><=
div><i>ERROR: Function failed: do_configure (log file is located at /home/b=
harath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/<wbr>iwave/build/Buil=
d_As_On_23_<wbr>feb_2018/build/tmp/work/cortex<wbr>a15hf-vfp-neon-poky-linu=
x-<wbr>gnueabi/harfbuzz/1.3.0-r0/<wbr>temp/log.do_configure.451)</i></div><=
div><i>ERROR: Logfile of failure stored in: /home/bharath/Abhishek_WorkSpa<=
wbr>ce/Projects/Renesas/RZG1H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018=
/build/tmp/work/cortex<wbr>a15hf-vfp-neon-poky-linux-<wbr>gnueabi/harfbuzz/=
1.3.0-r0/<wbr>temp/log.do_configure.451</i></div><div><i>Log data follows:<=
/i></div><div><i>| DEBUG: Executing python function sysroot_cleansstate</i>=
</div><div><i>| DEBUG: Python function sysroot_cleansstate finished</i></di=
v><div><i>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &=
#39;arm-common&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;a=
rm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]</i></div><div=
><i>| DEBUG: Executing shell function autotools_preconfigure</i></div><div>=
<i>| DEBUG: Shell function autotools_preconfigure finished</i></div><div><i=
>| DEBUG: Executing python function autotools_copy_aclocals</i></div><div><=
i>| DEBUG: Python function autotools_copy_aclocals finished</i></div><div><=
i>| DEBUG: Executing shell function do_configure</i></div><div><i>| automak=
e (GNU automake) 1.14</i></div><div><i>| Copyright (C) 2013 Free Software F=
oundation, Inc.</i></div><div><i>| License GPLv2+: GNU GPL version 2 or lat=
er &lt;<a href=3D"http://gnu.org/licenses/gpl-2.0.html" style=3D"color:rgb(=
17,85,204)" target=3D"_blank">http://gnu.org/licenses/gpl-2<wbr>.0.html</a>=
&gt;</i></div><div><i>| This is free software: you are free to change and r=
edistribute it.</i></div><div><i>| There is NO WARRANTY, to the extent perm=
itted by law.</i></div><div><i>|=C2=A0</i></div><div><i>| Written by Tom Tr=
omey &lt;<a href=3D"mailto:tromey@redhat.com" style=3D"color:rgb(17,85,204)=
" target=3D"_blank">tromey@redhat.com</a>&gt;</i></div><div><i>|=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 and Alexandre Duret-Lutz &lt;<a href=3D"mailto:adl@gnu.or=
g" style=3D"color:rgb(17,85,204)" target=3D"_blank">adl@gnu.org</a>&gt;.</i=
></div><div><i>| AUTOV is 1</i></div><div><i>| NOTE: Executing ACLOCAL=3D&q=
uot;aclocal --system-acdir=3D/home/bharath/A<wbr>bhishek_WorkSpace/Projects=
/Ren<wbr>esas/RZG1H/iwave/build/Build_<wbr>As_On_23_feb_2018/build/tmp/<wbr=
>work/cortexa15hf-vfp-neon-poky<wbr>-linux-gnueabi/harfbuzz/1.3.0-<wbr>r0/b=
uild/aclocal-copy/&quot; autoreconf --verbose --install --force --exclude=
=3Dautopoint -I /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1=
H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018/build/tmp/work/cortex<wbr>a=
15hf-vfp-neon-poky-linux-<wbr>gnueabi/harfbuzz/1.3.0-r0/<wbr>harfbuzz-1.3.0=
/m4/</i></div><div><i>| autoreconf: Entering directory `.&#39;</i></div><di=
v><i>| autoreconf:<span>=C2=A0</span><a href=3D"http://configure.ac/" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">configure.ac</a>: not using Get=
text</i></div><div><i>| autoreconf: running: aclocal --system-acdir=3D/home=
/bharath/A<wbr>bhishek_WorkSpace/Projects/Ren<wbr>esas/RZG1H/iwave/build/Bu=
ild_<wbr>As_On_23_feb_2018/build/tmp/<wbr>work/cortexa15hf-vfp-neon-poky<wb=
r>-linux-gnueabi/harfbuzz/1.3.0-<wbr>r0/build/aclocal-copy/ -I /home/bharat=
h/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/<wbr>iwave/build/Build_As_=
On_23_<wbr>feb_2018/build/tmp/work/cortex<wbr>a15hf-vfp-neon-poky-linux-<wb=
r>gnueabi/harfbuzz/1.3.0-r0/<wbr>harfbuzz-1.3.0/m4/ -I /home/bharath/Abhish=
ek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/<wbr>iwave/build/Build_As_On_23_<w=
br>feb_2018/build/tmp/work/cortex<wbr>a15hf-vfp-neon-poky-linux-<wbr>gnueab=
i/harfbuzz/1.3.0-r0/<wbr>harfbuzz-1.3.0/m4/ --force -I m4</i></div><div><i>=
| autoreconf:<span>=C2=A0</span><a href=3D"http://configure.ac/" style=3D"c=
olor:rgb(17,85,204)" target=3D"_blank">configure.ac</a>: tracing</i></div><=
div><i>| autoreconf: running: libtoolize --copy --force</i></div><div><i>| =
libtoolize: putting auxiliary files in `.&#39;.</i></div><div><i>| libtooli=
ze: copying file `./ltmain.sh&#39;</i></div><div><i>| libtoolize: putting m=
acros in AC_CONFIG_MACRO_DIR, `m4&#39;.</i></div><div><i>| libtoolize: copy=
ing file `m4/libtool.m4&#39;</i></div><div><i>| libtoolize: copying file `m=
4/ltoptions.m4&#39;</i></div><div><i>| libtoolize: copying file `m4/ltsugar=
.m4&#39;</i></div><div><i>| libtoolize: copying file `m4/ltversion.m4&#39;<=
/i></div><div><i>| libtoolize: copying file `m4/lt~obsolete.m4&#39;</i></di=
v><div><i>| autoreconf: running: /home/bharath/Abhishek_WorkSpa<wbr>ce/Proj=
ects/Renesas/RZG1H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018/build/tmp/=
sysroots/<wbr>x86_64-linux/usr/bin/autoconf --include=3D/home/bharath/Abhis=
h<wbr>ek_WorkSpace/Projects/Renesas/<wbr>RZG1H/iwave/build/Build_As_On_<wbr=
>23_feb_2018/build/tmp/work/<wbr>cortexa15hf-vfp-neon-poky-<wbr>linux-gnuea=
bi/harfbuzz/1.3.0-<wbr>r0/harfbuzz-1.3.0/m4/ --force</i></div><div><i>| con=
figure:17934: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR</i></=
div><div><i>|=C2=A0 =C2=A0 =C2=A0 =C2=A0If this token and others are legiti=
mate, please use m4_pattern_allow.</i></div><div><i>|=C2=A0 =C2=A0 =C2=A0 =
=C2=A0See the Autoconf documentation.</i></div><div><i>| autoreconf: /home/=
bharath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/<wbr>iwave/build/Bui=
ld_As_On_23_<wbr>feb_2018/build/tmp/sysroots/<wbr>x86_64-linux/usr/bin/auto=
conf failed with exit status: 1</i></div><div><i>| ERROR: autoreconf execut=
ion failed.</i></div><div><i>| WARNING: exit code 1 from a shell command.</=
i></div><div><i>| ERROR: Function failed: do_configure (log file is located=
 at /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/<wbr>iwave=
/build/Build_As_On_23_<wbr>feb_2018/build/tmp/work/cortex<wbr>a15hf-vfp-neo=
n-poky-linux-<wbr>gnueabi/harfbuzz/1.3.0-r0/<wbr>temp/log.do_configure.451)=
</i></div><div><i>ERROR: Task 5 (/home/bharath/Abhishek_WorkSp<wbr>ace/Proj=
ects/Renesas/RZG1H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018/build/../p=
oky/meta/<wbr>recipes-graphics/harfbuzz/<a href=3D"http://harfbuzz_1.3.0.bb=
/" style=3D"color:rgb(17,85,204)" target=3D"_blank">harf<wbr>buzz_1.3.0.bb<=
/a>, do_configure) failed with exit code &#39;1&#39;</i></div><div><br></di=
v><div>Any help will be appreciated.</div></div><div><div class=3D"m_623343=
9929871564494gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div><br></div></div></div></div></div></div></div></div></div></div><=
/div>
</div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--f403045d9a50bc85af056657dfc4--
