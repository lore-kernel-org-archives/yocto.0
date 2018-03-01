Return-Path: <abhishekh@relysys.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E5A8E00E16; Thu,  1 Mar 2018 03:36:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12746E00DCA
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 03:36:43 -0800 (PST)
Received: by mail-ua0-f177.google.com with SMTP id b23so3644277uak.9
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 03:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=relysys-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jq5AF7mfQaJ19zIMNGwpEsyfqzrg5SmfSvGgPQNqXok=;
	b=gnpwwg4zuTvmiQ3utNn9hsgjig3BkdWlnuhuh4/AfzYQEBWk0IGSY3viEaQJm4Gdfo
	PKLsutL8W5GgqbKaZrWQ/HQI+TivfQmgFNNoOIVTCUn1Ayk9yPdrDlkbe+/ph8279X1y
	XZRRGWrm09jTwoIai74bYuCiHUJyUiTT3KsaWfb5EtsMDXL8WMvcwI3oRrbc5Jq7j0pT
	QqlSgeEnIN+mq4/ytln6nvL1MN5Ps1Zts+ppH7DHrSee8RVLqX7O85k1yGft/em/nSRQ
	yyyPnLhhgJBSND0ZSqng5fvsxoopbqI8NzXVRsLu6J52EgEIIj1S7FGt/7t35jRKvjw0
	fcag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jq5AF7mfQaJ19zIMNGwpEsyfqzrg5SmfSvGgPQNqXok=;
	b=Aw4JbXC+/J/nJjDlQg18MfYzr031cij6clyrZCqdxCrIfOVgillkgUSfJj7Lx/ErOg
	yQnKfmWVZzmPKq/cYLyxG63rURH/BUasu0aytVykuH/36IYgaMP+P4f5mTep50m9z4rM
	8I6kJXzxLGPYa9hsWGlF5xPeBgiOrcM0yfHnxYvrvInMuhcGNnKTnpad/5lKOz+05XXF
	84QGyoEiGu9jmxaUiVn8TaAWAud3AXpPPYE/vmqQKgz/AJdklLdswbUZUQRT7OIn3LW+
	ZL96MT4dKvHZ8dxUws83oGZffm+ebkPkikLrCzts60mxbnepCnSCU15s9sCWjpDeJNRm
	A/Dg==
X-Gm-Message-State: AElRT7FeXSi/tBJxvcovaMZiSJV0K/cjN95VCpG4nPP5RhD1xTuJCSx1
	ceWq5yiiM46uZiv+tjqdkm1hzqbnpjNUgmMFln+rbkfl
X-Google-Smtp-Source: AG47ELtiKQtmBbwFfJ0TValU++1AvmoJqXrreU3Fh3D+jna/a+L3QhFKBtDwd/jeqVPVVCB9xzBe9yQ4Vz8jQpELu6w=
X-Received: by 10.176.24.90 with SMTP id j26mr990546uag.109.1519904202809;
	Thu, 01 Mar 2018 03:36:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.93.69 with HTTP; Thu, 1 Mar 2018 03:36:42 -0800 (PST)
In-Reply-To: <CAJTo0Laa5_7_hn=fHpuG8jVeqE-b4kzMAsCLgJOVQPke2T3Xhg@mail.gmail.com>
References: <CANPqCWLBrSwCRbKXePqdmGv2exou5smjq-R9D5yvB6MjQZPqKg@mail.gmail.com>
	<CAJTo0Laa5_7_hn=fHpuG8jVeqE-b4kzMAsCLgJOVQPke2T3Xhg@mail.gmail.com>
From: Abhishekh Awanti <abhishekh@relysys.co.in>
Date: Thu, 1 Mar 2018 17:06:42 +0530
Message-ID: <CANPqCWLqkkEPKVmoJOiqHv-Ym30fguHDMrzsYnfMciwJSqFe3A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Thu, 01 Mar 2018 11:36:46 -0000
Content-Type: multipart/alternative; boundary="f403043c693419f71205665846c7"

--f403043c693419f71205665846c7
Content-Type: text/plain; charset="UTF-8"

yeah the pkgconfig has been inherited.
If i delete the tmp/ , again i have to recompile my whole build? Is tat you
wanted to do me?


Thanks and Regards,
Abhishek Awanti
Mob: +919620666017

On Thu, Mar 1, 2018 at 4:37 PM, Burton, Ross <ross.burton@intel.com> wrote:

> That usually means that the recipe doesn't inherit pkgconfig, but as this
> is an oe-core recipe it should be doing this.  Can you verify this, and if
> you can still reproduce it after deleting tmp/ then please attach the
> entire log.do_configure.
>
> Ross
>
> On 1 March 2018 at 10:21, Abhishekh Awanti <abhishekh@relysys.co.in>
> wrote:
>
>> Hi,
>>
>> I am trying to build the package "*harfbuzz-1.3.0" ,  *but i am getting
>> the following configure error
>>
>> *Build Configuration:*
>> *BB_VERSION        = "1.22.0"*
>> *BUILD_SYS         = "x86_64-linux"*
>> *NATIVELSBSTRING   = "Ubuntu-14.04"*
>> *TARGET_SYS        = "arm-poky-linux-gnueabi"*
>> *MACHINE           = "iwg21m"*
>> *DISTRO            = "poky"*
>> *DISTRO_VERSION    = "1.6.1"*
>> *TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa15"*
>> *TARGET_FPU        = "vfp-neon"*
>> *meta              *
>> *meta-yocto        *
>> *meta-yocto-bsp    = "hmi_tmp:9febda430a88ba23b539394e5d54b59ae87405f6"*
>> *meta-renesas      *
>> *meta-rzg1         = "master:2ea602f03b9c2378c1d7dc28675a675d18edb0e3"*
>> *meta-oe           *
>> *meta-multimedia   *
>> *meta-networking   = "hmi_tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"*
>> *meta-linaro-toolchain =
>> "hmi_build:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"*
>> *common            *
>> *hmi-demo          = "master:2cdb73bb902ecd4462cd0a4a66d5d116d0f7c113"*
>> *meta-ndvr         = "<unknown>:<unknown>"*
>>
>> *NOTE: Preparing runqueue*
>> *NOTE: Executing SetScene Tasks*
>> *NOTE: Executing RunQueue Tasks*
>> *ERROR: Function failed: do_configure (log file is located at
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)*
>> *ERROR: Logfile of failure stored in:
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451*
>> *Log data follows:*
>> *| DEBUG: Executing python function sysroot_cleansstate*
>> *| DEBUG: Python function sysroot_cleansstate finished*
>> *| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']*
>> *| DEBUG: Executing shell function autotools_preconfigure*
>> *| DEBUG: Shell function autotools_preconfigure finished*
>> *| DEBUG: Executing python function autotools_copy_aclocals*
>> *| DEBUG: Python function autotools_copy_aclocals finished*
>> *| DEBUG: Executing shell function do_configure*
>> *| automake (GNU automake) 1.14*
>> *| Copyright (C) 2013 Free Software Foundation, Inc.*
>> *| License GPLv2+: GNU GPL version 2 or later
>> <http://gnu.org/licenses/gpl-2.0.html
>> <http://gnu.org/licenses/gpl-2.0.html>>*
>> *| This is free software: you are free to change and redistribute it.*
>> *| There is NO WARRANTY, to the extent permitted by law.*
>> *| *
>> *| Written by Tom Tromey <tromey@redhat.com <tromey@redhat.com>>*
>> *|        and Alexandre Duret-Lutz <adl@gnu.org <adl@gnu.org>>.*
>> *| AUTOV is 1*
>> *| NOTE: Executing ACLOCAL="aclocal
>> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/"
>> autoreconf --verbose --install --force --exclude=autopoint -I
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/*
>> *| autoreconf: Entering directory `.'*
>> *| autoreconf: configure.ac <http://configure.ac/>: not using Gettext*
>> *| autoreconf: running: aclocal
>> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/
>> -I
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>> -I
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>> --force -I m4*
>> *| autoreconf: configure.ac <http://configure.ac/>: tracing*
>> *| autoreconf: running: libtoolize --copy --force*
>> *| libtoolize: putting auxiliary files in `.'.*
>> *| libtoolize: copying file `./ltmain.sh'*
>> *| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.*
>> *| libtoolize: copying file `m4/libtool.m4'*
>> *| libtoolize: copying file `m4/ltoptions.m4'*
>> *| libtoolize: copying file `m4/ltsugar.m4'*
>> *| libtoolize: copying file `m4/ltversion.m4'*
>> *| libtoolize: copying file `m4/lt~obsolete.m4'*
>> *| autoreconf: running:
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
>> --include=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>> --force*
>> *| configure:17934: error: possibly undefined macro:
>> PKG_CONFIG_SYSROOT_DIR*
>> *|       If this token and others are legitimate, please use
>> m4_pattern_allow.*
>> *|       See the Autoconf documentation.*
>> *| autoreconf:
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
>> failed with exit status: 1*
>> *| ERROR: autoreconf execution failed.*
>> *| WARNING: exit code 1 from a shell command.*
>> *| ERROR: Function failed: do_configure (log file is located at
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)*
>> *ERROR: Task 5
>> (/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/../poky/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.0.bb
>> <http://harfbuzz_1.3.0.bb/>, do_configure) failed with exit code '1'*
>>
>> Any help will be appreciated.
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--f403043c693419f71205665846c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">yeah the=C2=A0<span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline">pkgconfig has bee=
n inherited.</span><div><span style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline">If i delete the tmp/ , a=
gain i have to recompile my whole build? Is tat you wanted to do me?</span>=
</div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div><spa=
n style=3D"color:rgb(11,83,148)"><span style=3D"font-family:comic sans ms,s=
ans-serif"><br>Thanks and Regards,<br>Abhishek Awanti<br>Mob: +919620666017=
</span></span><br></div></div></div></div></div></div></div></div></div></d=
iv></div>
<br><div class=3D"gmail_quote">On Thu, Mar 1, 2018 at 4:37 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">That usually means that the recipe doesn&#39;t i=
nherit pkgconfig, but as this is an oe-core recipe it should be doing this.=
=C2=A0 Can you verify this, and if you can still reproduce it after deletin=
g tmp/ then please attach the entire log.do_configure.<div><br></div><div>R=
oss</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><d=
iv><div class=3D"h5">On 1 March 2018 at 10:21, Abhishekh Awanti <span dir=
=3D"ltr">&lt;<a href=3D"mailto:abhishekh@relysys.co.in" target=3D"_blank">a=
bhishekh@relysys.co.in</a>&gt;</span> wrote:<br></div></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div><div class=3D"h5"><div dir=3D"ltr"><span style=3D"colo=
r:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline">Hi,</span><div style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial">I am trying to build the package &quot;<i>harfb=
uzz-1.3.0&quot; ,=C2=A0<span>=C2=A0</span></i>but i=C2=A0am getting the fol=
lowing configure error</div><div style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial"><br></div><div style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial"><div><i>Build Configuration:</i></div=
><div><i>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.22.0&quot;</i></=
div><div><i>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-lin=
ux&quot;</i></div><div><i>NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.0=
4&quot;</i></div><div><i>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;ar=
m-poky-linux-gnueabi&quot;</i></div><div><i>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;iwg21m&quot;</i></div><div><i>DISTRO=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;</i></div><div><i>DISTR=
O_VERSION=C2=A0 =C2=A0 =3D &quot;1.6.1&quot;</i></div><div><i>TUNE_FEATURES=
=C2=A0 =C2=A0 =C2=A0=3D &quot;armv7a vfp neon callconvention-hard cortexa15=
&quot;</i></div><div><i>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp=
-neon&quot;</i></div><div><i>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</i></div><div><i>meta-yocto=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</=
i></div><div><i>meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;hmi_tmp:9febda430a88b=
a23b5393<wbr>94e5d54b59ae87405f6&quot;</i></div><div><i>meta-renesas=C2=A0 =
=C2=A0 =C2=A0=C2=A0</i></div><div><i>meta-rzg1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;master:2ea602f03b9c2378c1d7dc<wbr>28675a675d18edb0e3&quot;<=
/i></div><div><i>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</i></div>=
<div><i>meta-multimedia=C2=A0 =C2=A0</i></div><div><i>meta-networking=C2=A0=
 =C2=A0=3D &quot;hmi_tmp:dca466c074c9a35bc0133<wbr>e7e0d65cca0731e2acf&quot=
;</i></div><div><i>meta-linaro-toolchain =3D &quot;hmi_build:8a0601723c06fd=
b75e6<wbr>2aa0f0cf15fc9d7d90167&quot;</i></div><div><i>common=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><div><i>hmi-demo=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;master:2cdb73bb902ecd4462cd0a<wbr>4a66d5d116=
d0f7c113&quot;</i></div><div><i>meta-ndvr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</i></div><div><i><br></i></=
div><div><i>NOTE: Preparing runqueue</i></div><div><i>NOTE: Executing SetSc=
ene Tasks</i></div><div><i>NOTE: Executing RunQueue Tasks</i></div><div><i>=
ERROR: Function failed: do_configure (log file is located at /home/bharath/=
Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/iwav<wbr>e/build/Build_As_On=
_23_feb_<wbr>2018/build/tmp/work/cortexa15h<wbr>f-vfp-neon-poky-linux-gnuea=
bi/<wbr>harfbuzz/1.3.0-r0/temp/log.do_<wbr>configure.451)</i></div><div><i>=
ERROR: Logfile of failure stored in: /home/bharath/Abhishek_WorkSpa<wbr>ce/=
Projects/Renesas/RZG1H/iwav<wbr>e/build/Build_As_On_23_feb_<wbr>2018/build/=
tmp/work/cortexa15h<wbr>f-vfp-neon-poky-linux-gnueabi/<wbr>harfbuzz/1.3.0-r=
0/temp/log.do_<wbr>configure.451</i></div><div><i>Log data follows:</i></di=
v><div><i>| DEBUG: Executing python function sysroot_cleansstate</i></div><=
div><i>| DEBUG: Python function sysroot_cleansstate finished</i></div><div>=
<i>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm=
-common&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linu=
x&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]</i></div><div><i>| D=
EBUG: Executing shell function autotools_preconfigure</i></div><div><i>| DE=
BUG: Shell function autotools_preconfigure finished</i></div><div><i>| DEBU=
G: Executing python function autotools_copy_aclocals</i></div><div><i>| DEB=
UG: Python function autotools_copy_aclocals finished</i></div><div><i>| DEB=
UG: Executing shell function do_configure</i></div><div><i>| automake (GNU =
automake) 1.14</i></div><div><i>| Copyright (C) 2013 Free Software Foundati=
on, Inc.</i></div><div><i>| License GPLv2+: GNU GPL version 2 or later &lt;=
<a href=3D"http://gnu.org/licenses/gpl-2.0.html" style=3D"color:rgb(17,85,2=
04)" target=3D"_blank">http://gnu.org/licenses/gpl-2<wbr>.0.html</a>&gt;</i=
></div><div><i>| This is free software: you are free to change and redistri=
bute it.</i></div><div><i>| There is NO WARRANTY, to the extent permitted b=
y law.</i></div><div><i>|=C2=A0</i></div><div><i>| Written by Tom Tromey &l=
t;<a href=3D"mailto:tromey@redhat.com" style=3D"color:rgb(17,85,204)" targe=
t=3D"_blank">tromey@redhat.com</a>&gt;</i></div><div><i>|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 and Alexandre Duret-Lutz &lt;<a href=3D"mailto:adl@gnu.org" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">adl@gnu.org</a>&gt;.</i></div>=
<div><i>| AUTOV is 1</i></div><div><i>| NOTE: Executing ACLOCAL=3D&quot;acl=
ocal --system-acdir=3D/home/bharath/A<wbr>bhishek_WorkSpace/Projects/Ren<wb=
r>esas/RZG1H/iwave/build/Build_A<wbr>s_On_23_feb_2018/build/tmp/wor<wbr>k/c=
ortexa15hf-vfp-neon-poky-<wbr>linux-gnueabi/harfbuzz/1.3.0-r<wbr>0/build/ac=
local-copy/&quot; autoreconf --verbose --install --force --exclude=3Dautopo=
int -I /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/iwav<wb=
r>e/build/Build_As_On_23_feb_<wbr>2018/build/tmp/work/cortexa15h<wbr>f-vfp-=
neon-poky-linux-gnueabi/<wbr>harfbuzz/1.3.0-r0/harfbuzz-1.<wbr>3.0/m4/</i><=
/div><div><i>| autoreconf: Entering directory `.&#39;</i></div><div><i>| au=
toreconf:<span>=C2=A0</span><a href=3D"http://configure.ac/" style=3D"color=
:rgb(17,85,204)" target=3D"_blank">configure.ac</a>: not using Gettext</i><=
/div><div><i>| autoreconf: running: aclocal --system-acdir=3D/home/bharath/=
A<wbr>bhishek_WorkSpace/Projects/Ren<wbr>esas/RZG1H/iwave/build/Build_A<wbr=
>s_On_23_feb_2018/build/tmp/wor<wbr>k/cortexa15hf-vfp-neon-poky-<wbr>linux-=
gnueabi/harfbuzz/1.3.0-r<wbr>0/build/aclocal-copy/ -I /home/bharath/Abhishe=
k_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/iwav<wbr>e/build/Build_As_On_23_feb=
_<wbr>2018/build/tmp/work/cortexa15h<wbr>f-vfp-neon-poky-linux-gnueabi/<wbr=
>harfbuzz/1.3.0-r0/harfbuzz-1.<wbr>3.0/m4/ -I /home/bharath/Abhishek_WorkSp=
a<wbr>ce/Projects/Renesas/RZG1H/iwav<wbr>e/build/Build_As_On_23_feb_<wbr>20=
18/build/tmp/work/cortexa15h<wbr>f-vfp-neon-poky-linux-gnueabi/<wbr>harfbuz=
z/1.3.0-r0/harfbuzz-1.<wbr>3.0/m4/ --force -I m4</i></div><div><i>| autorec=
onf:<span>=C2=A0</span><a href=3D"http://configure.ac/" style=3D"color:rgb(=
17,85,204)" target=3D"_blank">configure.ac</a>: tracing</i></div><div><i>| =
autoreconf: running: libtoolize --copy --force</i></div><div><i>| libtooliz=
e: putting auxiliary files in `.&#39;.</i></div><div><i>| libtoolize: copyi=
ng file `./ltmain.sh&#39;</i></div><div><i>| libtoolize: putting macros in =
AC_CONFIG_MACRO_DIR, `m4&#39;.</i></div><div><i>| libtoolize: copying file =
`m4/libtool.m4&#39;</i></div><div><i>| libtoolize: copying file `m4/ltoptio=
ns.m4&#39;</i></div><div><i>| libtoolize: copying file `m4/ltsugar.m4&#39;<=
/i></div><div><i>| libtoolize: copying file `m4/ltversion.m4&#39;</i></div>=
<div><i>| libtoolize: copying file `m4/lt~obsolete.m4&#39;</i></div><div><i=
>| autoreconf: running: /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Rene=
sas/RZG1H/iwav<wbr>e/build/Build_As_On_23_feb_<wbr>2018/build/tmp/sysroots/=
x86_<wbr>64-linux/usr/bin/autoconf --include=3D/home/bharath/Abhish<wbr>ek_=
WorkSpace/Projects/Renesas/<wbr>RZG1H/iwave/build/Build_As_On_<wbr>23_feb_2=
018/build/tmp/work/cor<wbr>texa15hf-vfp-neon-poky-linux-<wbr>gnueabi/harfbu=
zz/1.3.0-r0/<wbr>harfbuzz-1.3.0/m4/ --force</i></div><div><i>| configure:17=
934: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR</i></div><div>=
<i>|=C2=A0 =C2=A0 =C2=A0 =C2=A0If this token and others are legitimate, ple=
ase use m4_pattern_allow.</i></div><div><i>|=C2=A0 =C2=A0 =C2=A0 =C2=A0See =
the Autoconf documentation.</i></div><div><i>| autoreconf: /home/bharath/Ab=
hishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/iwav<wbr>e/build/Build_As_On_2=
3_feb_<wbr>2018/build/tmp/sysroots/x86_<wbr>64-linux/usr/bin/autoconf faile=
d with exit status: 1</i></div><div><i>| ERROR: autoreconf execution failed=
.</i></div><div><i>| WARNING: exit code 1 from a shell command.</i></div><d=
iv><i>| ERROR: Function failed: do_configure (log file is located at /home/=
bharath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/iwav<wbr>e/build/Bui=
ld_As_On_23_feb_<wbr>2018/build/tmp/work/cortexa15h<wbr>f-vfp-neon-poky-lin=
ux-gnueabi/<wbr>harfbuzz/1.3.0-r0/temp/log.do_<wbr>configure.451)</i></div>=
<div><i>ERROR: Task 5 (/home/bharath/Abhishek_WorkSp<wbr>ace/Projects/Renes=
as/RZG1H/iwa<wbr>ve/build/Build_As_On_23_feb_<wbr>2018/build/../poky/meta/r=
ecipe<wbr>s-graphics/harfbuzz/<a href=3D"http://harfbuzz_1.3.0.bb/" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">harfbuzz_<wbr>1.3.0.bb</a>, do_=
configure) failed with exit code &#39;1&#39;</i></div><div><br></div><div>A=
ny help will be appreciated.</div></div><div><div class=3D"m_-9141382509565=
209795m_6233439929871564494gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div><div><br></div></div></div></div></div></div></div></div><=
/div></div></div>
</div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--f403043c693419f71205665846c7--
