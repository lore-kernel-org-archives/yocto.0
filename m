Return-Path: <abhishekh@relysys.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2EA6E010EA; Fri,  2 Mar 2018 04:38:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_10_20,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05969E00DD7
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2018 04:38:02 -0800 (PST)
Received: by mail-vk0-f52.google.com with SMTP id a63so5631712vkg.6
	for <yocto@yoctoproject.org>; Fri, 02 Mar 2018 04:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=relysys-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tWaHrb1qZ1CeRQZdEIfLOXkmJkdLglkkt9XzpKzUB4M=;
	b=y/tpvZ/c6arWIhJvXnHynZystJmzpBT4g6cKp9OTjGOKoJaD0d6plxvhoQMo98hceR
	TM+wa83muVuMg08uzt5yhKWMGxWfjCBmD1hnWAmtgT5GJ8I40XiyFbRVL0IfO6nZPgcC
	4ANPNjEAwmMHlo4VsAZf+gQonKMyD885BHBljtgjMv1YaTdX8zCHlx8mo+Tr6ABBzrbx
	hXO5S+YonAJdaO5Rcw6ZDVAb+wgOnv9gkAOLbBnpfkJyAx5mJR12ilfPRvJignDiiloo
	WiAiFqGr8TNBpWdg0tVaGJbJdcrGA+Pj7yVw48/hisdbe+V4eDGuHDlixDMZLf1rUp2W
	r/8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tWaHrb1qZ1CeRQZdEIfLOXkmJkdLglkkt9XzpKzUB4M=;
	b=UaseKFp+wQEGHUhgsfMJ9F9UZVRmZBZtJC9MgEgXSKJnHyK8Ifu1f3ZE2vqBuFlnf2
	ctvHq0Ju60PsPjtAD8qwPduP6ro5Y2UKFP7z+oEB5pcJ5K3fzDcLvkSoiWz+fgmbp79Y
	elSOaefbdYxt7+gb1T4XoVdrnhz7tr9L6mq3tdqJN1+GPW3Vy+lo3NoQ6VoWwxYzcJzS
	/XjVjI0VL3H+6SMRR8aCL4xSVnc8h8Bewwz8WLIHP8lm1h5DcVJdGo9Z8zsZO3nco4SJ
	tdpoQo1tiKgb+f5gwrFT8kO5/y7BxAnp8hsrHxJ5QmaG+zyvfsewsxCE80fa9Kmz9zYF
	f+gg==
X-Gm-Message-State: APf1xPDpSgAJdO8KK/ur/10cLPBaVzm4lNLa+ZAElNj5Qu4W5cXqcYpy
	EBNHJZr4AwREuyzq/YDhN6dWaUD5rws3oTuW6NjsZw==
X-Google-Smtp-Source: AG47ELsWewnBttk+WV57pjYfF7gOTa5/jELXUaGtnsU1dwN9a5ebDZq1mdWewSrZwXrLcqNZTamed2h+sWGE8tvcjgM=
X-Received: by 10.31.33.68 with SMTP id h65mr3511622vkh.65.1519994281749; Fri,
	02 Mar 2018 04:38:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.93.69 with HTTP; Fri, 2 Mar 2018 04:38:01 -0800 (PST)
In-Reply-To: <ee3a3b96-27a3-a679-2c23-3090890113d8@gmail.com>
References: <CANPqCWLBrSwCRbKXePqdmGv2exou5smjq-R9D5yvB6MjQZPqKg@mail.gmail.com>
	<ee3a3b96-27a3-a679-2c23-3090890113d8@gmail.com>
From: Abhishekh Awanti <abhishekh@relysys.co.in>
Date: Fri, 2 Mar 2018 18:08:01 +0530
Message-ID: <CANPqCW+NHgZiDRkyti3TToWoJqruqhtMyMtS=pRembyMimVaEw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Fri, 02 Mar 2018 12:38:05 -0000
Content-Type: multipart/alternative; boundary="001a11c0240e3984be05666d3f2b"

--001a11c0240e3984be05666d3f2b
Content-Type: text/plain; charset="UTF-8"

Hi,
Before i was trying to build the baseline version only, due to this error i
moved to latest version.
As Ross said i deleted tmp/ and now the package can able to build
successfully.
Should i move to original version only?

On Fri, Mar 2, 2018 at 11:25 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 3/1/18 2:21 AM, Abhishekh Awanti wrote:
>
>> Hi,
>>
>> I am trying to build the package "/harfbuzz-1.3.0" , /but i am getting
>> the following configure error
>>
>
> your build seems to be a bit mixed, the baseline seems to be daisy based (
> 1.6 ) but you are building harfbuzz which is introduced in morty ( 2.2 )
> release. Doe the original version work ?
>
>
>> /Build Configuration:/
>> /BB_VERSION        = "1.22.0"/
>> /BUILD_SYS         = "x86_64-linux"/
>> /NATIVELSBSTRING   = "Ubuntu-14.04"/
>> /TARGET_SYS        = "arm-poky-linux-gnueabi"/
>> /MACHINE           = "iwg21m"/
>> /DISTRO            = "poky"/
>> /DISTRO_VERSION    = "1.6.1"/
>> /TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa15"/
>> /TARGET_FPU        = "vfp-neon"/
>> /meta /
>> /meta-yocto /
>> /meta-yocto-bsp    = "hmi_tmp:9febda430a88ba23b539394e5d54b59ae87405f6"/
>> /meta-renesas /
>> /meta-rzg1         = "master:2ea602f03b9c2378c1d7dc28675a675d18edb0e3"/
>> /meta-oe /
>> /meta-multimedia /
>> /meta-networking   = "hmi_tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"/
>> /meta-linaro-toolchain = "hmi_build:8a0601723c06fdb75e6
>> 2aa0f0cf15fc9d7d90167"/
>> /common /
>> /hmi-demo          = "master:2cdb73bb902ecd4462cd0a4a66d5d116d0f7c113"/
>> /meta-ndvr         = "<unknown>:<unknown>"/
>> /
>> /
>> /NOTE: Preparing runqueue/
>> /NOTE: Executing SetScene Tasks/
>> /NOTE: Executing RunQueue Tasks/
>> /ERROR: Function failed: do_configure (log file is located at
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/
>> iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortex
>> a15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/
>> temp/log.do_configure.451)/
>> /ERROR: Logfile of failure stored in: /home/bharath/Abhishek_WorkSpa
>> ce/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_
>> feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-
>> gnueabi/harfbuzz/1.3.0-r0/temp/log.do_configure.451/
>> /Log data follows:/
>> /| DEBUG: Executing python function sysroot_cleansstate/
>> /| DEBUG: Python function sysroot_cleansstate finished/
>> /| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']/
>> /| DEBUG: Executing shell function autotools_preconfigure/
>> /| DEBUG: Shell function autotools_preconfigure finished/
>> /| DEBUG: Executing python function autotools_copy_aclocals/
>> /| DEBUG: Python function autotools_copy_aclocals finished/
>> /| DEBUG: Executing shell function do_configure/
>> /| automake (GNU automake) 1.14/
>> /| Copyright (C) 2013 Free Software Foundation, Inc./
>> /| License GPLv2+: GNU GPL version 2 or later <
>> http://gnu.org/licenses/gpl-2.0.html <http://gnu.org/licenses/gpl-2
>> .0.html>>/
>> /| This is free software: you are free to change and redistribute it./
>> /| There is NO WARRANTY, to the extent permitted by law./
>> /| /
>> /| Written by Tom Tromey <tromey@redhat.com <mailto:tromey@redhat.com>>/
>> /|        and Alexandre Duret-Lutz <adl@gnu.org <mailto:adl@gnu.org>>./
>> /| AUTOV is 1/
>> /| NOTE: Executing ACLOCAL="aclocal --system-acdir=/home/bharath/A
>> bhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_
>> As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky
>> -linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/" autoreconf
>> --verbose --install --force --exclude=autopoint -I
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/
>> iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortex
>> a15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4//
>> /| autoreconf: Entering directory `.'/
>> /| autoreconf:configure.ac <http://configure.ac/>: not using Gettext/
>> /| autoreconf: running: aclocal --system-acdir=/home/bharath/A
>> bhishek_WorkSpace/Projects/Renesas/RZG1H/iwave/build/Build_
>> As_On_23_feb_2018/build/tmp/work/cortexa15hf-vfp-neon-poky
>> -linux-gnueabi/harfbuzz/1.3.0-r0/build/aclocal-copy/ -I
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/
>> iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortex
>> a15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>> -I /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/
>> iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortex
>> a15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>> --force -I m4/
>> /| autoreconf:configure.ac <http://configure.ac/>: tracing/
>> /| autoreconf: running: libtoolize --copy --force/
>> /| libtoolize: putting auxiliary files in `.'./
>> /| libtoolize: copying file `./ltmain.sh'/
>> /| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'./
>> /| libtoolize: copying file `m4/libtool.m4'/
>> /| libtoolize: copying file `m4/ltoptions.m4'/
>> /| libtoolize: copying file `m4/ltsugar.m4'/
>> /| libtoolize: copying file `m4/ltversion.m4'/
>> /| libtoolize: copying file `m4/lt~obsolete.m4'/
>> /| autoreconf: running: /home/bharath/Abhishek_WorkSpa
>> ce/Projects/Renesas/RZG1H/iwave/build/Build_As_On_23_
>> feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
>> --include=/home/bharath/Abhishek_WorkSpace/Projects/Renesas/
>> RZG1H/iwave/build/Build_As_On_23_feb_2018/build/tmp/work/
>> cortexa15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/harfbuzz-1.3.0/m4/
>> --force/
>> /| configure:17934: error: possibly undefined macro:
>> PKG_CONFIG_SYSROOT_DIR/
>> /|       If this token and others are legitimate, please use
>> m4_pattern_allow./
>> /|       See the Autoconf documentation./
>> /| autoreconf: /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/
>> iwave/build/Build_As_On_23_feb_2018/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
>> failed with exit status: 1/
>> /| ERROR: autoreconf execution failed./
>> /| WARNING: exit code 1 from a shell command./
>> /| ERROR: Function failed: do_configure (log file is located at
>> /home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/
>> iwave/build/Build_As_On_23_feb_2018/build/tmp/work/cortex
>> a15hf-vfp-neon-poky-linux-gnueabi/harfbuzz/1.3.0-r0/
>> temp/log.do_configure.451)/
>> /ERROR: Task 5 (/home/bharath/Abhishek_WorkSpace/Projects/Renesas/RZG1H/
>> iwave/build/Build_As_On_23_feb_2018/build/../poky/meta/
>> recipes-graphics/harfbuzz/harfbuzz_1.3.0.bb <http://harfbuzz_1.3.0.bb/>,
>> do_configure) failed with exit code '1'/
>>
>> Any help will be appreciated.
>>
>>
>>

--001a11c0240e3984be05666d3f2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Before i was trying to build the baseline version =
only, due to this error i moved to latest version.</div><div>As=C2=A0<span =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline">Ross said i deleted tmp/ and now the package can able =
to build successfully.=C2=A0</span></div><div><span style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline">Sh=
ould i move to original version only?</span></div><div class=3D"gmail_extra=
"><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D=
"ltr"><div><div><br></div></div></div></div></div></div></div></div></div><=
/div></div><div class=3D"gmail_quote">On Fri, Mar 2, 2018 at 11:25 AM, Khem=
 Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"=
_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><span class=3D""><br>
<br>
On 3/1/18 2:21 AM, Abhishekh Awanti wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I am trying to build the package &quot;/harfbuzz-1.3.0&quot; , /but i=C2=A0=
am getting the following configure error<br>
</blockquote>
<br>
your build seems to be a bit mixed, the baseline seems to be daisy based ( =
1.6 ) but you are building harfbuzz which is introduced in morty ( 2.2 ) re=
lease. Doe the original version work ?<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
/Build Configuration:/<br>
/BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.22.0&quot;/<br>
/BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;/<b=
r>
/NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;/<br>
/TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quo=
t;/<br>
/MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;iwg21m&quot;/<br=
>
/DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;/<br>
/DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.6.1&quot;/<br>
/TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;armv7a vfp neon callconvention-=
hard cortexa15&quot;/<br>
/TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp-neon&quot;/<br>
/meta /<br>
/meta-yocto /<br>
/meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;hmi_tmp:9febda430a88ba23b5393<wbr>94=
e5d54b59ae87405f6&quot;/<br>
/meta-renesas /<br>
/meta-rzg1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:2ea602f03b9c23=
78c1d7dc<wbr>28675a675d18edb0e3&quot;/<br>
/meta-oe /<br>
/meta-multimedia /<br>
/meta-networking=C2=A0 =C2=A0=3D &quot;hmi_tmp:dca466c074c9a35bc0133<wbr>e7=
e0d65cca0731e2acf&quot;/<br>
/meta-linaro-toolchain =3D &quot;hmi_build:8a0601723c06fdb75e6<wbr>2aa0f0cf=
15fc9d7d90167&quot;/<br>
/common /<br>
/hmi-demo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:2cdb73bb902ecd=
4462cd0a<wbr>4a66d5d116d0f7c113&quot;/<br>
/meta-ndvr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&lt;unknown&gt;:&lt;u=
nknown&gt;&quot;/<br>
/<br>
/<br>
/NOTE: Preparing runqueue/<br>
/NOTE: Executing SetScene Tasks/<br>
/NOTE: Executing RunQueue Tasks/<br>
/ERROR: Function failed: do_configure (log file is located at /home/bharath=
/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/<wbr>iwave/build/Build_As_O=
n_23_<wbr>feb_2018/build/tmp/work/cortex<wbr>a15hf-vfp-neon-poky-linux-<wbr=
>gnueabi/harfbuzz/1.3.0-r0/<wbr>temp/log.do_configure.451)/<br>
/ERROR: Logfile of failure stored in: /home/bharath/Abhishek_WorkSpa<wbr>ce=
/Projects/Renesas/RZG1H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018/build=
/tmp/work/cortex<wbr>a15hf-vfp-neon-poky-linux-<wbr>gnueabi/harfbuzz/1.3.0-=
r0/<wbr>temp/log.do_configure.451/<br>
/Log data follows:/<br>
/| DEBUG: Executing python function sysroot_cleansstate/<br>
/| DEBUG: Python function sysroot_cleansstate finished/<br>
/| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-c=
ommon&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&=
#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]/<br>
/| DEBUG: Executing shell function autotools_preconfigure/<br>
/| DEBUG: Shell function autotools_preconfigure finished/<br>
/| DEBUG: Executing python function autotools_copy_aclocals/<br>
/| DEBUG: Python function autotools_copy_aclocals finished/<br>
/| DEBUG: Executing shell function do_configure/<br>
/| automake (GNU automake) 1.14/<br>
/| Copyright (C) 2013 Free Software Foundation, Inc./<br>
/| License GPLv2+: GNU GPL version 2 or later &lt;<a href=3D"http://gnu.org=
/licenses/gpl-2.0.html" rel=3D"noreferrer" target=3D"_blank">http://gnu.org=
/licenses/gpl-2<wbr>.0.html</a> &lt;<a href=3D"http://gnu.org/licenses/gpl-=
2.0.html" rel=3D"noreferrer" target=3D"_blank">http://gnu.org/licenses/gpl-=
2<wbr>.0.html</a>&gt;&gt;/<br>
/| This is free software: you are free to change and redistribute it./<br>
/| There is NO WARRANTY, to the extent permitted by law./<br>
/| /<br>
/| Written by Tom Tromey &lt;<a href=3D"mailto:tromey@redhat.com" target=3D=
"_blank">tromey@redhat.com</a> &lt;mailto:<a href=3D"mailto:tromey@redhat.c=
om" target=3D"_blank">tromey@redhat.com</a>&gt;&gt;/<br>
/|=C2=A0 =C2=A0 =C2=A0 =C2=A0 and Alexandre Duret-Lutz &lt;<a href=3D"mailt=
o:adl@gnu.org" target=3D"_blank">adl@gnu.org</a> &lt;mailto:<a href=3D"mail=
to:adl@gnu.org" target=3D"_blank">adl@gnu.org</a>&gt;&gt;./<br>
/| AUTOV is 1/<br>
/| NOTE: Executing ACLOCAL=3D&quot;aclocal --system-acdir=3D/home/bharath/A=
<wbr>bhishek_WorkSpace/Projects/Ren<wbr>esas/RZG1H/iwave/build/Build_<wbr>A=
s_On_23_feb_2018/build/tmp/<wbr>work/cortexa15hf-vfp-neon-poky<wbr>-linux-g=
nueabi/harfbuzz/1.3.0-<wbr>r0/build/aclocal-copy/&quot; autoreconf --verbos=
e --install --force --exclude=3Dautopoint -I /home/bharath/Abhishek_WorkSpa=
<wbr>ce/Projects/Renesas/RZG1H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_201=
8/build/tmp/work/cortex<wbr>a15hf-vfp-neon-poky-linux-<wbr>gnueabi/harfbuzz=
/1.3.0-r0/<wbr>harfbuzz-1.3.0/m4//<br>
/| autoreconf: Entering directory `.&#39;/<br>
/| autoreconf:<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"=
_blank">configure.ac</a> &lt;<a href=3D"http://configure.ac/" rel=3D"norefe=
rrer" target=3D"_blank">http://configure.ac/</a>&gt;: not using Gettext/<br=
>
/| autoreconf: running: aclocal --system-acdir=3D/home/bharath/A<wbr>bhishe=
k_WorkSpace/Projects/Ren<wbr>esas/RZG1H/iwave/build/Build_<wbr>As_On_23_feb=
_2018/build/tmp/<wbr>work/cortexa15hf-vfp-neon-poky<wbr>-linux-gnueabi/harf=
buzz/1.3.0-<wbr>r0/build/aclocal-copy/ -I /home/bharath/Abhishek_WorkSpa<wb=
r>ce/Projects/Renesas/RZG1H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018/b=
uild/tmp/work/cortex<wbr>a15hf-vfp-neon-poky-linux-<wbr>gnueabi/harfbuzz/1.=
3.0-r0/<wbr>harfbuzz-1.3.0/m4/ -I /home/bharath/Abhishek_WorkSpa<wbr>ce/Pro=
jects/Renesas/RZG1H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018/build/tmp=
/work/cortex<wbr>a15hf-vfp-neon-poky-linux-<wbr>gnueabi/harfbuzz/1.3.0-r0/<=
wbr>harfbuzz-1.3.0/m4/ --force -I m4/<br>
/| autoreconf:<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"=
_blank">configure.ac</a> &lt;<a href=3D"http://configure.ac/" rel=3D"norefe=
rrer" target=3D"_blank">http://configure.ac/</a>&gt;: tracing/<br>
/| autoreconf: running: libtoolize --copy --force/<br>
/| libtoolize: putting auxiliary files in `.&#39;./<br>
/| libtoolize: copying file `./ltmain.sh&#39;/<br>
/| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4&#39;./<br>
/| libtoolize: copying file `m4/libtool.m4&#39;/<br>
/| libtoolize: copying file `m4/ltoptions.m4&#39;/<br>
/| libtoolize: copying file `m4/ltsugar.m4&#39;/<br>
/| libtoolize: copying file `m4/ltversion.m4&#39;/<br>
/| libtoolize: copying file `m4/lt~obsolete.m4&#39;/<br>
/| autoreconf: running: /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Rene=
sas/RZG1H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018/build/tmp/sysroots/=
<wbr>x86_64-linux/usr/bin/autoconf --include=3D/home/bharath/Abhish<wbr>ek_=
WorkSpace/Projects/Renesas/<wbr>RZG1H/iwave/build/Build_As_On_<wbr>23_feb_2=
018/build/tmp/work/<wbr>cortexa15hf-vfp-neon-poky-<wbr>linux-gnueabi/harfbu=
zz/1.3.0-<wbr>r0/harfbuzz-1.3.0/m4/ --force/<br>
/| configure:17934: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR=
/<br>
/|=C2=A0 =C2=A0 =C2=A0 =C2=A0If this token and others are legitimate, pleas=
e use m4_pattern_allow./<br>
/|=C2=A0 =C2=A0 =C2=A0 =C2=A0See the Autoconf documentation./<br>
/| autoreconf: /home/bharath/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H=
/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018/build/tmp/sysroots/<wbr>x86_=
64-linux/usr/bin/autoconf failed with exit status: 1/<br>
/| ERROR: autoreconf execution failed./<br>
/| WARNING: exit code 1 from a shell command./<br>
/| ERROR: Function failed: do_configure (log file is located at /home/bhara=
th/Abhishek_WorkSpa<wbr>ce/Projects/Renesas/RZG1H/<wbr>iwave/build/Build_As=
_On_23_<wbr>feb_2018/build/tmp/work/cortex<wbr>a15hf-vfp-neon-poky-linux-<w=
br>gnueabi/harfbuzz/1.3.0-r0/<wbr>temp/log.do_configure.451)/<br>
/ERROR: Task 5 (/home/bharath/Abhishek_WorkSp<wbr>ace/Projects/Renesas/RZG1=
H/<wbr>iwave/build/Build_As_On_23_<wbr>feb_2018/build/../poky/meta/<wbr>rec=
ipes-graphics/harfbuzz/<a href=3D"http://harfbuzz_1.3.0.bb" rel=3D"noreferr=
er" target=3D"_blank">harf<wbr>buzz_1.3.0.bb</a> &lt;<a href=3D"http://harf=
buzz_1.3.0.bb/" rel=3D"noreferrer" target=3D"_blank">http://harfbuzz_1.3.0.=
bb/</a>&gt;, do_configure) failed with exit code &#39;1&#39;/<span class=3D=
""><br>
<br>
Any help will be appreciated.<br>
<br>
<br>
</span></blockquote>
</blockquote></div><br></div></div>

--001a11c0240e3984be05666d3f2b--
