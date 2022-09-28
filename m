Return-Path: <philippe.coval@astrolabe.coop>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 167A2C32771
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 13:09:29 +0000 (UTC)
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
 by mx.groups.io with SMTP id smtpd.web09.7615.1664370558124280714
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 06:09:19 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: hua.lan.rzr.cloudns.org,
 ip: 212.27.42.2, mailfrom: rzr@hua.lan.rzr.cloudns.org)
Received: from hua (unknown [78.197.125.113])
	(Authenticated sender: philippe.coval@free.fr)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id CEA0F2003E3;
	Wed, 28 Sep 2022 15:09:09 +0200 (CEST)
Received: by hua (Postfix, from userid 10000)
	id 8AA56226397; Wed, 28 Sep 2022 15:09:09 +0200 (CEST)
From: philippe.coval@astrolabe.coop
To: yocto@lists.yoctoproject.org
Cc: philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com,
	Philippe Coval <philippe.coval@astrolabe.coop>,
	Philippe Coval <philippe.coval.ext@huawei.com>
Subject: [meta-zephyr][PATCH] zephyr-openthread-rcp: Support
 nrf52840-mdk-usb-dongle machine
Date: Wed, 28 Sep 2022 15:09:01 +0200
Message-Id: <20220928130901.1414286-1-philippe.coval@astrolabe.coop>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 13:09:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58209

From: Philippe Coval <philippe.coval@astrolabe.coop>

This makerdiary board can be a fallback option for Oniro's gateway-bluepr=
int
I've been tested it myself along my single arduino-nano node

Origin: https://gitlab.eclipse.org/eclipse/oniro-core/meta-zephyr/-/merge=
_requests/22
Relate-to: https://gitlab.eclipse.org/eclipse/oniro-blueprints/transparen=
t-gateway/meta-oniro-blueprints-gateway/-/issues/6
Relate-to: https://gitlab.eclipse.org/pcoval/oniro-presentations/-/wikis/=
openthread
Forwarded: https://lists.yoctoproject.org/g/yocto/search?q=3Dposterid:659=
0488
Signed-off-by: Philippe Coval <philippe.coval@astrolabe.coop>
Signed-off-by: Philippe Coval <philippe.coval.ext@huawei.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthr=
ead-rcp.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthr=
ead-rcp.bb
index 1b19122..d745e85 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp=
.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp=
.bb
@@ -7,4 +7,4 @@ EXTRA_OECMAKE +=3D "-DCONF_FILE=3D"prj.conf overlay-rcp.c=
onf overlay-usb-nrf-br.conf
 # The overlay config and OpenThread itself imposes some specific require=
ments
 # towards the boards (e.g. flash layout and ieee802154 radio) so we need=
 to
 # limit to known working machines here.
-COMPATIBLE_MACHINE =3D "(arduino-nano-33-ble|nrf52840dk-nrf52840)"
+COMPATIBLE_MACHINE =3D "(arduino-nano-33-ble|nrf52840dk-nrf52840|nrf5284=
0-mdk-usb-dongle)"
--=20
2.34.1


