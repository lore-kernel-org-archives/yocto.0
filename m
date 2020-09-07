Received: from EUR02-HE1-obe.outbound.protection.outlook.com (EUR02-HE1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.2108.1599499083155224375
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 10:18:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=D7Pf3CYW;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mf4wmhxV+U2qNbEVqihgLg0uyeHYPZhFVLo6aKKK7jzyjsk2z1ErYVFZJAXuMhdf1kGbzF8lFICxojdCMOvovprYi6LHd0oZoTNLX0wBjDEtpOLNadvgRAhZ2Yuy9icVcgMM5AAvIncA+eEf7jqYP0kB74NOWNhtRt1y6/JEH4xSOCIoxnkKWK6ArzA6t2dUM8usvaan/3oLDFwW6Majl5SDl/h//wpqT/gojYZArvc2lXQfKJtLWVxGQZ34TODzW8a/D311KXRGW9hvgCKvGY6Z006UM4+ozKOW4ISuNRrgTsO5FQMoK+dboJpnmEx6LPwTfDu+EeF2dh/PKFd/dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rAiaQ0Aaptqu0nb9vaw29sHngmpohmkj70HRpkFx9r0=;
 b=Sgzn+Pg38/YDerRHXGhrpRG9SXJ0nIL59xyLH3onrCuDny/rUnqnP8uc9f3fzHxpPpFEkxHYx5B4dPBNfgGkpH9S1q1jdeU2mIpos2aruAVQsZN3uN34rf2pUaQgGi4N/EsK+amkbCqaeRJapzD4W2i9MEx/LkrZejwz7iRKYE0ydp9ZmX9MiWcxdZs063wd2lVJeA/95dZ0n03B/Y+eCpgS5638f7pbC5WraalBKVjnZ9oLxvcFb1N1dbbdFgpByeEPWfhj8W/W3wvTOD9F9cjw20eAre79A1fZDoCa2A1zksYmK+LapBeSW9UD7q6moQGk+RR6Y8TIWQdUYI2/wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rAiaQ0Aaptqu0nb9vaw29sHngmpohmkj70HRpkFx9r0=;
 b=D7Pf3CYW3EoONFr+xYytEjcKiSupM1x1UH/9de1qANEX3ZgHPzzYdi5+lML4Sf/8EUzBh5KindE4vcrASt748uprzT+TQ7+FUo56XLDZ/PDNl399WyORIezsVbf0TNgUMkGwGfo0wFG9GAJdvdvPMhLrkOSSxC8C6daiLoA+TtY=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM5PR0601MB2404.eurprd06.prod.outlook.com (2603:10a6:203:6f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 17:17:59 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 17:17:59 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	bgolaszewski@baylibre.com,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH 3/6] dm-verity-image-initramfs: Fix do_rootfs dependency
Date: Mon,  7 Sep 2020 17:17:34 +0000
Message-ID: <20200907171737.108284-4-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200907171737.108284-1-niko.mauno@vaisala.com>
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0502CA0006.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::16) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0502CA0006.eurprd05.prod.outlook.com (2603:10a6:3:e3::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 17:17:59 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3af6d105-db5f-407a-f23c-08d85351f81b
X-MS-TrafficTypeDiagnostic: AM5PR0601MB2404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM5PR0601MB24049718625846339E745B0881280@AM5PR0601MB2404.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4ThhLqns9czNTNCPeOGhbWZ7TOE/WQjLUaMwJVkcwJFLzMOZknaySyuaTXMvHsU11Bsm+abjG0Oq+hyj74OIl3Db7YkBmSmSINYR3YhXzz7TSE48t3lwC2W+F4F7cCsQulRdEnhkn2iYOGzlE9CtgDYs2NK+7ZJPR9whonLnWl6YUicHQa49jvAxpZ/ba670fz1/lqt4G58GZOTQbH1SwOsLCtIOfJuQILap5v/5iBp2YAI1zJGi48pcHxHQkyE8g/oyhSA4Xco1u1M83wJ920Lzksa6rkYYaBin/33A0z+AVpn7JavPoPuCtR0VEGwQGeOozVz0Ik9YBKpAA9Zrdg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(376002)(346002)(136003)(36756003)(1076003)(66946007)(6916009)(107886003)(6666004)(66556008)(2906002)(83380400001)(86362001)(66476007)(956004)(8936002)(478600001)(5660300002)(6486002)(15650500001)(52116002)(7696005)(16526019)(4326008)(26005)(44832011)(2616005)(8676002)(186003)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	WEJI9ADxO3ZnbE6BAPlvRp7LduKnhrIIC5Y6iiY5Nx3ESXMCaPal2DPN/bAHMMQgCqbtUdKvotc0zgANlc7EwaQLltgdbHI62wl47ghylBaUwknVpy6eTieEsUtkCMf47Xd8ZIkzt2SAA/rtcB9hrsyO3DV/hLJ4CUVBD/TzeFMvwHAo29+kzUwoO4BcWSPXITAhSmCHYMa/0PCdfubmp4DvgyMrJvDwhTBJjycf0CAxxO2tvEKs7UknfjU2No7bRR/Z/pEE05iwl0kH90LPWRSEBBTre7SwAKi/YY7EikLF2xNH1jZwGLc9LlImRoILOLEddi1gbiS05AM5h/WDet+239qojGkXdBp/oLqoMTVn3qxt8kEAh1QZlliJhEdmO/R60d1UKsr0PAZisdcRkj1vtFej/5vnsdkDMymOoPHK0CE9qmJIW3/bzSnVszuUNXiPc5nh5h5aRLZLpSh5qPk+uDuIgbkKxKFsIwkccou1BTjoSLuiJAJblNjqzDulee8ZJ8G4NGFaBf9MqEiDxlQIaS7Cqsu45ipazHjgiKjy+dOTOoAr9lexchByf0vLm5jLfSzPR2DV8JY2Tmxhu3/B+M+dQDzZgudxGMilN+0GZE/k89XiyNSM4Yx9ITfiiPaSV8DWr4t/9n+wCkvyog==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3af6d105-db5f-407a-f23c-08d85351f81b
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 17:17:59.4531
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kwH6VqZFlUXrrfPbaKfN6ZEuQD5raM7b9JWjcY4D00+320d0oLQFN+7KJEDZDVTalFMwTQSZs9rB1v4LDd379Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2404
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Since during do_image_<fstype> task artifacts are still populated under
recipe-specific IMGDEPLOYDIR (rather than the 'generic' DEPLOY_DIR_IMAGE
area), there is potential race issue if do_rootfs() of this recipe
executes before DM_VERITY_IMAGE's do_image_complete() publishes said
artifacts into DEPLOY_DIR_IMAGE. In such case, following breakage
occurs:

  Exception: bb.process.ExecutionError: Execution of '.../build/tmp/work/qe=
mux86_64-poky-linux/dm-verity-image-initramfs/1.0-r0/temp/run.deploy_verity=
_hash.64332' failed with exit code 1:
  install: cannot stat '.../build/tmp/deploy/images/qemux86-64/core-image-m=
inimal-qemux86-64.ext4.verity.env': No such file or directory
  WARNING: exit code 1 from a shell command.
  ...
  ERROR: Logfile of failure stored in: .../build/tmp/work/qemux86_64-poky-l=
inux/dm-verity-image-initramfs/1.0-r0/temp/log.do_rootfs.64332
  ERROR: Task (.../meta-security/recipes-core/images/dm-verity-image-initra=
mfs.bb:do_rootfs) failed with exit code '1'

Here we fix the issue by depending this recipe's do_rootfs() task on
DM_VERITY_IMAGE's do_image_complete() instead, after which issuing

  bitbake -c clean <DM_VERITY_IMAGE>
  bitbake -c rootfs dm-verity-image-initramfs

no longer induces this kind of breakage.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 recipes-core/images/dm-verity-image-initramfs.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-cor=
e/images/dm-verity-image-initramfs.bb
index f9ea3762..96f55ceb 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -14,7 +14,7 @@ PACKAGE_INSTALL =3D " \
 "
=20
 # Can we somehow inspect reverse dependencies to avoid these variables?
-do_rootfs[depends] +=3D "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYP=
E}"
+do_rootfs[depends] +=3D "${DM_VERITY_IMAGE}:do_image_complete"
=20
 IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
=20
--=20
2.20.1

