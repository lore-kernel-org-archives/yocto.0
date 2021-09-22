Received: from mailout04.t-online.de (mailout04.t-online.de [194.25.134.18])
 by mx.groups.io with SMTP id smtpd.web09.798.1632337857649521169
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 12:10:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.18, mailfrom: f_l_k@t-online.de)
Received: from fwd71.dcpf.telekom.de (fwd71.aul.t-online.de [10.223.144.97])
	by mailout04.t-online.de (Postfix) with SMTP id 329906B49
	for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 21:10:09 +0200 (CEST)
Received: from flk-MS-7C91.fritz.box ([84.163.35.76]) by fwd71.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mT7d8-3mn13i0; Wed, 22 Sep 2021 21:10:06 +0200
From: "Markus Volk" <f_l_k@t-online.de>
To: yocto@lists.yoctoproject.org
Cc: MarkusVolk <f_l_k@t-online.de>
Subject: [meta-rockchip][PATCH 2/2] rockchip-wic.inc: dont let wic edit fstab by default
Date: Wed, 22 Sep 2021 21:09:50 +0200
Message-Id: <20210922190950.677010-2-f_l_k@t-online.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922190950.677010-1-f_l_k@t-online.de>
References: <20210922190950.677010-1-f_l_k@t-online.de>
MIME-Version: 1.0
X-TOI-EXPURGATEID: 150726::1632337806-00001441-C1A55EF5/0/0 CLEAN NORMAL
X-TOI-MSGID: 1bab01fe-07f1-4a95-ab3d-de69c8398a4d
Content-Transfer-Encoding: quoted-printable

---
 conf/machine/include/rockchip-wic.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include=
/rockchip-wic.inc
index 15010a0..30b0d57 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -26,3 +26,6 @@ WICVARS:append =3D " \
 	SPL_BINARY \
 	UBOOT_SUFFIX \
 	"
+
+# Do not update fstab file while creating wic images
+WIC_CREATE_EXTRA_ARGS ?=3D "--no-fstab-update"
--=20
2.25.1

