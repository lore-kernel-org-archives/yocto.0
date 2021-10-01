Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA44BC433F5
	for <webhook@archiver.kernel.org>; Fri,  1 Oct 2021 13:20:50 +0000 (UTC)
Received: from mailout11.t-online.de (mailout11.t-online.de [194.25.134.85])
 by mx.groups.io with SMTP id smtpd.web10.7920.1633094449642954733
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 06:20:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.85,
 mailfrom: f_l_k@t-online.de)
Received: from fwd85.dcpf.telekom.de (fwd85.aul.t-online.de [10.223.144.111])
	by mailout11.t-online.de (Postfix) with SMTP id 2DABF1B53
	for <yocto@lists.yoctoproject.org>; Fri,  1 Oct 2021 15:20:48 +0200 (CEST)
Received: from flk-MS-7C91.fritz.box ([84.163.44.111]) by fwd85.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mWIT1-0SiEcr0; Fri, 1 Oct 2021 15:20:47 +0200
From: MarkusVolk <f_l_k@t-online.de>
To: yocto@lists.yoctoproject.org
Cc: MarkusVolk <f_l_k@t-online.de>
Subject: [yocto][meta-rockchip][PATCH] rockchip.wks: use uuid for /boot during
 fstab-update
Date: Fri,  1 Oct 2021 15:20:35 +0200
Message-Id: <20211001132035.40846-1-f_l_k@t-online.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TOI-EXPURGATEID: 150726::1633094448-00001449-B6FCB4F1/0/0 CLEAN NORMAL
X-TOI-MSGID: 861cca1f-3769-4a72-b294-c309c91c189b
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Oct 2021 13:20:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54926

Since the recent patch to switch to UUIDs [0aa5e600: "use uuid
instead of hard-coding root device"] wic fstab-update is not able
to get the correct value for the used device anymore and falls to
the default 'sda'. Thus wrong /dev/sda entries are generated in fstab.

For partitions that should be updated automatically this can be avoided
by either generate entries using uuid or label.

Signed-off-by: MarkusVolk <f_l_k@t-online.de>
---
 wic/rockchip.wks | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 5ee276b..bd36ab0 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -20,7 +20,7 @@ part reserved1  --offset 4032   --fixed-size 64K
 part reserved2  --offset 4096   --fixed-size 4096K
 part loader2    --offset 8192   --fixed-size 4096K            --source r=
awcopy                                                 --sourceparams=3D"=
file=3Du-boot.${UBOOT_SUFFIX}"
 part atf        --offset 12288  --fixed-size 4096K
-part /boot      --offset 16384  --size       114688K --active --source b=
ootimg-partition --fstype=3Dvfat --label boot            --sourceparams=3D=
"loader=3Du-boot"
+part /boot      --offset 16384  --size       114688K --active --source b=
ootimg-partition --fstype=3Dvfat --label boot            --sourceparams=3D=
"loader=3Du-boot" --use-uuid
 part /                                                        --source r=
ootfs            --fstype=3Dext4 --label root --use-uuid
=20
 bootloader --ptable gpt --append=3D"console=3Dtty1 console=3D${RK_CONSOL=
E_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=3Dext4 init=3D/sbin/init"
--=20
2.25.1


