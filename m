Return-Path: <jweyer@aecontrols.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12A1CCD1BE
	for <webhook@archiver.kernel.org>; Thu, 23 Oct 2025 15:57:23 +0000 (UTC)
Received: from cloud-out-c.spamtitan.com (cloud-out-c.spamtitan.com [54.164.100.18])
 by mx.groups.io with SMTP id smtpd.web10.25360.1761235036507445013
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Oct 2025 08:57:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aecontrols.com header.s=mail header.b=h+wIlVSU;
 spf=pass (domain: aecontrols.com, ip: 54.164.100.18, mailfrom: jweyer@aecontrols.com)
Received: from cloud-out-c.spamtitan.com (localhost [127.0.0.1])
	by cloud-out-c.spamtitan.com (Postfix) with ESMTP id C0DDADB06A
	for <yocto@lists.yoctoproject.org>; Thu, 23 Oct 2025 15:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aecontrols.com;
	s=mail; t=1761235035;
	bh=1HgBV6ZODeJEkrwKSWkXoTbeFrKG8usCUF8kOGGkc3k=;
	h=From:To:Subject:Date:References:In-Reply-To;
	b=h+wIlVSU+2TK1Yeu3FEr9/Lhn9kyVpd0A4FTaIAfKSspD41FxYBhXVT9iyXK/vvT9
	 vGaB0Iy69/h6E8YPFzSsY1lPBEvbozCtTPEyW2Qz9ie84+MG5l0BStgnnpLsa0L56W
	 QkGmueuEr1v0xatI728CRjcvVW/NcnElezSp5rGo94CZDq433bbxB8hPradZEV/y9y
	 iSADy4B7TyQyjInofdyXC+Ztw9loLOcnf/q/0e3G1LRVSzOBC8xNjWW0DvgvI4xGm2
	 ztRLBpcp0ibjJzBVJ8b2XNcuUBsRpE1NwXm3sYsNY3OW+mGpl4sLlUObjhjjUXKREr
	 4HeFLvVtTMWWQ==
Received: from localhost (localhost [127.0.0.1])
	by cloud-out-c.spamtitan.com (Postfix) with ESMTP id BAD1FDB068
	for <yocto@lists.yoctoproject.org>; Thu, 23 Oct 2025 15:57:15 +0000 (UTC)
X-Virus-Scanned: by SpamTitan at ec2.internal
Received: from cloud-out-c.spamtitan.com (localhost [127.0.0.1])
	by cloud-out-c.spamtitan.com (Postfix) with ESMTP id 184E3DAFDD
	for <yocto@lists.yoctoproject.org>; Thu, 23 Oct 2025 15:57:15 +0000 (UTC)
Authentication-Results: cloud-out-c.spamtitan.com;
        x-trusted-ip=pass
Received: from mail.aecontrols.com (mail.aecontrols.com [50.248.202.241])
	by cloud-out-c.spamtitan.com (Postfix) with ESMTPS id E9B4CDAFF3;
	Thu, 23 Oct 2025 15:57:14 +0000 (UTC)
Received: from AEC-Exchange.AEC.local (192.168.0.46) by AEC-Exchange.AEC.local
 (192.168.0.46) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Thu, 23 Oct
 2025 08:57:14 -0700
Received: from AEC-Exchange.AEC.local ([fe80::a53c:dc10:161f:ae5c]) by
 AEC-Exchange.AEC.local ([fe80::a53c:dc10:161f:ae5c%13]) with mapi id
 15.00.1497.048; Thu, 23 Oct 2025 08:57:14 -0700
From: Jared Weyer <jweyer@aecontrols.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>, Alexander Kanavin <alex.kanavin@gmail.com>
Subject: Re: [yocto] Issues with DEPENDS
Thread-Topic: [yocto] Issues with DEPENDS
Thread-Index: AQHcQiDWYC4fUCIYgUmIp+MANz5ZrbTQERyA///QGgg=
Date: Thu, 23 Oct 2025 15:57:13 +0000
Message-ID: <1761234983964.30308@aecontrols.com>
References: <1761008477730.70625@aecontrols.com>,<f4a20a19-96ec-4bb4-b105-ea20caf48187@gmail.com>
In-Reply-To: <f4a20a19-96ec-4bb4-b105-ea20caf48187@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Oct 2025 15:57:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65966

Hi all,=0A=
=0A=
Thanks for the input! I figured out that the issue was indeed related to th=
e install directory. I have the following in recipe B:=0A=
=0A=
do_install() {=0A=
    install -d ${D}${MCU_PLUS_SDK_AM263PX_INSTALL_DIR}=0A=
    cp -r ${B}/. ${D}${MCU_PLUS_SDK_AM263PX_INSTALL_DIR}=0A=
}=0A=
=0A=
where MCU_PLUS_SDK_AM263PX_INSTALL_DIR came from two different include file=
s:=0A=
=0A=
# meta-ti/meta-ti-extras/recipes-ti/includes/ti-paths.inc=0A=
installdir =3D "${datadir}/ti"=0A=
=0A=
# meta-aec/recipes-ti/includes/aec-ti-paths.inc=0A=
CU_PLUS_SDK_AM263PX_VERSION :=3D "11.00.00.19"=0A=
MCU_PLUS_SDK_AM263PX_INSTALL_NAME :=3D "mcu_plus_sdk_am263px_${MCU_PLUS_SDK=
_AM263PX_VERSION}"=0A=
MCU_PLUS_SDK_AM263PX_INSTALL_DIR =3D "${installdir}/${MCU_PLUS_SDK_AM263PX_=
INSTALL_NAME}"=0A=
=0A=
The above works as expected; However, the bug was that I had the following:=
=0A=
=0A=
MCU_PLUS_SDK_AM263PX_INSTALL_DIR :=3D "${installdir}/${MCU_PLUS_SDK_AM263PX=
_INSTALL_NAME}"=0A=
=0A=
I was using immediate expansion which causing issues only when the recipe w=
as built as a dependency to another recipe. I believe this was because of t=
he context shift causing ${datadir} to expand differently when the recipe w=
as built independently, though I am still not entirely sure why it caused s=
ysroot-components to be empty, I would have expected it to populate but wit=
h an incorrect path.=0A=
=0A=
Anyways, thank you both for your input!=0A=
=0A=
Thanks again,=0A=
=0A=
- Jared=0A=
=0A=
________________________________________=0A=
From: Gyorgy Sarvari <skandigraun@gmail.com>=0A=
Sent: Thursday, October 23, 2025 4:27 AM=0A=
To: yocto@lists.yoctoproject.org; Jared Weyer=0A=
Subject: Re: [yocto] Issues with DEPENDS=0A=
=0A=
On 10/21/25 03:02, Jared Weyer via lists.yoctoproject.org wrote:=0A=
>=0A=
>     install -m 0755 ${S}/test.txt ${D}/usr/share/ti=0A=
>     install -m 0755 ${S}/test2.txt ${D}/usr=0A=
=0A=
I remember this, this is how I learned to use bitbake variables for all=0A=
paths, I spent at least 2 days debugging it some years ago.=0A=
When you do build for native, ${D} is pretty much the same as for=0A=
tagret, but ${datadir and ${prefix} are very different.=0A=
=0A=
For target it looks like this:=0A=
prefix =3D /usr=0A=
datadir =3D /usr/share=0A=
=0A=
For native, it looks like this:=0A=
prefix =3D=0A=
/home/mee/stuff/ptest-images/build/tmp/work/x86_64-linux/openssl-native/3.5=
.4/recipe-sysroot-native/usr=0A=
datadir =3D=0A=
/home/mee/stuff/ptest-images/build/tmp/work/x86_64-linux/openssl-native/3.5=
.4/recipe-sysroot-native/usr/share=0A=
=0A=
=0A=
Try in your recipe you should always use ${D}${datadir}, ${D}{prefix}=0A=
etc variables when installing files to avoid such issues.=0A=

