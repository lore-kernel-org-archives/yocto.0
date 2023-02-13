Return-Path: <adrian.dusinski@evatronix.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39B47C636CC
	for <webhook@archiver.kernel.org>; Mon, 13 Feb 2023 13:49:58 +0000 (UTC)
Subject: Adding backported driver to the kernel #kernel
To: yocto@lists.yoctoproject.org
From: "Adrian" <adrian.dusinski@evatronix.com>
X-Originating-Location: Darłowo, West Pomerania, PL (77.252.68.106)
X-Originating-Platform: Windows Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Feb 2023 05:49:52 -0800
Message-ID: <83UU.1676296192066475347.KRRR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PoSbz7xrCiY2Obh78ca2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Feb 2023 13:49:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59215

--PoSbz7xrCiY2Obh78ca2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I built cfg80211 driver externally and added it as a recipe to the system:

*KERNEL_MODULE_AUTOLOAD +=3D "cfg80211"*
*install -m 755 ${S}/cfg80211.ko ${D}${nonarch_base_libdir}/modules/${KERNE=
L_VERSION}/extra*
**
In kernel I setup to use cfg80211 as a module.

If I copy this manually it's working but if I want build this recipe I rece=
ived error:

*wlan-driver-1.0-r0 do_packagedata: The recipe wlan-driver is trying to ins=
tall files into a shared area when those files already exist.*

Ofcourse I have already installed cfg80211 because it selected as a module =
so kernel create the file:

If I disabled cfg80211 from kernel, building is working but I received erro=
r during insmod:

*cfg80211: disagrees about version of symbol wireless_send_event
cfg80211: Unknown symbol wireless_send_event (err -22)*

Thanks

--PoSbz7xrCiY2Obh78ca2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"x_elementToProof" style=3D"font-family: Calibri,Arial,Helveti=
ca,sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"=
>Hi,</div>
<div class=3D"x_elementToProof" style=3D"font-family: Calibri,Arial,Helveti=
ca,sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"=
>&nbsp;</div>
<div class=3D"x_elementToProof x_ContentPasted6" style=3D"font-family: Cali=
bri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #000000; background=
-color: #ffffff;">I built cfg80211 driver externally and added it as a reci=
pe to the system:</div>
<div class=3D"x_elementToProof" style=3D"font-family: Calibri,Arial,Helveti=
ca,sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"=
>&nbsp;</div>
<div class=3D"x_elementToProof x_ContentPasted1" style=3D"font-family: Cali=
bri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #000000; background=
-color: #ffffff;"><strong>KERNEL_MODULE_AUTOLOAD +=3D "cfg80211"</strong></=
div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><strong>install -m 755 ${S}/cfg80211.ko =
${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/extra</strong></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><strong>&nbsp;</strong></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3">In kern=
el I setup to use cfg80211 as a module.<br aria-hidden=3D"true" /></span></=
div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3">&nbsp;<=
/span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3">If I co=
py this manually it's working but if I want build this recipe I received er=
ror:<br aria-hidden=3D"true" /></span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3 x_Conten=
tPasted4"><strong>wlan-driver-1.0-r0 do_packagedata: The recipe wlan-driver=
 is trying to install files into a shared area when those files already exi=
st.</strong><br aria-hidden=3D"true" /></span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3 x_Conten=
tPasted4">&nbsp;</span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3 x_Conten=
tPasted4">Ofcourse I have already installed cfg80211 because it selected as=
 a module so kernel create the file:</span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3 x_Conten=
tPasted4"><img id=3D"x_imageSelected0" class=3D"x_ContentPasted5 x_w-543 x_=
h-21 Do8Zj" style=3D"max-width: 100%; min-width: auto; min-height: auto; cu=
rsor: pointer; height: auto;" src=3D"data:image/png;base64,iVBORw0KGgoAAAAN=
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3D" crosso=
rigin=3D"use-credentials" data-imagetype=3D"AttachmentByCid" data-custom=3D=
"AAMkAGQ2NzE4MTFjLTdlYTYtNGE5MC1iOGJhLTg1MzE4Njc1NDg0ZgBGAAAAAABdb3sFUZG%2F=
SJoC3llEDSB3BwCDHT0m%2FbsYTbsi5w5YtSVkAAAAAAEJAACDHT0m%2FbsYTbsi5w5YtSVkAAS=
GyeDvAAABEgAQAP9bk2ao1F1EktKBYfAaaAc%3D" data-outlook-trace=3D"F:1|T:1" /><=
br aria-hidden=3D"true" /></span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3 x_Conten=
tPasted4">&nbsp;</span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3 x_Conten=
tPasted4">If I disabled cfg80211 from kernel, building is working but I rec=
eived error during insmod:<br aria-hidden=3D"true" /></span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3 x_Conten=
tPasted4">&nbsp;</span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3 x_Conten=
tPasted4 x_ContentPasted0"><strong>cfg80211: disagrees about version of sym=
bol wireless_send_event<br class=3D"x_ContentPasted0" aria-hidden=3D"true" =
/>cfg80211: Unknown symbol wireless_send_event (err -22)</strong><br aria-h=
idden=3D"true" /></span></div>
<div class=3D"x_elementToProof x_ContentPasted1 x_ContentPasted2" style=3D"=
font-family: Calibri,Arial,Helvetica,sans-serif; font-size: 12pt; color: #0=
00000; background-color: #ffffff;"><span class=3D"x_ContentPasted3 x_Conten=
tPasted4 x_ContentPasted0">&nbsp;</span></div>
<span class=3D"x_ContentPasted3 x_ContentPasted4 x_ContentPasted0">Thanks</=
span>

--PoSbz7xrCiY2Obh78ca2--

