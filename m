Return-Path: <abhishekh@relysys.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FBE3E00E01; Thu,  1 Mar 2018 02:21:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7D66E00DC6
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 02:21:41 -0800 (PST)
Received: by mail-vk0-f45.google.com with SMTP id k187so3333767vke.12
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 02:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=relysys-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=3Tra7k0lCrCl8cY03qBvfCpicakDmf8NDy1h1CTX8ls=;
	b=rTJzaW1nEqxZ7LecveJpBspLMJ60d3yrO9Qc38TkTwr8EOLzr0JMmLBh8Zx4dikx7y
	F8TutVsH33zkUj6psY1QWvdI6DMCHf35Oiz0DrzOznXV/jCPOzST3sp1FfN3WUddGwNC
	6kViE4L6lmV6y+J6w9DFOFHLfr0kIWzdrrf8kk3a5ChFws5O9sUqQ/wbB7UrCNM5PoxL
	IX1VKfBo9RGbYGRhT1VMAjBZBSc9U8KMX69Ij5dkkL1cOgA/gTIu8JrFHDxGsYBvV3fB
	tM1DGbmFIdKIk+WRv5zjmqLTPlq7Qvps/X3NsAtRLz+lXcPNuVsdUxX2fd/QR6+5K1hq
	7x0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3Tra7k0lCrCl8cY03qBvfCpicakDmf8NDy1h1CTX8ls=;
	b=n1XwEDVA9j9CGU7pXIEgs+K3A9CabCxGeV+s82UgRMMzeL+gwh88ezAjY6mlJ0eIW1
	PE0G0xB+f+kJORl77wN9k+ChRZOgfycAzlRj5sNXaOJiv3e77oZ/t42N41ibqcDtEGx1
	ac4+ZAEypiRTednArHkUA7FpYy8gzkZ0HrO1DYYEUUsQkgRX2+7twvRoJk6TtWatpSog
	ypMc4YuROfFz3zg89rBI+n0inToaGgmaWHCclzgJomyZ4mLwrO4zPnb3ROm+UnhuTRg8
	fL60hM/ZEkHqn7lZhI6zxDeN5pWdljiNqWb8qjz4c5EGU+mqwFrjViYfVTMg0rkY6MCx
	ar2w==
X-Gm-Message-State: APf1xPDO0XOn6TZ3z6QkCOiPRKHeNKRmBnSs7Ijw0Cn86Zbf1pZtfwi+
	8ifMhU6uIZ4CvpVt7rJqqFe0IsjenRoYB5gDj8nMG+A0
X-Google-Smtp-Source: AG47ELsnscelPscVBAUsh3sF6n1MRa1gWOnlV4t5/d0LEGB30DppBmG6kXljG4xz3TwPlXgf0nAxp1BrlKcwpbXC+HE=
X-Received: by 10.31.200.66 with SMTP id y63mr687804vkf.99.1519899700691; Thu,
	01 Mar 2018 02:21:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.93.69 with HTTP; Thu, 1 Mar 2018 02:21:40 -0800 (PST)
From: Abhishekh Awanti <abhishekh@relysys.co.in>
Date: Thu, 1 Mar 2018 15:51:40 +0530
Message-ID: <CANPqCWLBrSwCRbKXePqdmGv2exou5smjq-R9D5yvB6MjQZPqKg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR
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
X-List-Received-Date: Thu, 01 Mar 2018 10:21:43 -0000
Content-Type: multipart/alternative; boundary="001a114ddbe4c11a630566573964"

--001a114ddbe4c11a630566573964
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to build the package "*harfbuzz-1.3.0" ,  *but i am getting the
following configure error

*Build Configuration:*
*BB_VERSION        = "1.22.0"*
*BUILD_SYS         = "x86_64-linux"*
*NATIVELSBSTRING   = "Ubuntu-14.04"*
*TARGET_SYS        = "arm-poky-linux-gnueabi"*
*MACHINE           = "iwg21m"*
*DISTRO            = "poky"*
*DISTRO_VERSION    = "1.6.1"*
*TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa15"*
*TARGET_FPU        = "vfp-neon"*
*meta              *
*meta-yocto        *
*meta-yocto-bsp    = "hmi_tmp:9febda430a88ba23b539394e5d54b59ae87405f6"*
*meta-renesas      *
*meta-rzg1         = "master:2ea602f03b9c2378c1d7dc28675a675d18edb0e3"*
*meta-oe           *
*meta-multimedia   *
*meta-networking   = "hmi_tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"*
*meta-linaro-toolchain =
"hmi_build:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"*
*common            *
*hmi-demo          = "master:2cdb73bb902ecd4462cd0a4a66d5d116d0f7c113"*
*meta-ndvr         = "<unknown>:<unknown>"*

*NOTE: Preparing runqueue*
*NOTE: Executing SetScene Tasks*
*NOTE: Executing RunQueue Tasks*
*ERROR: Function failed: do_configure (log file is located at
/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)*
*ERROR: Logfile of failure stored in:
/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451*
*Log data follows:*
*| DEBUG: Executing python function sysroot_cleansstate*
*| DEBUG: Python function sysroot_cleansstate finished*
*| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']*
*| DEBUG: Executing shell function autotools_preconfigure*
*| DEBUG: Shell function autotools_preconfigure finished*
*| DEBUG: Executing python function autotools_copy_aclocals*
*| DEBUG: Python function autotools_copy_aclocals finished*
*| DEBUG: Executing shell function do_configure*
*| automake (GNU automake) 1.14*
*| Copyright (C) 2013 Free Software Foundation, Inc.*
*| License GPLv2+: GNU GPL version 2 or later
<http://gnu.org/licenses/gpl-2.0.html
<http://gnu.org/licenses/gpl-2.0.html>>*
*| This is free software: you are free to change and redistribute it.*
*| There is NO WARRANTY, to the extent permitted by law.*
*| *
*| Written by Tom Tromey <tromey@redhat.com <tromey@redhat.com>>*
*|        and Alexandre Duret-Lutz <adl@gnu.org <adl@gnu.org>>.*
*| AUTOV is 1*
*| NOTE: Executing ACLOCAL="aclocal
--system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/"
autoreconf --verbose --install --force --exclude=autopoint -I
/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/*
*| autoreconf: Entering directory `.'*
*| autoreconf: configure.ac <http://configure.ac/>: not using Gettext*
*| autoreconf: running: aclocal
--system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/
-I
/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
-I
/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
--force -I m4*
*| autoreconf: configure.ac <http://configure.ac/>: tracing*
*| autoreconf: running: libtoolize --copy --force*
*| libtoolize: putting auxiliary files in `.'.*
*| libtoolize: copying file `./ltmain.sh'*
*| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.*
*| libtoolize: copying file `m4/libtool.m4'*
*| libtoolize: copying file `m4/ltoptions.m4'*
*| libtoolize: copying file `m4/ltsugar.m4'*
*| libtoolize: copying file `m4/ltversion.m4'*
*| libtoolize: copying file `m4/lt~obsolete.m4'*
*| autoreconf: running:
/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
--include=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
--force*
*| configure:17934: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR*
*|       If this token and others are legitimate, please use
m4_pattern_allow.*
*|       See the Autoconf documentation.*
*| autoreconf:
/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
failed with exit status: 1*
*| ERROR: autoreconf execution failed.*
*| WARNING: exit code 1 from a shell command.*
*| ERROR: Function failed: do_configure (log file is located at
/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)*
*ERROR: Task 5
(/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/../poky/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.0.bb
<http://harfbuzz_1.3.0.bb/>, do_configure) failed with exit code '1'*

Any help will be appreciated.

--001a114ddbe4c11a630566573964
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">Hi,</span><div style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial"><br></div><div style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial">I am tryin=
g to build the package &quot;<i>harfbuzz-1.3.0&quot; ,=C2=A0<span>=C2=A0</s=
pan></i>but i=C2=A0am getting the following configure error</div><div style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial"><br></div>=
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial">=
<div><i>Build Configuration:</i></div><div><i>BB_VERSION=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;1.22.0&quot;</i></div><div><i>BUILD_SYS=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;</i></div><div><i>NATIVELSB=
STRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;</i></div><div><i>TARGET_SYS=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;</i></div=
><div><i>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;iwg21m&q=
uot;</i></div><div><i>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;poky&quot;</i></div><div><i>DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.6.=
1&quot;</i></div><div><i>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;armv7a =
vfp neon callconvention-hard cortexa15&quot;</i></div><div><i>TARGET_FPU=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp-neon&quot;</i></div><div><i>meta=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><div><i>meta-y=
octo=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><div><i>meta-yocto-bsp=C2=A0=
 =C2=A0 =3D &quot;hmi_tmp:<wbr>9febda430a88ba23b539394e5d54b5<wbr>9ae87405f=
6&quot;</i></div><div><i>meta-renesas=C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><d=
iv><i>meta-rzg1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:<wbr>2ea6=
02f03b9c2378c1d7dc28675a67<wbr>5d18edb0e3&quot;</i></div><div><i>meta-oe=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</i></div><div><i>meta-multimedia=C2=
=A0 =C2=A0</i></div><div><i>meta-networking=C2=A0 =C2=A0=3D &quot;hmi_tmp:<=
wbr>dca466c074c9a35bc0133e7e0d65cc<wbr>a0731e2acf&quot;</i></div><div><i>me=
ta-linaro-toolchain =3D &quot;hmi_build:<wbr>8a0601723c06fdb75e62aa0f0cf15f=
<wbr>c9d7d90167&quot;</i></div><div><i>common=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0</i></div><div><i>hmi-demo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;master:<wbr>2cdb73bb902ecd4462cd0a4a66d5d1<wbr>16d0f7c113&=
quot;</i></div><div><i>meta-ndvr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;&lt;unknown&gt;:&lt;unknown&gt;&quot;</i></div><div><i><br></i></div><div>=
<i>NOTE: Preparing runqueue</i></div><div><i>NOTE: Executing SetScene Tasks=
</i></div><div><i>NOTE: Executing RunQueue Tasks</i></div><div><i>ERROR: Fu=
nction failed: do_configure (log file is located at /home/bharath/Abhishek_=
<wbr>WorkSpace/Projects/Renesas/<wbr>RZG1H/iwave/build/Build_As_On_<wbr>23_=
feb_2018/build/tmp/work/<wbr>cortexa15hf-vfp-neon-poky-<wbr>linux-gnueabi/h=
arfbuzz/1.3.0-<wbr>r0/temp/log.do_configure.451)</i></div><div><i>ERROR: Lo=
gfile of failure stored in: /home/bharath/Abhishek_<wbr>WorkSpace/Projects/=
Renesas/<wbr>RZG1H/iwave/build/Build_As_On_<wbr>23_feb_2018/build/tmp/work/=
<wbr>cortexa15hf-vfp-neon-poky-<wbr>linux-gnueabi/harfbuzz/1.3.0-<wbr>r0/te=
mp/log.do_configure.451</i></div><div><i>Log data follows:</i></div><div><i=
>| DEBUG: Executing python function sysroot_cleansstate</i></div><div><i>| =
DEBUG: Python function sysroot_cleansstate finished</i></div><div><i>| DEBU=
G: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#=
39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &=
#39;arm-linux-gnueabi&#39;, &#39;common&#39;]</i></div><div><i>| DEBUG: Exe=
cuting shell function autotools_preconfigure</i></div><div><i>| DEBUG: Shel=
l function autotools_preconfigure finished</i></div><div><i>| DEBUG: Execut=
ing python function autotools_copy_aclocals</i></div><div><i>| DEBUG: Pytho=
n function autotools_copy_aclocals finished</i></div><div><i>| DEBUG: Execu=
ting shell function do_configure</i></div><div><i>| automake (GNU automake)=
 1.14</i></div><div><i>| Copyright (C) 2013 Free Software Foundation, Inc.<=
/i></div><div><i>| License GPLv2+: GNU GPL version 2 or later &lt;<a href=
=3D"http://gnu.org/licenses/gpl-2.0.html" target=3D"_blank" style=3D"color:=
rgb(17,85,204)">http://gnu.org/licenses/gpl-<wbr>2.0.html</a>&gt;</i></div>=
<div><i>| This is free software: you are free to change and redistribute it=
.</i></div><div><i>| There is NO WARRANTY, to the extent permitted by law.<=
/i></div><div><i>|=C2=A0</i></div><div><i>| Written by Tom Tromey &lt;<a hr=
ef=3D"mailto:tromey@redhat.com" target=3D"_blank" style=3D"color:rgb(17,85,=
204)">tromey@redhat.com</a>&gt;</i></div><div><i>|=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 and Alexandre Duret-Lutz &lt;<a href=3D"mailto:adl@gnu.org" target=3D"_=
blank" style=3D"color:rgb(17,85,204)">adl@gnu.org</a>&gt;.</i></div><div><i=
>| AUTOV is 1</i></div><div><i>| NOTE: Executing ACLOCAL=3D&quot;aclocal --=
system-acdir=3D/home/bharath/<wbr>Abhishek_WorkSpace/Projects/<wbr>Renesas/=
RZG1H/iwave/build/<wbr>Build_As_On_23_feb_2018/build/<wbr>tmp/work/cortexa1=
5hf-vfp-neon-<wbr>poky-linux-gnueabi/harfbuzz/1.<wbr>3.0-r0/build/aclocal-c=
opy/&quot; autoreconf --verbose --install --force --exclude=3Dautopoint -I =
/home/bharath/Abhishek_<wbr>WorkSpace/Projects/Renesas/<wbr>RZG1H/iwave/bui=
ld/Build_As_On_<wbr>23_feb_2018/build/tmp/work/<wbr>cortexa15hf-vfp-neon-po=
ky-<wbr>linux-gnueabi/harfbuzz/1.3.0-<wbr>r0/harfbuzz-1.3.0/m4/</i></div><d=
iv><i>| autoreconf: Entering directory `.&#39;</i></div><div><i>| autorecon=
f:<span>=C2=A0</span><a href=3D"http://configure.ac/" target=3D"_blank" sty=
le=3D"color:rgb(17,85,204)">configure.ac</a>: not using Gettext</i></div><d=
iv><i>| autoreconf: running: aclocal --system-acdir=3D/home/bharath/<wbr>Ab=
hishek_WorkSpace/Projects/<wbr>Renesas/RZG1H/iwave/build/<wbr>Build_As_On_2=
3_feb_2018/build/<wbr>tmp/work/cortexa15hf-vfp-neon-<wbr>poky-linux-gnueabi=
/harfbuzz/1.<wbr>3.0-r0/build/aclocal-copy/ -I /home/bharath/Abhishek_<wbr>=
WorkSpace/Projects/Renesas/<wbr>RZG1H/iwave/build/Build_As_On_<wbr>23_feb_2=
018/build/tmp/work/<wbr>cortexa15hf-vfp-neon-poky-<wbr>linux-gnueabi/harfbu=
zz/1.3.0-<wbr>r0/harfbuzz-1.3.0/m4/ -I /home/bharath/Abhishek_<wbr>WorkSpac=
e/Projects/Renesas/<wbr>RZG1H/iwave/build/Build_As_On_<wbr>23_feb_2018/buil=
d/tmp/work/<wbr>cortexa15hf-vfp-neon-poky-<wbr>linux-gnueabi/harfbuzz/1.3.0=
-<wbr>r0/harfbuzz-1.3.0/m4/ --force -I m4</i></div><div><i>| autoreconf:<sp=
an>=C2=A0</span><a href=3D"http://configure.ac/" target=3D"_blank" style=3D=
"color:rgb(17,85,204)">configure.ac</a>: tracing</i></div><div><i>| autorec=
onf: running: libtoolize --copy --force</i></div><div><i>| libtoolize: putt=
ing auxiliary files in `.&#39;.</i></div><div><i>| libtoolize: copying file=
 `./ltmain.sh&#39;</i></div><div><i>| libtoolize: putting macros in AC_CONF=
IG_MACRO_DIR, `m4&#39;.</i></div><div><i>| libtoolize: copying file `m4/lib=
tool.m4&#39;</i></div><div><i>| libtoolize: copying file `m4/ltoptions.m4&#=
39;</i></div><div><i>| libtoolize: copying file `m4/ltsugar.m4&#39;</i></di=
v><div><i>| libtoolize: copying file `m4/ltversion.m4&#39;</i></div><div><i=
>| libtoolize: copying file `m4/lt~obsolete.m4&#39;</i></div><div><i>| auto=
reconf: running: /home/bharath/Abhishek_<wbr>WorkSpace/Projects/Renesas/<wb=
r>RZG1H/iwave/build/Build_As_On_<wbr>23_feb_2018/build/tmp/<wbr>sysroots/x8=
6_64-linux/usr/bin/<wbr>autoconf --include=3D/home/bharath/<wbr>Abhishek_Wo=
rkSpace/Projects/<wbr>Renesas/RZG1H/iwave/build/<wbr>Build_As_On_23_feb_201=
8/build/<wbr>tmp/work/cortexa15hf-vfp-neon-<wbr>poky-linux-gnueabi/harfbuzz=
/1.<wbr>3.0-r0/harfbuzz-1.3.0/m4/ --force</i></div><div><i>| configure:1793=
4: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR</i></div><div><i=
>|=C2=A0 =C2=A0 =C2=A0 =C2=A0If this token and others are legitimate, pleas=
e use m4_pattern_allow.</i></div><div><i>|=C2=A0 =C2=A0 =C2=A0 =C2=A0See th=
e Autoconf documentation.</i></div><div><i>| autoreconf: /home/bharath/Abhi=
shek_<wbr>WorkSpace/Projects/Renesas/<wbr>RZG1H/iwave/build/Build_As_On_<wb=
r>23_feb_2018/build/tmp/<wbr>sysroots/x86_64-linux/usr/bin/<wbr>autoconf fa=
iled with exit status: 1</i></div><div><i>| ERROR: autoreconf execution fai=
led.</i></div><div><i>| WARNING: exit code 1 from a shell command.</i></div=
><div><i>| ERROR: Function failed: do_configure (log file is located at /ho=
me/bharath/Abhishek_<wbr>WorkSpace/Projects/Renesas/<wbr>RZG1H/iwave/build/=
Build_As_On_<wbr>23_feb_2018/build/tmp/work/<wbr>cortexa15hf-vfp-neon-poky-=
<wbr>linux-gnueabi/harfbuzz/1.3.0-<wbr>r0/temp/log.do_configure.451)</i></d=
iv><div><i>ERROR: Task 5 (/home/bharath/Abhishek_<wbr>WorkSpace/Projects/Re=
nesas/<wbr>RZG1H/iwave/build/Build_As_On_<wbr>23_feb_2018/build/../poky/<wb=
r>meta/recipes-graphics/<wbr>harfbuzz/<a href=3D"http://harfbuzz_1.3.0.bb/"=
 target=3D"_blank" style=3D"color:rgb(17,85,204)">harfbuzz_1.3.0.bb</a>, do=
_configure) failed with exit code &#39;1&#39;</i></div><div><br></div><div>=
Any help will be appreciated.</div></div><div><div class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div><br></div></div></di=
v></div></div></div></div></div></div></div></div>
</div>

--001a114ddbe4c11a630566573964--
