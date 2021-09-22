Received: from mailout01.t-online.de (mailout01.t-online.de [194.25.134.80])
 by mx.groups.io with SMTP id smtpd.web10.785.1632337948830925581
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 12:12:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.80, mailfrom: f_l_k@t-online.de)
Received: from fwd71.dcpf.telekom.de (fwd71.aul.t-online.de [10.223.144.97])
	by mailout01.t-online.de (Postfix) with SMTP id 3602F3D63
	for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 21:09:58 +0200 (CEST)
Received: from flk-MS-7C91.fritz.box ([84.163.35.76]) by fwd71.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mT7cz-3mn13h0; Wed, 22 Sep 2021 21:09:57 +0200
From: "Markus Volk" <f_l_k@t-online.de>
To: yocto@lists.yoctoproject.org
Cc: MarkusVolk <f_l_k@t-online.de>
Subject: [meta-rockchip][PATCH 1/2] rockchip.wks: use uuid for all partitions
Date: Wed, 22 Sep 2021 21:09:49 +0200
Message-Id: <20210922190950.677010-1-f_l_k@t-online.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TOI-EXPURGATEID: 150726::1632337797-00001441-AB8911E8/0/0 CLEAN NORMAL
X-TOI-MSGID: 6cb119d7-807f-4db4-bfc0-13787d2f2b18
Content-Transfer-Encoding: quoted-printable

My rock pi 4 refused to boot with the latest changes because there are fa=
lse entries
written to fstab. Fix this by using uuid for all partitions
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

