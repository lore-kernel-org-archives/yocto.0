Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1338BC0219D
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 14:59:22 +0000 (UTC)
Subject: Re: [yocto] PREFERRED_VERSION not being populated onto the rootfs image
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Feb 2025 06:59:19 -0800
References: <CANNYZj-oJA0qnr9+Djg94gN469cJJ18ym_nf2Bu3wph+_3RNig@mail.gmail.com>
In-Reply-To: <CANNYZj-oJA0qnr9+Djg94gN469cJJ18ym_nf2Bu3wph+_3RNig@mail.gmail.com>
Message-ID: <873.1739458759066142451@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="29kH403uJ0605r9YRKnt"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 14:59:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64800

--29kH403uJ0605r9YRKnt
Content-Type: multipart/alternative; boundary="LfFdIvfZkoqL1WOaFzvZ"

--LfFdIvfZkoqL1WOaFzvZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Alexander,

Thanks for your reply.

I've attached my new configure file that lives in: poky/meta-raspberrypi/co=
nf/machine

Mea Culpa: I created this configure file and am using the MACHINE ??=3D "ra=
spberrypi0-64-wf.conf" in my local.conf file.

Since the raspberrypi Zero support does not work out of the box. There is a=
n issue in that it has to build as a 64 bit image or Raspberry Pi's boot lo=
ader won't load it. And then, the kernel modules are missing... and then th=
e WIFI isn't installed completely and doesn't work anyways... etc... I crea=
ted my own machine configuration file.

My current state has the image booting, I have a serial connection and thro=
ugh it I can try to bring up wifi by hand but the wpa-supplicant won't conn=
ect. My searches have found some information that it is a recent patch that=
 has a side effect of not letting wpa-supplicant work with some raspberry P=
i's. I gather an older version (2.9) does work so that's why I'm doing this=
.

I have no idea where the log file you referred to is or how to make bitbake=
 generate it.

I did do a:

>=20
> $ bitbake -c cleanall wpa-supplicant
>=20

I can see that the correct version is referenced.

Cheers!!

--LfFdIvfZkoqL1WOaFzvZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Alexander,</div>
<div>&nbsp;</div>
<div>Thanks for your reply.</div>
<div>&nbsp;</div>
<div>I've attached my new configure file that lives in: <span style=3D"font=
-family: monospace;"><span style=3D"font-weight: bold; color: #5454ff; back=
ground-color: #ffffff;">poky/meta-raspberrypi/conf/machine</span><br /></sp=
an></div>
<div>&nbsp;</div>
<div>Mea Culpa: I created this configure file and am using the MACHINE ??=
=3D "raspberrypi0-64-wf.conf" in my local.conf file.</div>
<div>&nbsp;</div>
<div>Since the raspberrypi Zero support does not work out of the box. There=
 is an issue in that it has to build as a 64 bit image or Raspberry Pi's bo=
ot loader won't load it. And then, the kernel modules are missing... and th=
en the WIFI isn't installed completely and doesn't work anyways... etc... I=
 created my own machine configuration file.</div>
<div>&nbsp;</div>
<div>My current state has the image booting, I have a serial connection and=
 through it I can try to bring up wifi by hand but the wpa-supplicant won't=
 connect. My searches have found some information that it is a recent patch=
 that has a side effect of not letting wpa-supplicant work with some raspbe=
rry Pi's. I gather an older version (2.9) does work so that's why I'm doing=
 this.</div>
<div>&nbsp;</div>
<div>I have no idea where the log file you referred to is or how to make bi=
tbake generate it.</div>
<div>&nbsp;</div>
<div>I did do a:</div>
<div>&nbsp;</div>
<blockquote>
<div>$ bitbake -c cleanall wpa-supplicant</div>
</blockquote>
<div>I can see that the correct version is referenced.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>
<div>&nbsp;</div>

--LfFdIvfZkoqL1WOaFzvZ--

--29kH403uJ0605r9YRKnt
Content-Type: application/octet-stream; name="raspberrypi0-64-wf.conf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="raspberrypi0-64-wf.conf"

I0BUWVBFOiBNYWNoaW5lCiNATkFNRTogUmFzcGJlcnJ5UGkwIDIgV2lmaSBEZXZlbG9wbWVudCBC
b2FyZAojQERFU0NSSVBUSU9OOiBNYWNoaW5lIGNvbmZpZ3VyYXRpb24gZm9yIHRoZSBSYXNwYmVy
cnlQaTAgMiBXaWZpIGluIDY0IGJpdHMgbW9kZQoKTUFDSElORU9WRVJSSURFUyA9LiAicmFzcGJl
cnJ5cGkzLTY0OiIKCmluY2x1ZGUgY29uZi9tYWNoaW5lL3Jhc3BiZXJyeXBpMy02NC5jb25mCgpQ
UkVGRVJSRURfVkVSU0lPTl93cGEtc3VwcGxpY2FudCA9ICIyLjkiCgpNQUNISU5FX0VYVFJBX1JS
RUNPTU1FTkRTICs9ICJcCiAgICBsaW51eC1maXJtd2FyZS1ycGlkaXN0cm8tYmNtNDM0MzYgXAog
ICAgbGludXgtZmlybXdhcmUtcnBpZGlzdHJvLWJjbTQzNDM2cyBcCiAgICBibHVlei1maXJtd2Fy
ZS1ycGlkaXN0cm8tYmNtNDM0MzBiMC1oY2QgXAoiCgpSUElfS0VSTkVMX0RFVklDRVRSRUUgPSAi
IFwKICAgIGJyb2FkY29tL2JjbTI3MTAtcnBpLXplcm8tMi5kdGIgXAogICAgIgo=

--29kH403uJ0605r9YRKnt--

