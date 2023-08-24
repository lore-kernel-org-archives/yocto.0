Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31D74C27C40
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 16:00:16 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.978.1692892811090347314
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 09:00:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inside-m2m.de header.s=default header.b=TbBiFOyC;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1692892806;
	bh=V3hWtSJRQD92fLDRLINkEIzou7rS8JsF7yyqwQGTJl8=;
	h=Date:From:To:Subject:From;
	b=TbBiFOyCLvVW5kRJ5K/1sOyNT61bazUToCtuP3fkhq68EZpcDw8rHAdYa3vmxWFi1
	 qbgjxp67C719DvCCZFM0kVNjAc1WK9oTpciO5Gtn89Xmghyb1V9TJjbexaFagzgg14
	 J0L9LK/2YcbVfpGLS2cAwt0iqEnJ6QkoSNrYv0w0s2RaTSFbXgqPEdrsb8C6Vl0ag8
	 HNa6XCnJV9NxXMcsxdm0r6R3Vs/I1/QXBOr0vdC/QjzTrqGYdDsK91Z3o4UmWiQ7ea
	 QXwjMpS6D5Mg40i+idO/xVBPMMdxOjkXZBo//Ij3DulZRBebFyWLJmHwpO/G5ZSZL9
	 Gd5Su48QQrGNA==
Received: from insidem2ms-MBP.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 88FB24024A
	for <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 18:00:04 +0200 (CEST)
Date: Thu, 24 Aug 2023 18:00:03 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: linux-firmware-mt7601u-license missing - all fw installed not only
 selected
Message-ID: <ZOd-gwWh1meVWRj2@insidem2ms-MBP.inside-m2m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 16:00:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60882


Today I updated my kirkstone poky (git pull) to today's version, I do
not know when the last time was, though (winter?)...

I have

IMAGE_INSTALL += " \
    kernel-module-rtl8812au \
    linux-firmware-ralink \
    linux-firmware-rtl8168 \
    linux-firmware-rtl8188 \
    linux-firmware-rtl8192ce \
    linux-firmware-rtl8192cu \
    linux-firmware-rtl8192su \
    linux-firmware-rtl8723 \
    linux-firmware-rtl8821 \
    linux-firmware-mt7662 \
    util-linux-sfdisk \
    blspec \
    e2fsprogs-resize2fs e2fsprogs-mke2fs xfsprogs \
    rauc barebox-utils dt-utils"

in my image config and only those firmware packages got installed.

To create linux-firmware-mt7662 I have a 
meta-insidem2m/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
containing this:

PACKAGES =+ "${PN}-mt7662-license ${PN}-mt7662"

LICENSE:${PN}-mt7662 = "Firmware-ralink_a_mediatek_company_firmware"
LICENSE:${PN}-mt7662-license = "Firmware-ralink_a_mediatek_company_firmware"

FILES:${PN}-mt7662-license = "${nonarch_base_libdir}/firmware/LICENCE.ralink_a_mediatek_company_firmware"
FILES:${PN}-mt7662 = "${nonarch_base_libdir}/firmware/mt7662.bin ${nonarch_base_libdir}/firmware/mt7662_rom_patch.bin"

RDEPENDS:${PN}-mt7662 += "${PN}-mt7662-license"


Worked fine, after today's update I got:

The following packages have unmet dependencies:
 linux-firmware-mt7601u : Depends: linux-firmware-mt7601u-license but it is not installable
E: Unable to correct problems, you have held broken packages.

Why could that be?

I read there was a fix in November:
https://git.yoctoproject.org/poky/commit/meta/recipes-kernel/linux-firmware/linux-firmware_20230625.bb?id=b4b218b0699490765459995f43e945ceea6c32c1

By accident I found out if I rape my bbappend file to look so:

PACKAGES =+ "${PN}-mt7662-license ${PN}-mt7662"

LICENSE:${PN}-mt7662 = "Firmware-ralink_a_mediatek_company_firmware"
LICENSE:${PN}-mt7662-license = "Firmware-ralink_a_mediatek_company_firmware"

FILES:${PN}-mt7662-license = "${nonarch_base_libdir}/firmware/LICENCE.ralink_a_mediatek_company_firmware"
FILES:${PN}-mt7662 = "${nonarch_base_libdir}/firmware/mt7662.bin ${nonarch_base_libdir}/firmware/mt7662_rom_patch.bin"

RDEPENDS:${PN}-mt7662 += "${PN}-mt7662-license"


LICENSE:${PN}-mt7601u = "Firmware-ralink_a_mediatek_company_firmware"
LICENSE:${PN}-mt7601u-license = "Firmware-ralink_a_mediatek_company_firmware"

FILES:${PN}-mt7601u-license = "${nonarch_base_libdir}/firmware/LICENCE.ralink_a_mediatek_company_firmware"

FILES:${PN}-mt7601u = "${nonarch_base_libdir}/firmware/mt7662.bin ${nonarch_base_libdir}/firmware/mt7662_rom_patch.bin"
#FILES:${PN}-mt7601u = " \ 
#  ${nonarch_base_libdir}/firmware/mediatek/mt7601u.bin \
#"

RDEPENDS:${PN}-mt7601u += "${PN}-mt7601u-license"

The image gets created successfully, but now it has ALL firmware
packages installed (900MB). The commented out FILES:${PN}-mt7601u is the
original actual recipe part.

What's going on here?

Generally the Problem looks similair to this one:

https://lore.kernel.org/all/20767.1677381945442913809@lists.openembedded.org/T/#md2177072e60f8a737f0db0ef267d75596b34cb89

Was there ever a fix? Despite of that, why is mt7601u failing?

Regards
Konstantin






