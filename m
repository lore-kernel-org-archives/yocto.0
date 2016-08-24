Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0A75E009FA; Wed, 24 Aug 2016 14:10:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73F43E00874
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 14:10:07 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id p64so10409196pfb.1
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 14:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=iGgfkQwU9YhHrcuHJlQ53owArAkOW4dapgSc091KAbU=;
	b=IllRmcBxrltXR0LSarZcR2HwQ56HnpOGNErvEIMFcOoCA+9eNcehFbiIue59pcIyc2
	//oavpfOjmUdP4TXsTq6sSMyr1cy6UcWqNwouuWgpH5BHEtlxxycD+HTZ8wy7roJIHqv
	lcJMLYT/Z0zH1ASFOdvGw8hXIS40CWcalm1I320OyvnOM/pxQGX7CF8qh3La5UapbPWF
	zugwkX6ovBA1HPT3+py3IfkNWVjW7urDwR100geFaTQ1aTQwrGl8KUzIPKe+9YntNJcm
	ycjgbUrBW1IAL91KQIX5LmyTyp+tH6dJYlMLPCO7stnzyAslDcXDD7qF25vIXw8rCZsx
	LCag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=iGgfkQwU9YhHrcuHJlQ53owArAkOW4dapgSc091KAbU=;
	b=SBf1NLj/YbUuMRp0YKgDY2QcAWNESBRUdY8LSVqXxDEN+Xk/+HTinflU34sYBx8pEw
	gY2JVj6EDsV4YjY1x9VLrugpOz8U9UTsWPWguhREd/DVb+8jE6/8Po1fQGDvEW7GdshW
	T0bGjut2H69QSVl6sK7ztGjNX/8D0aUlTP48GKc83hDWshW0bIgMEj9axo17V/tcYbWr
	ITroEK9lLPi/u6P8Cy08Ntf2LLl1z6YZ9GSyC9yr0qF1csSQnDVNSmf2YEhn6OHshsb9
	i6A716liQsio8Q0YLHXkEVKDnXABVwZ5HJAN4B3vS1ZqDVmExb80AaiCNLpT4+/VN9qK
	41tQ==
X-Gm-Message-State: AE9vXwNZBc8HqM//ig9w9Fwc1MNiQwAUqJEcT01CSRIeLRWsjV6Qe9d8XDNQFCJBGcFnOw==
X-Received: by 10.98.32.81 with SMTP id g78mr9697226pfg.20.1472073007098;
	Wed, 24 Aug 2016 14:10:07 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:f429:4025:3367:359a?
	([2601:646:8882:b8c:f429:4025:3367:359a])
	by smtp.gmail.com with ESMTPSA id
	tm1sm15846623pac.23.2016.08.24.14.10.06
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 24 Aug 2016 14:10:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5637116E3E13BE46B0D936BF364783C1F651AD@MAIA.sede.videotec.com>
Date: Wed, 24 Aug 2016 14:10:29 -0700
Message-Id: <AC4F077F-676E-42DA-B509-7F2477475178@gmail.com>
References: <5637116E3E13BE46B0D936BF364783C1F651AD@MAIA.sede.videotec.com>
To: Ottavio Campana <o.campana@videotec.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Tuning for a machine based on Cortex-A9
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
X-List-Received-Date: Wed, 24 Aug 2016 21:10:12 -0000
X-Groupsio-MsgNum: 31639
Content-Type: multipart/signed;
	boundary="Apple-Mail=_68CAB814-9736-492D-8FE1-81F698FD0CCF";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_68CAB814-9736-492D-8FE1-81F698FD0CCF
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3F285A8C-37D0-47EB-A8BB-4678BF753756"

--Apple-Mail=_3F285A8C-37D0-47EB-A8BB-4678BF753756
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Aug 24, 2016, at 12:51 AM, Ottavio Campana <o.campana@videotec.com> =
wrote:
>=20
> Hello,
>=20
> I am trying to port a third-party BSP based on buildroot to yocto, but =
I am not able to tune the compiler to extactly match the original one.
>=20
> Particularly, if I run readelf on a binary compiled with the gcc that =
is used by buildroot I get this output
>=20
> ottavio@ottavio:~$ readelf -A hello_world
> Attribute Section: aeabi
> File Attributes
>   Tag_CPU_name: "Cortex-A9"
>   Tag_CPU_arch: v7
>   Tag_CPU_arch_profile: Application
>   Tag_ARM_ISA_use: Yes
>   Tag_THUMB_ISA_use: Thumb-2
>   Tag_FP_arch: VFPv3
>   Tag_Advanced_SIMD_arch: NEONv1
>   Tag_ABI_PCS_wchar_t: 4
>   Tag_ABI_FP_rounding: Needed
>   Tag_ABI_FP_denormal: Needed
>   Tag_ABI_FP_exceptions: Needed
>   Tag_ABI_FP_number_model: IEEE 754
>   Tag_ABI_align_needed: 8-byte
>   Tag_ABI_align_preserved: 8-byte, except leaf SP
>   Tag_ABI_enum_size: int
>   Tag_CPU_unaligned_access: v6
>   Tag_MPextension_use: Allowed
>   Tag_Virtualization_use: TrustZone
> ottavio@ottavio:~$
>=20
> I tried to replicate this by configuring a new machine, and my machine =
configuration looks like this
>=20
> require ../../../meta/conf/machine/include/tune-cortexa9.inc
>=20
> AVAILTUNES +=3D "cortexa9t-vfpv3-neon"
> ARMPKGARCH_tune-cortexa9t-vfpv3-neon          =3D "cortexa9"
> TUNE_FEATURES_tune-cortexa9t-vfpv3-neon       =3D =
"${TUNE_FEATURES_tune-armv7at-vfpv3} neon cortexa9"
> PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon =3D =
"${PACKAGE_EXTRA_ARCHS_tune-armv7at-vfpv3} cortexa9-vfp cortexa9-vfpv3 =
cortexa9t2-vfp cortexa9t2-vfpv3 cortexa9-neon"
>=20
> DEFAULTTUNE =3D "cortexa9t-vfpv3-neon=E2=80=9D

Use

 DEFAULTTUNE =3D "cortexa9t-neon"

if you want to use hard-float ABI then

DEFAULTTUNE =3D =E2=80=9Ccortexa9thf-neon"

>=20
> If I run readelf on any compiled binary obtained with yocto, I get =
this result:
>=20
> =
ottavio@ottavio:~/poky/build-xxx/tmp/work/cortexa9-vfpv3-poky-linux-gnueab=
i/bzip2/1.0.6-r5/build$ readelf -A .libs/bzip2
> Attribute Section: aeabi
> File Attributes
>   Tag_CPU_name: "Cortex-A9"
>   Tag_CPU_arch: v7
>   Tag_CPU_arch_profile: Application
>   Tag_ARM_ISA_use: Yes
>   Tag_THUMB_ISA_use: Thumb-2
>   Tag_FP_arch: VFPv3
>   Tag_ABI_PCS_wchar_t: 4
>   Tag_ABI_FP_rounding: Needed
>   Tag_ABI_FP_denormal: Needed
>   Tag_ABI_FP_exceptions: Needed
>   Tag_ABI_FP_number_model: IEEE 754
>   Tag_ABI_align_needed: 8-byte
>   Tag_ABI_align_preserved: 8-byte, except leaf SP
>   Tag_ABI_enum_size: int
>   Tag_CPU_unaligned_access: v6
>   Tag_MPextension_use: Allowed
>   Tag_Virtualization_use: TrustZone
> =
ottavio@ottavio:~/poky/build-xxx/tmp/work/cortexa9-vfpv3-poky-linux-gnueab=
i/bzip2/1.0.6-r5/build$
>=20
> I am quite close to get a similar binary, the missing part is the =
Tag_Advanced_SIMD_arch: NEONv1 .  I get exactly the same result if I use =
DEFAULTTUNE =3D "cortexa9t-vfpv3", thus it seems that the neon and =
cortexa9-neon options I tried to add are ignored.
>=20
> At this point I have two questions
>=20
> Question #1
>=20
> How should I change ARMPKGARCH_tune-cortexa9t-vfpv3-neon , =
TUNE_FEATURES_tune-cortexa9t-vfpv3-neon and =
PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon to have exactly the same =
kind of elf?
>=20
> Question # 2
>=20
> Why the only options for neon in =
meta/conf/machine/include/tune-cortexa9.inc are offered for HF tunes?
>=20
>=20
> Thank you for your help
>=20
> Ottavio
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_3F285A8C-37D0-47EB-A8BB-4678BF753756
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 24, 2016, at 12:51 AM, Ottavio Campana &lt;<a =
href=3D"mailto:o.campana@videotec.com" =
class=3D"">o.campana@videotec.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; direction: ltr; =
font-family: Tahoma; font-size: 10pt;" class=3D"">Hello,<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><br =
class=3D"">I am trying to port a third-party BSP based on buildroot to =
yocto, but I am not able to tune the compiler to extactly match the =
original one.<br class=3D""><br class=3D"">Particularly, if I run =
readelf on a binary compiled with the gcc that is used by buildroot I =
get this output<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D""><br class=3D""><font face=3D"Courier New" =
class=3D"">ottavio@ottavio:~$ readelf -A hello_world<br =
class=3D"">Attribute Section: aeabi<br class=3D"">File Attributes<br =
class=3D"">&nbsp; Tag_CPU_name: "Cortex-A9"<br class=3D"">&nbsp; =
Tag_CPU_arch: v7<br class=3D"">&nbsp; Tag_CPU_arch_profile: =
Application<br class=3D"">&nbsp; Tag_ARM_ISA_use: Yes<br class=3D"">&nbsp;=
 Tag_THUMB_ISA_use: Thumb-2<br class=3D"">&nbsp; Tag_FP_arch: VFPv3<br =
class=3D"">&nbsp; Tag_Advanced_SIMD_arch: NEONv1<br class=3D"">&nbsp; =
Tag_ABI_PCS_wchar_t: 4<br class=3D"">&nbsp; Tag_ABI_FP_rounding: =
Needed<br class=3D"">&nbsp; Tag_ABI_FP_denormal: Needed<br =
class=3D"">&nbsp; Tag_ABI_FP_exceptions: Needed<br class=3D"">&nbsp; =
Tag_ABI_FP_number_model: IEEE 754<br class=3D"">&nbsp; =
Tag_ABI_align_needed: 8-byte<br class=3D"">&nbsp; =
Tag_ABI_align_preserved: 8-byte, except leaf SP<br class=3D"">&nbsp; =
Tag_ABI_enum_size: int<br class=3D"">&nbsp; Tag_CPU_unaligned_access: =
v6<br class=3D"">&nbsp; Tag_MPextension_use: Allowed<br class=3D"">&nbsp; =
Tag_Virtualization_use: TrustZone<br =
class=3D"">ottavio@ottavio:~$</font><br class=3D""><br class=3D"">I =
tried to replicate this by configuring a new machine, and my machine =
configuration looks like this<br class=3D""><br class=3D""><font =
face=3D"Courier New" class=3D"">require =
../../../meta/conf/machine/include/tune-cortexa9.inc<br class=3D""><br =
class=3D"">AVAILTUNES +=3D "cortexa9t-vfpv3-neon"<br =
class=3D"">ARMPKGARCH_tune-cortexa9t-vfpv3-neon&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "cortexa9"<br =
class=3D"">TUNE_FEATURES_tune-cortexa9t-vfpv3-neon&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; =3D "${TUNE_FEATURES_tune-armv7at-vfpv3} neon cortexa9"<br =
class=3D"">PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon =3D =
"${PACKAGE_EXTRA_ARCHS_tune-armv7at-vfpv3} cortexa9-vfp cortexa9-vfpv3 =
cortexa9t2-vfp cortexa9t2-vfpv3 cortexa9-neon"<br class=3D""><br =
class=3D"">DEFAULTTUNE =3D =
"cortexa9t-vfpv3-neon=E2=80=9D</font></div></div></blockquote><div><br =
class=3D""></div><div>Use</div><div><br =
class=3D""></div><div>&nbsp;DEFAULTTUNE =3D =
"cortexa9t-neon"</div><div><br class=3D""></div><div>if you want to use =
hard-float ABI then</div><div><br class=3D""></div><div>DEFAULTTUNE =3D =
=E2=80=9Ccortexa9thf-neon"</div><div><br class=3D""></div><blockquote =
type=3D"cite" class=3D""><div class=3D""><div style=3D"font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; direction: ltr; font-family: =
Tahoma; font-size: 10pt;" class=3D""><br class=3D"">If I run readelf on =
any compiled binary obtained with yocto, I get this result:<br =
class=3D""><br class=3D""><font face=3D"Courier New" =
class=3D"">ottavio@ottavio:~/poky/build-xxx/tmp/work/cortexa9-vfpv3-poky-l=
inux-gnueabi/bzip2/1.0.6-r5/build$ readelf -A .libs/bzip2<br =
class=3D"">Attribute Section: aeabi<br class=3D"">File Attributes<br =
class=3D"">&nbsp; Tag_CPU_name: "Cortex-A9"<br class=3D"">&nbsp; =
Tag_CPU_arch: v7<br class=3D"">&nbsp; Tag_CPU_arch_profile: =
Application<br class=3D"">&nbsp; Tag_ARM_ISA_use: Yes<br class=3D"">&nbsp;=
 Tag_THUMB_ISA_use: Thumb-2<br class=3D"">&nbsp; Tag_FP_arch: VFPv3<br =
class=3D"">&nbsp; Tag_ABI_PCS_wchar_t: 4<br class=3D"">&nbsp; =
Tag_ABI_FP_rounding: Needed<br class=3D"">&nbsp; Tag_ABI_FP_denormal: =
Needed<br class=3D"">&nbsp; Tag_ABI_FP_exceptions: Needed<br =
class=3D"">&nbsp; Tag_ABI_FP_number_model: IEEE 754<br class=3D"">&nbsp; =
Tag_ABI_align_needed: 8-byte<br class=3D"">&nbsp; =
Tag_ABI_align_preserved: 8-byte, except leaf SP<br class=3D"">&nbsp; =
Tag_ABI_enum_size: int<br class=3D"">&nbsp; Tag_CPU_unaligned_access: =
v6<br class=3D"">&nbsp; Tag_MPextension_use: Allowed<br class=3D"">&nbsp; =
Tag_Virtualization_use: TrustZone<br =
class=3D"">ottavio@ottavio:~/poky/build-xxx/tmp/work/cortexa9-vfpv3-poky-l=
inux-gnueabi/bzip2/1.0.6-r5/build$</font><br class=3D""><br class=3D"">I =
am quite close to get a similar binary, the missing part is the =
Tag_Advanced_SIMD_arch: NEONv1 .&nbsp; I get exactly the same result if =
I use DEFAULTTUNE =3D "cortexa9t-vfpv3", thus it seems that the neon and =
cortexa9-neon options I tried to add are ignored.<br class=3D""><br =
class=3D"">At this point I have two questions<br class=3D""><br =
class=3D""><b class=3D"">Question #1</b><br class=3D""><br class=3D"">How =
should I change ARMPKGARCH_tune-cortexa9t-vfpv3-neon , =
TUNE_FEATURES_tune-cortexa9t-vfpv3-neon and =
PACKAGE_EXTRA_ARCHS_tune-cortexa9t-vfpv3-neon to have exactly the same =
kind of elf?<br class=3D""><br class=3D""><b class=3D"">Question # =
2</b><br class=3D""><br class=3D"">Why the only options for neon in =
meta/conf/machine/include/tune-cortexa9.inc are offered for HF tunes?<br =
class=3D""><br class=3D""><br class=3D"">Thank you for your help<br =
class=3D""><br class=3D"">Ottavio<br class=3D""></div><span =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_3F285A8C-37D0-47EB-A8BB-4678BF753756--

--Apple-Mail=_68CAB814-9736-492D-8FE1-81F698FD0CCF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAle+DUkACgkQuwUzVZGdMxQOhQCfXGFQk/Vn0qRDbCE34cZumD4P
blcAni02ySm4KJ9XFn0dl6BhAkctocFF
=fRNy
-----END PGP SIGNATURE-----

--Apple-Mail=_68CAB814-9736-492D-8FE1-81F698FD0CCF--
