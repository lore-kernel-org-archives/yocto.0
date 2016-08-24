Return-Path: <o.campana@videotec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8FB1E00FEA; Wed, 24 Aug 2016 00:59:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [95.229.80.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 384 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Aug 2016 00:59:19 PDT
Received: from mail.videotec.com (mail2.videotec.com [95.229.80.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44528E00FDE
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 00:59:19 -0700 (PDT)
Received: from maia.sede.videotec.com (unknown [192.168.68.109])
	by mail.videotec.com (Postfix) with ESMTPS id 072902402A4
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 09:52:53 +0200 (CEST)
Received: from MAIA.sede.videotec.com ([fe80::f8bc:1eb3:ca06:a09c]) by
	MAIA.sede.videotec.com ([fe80::f8bc:1eb3:ca06:a09c%11]) with mapi id
	14.03.0301.000; Wed, 24 Aug 2016 09:51:41 +0200
From: Ottavio Campana <o.campana@videotec.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Tuning for a machine based on Cortex-A9
Thread-Index: AdH92kKBI2h/TTkYQLaVSDDHW2d0Sg==
Date: Wed, 24 Aug 2016 07:51:40 +0000
Message-ID: <5637116E3E13BE46B0D936BF364783C1F651AD@MAIA.sede.videotec.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [92.223.223.26]
MIME-Version: 1.0
Subject: Tuning for a machine based on Cortex-A9
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
X-List-Received-Date: Wed, 24 Aug 2016 07:59:23 -0000
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_5637116E3E13BE46B0D936BF364783C1F651ADMAIAsedevideotecc_"

--_000_5637116E3E13BE46B0D936BF364783C1F651ADMAIAsedevideotecc_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to port a third-party BSP based on buildroot to yocto, but I am=
 not able to tune the compiler to extactly match the original one.

Particularly, if I run readelf on a binary compiled with the gcc that is us=
ed by buildroot I get this output

ottavio@ottavio:~$ readelf -A hello_world
Attribute Section: aeabi
File Attributes
  Tag_CPU_name: "Cortex-A9"
  Tag_CPU_arch: v7
  Tag_CPU_arch_profile: Application
  Tag_ARM_ISA_use: Yes
  Tag_THUMB_ISA_use: Thumb-2
  Tag_FP_arch: VFPv3
  Tag_Advanced_SIMD_arch: NEONv1
  Tag_ABI_PCS_wchar_t: 4
  Tag_ABI_FP_rounding: Needed
  Tag_ABI_FP_denormal: Needed
  Tag_ABI_FP_exceptions: Needed
  Tag_ABI_FP_number_model: IEEE 754
  Tag_ABI_align_needed: 8-byte
  Tag_ABI_align_preserved: 8-byte, except leaf SP
  Tag_ABI_enum_size: int
  Tag_CPU_unaligned_access: v6
  Tag_MPextension_use: Allowed
  Tag_Virtualization_use: TrustZone
ottavio@ottavio:~$

I tried to replicate this by configuring a new machine, and my machine conf=
iguration looks like this

require ../../../meta/conf/machine/include/tune-cortexa9.inc

AVAILTUNES +=3D "cortexa9t-vfpv3-neon"
ARMPKGARCH_tune-cortexa9t-vfpv3-neon          =3D "cortexa9"
TUNE_FEATURES_tune-cortexa9t-vfpv3-neon       =3D "${TUNE_FEATURES_tune-arm=
v7at-vfpv3} neon cortexa9"
PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon =3D "${PACKAGE_EXTRA_ARCHS_tu=
ne-armv7at-vfpv3} cortexa9-vfp cortexa9-vfpv3 cortexa9t2-vfp cortexa9t2-vfp=
v3 cortexa9-neon"

DEFAULTTUNE =3D "cortexa9t-vfpv3-neon"

If I run readelf on any compiled binary obtained with yocto, I get this res=
ult:

ottavio@ottavio:~/poky/build-xxx/tmp/work/cortexa9-vfpv3-poky-linux-gnueabi=
/bzip2/1.0.6-r5/build$ readelf -A .libs/bzip2
Attribute Section: aeabi
File Attributes
  Tag_CPU_name: "Cortex-A9"
  Tag_CPU_arch: v7
  Tag_CPU_arch_profile: Application
  Tag_ARM_ISA_use: Yes
  Tag_THUMB_ISA_use: Thumb-2
  Tag_FP_arch: VFPv3
  Tag_ABI_PCS_wchar_t: 4
  Tag_ABI_FP_rounding: Needed
  Tag_ABI_FP_denormal: Needed
  Tag_ABI_FP_exceptions: Needed
  Tag_ABI_FP_number_model: IEEE 754
  Tag_ABI_align_needed: 8-byte
  Tag_ABI_align_preserved: 8-byte, except leaf SP
  Tag_ABI_enum_size: int
  Tag_CPU_unaligned_access: v6
  Tag_MPextension_use: Allowed
  Tag_Virtualization_use: TrustZone
ottavio@ottavio:~/poky/build-xxx/tmp/work/cortexa9-vfpv3-poky-linux-gnueabi=
/bzip2/1.0.6-r5/build$

I am quite close to get a similar binary, the missing part is the Tag_Advan=
ced_SIMD_arch: NEONv1 .  I get exactly the same result if I use DEFAULTTUNE=
 =3D "cortexa9t-vfpv3", thus it seems that the neon and cortexa9-neon optio=
ns I tried to add are ignored.

At this point I have two questions

Question #1

How should I change ARMPKGARCH_tune-cortexa9t-vfpv3-neon , TUNE_FEATURES_tu=
ne-cortexa9t-vfpv3-neon and PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon t=
o have exactly the same kind of elf?

Question # 2

Why the only options for neon in meta/conf/machine/include/tune-cortexa9.in=
c are offered for HF tunes?


Thank you for your help

Ottavio

--_000_5637116E3E13BE46B0D936BF364783C1F651ADMAIAsedevideotecc_
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
10pt;">Hello,
<br>
<br>
I am trying to port a third-party BSP based on buildroot to yocto, but I am=
 not able to tune the compiler to extactly match the original one.<br>
<br>
Particularly, if I run readelf on a binary compiled with the gcc that is us=
ed by buildroot I get this output
<br>
<br>
<font face=3D"Courier New">ottavio@ottavio:~$ readelf -A hello_world<br>
Attribute Section: aeabi<br>
File Attributes<br>
&nbsp; Tag_CPU_name: &quot;Cortex-A9&quot;<br>
&nbsp; Tag_CPU_arch: v7<br>
&nbsp; Tag_CPU_arch_profile: Application<br>
&nbsp; Tag_ARM_ISA_use: Yes<br>
&nbsp; Tag_THUMB_ISA_use: Thumb-2<br>
&nbsp; Tag_FP_arch: VFPv3<br>
&nbsp; Tag_Advanced_SIMD_arch: NEONv1<br>
&nbsp; Tag_ABI_PCS_wchar_t: 4<br>
&nbsp; Tag_ABI_FP_rounding: Needed<br>
&nbsp; Tag_ABI_FP_denormal: Needed<br>
&nbsp; Tag_ABI_FP_exceptions: Needed<br>
&nbsp; Tag_ABI_FP_number_model: IEEE 754<br>
&nbsp; Tag_ABI_align_needed: 8-byte<br>
&nbsp; Tag_ABI_align_preserved: 8-byte, except leaf SP<br>
&nbsp; Tag_ABI_enum_size: int<br>
&nbsp; Tag_CPU_unaligned_access: v6<br>
&nbsp; Tag_MPextension_use: Allowed<br>
&nbsp; Tag_Virtualization_use: TrustZone<br>
ottavio@ottavio:~$</font><br>
<br>
I tried to replicate this by configuring a new machine, and my machine conf=
iguration looks like this<br>
<br>
<font face=3D"Courier New">require ../../../meta/conf/machine/include/tune-=
cortexa9.inc<br>
<br>
AVAILTUNES &#43;=3D &quot;cortexa9t-vfpv3-neon&quot;<br>
ARMPKGARCH_tune-cortexa9t-vfpv3-neon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;cortexa9&quot;<br>
TUNE_FEATURES_tune-cortexa9t-vfpv3-neon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;${TUNE_FEATURES_tune-armv7at-vfpv3} neon cortexa9&quot;<br>
PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon =3D &quot;${PACKAGE_EXTRA_ARC=
HS_tune-armv7at-vfpv3} cortexa9-vfp cortexa9-vfpv3 cortexa9t2-vfp cortexa9t=
2-vfpv3 cortexa9-neon&quot;<br>
<br>
DEFAULTTUNE =3D &quot;cortexa9t-vfpv3-neon&quot;</font><br>
<br>
If I run readelf on any compiled binary obtained with yocto, I get this res=
ult:<br>
<br>
<font face=3D"Courier New">ottavio@ottavio:~/poky/build-xxx/tmp/work/cortex=
a9-vfpv3-poky-linux-gnueabi/bzip2/1.0.6-r5/build$ readelf -A .libs/bzip2<br=
>
Attribute Section: aeabi<br>
File Attributes<br>
&nbsp; Tag_CPU_name: &quot;Cortex-A9&quot;<br>
&nbsp; Tag_CPU_arch: v7<br>
&nbsp; Tag_CPU_arch_profile: Application<br>
&nbsp; Tag_ARM_ISA_use: Yes<br>
&nbsp; Tag_THUMB_ISA_use: Thumb-2<br>
&nbsp; Tag_FP_arch: VFPv3<br>
&nbsp; Tag_ABI_PCS_wchar_t: 4<br>
&nbsp; Tag_ABI_FP_rounding: Needed<br>
&nbsp; Tag_ABI_FP_denormal: Needed<br>
&nbsp; Tag_ABI_FP_exceptions: Needed<br>
&nbsp; Tag_ABI_FP_number_model: IEEE 754<br>
&nbsp; Tag_ABI_align_needed: 8-byte<br>
&nbsp; Tag_ABI_align_preserved: 8-byte, except leaf SP<br>
&nbsp; Tag_ABI_enum_size: int<br>
&nbsp; Tag_CPU_unaligned_access: v6<br>
&nbsp; Tag_MPextension_use: Allowed<br>
&nbsp; Tag_Virtualization_use: TrustZone<br>
ottavio@ottavio:~/poky/build-xxx/tmp/work/cortexa9-vfpv3-poky-linux-gnueabi=
/bzip2/1.0.6-r5/build$</font><br>
<br>
I am quite close to get a similar binary, the missing part is the Tag_Advan=
ced_SIMD_arch: NEONv1 .&nbsp; I get exactly the same result if I use DEFAUL=
TTUNE =3D &quot;cortexa9t-vfpv3&quot;, thus it seems that the neon and cort=
exa9-neon options I tried to add are ignored.<br>
<br>
At this point I have two questions<br>
<br>
<b>Question #1</b><br>
<br>
How should I change ARMPKGARCH_tune-cortexa9t-vfpv3-neon , TUNE_FEATURES_tu=
ne-cortexa9t-vfpv3-neon and PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon t=
o have exactly the same kind of elf?<br>
<br>
<b>Question # 2</b><br>
<br>
Why the only options for neon in meta/conf/machine/include/tune-cortexa9.in=
c are offered for HF tunes?<br>
<br>
<br>
Thank you for your help<br>
<br>
Ottavio<br>
</div>
</body>
</html>

--_000_5637116E3E13BE46B0D936BF364783C1F651ADMAIAsedevideotecc_--
