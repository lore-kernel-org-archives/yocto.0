Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C279E00E02; Thu,  1 Mar 2018 03:38:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_10_20,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33405E00DCA
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 03:38:53 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id v6so6779890iog.7
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 03:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+1KV8++vMI0iEvPY17tfE3QPDU+lvIU71KVWonl385c=;
	b=AR5v9+wQhkxlHIlXixBVam9N0u67Wd3RESqFKbroz4bZAiv3FyddFaT+aKuA4RibqN
	Y2z/us9I1DWG/0svm1sqq2FCDBZJc88a2J/CsKd+lY9m4A3zjgbuYWuMMc2jQaiNGNw8
	iPT4wSy4Tk8UdzGWOnP0Ag7Cx2cMNYTVpluFCGbtyKXHO/BR5qHJKjnII2vME5g9e/Pw
	TxbxXdJglCgceAZjAIOth+OIqFZurEHcWV8Uvc4zkHbZNKSkn8eoIhuoKg1NaAHkdV9A
	PCM4liGfmbEIC1yyrQ85W38kViUpHl74gJPLnxhD5ByU55roGxowYH/X8mgpl4skJRjh
	cjPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+1KV8++vMI0iEvPY17tfE3QPDU+lvIU71KVWonl385c=;
	b=Ab1cGEcnthN+mk5o2od+OCNb+yrFZQKAqcDQf/7N//SH12a8WaAOVlpBVtOUtmbgnY
	wmJ+FTnoqil9kMtVdvKM0LCb6R1iDteTWjo7zdwd6EBPr2YtD8PllV6noY8xvWy8/edD
	G+mUN8HDuOju9YVeIYO4eSwjkEj2+dmn+dlQ3/pcrGgWe+csvwYDqnlIZE01FIN2Aoak
	E/OZN9RSM+/1tu8FbV2zvP4EZiPLOrGASYOR9HxtvdAjvfEOLCv4BVMII1chJC4keBos
	GOY375Lcxkipcu2IH+kZT0lA4J51Q+MaAzDH9mMbfLlFNO/S6Oa9ALLPdzqNd4jI4vRz
	E7fQ==
X-Gm-Message-State: AElRT7HnINGVC48Ots+1X4y1g7y6elNn4grhTHi4r5Y4BXDMYSAs5HZr
	52B7yQxtJ4WY5RPgdzIEJRbTJsCGjUFfGLAra5xXeQ==
X-Google-Smtp-Source: AG47ELvcH7meqTbb7ZSkVSSzmC94okUerFD/lKYq6F2geGLPrQliyVHzM3l60hZUKxgnS9WcseT1zT1kzDiZIb7eC/8=
X-Received: by 10.107.183.76 with SMTP id h73mr1545353iof.201.1519904333098;
	Thu, 01 Mar 2018 03:38:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.200 with HTTP; Thu, 1 Mar 2018 03:38:32 -0800 (PST)
In-Reply-To: <CANPqCWLqkkEPKVmoJOiqHv-Ym30fguHDMrzsYnfMciwJSqFe3A@mail.gmail.com>
References: <CANPqCWLBrSwCRbKXePqdmGv2exou5smjq-R9D5yvB6MjQZPqKg@mail.gmail.com>
	<CAJTo0Laa5_7_hn=fHpuG8jVeqE-b4kzMAsCLgJOVQPke2T3Xhg@mail.gmail.com>
	<CANPqCWLqkkEPKVmoJOiqHv-Ym30fguHDMrzsYnfMciwJSqFe3A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 1 Mar 2018 11:38:32 +0000
Message-ID: <CAJTo0LZpRNDc8aqq0bh5Hr=-RP4wy2+efXfDRDRh78=o=5CQDQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 01 Mar 2018 11:38:55 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b9e3ade092d0566584df2"

--94eb2c0b9e3ade092d0566584df2
Content-Type: text/plain; charset="UTF-8"

Assuming you don't delete sstate-cache then you won't need to rebuild
anything.

Ross

On 1 March 2018 at 11:36, Abhishekh Awanti <abhishekh@relysys.co.in> wrote:

> yeah the pkgconfig has been inherited.
> If i delete the tmp/ , again i have to recompile my whole build? Is tat
> you wanted to do me?
>
>
> Thanks and Regards,
> Abhishek Awanti
> Mob: +919620666017 <+91%2096206%2066017>
>
> On Thu, Mar 1, 2018 at 4:37 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> That usually means that the recipe doesn't inherit pkgconfig, but as this
>> is an oe-core recipe it should be doing this.  Can you verify this, and if
>> you can still reproduce it after deleting tmp/ then please attach the
>> entire log.do_configure.
>>
>> Ross
>>
>> On 1 March 2018 at 10:21, Abhishekh Awanti <abhishekh@relysys.co.in>
>> wrote:
>>
>>> Hi,
>>>
>>> I am trying to build the package "*harfbuzz-1.3.0" ,  *but i am getting
>>> the following configure error
>>>
>>> *Build Configuration:*
>>> *BB_VERSION        = "1.22.0"*
>>> *BUILD_SYS         = "x86_64-linux"*
>>> *NATIVELSBSTRING   = "Ubuntu-14.04"*
>>> *TARGET_SYS        = "arm-poky-linux-gnueabi"*
>>> *MACHINE           = "iwg21m"*
>>> *DISTRO            = "poky"*
>>> *DISTRO_VERSION    = "1.6.1"*
>>> *TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa15"*
>>> *TARGET_FPU        = "vfp-neon"*
>>> *meta              *
>>> *meta-yocto        *
>>> *meta-yocto-bsp    = "hmi_tmp:9febda430a88ba23b539394e5d54b59ae87405f6"*
>>> *meta-renesas      *
>>> *meta-rzg1         = "master:2ea602f03b9c2378c1d7dc28675a675d18edb0e3"*
>>> *meta-oe           *
>>> *meta-multimedia   *
>>> *meta-networking   = "hmi_tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"*
>>> *meta-linaro-toolchain =
>>> "hmi_build:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"*
>>> *common            *
>>> *hmi-demo          = "master:2cdb73bb902ecd4462cd0a4a66d5d116d0f7c113"*
>>> *meta-ndvr         = "<unknown>:<unknown>"*
>>>
>>> *NOTE: Preparing runqueue*
>>> *NOTE: Executing SetScene Tasks*
>>> *NOTE: Executing RunQueue Tasks*
>>> *ERROR: Function failed: do_configure (log file is located at
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)*
>>> *ERROR: Logfile of failure stored in:
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451*
>>> *Log data follows:*
>>> *| DEBUG: Executing python function sysroot_cleansstate*
>>> *| DEBUG: Python function sysroot_cleansstate finished*
>>> *| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
>>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']*
>>> *| DEBUG: Executing shell function autotools_preconfigure*
>>> *| DEBUG: Shell function autotools_preconfigure finished*
>>> *| DEBUG: Executing python function autotools_copy_aclocals*
>>> *| DEBUG: Python function autotools_copy_aclocals finished*
>>> *| DEBUG: Executing shell function do_configure*
>>> *| automake (GNU automake) 1.14*
>>> *| Copyright (C) 2013 Free Software Foundation, Inc.*
>>> *| License GPLv2+: GNU GPL version 2 or later
>>> <http://gnu.org/licenses/gpl-2.0.html
>>> <http://gnu.org/licenses/gpl-2.0.html>>*
>>> *| This is free software: you are free to change and redistribute it.*
>>> *| There is NO WARRANTY, to the extent permitted by law.*
>>> *| *
>>> *| Written by Tom Tromey <tromey@redhat.com <tromey@redhat.com>>*
>>> *|        and Alexandre Duret-Lutz <adl@gnu.org <adl@gnu.org>>.*
>>> *| AUTOV is 1*
>>> *| NOTE: Executing ACLOCAL="aclocal
>>> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/"
>>> autoreconf --verbose --install --force --exclude=autopoint -I
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/*
>>> *| autoreconf: Entering directory `.'*
>>> *| autoreconf: configure.ac <http://configure.ac/>: not using Gettext*
>>> *| autoreconf: running: aclocal
>>> --system-acdir=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/
>>> -I
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>>> -I
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>>> --force -I m4*
>>> *| autoreconf: configure.ac <http://configure.ac/>: tracing*
>>> *| autoreconf: running: libtoolize --copy --force*
>>> *| libtoolize: putting auxiliary files in `.'.*
>>> *| libtoolize: copying file `./ltmain.sh'*
>>> *| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.*
>>> *| libtoolize: copying file `m4/libtool.m4'*
>>> *| libtoolize: copying file `m4/ltoptions.m4'*
>>> *| libtoolize: copying file `m4/ltsugar.m4'*
>>> *| libtoolize: copying file `m4/ltversion.m4'*
>>> *| libtoolize: copying file `m4/lt~obsolete.m4'*
>>> *| autoreconf: running:
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
>>> --include=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>>> --force*
>>> *| configure:17934: error: possibly undefined macro:
>>> PKG_CONFIG_SYSROOT_DIR*
>>> *|       If this token and others are legitimate, please use
>>> m4_pattern_allow.*
>>> *|       See the Autoconf documentation.*
>>> *| autoreconf:
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
>>> failed with exit status: 1*
>>> *| ERROR: autoreconf execution failed.*
>>> *| WARNING: exit code 1 from a shell command.*
>>> *| ERROR: Function failed: do_configure (log file is located at
>>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451)*
>>> *ERROR: Task 5
>>> (/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_feb_2018/build/../poky/meta/recipes-graphics/harfbuzz/harfbuzz_1.3.0.bb
>>> <http://harfbuzz_1.3.0.bb/>, do_configure) failed with exit code '1'*
>>>
>>> Any help will be appreciated.
>>>
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

--94eb2c0b9e3ade092d0566584df2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Assuming you don&#39;t delete sstate-cache then you won&#3=
9;t need to rebuild anything.<div><br></div><div>Ross</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 1 March 2018 at 11:36, A=
bhishekh Awanti <span dir=3D"ltr">&lt;<a href=3D"mailto:abhishekh@relysys.c=
o.in" target=3D"_blank">abhishekh@relysys.co.in</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr">yeah the=C2=A0<span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">pkgconfig has been inherited.</span><div><span style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine">If i delete the tmp/ , again i have to recompile my whole build? Is ta=
t you wanted to do me?</span></div></div><div class=3D"gmail_extra"><br cle=
ar=3D"all"><div><div class=3D"m_9037355672994851389gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div><div><span style=3D"color:rgb(11,8=
3,148)"><span style=3D"font-family:comic sans ms,sans-serif"><br>Thanks and=
 Regards,<br>Abhishek Awanti<br>Mob: <a href=3D"tel:+91%2096206%2066017" va=
lue=3D"+919620666017" target=3D"_blank">+919620666017</a></span></span><br>=
</div></div></div></div></div></div></div></div></div></div></div><div><div=
 class=3D"h5">
<br><div class=3D"gmail_quote">On Thu, Mar 1, 2018 at 4:37 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">That usually means that the recipe doesn&#39;t i=
nherit pkgconfig, but as this is an oe-core recipe it should be doing this.=
=C2=A0 Can you verify this, and if you can still reproduce it after deletin=
g tmp/ then please attach the entire log.do_configure.<div><br></div><div>R=
oss</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><d=
iv><div class=3D"m_9037355672994851389h5">On 1 March 2018 at 10:21, Abhishe=
kh Awanti <span dir=3D"ltr">&lt;<a href=3D"mailto:abhishekh@relysys.co.in" =
target=3D"_blank">abhishekh@relysys.co.in</a>&gt;</span> wrote:<br></div></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div><div class=3D"m_9037355672994851389=
h5"><div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">Hi,</span><div style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial"><br></div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial">I am tr=
ying to build the package &quot;<i>harfbuzz-1.3.0&quot; ,=C2=A0<span>=C2=A0=
</span></i>but i=C2=A0am getting the following configure error</div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial"><br></d=
iv><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l"><div><i>Build Configuration:</i></div><div><i>BB_VERSION=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;1.22.0&quot;</i></div><div><i>BUILD_SYS=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;</i></div><div><i>NATIV=
ELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;</i></div><div><i>TARGET=
_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;</i><=
/div><div><i>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;iwg2=
1m&quot;</i></div><div><i>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;poky&quot;</i></div><div><i>DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot=
;1.6.1&quot;</i></div><div><i>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;ar=
mv7a vfp neon callconvention-hard cortexa15&quot;</i></div><div><i>TARGET_F=
PU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp-neon&quot;</i></div><div><i>met=
a=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><div><i>me=
ta-yocto=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><div><i>meta-yocto-bsp=
=C2=A0 =C2=A0 =3D &quot;hmi_tmp:9febda430a88ba23b5393<wbr>94e5d54b59ae87405=
f6&quot;</i></div><div><i>meta-renesas=C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><=
div><i>meta-rzg1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:2ea602f0=
3b9c2378c1d7dc<wbr>28675a675d18edb0e3&quot;</i></div><div><i>meta-oe=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</i></div><div><i>meta-multimedia=C2=A0 =
=C2=A0</i></div><div><i>meta-networking=C2=A0 =C2=A0=3D &quot;hmi_tmp:dca46=
6c074c9a35bc0133<wbr>e7e0d65cca0731e2acf&quot;</i></div><div><i>meta-linaro=
-toolchain =3D &quot;hmi_build:8a0601723c06fdb75e6<wbr>2aa0f0cf15fc9d7d9016=
7&quot;</i></div><div><i>common=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</i></div><div><i>hmi-demo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m=
aster:2cdb73bb902ecd4462cd0a<wbr>4a66d5d116d0f7c113&quot;</i></div><div><i>=
meta-ndvr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&lt;unknown&gt;:&lt;un=
known&gt;&quot;</i></div><div><i><br></i></div><div><i>NOTE: Preparing runq=
ueue</i></div><div><i>NOTE: Executing SetScene Tasks</i></div><div><i>NOTE:=
 Executing RunQueue Tasks</i></div><div><i>ERROR: Function failed: do_confi=
gure (log file is located at /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects=
/Renesas/RZG1H/iwav<wbr>e/build/Build_As_On_23_feb_201<wbr>8/build/tmp/work=
/cortexa15hf-<wbr>vfp-neon-poky-linux-gnueabi/ha<wbr>rfbuzz/1.3.0-r0/temp/l=
og.do_co<wbr>nfigure.451)</i></div><div><i>ERROR: Logfile of failure stored=
 in: /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/iwav<wbr>=
e/build/Build_As_On_23_feb_201<wbr>8/build/tmp/work/cortexa15hf-<wbr>vfp-ne=
on-poky-linux-gnueabi/ha<wbr>rfbuzz/1.3.0-r0/temp/log.do_co<wbr>nfigure.451=
</i></div><div><i>Log data follows:</i></div><div><i>| DEBUG: Executing pyt=
hon function sysroot_cleansstate</i></div><div><i>| DEBUG: Python function =
sysroot_cleansstate finished</i></div><div><i>| DEBUG: SITE files [&#39;end=
ian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;common-linux&=
#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#=
39;, &#39;common&#39;]</i></div><div><i>| DEBUG: Executing shell function a=
utotools_preconfigure</i></div><div><i>| DEBUG: Shell function autotools_pr=
econfigure finished</i></div><div><i>| DEBUG: Executing python function aut=
otools_copy_aclocals</i></div><div><i>| DEBUG: Python function autotools_co=
py_aclocals finished</i></div><div><i>| DEBUG: Executing shell function do_=
configure</i></div><div><i>| automake (GNU automake) 1.14</i></div><div><i>=
| Copyright (C) 2013 Free Software Foundation, Inc.</i></div><div><i>| Lice=
nse GPLv2+: GNU GPL version 2 or later &lt;<a href=3D"http://gnu.org/licens=
es/gpl-2.0.html" style=3D"color:rgb(17,85,204)" target=3D"_blank">http://gn=
u.org/licenses/gpl-2<wbr>.0.html</a>&gt;</i></div><div><i>| This is free so=
ftware: you are free to change and redistribute it.</i></div><div><i>| Ther=
e is NO WARRANTY, to the extent permitted by law.</i></div><div><i>|=C2=A0<=
/i></div><div><i>| Written by Tom Tromey &lt;<a href=3D"mailto:tromey@redha=
t.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">tromey@redhat.com</=
a>&gt;</i></div><div><i>|=C2=A0 =C2=A0 =C2=A0 =C2=A0 and Alexandre Duret-Lu=
tz &lt;<a href=3D"mailto:adl@gnu.org" style=3D"color:rgb(17,85,204)" target=
=3D"_blank">adl@gnu.org</a>&gt;.</i></div><div><i>| AUTOV is 1</i></div><di=
v><i>| NOTE: Executing ACLOCAL=3D&quot;aclocal --system-acdir=3D/home/bhara=
th/A<wbr>bhishek_WorkSpace/Projects/Ren<wbr>esas/RZG1H/iwave/build/Build_A<=
wbr>s_On_23_feb_2018/build/tmp/wor<wbr>k/cortexa15hf-vfp-neon-poky-li<wbr>n=
ux-gnueabi/harfbuzz/1.3.0-r0/<wbr>build/aclocal-copy/&quot; autoreconf --ve=
rbose --install --force --exclude=3Dautopoint -I /home/bharath/Abhishek_Wor=
kSpa<wbr>ce/Projects/Renesas/RZG1H/iwav<wbr>e/build/Build_As_On_23_feb_201<=
wbr>8/build/tmp/work/cortexa15hf-<wbr>vfp-neon-poky-linux-gnueabi/ha<wbr>rf=
buzz/1.3.0-r0/harfbuzz-1.3.<wbr>0/m4/</i></div><div><i>| autoreconf: Enteri=
ng directory `.&#39;</i></div><div><i>| autoreconf:<span>=C2=A0</span><a hr=
ef=3D"http://configure.ac/" style=3D"color:rgb(17,85,204)" target=3D"_blank=
">configure.ac</a>: not using Gettext</i></div><div><i>| autoreconf: runnin=
g: aclocal --system-acdir=3D/home/bharath/A<wbr>bhishek_WorkSpace/Projects/=
Ren<wbr>esas/RZG1H/iwave/build/Build_A<wbr>s_On_23_feb_2018/build/tmp/wor<w=
br>k/cortexa15hf-vfp-neon-poky-li<wbr>nux-gnueabi/harfbuzz/1.3.0-r0/<wbr>bu=
ild/aclocal-copy/ -I /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas=
/RZG1H/iwav<wbr>e/build/Build_As_On_23_feb_201<wbr>8/build/tmp/work/cortexa=
15hf-<wbr>vfp-neon-poky-linux-gnueabi/ha<wbr>rfbuzz/1.3.0-r0/harfbuzz-1.3.<=
wbr>0/m4/ -I /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/i=
wav<wbr>e/build/Build_As_On_23_feb_201<wbr>8/build/tmp/work/cortexa15hf-<wb=
r>vfp-neon-poky-linux-gnueabi/ha<wbr>rfbuzz/1.3.0-r0/harfbuzz-1.3.<wbr>0/m4=
/ --force -I m4</i></div><div><i>| autoreconf:<span>=C2=A0</span><a href=3D=
"http://configure.ac/" style=3D"color:rgb(17,85,204)" target=3D"_blank">con=
figure.ac</a>: tracing</i></div><div><i>| autoreconf: running: libtoolize -=
-copy --force</i></div><div><i>| libtoolize: putting auxiliary files in `.&=
#39;.</i></div><div><i>| libtoolize: copying file `./ltmain.sh&#39;</i></di=
v><div><i>| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4&#39;.</i=
></div><div><i>| libtoolize: copying file `m4/libtool.m4&#39;</i></div><div=
><i>| libtoolize: copying file `m4/ltoptions.m4&#39;</i></div><div><i>| lib=
toolize: copying file `m4/ltsugar.m4&#39;</i></div><div><i>| libtoolize: co=
pying file `m4/ltversion.m4&#39;</i></div><div><i>| libtoolize: copying fil=
e `m4/lt~obsolete.m4&#39;</i></div><div><i>| autoreconf: running: /home/bha=
rath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/iwav<wbr>e/build/Build_=
As_On_23_feb_201<wbr>8/build/tmp/sysroots/x86_64-<wbr>linux/usr/bin/autocon=
f --include=3D/home/bharath/Abhish<wbr>ek_WorkSpace/Projects/Renesas/<wbr>R=
ZG1H/iwave/build/Build_As_On_<wbr>23_feb_2018/build/tmp/work/cor<wbr>texa15=
hf-vfp-neon-poky-linux-g<wbr>nueabi/harfbuzz/1.3.0-r0/harfb<wbr>uzz-1.3.0/m=
4/ --force</i></div><div><i>| configure:17934: error: possibly undefined ma=
cro: PKG_CONFIG_SYSROOT_DIR</i></div><div><i>|=C2=A0 =C2=A0 =C2=A0 =C2=A0If=
 this token and others are legitimate, please use m4_pattern_allow.</i></di=
v><div><i>|=C2=A0 =C2=A0 =C2=A0 =C2=A0See the Autoconf documentation.</i></=
div><div><i>| autoreconf: /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Re=
nesas/RZG1H/iwav<wbr>e/build/Build_As_On_23_feb_201<wbr>8/build/tmp/sysroot=
s/x86_64-<wbr>linux/usr/bin/autoconf failed with exit status: 1</i></div><d=
iv><i>| ERROR: autoreconf execution failed.</i></div><div><i>| WARNING: exi=
t code 1 from a shell command.</i></div><div><i>| ERROR: Function failed: d=
o_configure (log file is located at /home/bharath/Abhishek_WorkSpa<wbr>ce/P=
rojects/Renesas/RZG1H/iwav<wbr>e/build/Build_As_On_23_feb_201<wbr>8/build/t=
mp/work/cortexa15hf-<wbr>vfp-neon-poky-linux-gnueabi/ha<wbr>rfbuzz/1.3.0-r0=
/temp/log.do_co<wbr>nfigure.451)</i></div><div><i>ERROR: Task 5 (/home/bhar=
ath/Abhishek_WorkSp<wbr>ace/Projects/Renesas/RZG1H/iwa<wbr>ve/build/Build_A=
s_On_23_feb_20<wbr>18/build/../poky/meta/recipes-<wbr>graphics/harfbuzz/<a =
href=3D"http://harfbuzz_1.3.0.bb/" style=3D"color:rgb(17,85,204)" target=3D=
"_blank">harfbuzz_1.<wbr>3.0.bb</a>, do_configure) failed with exit code &#=
39;1&#39;</i></div><div><br></div><div>Any help will be appreciated.</div><=
/div><div><div class=3D"m_9037355672994851389m_-9141382509565209795m_623343=
9929871564494gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div><br></div></div></div></div></div></div></div></div></div></div><=
/div>
</div>
<br></div></div><span class=3D"m_9037355672994851389HOEnZb"><font color=3D"=
#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div></div></div>
</blockquote></div><br></div>

--94eb2c0b9e3ade092d0566584df2--
