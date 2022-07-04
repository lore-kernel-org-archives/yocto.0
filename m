Return-Path: <johannes.schilling@methodpark.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D471C433EF
	for <webhook@archiver.kernel.org>; Mon,  4 Jul 2022 16:25:32 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.74])
 by mx.groups.io with SMTP id smtpd.web12.74009.1656951922271996193
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jul 2022 09:25:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@methodpark.de
 header.s=selector1 header.b=k3JWeGpk;
 spf=pass (domain: methodpark.de, ip: 40.107.5.74,
 mailfrom: johannes.schilling@methodpark.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G4pObqJG8jiZT+rIb/l1RYOGH9cuEG25JFvCeh/C2xLWqeSBpjrR4IIeDrL8CKEDTzfNbBRAhRIh801o42dIlX2c+yTjhFpNGfOc7aThEss22nj6G2RyaqKAk6uwZQqFTJRnGbaGqW57eEgv1bUVS+LHA++9b0wWa5KvnRdFRvmTVO88M6BBONSrFjs2rtSVMSOeQPCAjT1KrgdWYC2XPKPmnCuKZRJ+p68AauHyX3PJLQF7jK2MIkRmk8Ve4H1ZGW+NjGbunmTPn6t0+F/QwlSFsEJZxdcBxsvskldh+DKnZVguKSZeVGS9pDI144IJy4ahrg5uGrDjhBxRKBC5Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TkW8f3iFF/HS1E8HbnEezu0x0Vgh3k5dRoG3oZhbXRU=;
 b=M6sTWLDSxm7Drvn956flhR8PfNegYteRYauHqBNRlZ6Q/JbzrHCTr/TteI+m/4DLPhPINTYEbKlwxH41HBslOJMKY0VgXhY16VnPLzELhxRL136Hbh8CkzX22XNSIyTPYN3HBhpIDp7tiWLm2HSRU74lM8x240AkZ0xVeM4xSowIgqGklz9i+TV9tfJXfBpNhC3a8q40qXiHAiczO+JuAca5VFGMKa41ALBnOtJ0gv4zpbjTMozIItZX4EnaYKB9veah7zosa8l0QA8kAGu/sWa/W5y4OIyc//+O4r2Sv1zewkatL6Tn60zC3XShigXx6vOtErkjuSYfvBATP5vYEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=methodpark.de; dmarc=pass action=none
 header.from=methodpark.de; dkim=pass header.d=methodpark.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=methodpark.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TkW8f3iFF/HS1E8HbnEezu0x0Vgh3k5dRoG3oZhbXRU=;
 b=k3JWeGpkWEyvwq78Pbfrp1CelprVclgQJ0Td3LdWxdJpOfD76SISYR2DHY7y29FuSwcos8WGxGnJapenVl7dWwrkQpJJxKW0/Ki2G+DKLq1b3AoBW67owzKtmQubbisUVbGJ+xeeI/+IkJbI4fi4tt1BRn2bxHsKDPri1ZP36tE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=methodpark.de;
Received: from DBAPR08MB5575.eurprd08.prod.outlook.com (2603:10a6:10:1a6::13)
 by HE1PR0802MB2235.eurprd08.prod.outlook.com (2603:10a6:3:c3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Mon, 4 Jul
 2022 16:25:18 +0000
Received: from DBAPR08MB5575.eurprd08.prod.outlook.com
 ([fe80::a0ca:a2bf:2b04:15f1]) by DBAPR08MB5575.eurprd08.prod.outlook.com
 ([fe80::a0ca:a2bf:2b04:15f1%5]) with mapi id 15.20.5395.020; Mon, 4 Jul 2022
 16:25:18 +0000
From: Johannes Schilling <johannes.schilling@methodpark.de>
To: yocto@lists.yoctoproject.org
CC: Johannes Schilling <johannes.schilling@methodpark.de>
Subject: [PATCH 2/2] image-without-static-linkage: add selftest
Date: Mon,  4 Jul 2022 18:25:04 +0200
Message-ID: <20220704162504.1488894-2-johannes.schilling@methodpark.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220704162504.1488894-1-johannes.schilling@methodpark.de>
References: <20220704162504.1488894-1-johannes.schilling@methodpark.de>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: CWLP123CA0078.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:401:5b::18) To DBAPR08MB5575.eurprd08.prod.outlook.com
 (2603:10a6:10:1a6::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8ca9ead3-cb8d-4050-e171-08da5dd9c834
X-MS-TrafficTypeDiagnostic: HE1PR0802MB2235:EE_
X-LD-Processed: eb611ac0-eafe-4516-ac14-6de964173ebb,ExtFwd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wx++89Q74jW1bU5YLVdRy5Her6zxPmZ68104bpTngjS04YRpyWj7tIYR1uuolbvn6jRRZ8rkw1CHhfq686eb0WQecFFxXwExe9w0o13h2pr9AIhwfZ3A8LRWdr/0lAKmqnMVL3aw9YeztEDo2Li0a8LTL49xmEkWjyFQU5buhhJOV+io0kd+3J6Sw8h7FbyzLUSQGWsuGfsvjXsoyowQN9YXbSSWw2Gm2H0wxRjGNbqQdBYhDeNJl3JMoPAQaiIwJRXLWcy3IPisS0yb5esKueoJ375MGdYKD3cGpsxtGEB0qa7KDk+3SQ3cssN42cXlEFAeZKGoN3dO1Y3/Gn6412wFrcRjnuSo6pKQJjel5B0z5A6Ib8ulZCkGRgAe7Zg7tHKYVsDN5rv2cWugErIMYeFxPIWE72+bquS+mN2BYR6zE7lQ6vGBMJm+HMEuFUJs5Hsug78hToWuTg/nJmHa7dEvdHVkhqeusaJbSorrctezedFpG8ezKxjq8hdL87/h7xl2Aw/NdU+fFtDLLIxHf/eyL5r2cEuJdeZFAw56A/urEItb7UUenb0alIFjBt9HO8B0nWcMaGpXxaEgk3a7dqvdepc9PPGU6CTtiJJVy67J3SBWXlNGFtUOCeIONDLhj1DZ7+SgrJ1w4ENUIQKYERNaVbqwN7AWSZaBiOzCC2fWaBiUL3R0LSF2Aes33ZQLOq9q3fmVapkoOBZjoMsCGodg9rAyGfM63m8wRYhuKiaRmADl4TZgnEjDpS/Y8Fgp
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBAPR08MB5575.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(396003)(366004)(346002)(376002)(39850400004)(83380400001)(36756003)(107886003)(1076003)(2616005)(38100700002)(186003)(2906002)(478600001)(8676002)(66476007)(4326008)(66946007)(66556008)(44832011)(6512007)(6506007)(8936002)(52116002)(5660300002)(86362001)(6916009)(316002)(6486002)(41300700001)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?atNQAXc34X8mQFr/A2mX4+mNRA+ptXuq0bZicMgHLUaA8ObcheZQbVPy1pV9?=
 =?us-ascii?Q?PA38j/fJdO7WkxbCC6NwMJumpak6Zx3+zOpe3i4WizYD0rhU7kcO2AGb9F7W?=
 =?us-ascii?Q?dn7e3ZVGLHQqmApZHwFzETcxFmxtaYtS114hw0R3a4iXd/CM80V6Mwn+7+nV?=
 =?us-ascii?Q?6xZzvj4tr2gJNrcFVTM7BlQbx8wQ2jNbyl1xdYtorCQNne1YoOiLw5kfMkOn?=
 =?us-ascii?Q?f5zZzmisYbf5hBP2rZHAjSmDfx+AWVVwYHJFyIkYv4zRl95PJCOSAmk0nmR6?=
 =?us-ascii?Q?QMrrM0u0tC9aI5LmZlU05/G15mMxnaAyg/NcfPyUoXatYEsGZGOquGDC590H?=
 =?us-ascii?Q?7WL4v0cydbqXUjurN5TjqtsHYPWVQpi/n4uH/SRGqynuhEdKKJIH/Y62uVL3?=
 =?us-ascii?Q?7bQ6CNR0oNo3SYISqnR2n1M3slD0P3jMhu70dR89Pm0ur4t9yhhgpWYFxPH2?=
 =?us-ascii?Q?wkoJ2OYqdLSL1XbEbnR/iu1hJu3T0QibOjSL8x/pF4nVfsKBlG2eDXy0cFht?=
 =?us-ascii?Q?NgFdxC/WUSpY8hxYsuLeOYPfbCGl4ccIxVwbxtAfpam4EoDjDHOrR0tdVPMi?=
 =?us-ascii?Q?21EmcAZFaBlnfitpYjY9e2hCPnhOwK0aUhh3/Nuc79ww20TxgbVsly/hT9Qc?=
 =?us-ascii?Q?/2llmntgFypuuVvMfnxYrm/xdIwzmAWgFpD+7OvsRFDqVHl2MZhwoK2ENlIF?=
 =?us-ascii?Q?bliTcTs078gqy2bJWN2H9SHvQfoVD48mdC6Y4fk5Aa/fvEf86iUZioKm8g1x?=
 =?us-ascii?Q?n/PhkOltaIZd+THibm27LUF63E9Jx2qYPu/0zDOJB5sKGGccQpCfqs2fVnDW?=
 =?us-ascii?Q?dCSIAGvKBrE2Z43dY1rKe6UouRcsanGaiQVEuMd1sImFS7IL7t+0duNK3KGx?=
 =?us-ascii?Q?LXXaxZwuOpGVrK1wq2aWWUnMPRmabm+gWthXzKq1ckqnStSMUpoYpgpbix8a?=
 =?us-ascii?Q?iXlVPz3kSyOBlJhIknf+eynI96s9XRsNxyG0wSrFe2/wKPE/850iy3Bk1rs7?=
 =?us-ascii?Q?ALQpXYszUMfrodyvMJR1/9t7qvf63EPXHFQ4BHpWlJVsqc+Myf7nhIvs3Gsx?=
 =?us-ascii?Q?idgTeV5VyvBEkxpgTkTcT2oZxSrP2CD4XCIDzgQ8bE9nWUfpNP9ovIktig33?=
 =?us-ascii?Q?OC6Z0tsUEJLUnQi0IlOm5QxIiwB03sRMkc+W8ulRFt/D535B2IMbqCNsyBx6?=
 =?us-ascii?Q?jtA/+33pUFiiUX9/QXXq0xlIqBtXHYEqjOeOfkJ0R9O+7J9paNBfCh7hvz1V?=
 =?us-ascii?Q?WA1Az1fkikj/HVT/TnNbHCOtSsUb9F9fNI5PKeybG3sLXgxPj5aFnM1I+xuH?=
 =?us-ascii?Q?S9RSBWf6OMEa1tvWpk2KL1vi5+2o2ATvk6JZWfKEGKdzwqB9BY8wnTKRbWXC?=
 =?us-ascii?Q?+hDiwV+tu5SlrEO+QiA1KpeutHRu2Fsdg+zA1zOdj/DEOTVfVA9OYB+3Tnd5?=
 =?us-ascii?Q?pJU9EfrfOUygBLS7IOLCckDF76W35U5bpKJLLxdVSJ07zXdd4R4LofcvQNYk?=
 =?us-ascii?Q?KsJnxe+4wzoVHYdrrAxzYbXrScpek7K/D+cDG9Zfh1T9vvNwHB4T10KId0em?=
 =?us-ascii?Q?FktzeSYB4rnwabLppC18yJpjqZwAs1551SEoqp+zHnPGVuUngVug255KGYSU?=
 =?us-ascii?Q?cHU1dA3Sv22AakaNfx4s0udoWodcAxdER09V3XVPcXN4ssPXM70kOOzgfB2S?=
 =?us-ascii?Q?3gQKFXSw4AYOoSlfNhm9ARoPWX8=3D?=
X-OriginatorOrg: methodpark.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8ca9ead3-cb8d-4050-e171-08da5dd9c834
X-MS-Exchange-CrossTenant-AuthSource: DBAPR08MB5575.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 16:25:18.3459
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: eb611ac0-eafe-4516-ac14-6de964173ebb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 82A4EpVaQ9zvYnv0oCjeG7ZhGWns67N3vl3Br48sByrj5AwFZgM35vBJ9eAHnfUBXHQJT8g5uDiV6nDg1JD8PBl0R6wVNuLSdpdGTRrPgnpqeB1ne2mXTdzThESfz1RX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2235
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Jul 2022 16:25:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57440

diff --git a/lib/oeqa/selftest/cases/static_linkage_checker.py b/lib/oeqa/s=
elftest/cases/static_linkage_checker.py
new file mode 100644
index 0000000..a5fdf6b
--- /dev/null
+++ b/lib/oeqa/selftest/cases/static_linkage_checker.py
@@ -0,0 +1,39 @@
+import os
+import re
+
+from oeqa.selftest.case import OESelftestTestCase
+from oeqa.utils.commands import bitbake
+
+class StaticLinkageCheck(OESelftestTestCase):
+    def test_static_linkage_check(self):
+        self.write_recipeinc('emptytest', """
+SUMMARY =3D "A small image just capable of allowing a device to boot."
+
+IMAGE_INSTALL =3D "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"
+
+CORE_IMAGE_EXTRA_INSTALL ?=3D ""
+
+LICENSE =3D "MIT"
+
+inherit image
+
+IMAGE_ROOTFS_SIZE ?=3D "8192"
+
+inherit image-without-static-linkage
+
+STATIC_LINKAGE_CHECK_CONFIG =3D "${WORKDIR}/static-linkage-check-config.to=
ml"
+
+do_write_config() {
+    echo "[checkers]\nmodules =3D [ "zlib", "librsvg" ]\n" > "${STATIC_LIN=
KAGE_CHECK_CONFIG}"
+    echo "[exceptions]" >> "${STATIC_LINKAGE_CHECK_CONFIG}"
+    echo "ignore_dirs =3D []" >> "${STATIC_LINKAGE_CHECK_CONFIG}"
+    echo "ignore_checks =3D {}" >> "${STATIC_LINKAGE_CHECK_CONFIG}"
+}
+
+addtask do_write_config before do_image_qa
+        """)
+
+        result =3D bitbake("-c image_qa emptytest", ignore_status=3DTrue)
+        if result.status !=3D 0:
+            self.logger.warn(result.output)
+            raise self.failureException("build failed, something went wron=
g...")
--=20
2.36.1


