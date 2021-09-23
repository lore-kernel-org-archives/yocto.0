Return-Path: <webhook@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,RDNS_NONE,SPF_HELO_NONE,
	SPOOFED_FREEMAIL_NO_RDNS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6936C433EF
	for <webhook@archiver.kernel.org>; Thu, 23 Sep 2021 21:18:27 +0000 (UTC)
Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 21:18:27 -0000
Received: from mailout08.t-online.de (mailout08.t-online.de [194.25.134.20])
 by mx.groups.io with SMTP id smtpd.web09.2150.1632431906396844124
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 14:18:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.20,
 mailfrom: f_l_k@t-online.de)
Received: from fwd86.dcpf.telekom.de (fwd86.aul.t-online.de [10.223.144.112])
	by mailout08.t-online.de (Postfix) with SMTP id 99075E0D0
	for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 23:18:24 +0200 (CEST)
Received: from flk-MS-7C91.fritz.box ([79.219.228.58]) by fwd86.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mTW6m-1cMqm10; Thu, 23 Sep 2021 23:18:20 +0200
From: MarkusVolk <f_l_k@t-online.de>
To: yocto@lists.yoctoproject.org
Cc: MarkusVolk <f_l_k@t-online.de>
Subject: [yocto][meta-rockchip][PATCH v2 1/2] rockchip.wks: use uuid for all
 partitions
Date: Thu, 23 Sep 2021 23:17:58 +0200
Message-Id: <20210923211759.13676-1-f_l_k@t-online.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TOI-EXPURGATEID: 150726::1632431900-00001467-84FAA686/0/0 CLEAN NORMAL
X-TOI-MSGID: d9da557e-89c6-40a5-8d4c-4b917c89af55
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54825

My rock pi 4 refused to boot with the latest changes because there are fa=
lse entries
written to fstab. Fix this by using uuid for all partitions

Signed-off-by: MarkusVolk <f_l_k@t-online.de>
---
 wic/rockchip.wks | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 5ee276b..90bdb27 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -15,12 +15,12 @@
 #   boot        32768           229376
 #   root        262144          -           (suggested)
=20
-part loader1    --offset 32     --fixed-size 4000K            --source r=
awcopy                                                 --sourceparams=3D"=
file=3D${SPL_BINARY}"
-part reserved1  --offset 4032   --fixed-size 64K
-part reserved2  --offset 4096   --fixed-size 4096K
-part loader2    --offset 8192   --fixed-size 4096K            --source r=
awcopy                                                 --sourceparams=3D"=
file=3Du-boot.${UBOOT_SUFFIX}"
-part atf        --offset 12288  --fixed-size 4096K
-part /boot      --offset 16384  --size       114688K --active --source b=
ootimg-partition --fstype=3Dvfat --label boot            --sourceparams=3D=
"loader=3Du-boot"
-part /                                                        --source r=
ootfs            --fstype=3Dext4 --label root --use-uuid
+part loader1	--offset 32 --fixed-size 4000K --source rawcopy --sourcepar=
ams=3D"file=3D${SPL_BINARY}" --use-uuid
+part reserved1	--offset 4032 --fixed-size 64K --use-uuid
+part reserved2	--offset 4096 --fixed-size 4096K --use-uuid
+part loader2	--offset 8192 --fixed-size 4096K --source rawcopy --sourcep=
arams=3D"file=3Du-boot.${UBOOT_SUFFIX}" --use-uuid
+part atf	--offset 12288 --fixed-size 4096K --use-uuid
+part /boot	--offset 16384 --size 114688K --active --source bootimg-parti=
tion --fstype=3Dvfat --label boot --sourceparams=3D"loader=3Du-boot" --us=
e-uuid
+part /		--source rootfs --fstype=3Dext4 --label root --use-uuid
=20
-bootloader --ptable gpt --append=3D"console=3Dtty1 console=3D${RK_CONSOL=
E_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=3Dext4 init=3D/sbin/init"
+bootloader	--ptable gpt --append=3D"console=3Dtty1 console=3D${RK_CONSOL=
E_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=3Dext4 init=3D/sbin/init"
--=20
2.25.1


