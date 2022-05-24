Return-Path: <lucas@ztec.com.br>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D86EC4332F
	for <webhook@archiver.kernel.org>; Tue, 24 May 2022 13:26:07 +0000 (UTC)
Subject: Yocto-generated image does not pass the systemd-boot bootloader
To: yocto@lists.yoctoproject.org
From: lucas@ztec.com.br
X-Originating-Location: =?utf-8?b?QnJhc8OtbGlhLCBGZWRlcmFsIERpc3RyaWN0LCBC?=
 =?utf-8?b?UiAoMTc5LjIxNC4xOC4xMzIp?=
X-Originating-Platform: Linux Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 24 May 2022 06:26:01 -0700
Message-ID: <D6PC.1653398761525953178.ADMi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LSfb1wAwQ50DCzmoCP6n"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 May 2022 13:26:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57173

--LSfb1wAwQ50DCzmoCP6n
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Good morning,

I generated a Linux Image by following the intel document "Yocto Project*-b=
ased Board Support Package for Intel Atom=C2=AE x6000E Series, and Intel=C2=
=AE Pentium=C2=AE and Celeron=C2=AE N and J Series Pro"[1].

I built option C (mc:x86-2021-minimal:core-image-full-cmdline) using bitbak=
e. And used bmaptool to prepare a bootable image (differently from the docu=
ment, in my case the `.wic.bmap` file was not generated, only the .wic, so =
I had to pass the --nobmap option to bmaptool).

The Elkhart Lake CRB recognizes the bootable image, and boots into systemd-=
boot.

After selecting the only option in the systemd-boot bootloader, the followi=
ng message is displayed:=C2=A0"EFI stub: Loaded initrd from command line op=
tion", and the boot process does not go any further, being stuck on a scree=
n with this message.

I have tried, however, this same image on my desktop (a Xeon E5-2650 V3) an=
d I can boot til the login screen and log into root. I can also test the im=
age on qemu. But the boot process fails on the CRB.

What could be possibly hapenning?

[1]: https://cdrdv2.intel.com/v1/dl/getContent/619566?explicitVersion=3Dtru=
e&wapkw=3D619566

--LSfb1wAwQ50DCzmoCP6n
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"sub_section_element_selectors"><span class=3D"sub_section_eleme=
nt_selectors">Good morning,</span></p>
<p class=3D"sub_section_element_selectors"><span class=3D"sub_section_eleme=
nt_selectors">I generated a Linux Image by following the intel document "Yo=
cto Project*-based Board Support Package for Intel Atom&reg; x6000E Series,=
 and Intel&reg; Pentium&reg; and Celeron&reg; N and J Series Pro"[1].</span=
></p>
<p class=3D"sub_section_element_selectors"><span class=3D"sub_section_eleme=
nt_selectors">I built option C (mc:x86-2021-minimal:core-image-full-cmdline=
) using bitbake. And used bmaptool to prepare a bootable image (differently=
 from the document, in my case the `.wic.bmap` file was not generated, only=
 the .wic, so I had to pass the --nobmap option to bmaptool).</span></p>
<p class=3D"sub_section_element_selectors"><span class=3D"sub_section_eleme=
nt_selectors">The Elkhart Lake CRB recognizes the bootable image, and boots=
 into systemd-boot.</span></p>
<p class=3D"sub_section_element_selectors"><span class=3D"sub_section_eleme=
nt_selectors">After selecting the only option in the systemd-boot bootloade=
r, the following message is displayed:&nbsp;"EFI stub: Loaded initrd from c=
ommand line option", and the boot process does not go any further, being st=
uck on a screen with this message.</span></p>
<p class=3D"sub_section_element_selectors"><span class=3D"sub_section_eleme=
nt_selectors">I have tried, however, this same image on my desktop (a Xeon =
E5-2650 V3) and I can boot til the login screen and log into root. I can al=
so test the image on qemu. But the boot process fails on the CRB.</span></p=
>
<span class=3D"sub_section_element_selectors">What could be possibly hapenn=
ing?</span><br /><br />[1]: https://cdrdv2.intel.com/v1/dl/getContent/61956=
6?explicitVersion=3Dtrue&amp;wapkw=3D619566

--LSfb1wAwQ50DCzmoCP6n--

