Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=VArZc5Vr;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZVf3G+8Q6RMf84bNz5BJDOQsvYzbPfew9ezeVXoYqsdKFSDTTNWEslepslwIbmwjUbI7YfePEJeufsQ0po/04pDCX/yrLN2RXsjz9ME2CBdm/p/4Ks+V/HfW9TFyqJ+Sd5WycMBu1HkB4CUeTCRGnnHXZturv5A3C4ZzTUGyefi8MOGKYdI34/257WZgB58GeMzKUDaUKiVOmdKQ0VNh2qXjzERAZDkKTR/1hHBsN6/CAkiOgMVzDh0pxQ9WuUz3bu/Sv7qqIAXQNGnZRwU78HT6LmUQaHxkM2d1G3PNyRRWAC244cOsuX25FJCr7uLF9KbptUfAjDrYa8kMO3HJQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DBdyxojNZ/BWE4fQbKV2xR83YCzixq0xAHaQcdtwOOE=;
 b=MeI1vH2x6ECJwT7Nxep6C2WYAPpHYhk2tYx25ZjdEEX9xgq0nDizbaucrsrjLzKMMV2yBPsO8RH3yHX2HVMV5mxsl6H2O6sE7MHhs1MgqiEWzRjl8ioir3x2+CcnCIhTw8eAJGQG3AxC+Df1zze1fJ3SHq8VV3kSlGJnrU8+vy9+xTyp2NpLniglK0Jdq36Ft3WSaIeEyLMqucVYdOryAKyIDvCeBwa6KnEzN4GbajteoyjyXLiFBSQ+3+ud+lW+4dzuol2suXnDUxmTIp9l0FFI4ENSGhetsrx2yEbGsAE3dkBdGzCZRMOymGKW2bvercbK8fVOZInLXN7NFfMTpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DBdyxojNZ/BWE4fQbKV2xR83YCzixq0xAHaQcdtwOOE=;
 b=VArZc5Vrhq04etDkurvw7RqVD56rv5BEdwNhuIuebcHfAQ0RZPkIkGJpvpgc4CE6zBviX5N1umhJMwDJcDl3GGIt7CE4MPfLhQnz/cLD6tRxunhsAZCKhBGJJQOFhveGbd/8BMs0Xa1BzfYl+bKq47vh3fOfHutl2RLNXaIM4v0=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:28 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:28 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 06/12] dm-verity-img.bbclass: Stage verity.env file
Date: Thu, 10 Sep 2020 16:17:53 +0000
Message-ID: <20200910161759.87958-7-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:27 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c77c814b-2476-42a7-8931-08d855a526cf
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB5925F96423943F36C24C6BA181270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pvk+Ou/KWMYrJWW0CNn/K//SoCkz1QkZlWBy6sxWGm3KjjR3yEphWHlK7QjeXJFsc+7m5FIilMDErSwk2DHGt64buvbR0kcSUSDSEF7QBoIgsMW+YejNfmNmOUPddPx8ad1PYvbdXgr4w1NVlvMODCfxSzu99KG7Cg+kA0Iue8g77zE/mQqNCYzGeGokeuuxvD0tqwqotNl2uB/HQCZL3NWTUQerM4A6Wscx3krZC04QDsvTmj0/3OxgktWv6l7FoADM0ZdWxygjR7DntXWq7p6jjx4dfNkbb2FRv3tYY3jCaHyJlXOeiyBYvM1cZSd5J1Yc0/xixLgbmpUDGGklYw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	sMsisVxF0lI1GDz3pPAj+rkEEegCF2zw1Hgz5+PkUjTueTyEYABPm8sF8G1AgK5NakeFa43IYU5szDOxHrCrwCCDnNhWvZk7YR0k1MwXHwyLbYwoIbPfQ14+x4dzuXOkp3sONyOEmpAA+pOjy+oXHDHQuhxWA5/R0dIAJeAwMqw69Ir7dF05y3tPRKENV66BoukC+JCIexDV9BBaKp4js3PDnpse7ynUfybTWzpm4Kbbgxdgbqcl7dCHYYc6UXoKGUEElrUoIbZ0cWc6tElZCZK6AOm/RzvgoAPYG+CFGGBwpw+Ts+MSzEXVz8J7YFOBKEjffYWfkaPVDVNRTHZqQEnvBpwJvJHJOQgOOnPEVav2Bz0VaIDyNfZemtI/elGPzgBsdsQL8uyEaV5bGCBILugN6Y2BZgMfmHMdsQIAIYhVwydGic9OpICLJ9l6QGEIzAeIEZbwxByZDc9cxBzH7+CrIEDx/MXue0SmDNpZjRum0GKdWT01brgDXsKdV8IOryAg7YdOOLrTtwY5f6++2lnDfxrUvydiCjT7otYbExvY06VJlMv+qdVj/KWSrVks2FamTKXxT4DZW0JbAA/s1mEgCU5mTDxG1o8WRbBe4WwrPjrJyCxns7HbJYCUpHdTT6hr3Auka2Jh69c3XRSNWg==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c77c814b-2476-42a7-8931-08d855a526cf
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:28.4044
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A+wHHDRvgQjf1joFR77cE4lEHep0P1BGDz8bvTHJnSjlgUwEwnKpExDCzJkC2nBpYwMrB5RHxPQp6MAe4IohXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Introduce new STAGING_VERITY_DIR variable specific to this bbclass which
defines the directory where the verity.env file is stored during
<DM_VERITY_IMAGE>:do_image_<DM_VERITY_IMAGE_TYPE> task and can
consequtively be picked up into associated initramfs rootfs (which
facilitates executing 'veritysetup' and related actions).

By doing this we mitigate failures that were thus far associated to this
facility, such as

  install: cannot stat '.../build/tmp/deploy/images/qemux86-64/core-image-m=
inimal-qemux86-64.ext4.verity.env': No such file or directory

and

  install: cannot stat '.../build/tmp/deploy/images/beaglebone-yocto/core-i=
mage-minimal-beaglebone-yocto.ext4.verity.env': No such file or directory

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 classes/dm-verity-img.bbclass                    | 10 +++++++---
 recipes-core/images/dm-verity-image-initramfs.bb |  2 +-
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 6ad0f75f..16d395b5 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -18,12 +18,18 @@
 # The resulting image can then be used to implement the device mapper bloc=
k
 # integrity checking on the target device.
=20
+# Define the location where the DM_VERITY_IMAGE specific dm-verity root ha=
sh
+# is stored where it can be installed into associated initramfs rootfs.
+STAGING_VERITY_DIR ?=3D "${TMPDIR}/work-shared/${MACHINE}/dm-verity"
+
 # Process the output from veritysetup and generate the corresponding .env
 # file. The output from veritysetup is not very machine-friendly so we nee=
d to
 # convert it to some better format. Let's drop the first line (doesn't con=
tain
 # any useful info) and feed the rest to a script.
 process_verity() {
-    local ENV=3D"$OUTPUT.env"
+    local ENV=3D"${STAGING_VERITY_DIR}/${IMAGE_BASENAME}.$TYPE.verity.env"
+    install -d ${STAGING_VERITY_DIR}
+    rm -f $ENV
=20
     # Each line contains a key and a value string delimited by ':'. Read t=
he
     # two parts into separate variables and process them separately. For t=
he
@@ -39,8 +45,6 @@ process_verity() {
=20
     # Add partition size
     echo "DATA_SIZE=3D$SIZE" >> $ENV
-
-    ln -sf $ENV ${IMAGE_BASENAME}-${MACHINE}.$TYPE.verity.env
 }
=20
 verity_setup() {
diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-cor=
e/images/dm-verity-image-initramfs.bb
index 8dd8543c..e791c19a 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -24,6 +24,6 @@ IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
 inherit core-image
=20
 deploy_verity_hash() {
-    install -D -m 0644 ${DEPLOY_DIR_IMAGE}/${DM_VERITY_IMAGE}-${MACHINE}.$=
{DM_VERITY_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}/${datadir}/dm-verity.env
+    install -D -m 0644 ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERIT=
Y_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}${datadir}/dm-verity.env
 }
 IMAGE_PREPROCESS_COMMAND +=3D "deploy_verity_hash;"
--=20
2.20.1

