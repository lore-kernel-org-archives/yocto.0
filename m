Return-Path: <michal.kotyla@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E42BDC433F5
	for <webhook@archiver.kernel.org>; Wed, 27 Apr 2022 09:48:37 +0000 (UTC)
Received: from 7.mo560.mail-out.ovh.net (7.mo560.mail-out.ovh.net
 [188.165.48.182])
 by mx.groups.io with SMTP id smtpd.web08.6312.1651052915178424666
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 02:48:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=softfail (domain: 3mdeb.com, ip: 188.165.48.182, mailfrom: michal.kotyla@3mdeb.com)
Received: from player746.ha.ovh.net (unknown [10.111.208.240])
	by mo560.mail-out.ovh.net (Postfix) with ESMTP id 429A020821
	for <yocto@lists.yoctoproject.org>; Wed, 27 Apr 2022 09:48:33 +0000 (UTC)
Received: from 3mdeb.com (84-10-27-202.static.chello.pl [84.10.27.202])
	(Authenticated sender: michal.kotyla@3mdeb.com)
	by player746.ha.ovh.net (Postfix) with ESMTPSA id 5B6CE1C821066;
	Wed, 27 Apr 2022 09:48:30 +0000 (UTC)
Authentication-Results: garm.ovh;
 auth=pass (GARM-97G002f7bc831b-ee34-4364-b9fe-70f93ed7564b,
                    61734D2B01833E9B2F42AC9FDA98BD93A219368F)
 smtp.auth=michal.kotyla@3mdeb.com
X-OVh-ClientIp: 84.10.27.202
From: =?UTF-8?q?Micha=C5=82=20Kotyla?= <michal.kotyla@3mdeb.com>
To: yocto@lists.yoctoproject.org
Cc: tomasz.zyjewski@3mdeb.com,
	piotr.krol@3mdeb.com
Subject: [meta-security][PATCH] tpm2-tools: libtss added to RDEPENDS
Date: Wed, 27 Apr 2022 11:48:04 +0200
Message-Id: <20220427094804.965389-1-michal.kotyla@3mdeb.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Ovh-Tracer-Id: 1256504296700083728
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrudehgddujecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfestdekredtredtjeenucfhrhhomhepofhitghhrghlucfmohhthihlrgcuoehmihgthhgrlhdrkhhothihlhgrseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpedulefhiefhkeekffevteehleejjedtveeuudekudegvdegtdejffejvdefgfeuveenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppedtrddtrddtrddtpdekgedruddtrddvjedrvddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeegiedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmihgthhgrlhdrkhhothihlhgrseefmhguvggsrdgtohhmpdhnsggprhgtphhtthhopedupdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Apr 2022 09:48:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56909

To use tpm2-tools like tpm2_pcrread on the system image should be install=
ed
additional software. Without adding libtss packages to the RDEPENDS attem=
pt to
run with tss2-tcti fails like:

ERROR:tcti:../tpm2-tss-3.0.3/src/tss2-tcti/tcti-swtpm.c:592:
Tss2_Tcti_Swtpm_Init() Cannot connect to swtpm TPM socket
---
 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb b/meta-tp=
m/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
index dbd324a..cb2e3d8 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
@@ -6,6 +6,8 @@ SECTION =3D "tpm"
=20
 DEPENDS =3D "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
=20
+RDEPENDS:${PN} =3D "libtss2 libtss2-mu libtss2-tcti-device libtss2-tcti-=
mssim"
+
 SRC_URI =3D "https://github.com/tpm2-software/${BPN}/releases/download/$=
{PV}/${BPN}-${PV}.tar.gz"
=20
 SRC_URI[sha256sum] =3D "e1b907fe29877628052e08ad84eebc6c3f7646d29505ed48=
62e96162a8c91ba1"
--=20
2.25.1


