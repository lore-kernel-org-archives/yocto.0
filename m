Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=Y9M8WEyi;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CjYAXR/BNjgrToCbleYxQENU3aYx+9MR3dKMgjYQ+r2LRc8KdbA7wNope3iPuSYbfUy60Le1KJEjtl3CwDHuz3xISoVpo1WwHmHjLVjeJPnxKgKfH78uzsNJzcgW98fHbkd3fFQYdhTa6Id1bgJC+H87GgUdGk/fMUEz9IeJQtrCu5xN8EmfmfWQYn8y/ScDEoMxBWzYS0XZCvCEpVXpJp2FrVnzZY1KEPexGU+7OT7PqkM+T9tGwemDQ75kThLpDlSOKbmafnxF0CVDlBWkFPrTWl6YT0hnT2CRysIN50ML8FLCpIZ8UjwYkPR/f7Jl2lI4jGSPwl5UBPVPfQntCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8jSzAHiOVcahjS7NTSrOetUcz9awIKxkC/y7f+yvnNs=;
 b=m6Gn+gwc4jY+7XcNLNSxvY3kGaaZZqDsoU3m7XKw6eWI+iCQQe0UYuyZEfswV7aUGr2Ga24PJzmfdOcKgVhFvdC7aTTvgkhtAdN8jet8/ssGf2tA2annKwJfN8n2YWgkVyvEEq+d1o029ufihWNZd/WUgUcDw2FwOGO5cvm4F4Vfrq4hPcXHGBuiUge0JjSjLWJDfekRZ9xWTX/RlfLJARhZsRIe/wM1NjV7T65Ga9zDmUvOlEGw8Qrzl6GbStiEwlaHo9oWR93kdsiTnDyxGHBzmcB3EMl6J3aHhz1UsdIHw+mDwjHMAIayCjKQm2EX43QStcJcipQir63sX39UxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8jSzAHiOVcahjS7NTSrOetUcz9awIKxkC/y7f+yvnNs=;
 b=Y9M8WEyiMU0FdM8az8u8sEXZeUKzFA6ERZAHq/nddKVzpQeaB+sMB5r6xzMMNms3LcyNAO9r2FkrgEKVnDqiY0tnwXQUCRFthV3ttIt8pJsHE0QNv2a6AVtfZWlA56xVb8bLrTgkFIYe9oufRPsHezmrfirL5rZ0zA3iPPWWnwo=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:30 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:30 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 09/12] dm-verity-initramfs-image: Cosmetic improvements
Date: Thu, 10 Sep 2020 16:17:56 +0000
Message-ID: <20200910161759.87958-10-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:30 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 41a90031-c0f8-4a45-e3bb-08d855a52815
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB592546DE1CDA7BE14763C9AB81270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IzHczbnr35n+Zn9Z6qkjxF9xWb1jetNVa6N6tXNiqfaygtd1G3aEJN6Nywx1SflpjVy13kQ1Nvw2XDmpv/vmSSrT32r5jZF0DdwAa/6MOp7pWs8zHTJZiRryHT4QyW/RGv7Pjm1e8Ig7wCtR+l6VmSeJKbBt2cwgRO1FUXufnNfQH5xYDaRNL/KWE9dQ8JLYmxfuKCSg8mG3b1e2X17eSdOVbgntERQ3pJMHWTAEmewIPyEZYjcSkSJP+/ECOlzG39ajPOP/zJo+mohsNEsCjMXEpJA5JT99FlEEHKmRwHg5Z3OaX3gRGmn2kDoLEFKm6wanTrOP4uF79iZ7YJ3KYg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	o+JUM+M1rDgY/mYJjOsuOq7heeJV399srlG84JgzI8FP04mivMAQaucTQt51YhW/osGGJkdO9dtMZKES97B2FwGpcAorGMZDDJrxPuOF+hVYrHjchABcTjbn9s/UWiUnbDSBudmby/GIsL+XkceNUwwLCyoESO9nOK9Y85xiEpLsOkBgk1aWpVu99L4ZrPwFNHTHbxPietrvSMifBFKB7J3YRgDg43HoxWr/5xt4FSd9rVdcXXeOeiPFt/M6X63Ysip3OSTlwavqsVn6RartVxVENo4HhOl9aLi+gdWWm8+Kq1GTYCXF34jtgKXyhQIPt3aP54mdHj35jjhksHG3B9wpeDbDv9cb+DS/W8LMeaAlzRGEKCewYqKkGllHcPM0OqTJLo9dMCxSSS7fe65odmoex4SR4lIeeaoOPb6kMTJqykSXhRlQih6nAPf6M9nWbIaDCtCFtOFeQ0QrWH8Az3LINmEDUKaZT6V9eR/NpcJs51/k0IiFNl6ZWhKt8hwryQVA+fbXMCo0QmXiNbKxsPgecLqi+moi8O2sx/5x5r85soZwBNpyda38Nv6MJFoL8BdT4GO0ERkcklHgWk3pdiXXlKQEy3JWqXjJYvQuf+mUkOpdL3IovjcTW9BuDFOMA3b+l9dBaFhLTXyXH6xfXA==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41a90031-c0f8-4a45-e3bb-08d855a52815
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:30.5172
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e9DN1sqLcMCS0Q+y1PjlBCl8fbuXsn0eqZlyfZdcMmvKTmjq9H4H+LH8BfdujU4G2HrbUZUFWpEYXYJCdKna/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

 - revise declaration ordering as suggested by oe-stylize.py
 - sort PACKAGE_INSTALL entries in alphabetic order
 - split long command line in deploy_verity_hash()

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 .../images/dm-verity-image-initramfs.bb       | 20 ++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-cor=
e/images/dm-verity-image-initramfs.bb
index 6a1058dc..0fdb46c5 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -1,19 +1,21 @@
 DESCRIPTION =3D "Simple initramfs image for mounting the rootfs over the v=
erity device mapper."
=20
-# We want a clean, minimal image.
-IMAGE_FEATURES =3D ""
+inherit core-image
=20
 PACKAGE_INSTALL =3D " \
-    initramfs-module-dmverity \
-    initramfs-module-udev \
     base-files \
     busybox \
-    util-linux-mount \
-    udev \
     cryptsetup \
+    initramfs-module-dmverity \
+    initramfs-module-udev \
     lvm2-udevrules \
+    udev \
+    util-linux-mount \
 "
=20
+# We want a clean, minimal image.
+IMAGE_FEATURES =3D ""
+
 # Can we somehow inspect reverse dependencies to avoid these variables?
 do_image[depends] +=3D "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE=
}"
=20
@@ -22,9 +24,9 @@ do_image[nostamp] =3D "1"
=20
 IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
=20
-inherit core-image
-
 deploy_verity_hash() {
-    install -D -m 0644 ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERIT=
Y_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}${datadir}/misc/dm-verity.env
+    install -D -m 0644 \
+        ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERITY_IMAGE_TYPE}.v=
erity.env \
+        ${IMAGE_ROOTFS}${datadir}/misc/dm-verity.env
 }
 IMAGE_PREPROCESS_COMMAND +=3D "deploy_verity_hash;"
--=20
2.20.1

