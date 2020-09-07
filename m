Received: from EUR02-HE1-obe.outbound.protection.outlook.com (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.72])
 by mx.groups.io with SMTP id smtpd.web10.2108.1599499083155224375
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 10:18:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=LtJ5JjPV;
 spf=pass (domain: vaisala.com, ip: 40.107.1.72, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nYMgW+UleohsoRUW0M5RfwPhED0cw0X5gfvRLGY6DNix0QN7CGY2wSla23MWWjvdCPo5pxZYDGktg4Olev/LOksdX3TParJL5ND8VXeJ7BOCOB6nlCbgaNL4nhWXrzhUHoMInPWuWGBxHREajZEViCkQaOplGMoUdmsHhIMgi94kJkpL8JQyXPa5BdZMZhD0C96RdNvq4jdTH6hfuHIenqmkh08y/BE41egavoQCsUHrKBAYXG8FwaN+ggWugc941vrRWwq7xzg0Y5YlQQmWSHdhhipQ8v6xbQDC/Xngi9IE0YUAJ/LxrG84ud1Mkc+FQdrfwRITPoXX6zGVf8o+FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Iy45wMVjDlFNbP03XflCuIp85sWrvSGjsr+aGpX1fXc=;
 b=miwqHPKxwBo3spuDITB1ynLCuU4y9ryP9GHloEssmF8PxQHUlrDM3BFBqthCX8nslN08WloA8YUTtM2GGCXTaQ/wXmZ0u/X3HF9wG1DnUHIrSh5xybqFEJCfXHHM5qWspLsyDdi734gXa5Mgk+1sO7diHNDOUvTIjkMszvCT1cp77MydHsUZfaG1+ZVH1hKa5qBpBfYtbBTeRgavkcx7+8qD0teHCOpmVckWpshKWq3Q+JaJBfoD2hM8ATvSoQws/HsOqJqTQ+aVALkfYaxY+cca80WvX4CxrCsrsMu9vl+AiQITiBZb/4bEKDaylfm8eA71n+7jRLV4Drv143HiRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Iy45wMVjDlFNbP03XflCuIp85sWrvSGjsr+aGpX1fXc=;
 b=LtJ5JjPVLKRyrps7AEizXUV3Vusws274Gw4I/SYNiIV/ErzJ0AqQUC/wjkGNjmo/jzGis5D/MKVZKJAFAM3sm7pjDHM4cbYEiVBb6tLLyjhBCvAgghraolWtJ2cMfnJlGBIzVkIKWLlp7WzfSAUj6Hw10Whgoj+PWt1vNlmDRGA=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM5PR0601MB2404.eurprd06.prod.outlook.com (2603:10a6:203:6f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 17:17:57 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 17:17:57 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	bgolaszewski@baylibre.com,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH 0/6] Some small dm-verity improvements
Date: Mon,  7 Sep 2020 17:17:31 +0000
Message-ID: <20200907171737.108284-1-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: HE1PR0502CA0006.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::16) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0502CA0006.eurprd05.prod.outlook.com (2603:10a6:3:e3::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 17:17:57 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac96bc46-da56-4f7f-d1bb-08d85351f6f8
X-MS-TrafficTypeDiagnostic: AM5PR0601MB2404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM5PR0601MB2404C113721458D86A79B43D81280@AM5PR0601MB2404.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	y6JeS8EfSxWHgOBqnxv8SubDy/Eg6vxUYDLJ8BQJF9KFQSEmWl1SeQ4NLQY36BGZCHgFZP7GEqjbSzdAybSSOtpHhfza2rwdIrBPumpeDLAdwUgOAmfpCcAPcnxGhGgVSrfwIPF0JWvVREahDePBcoOD6hf/ng8MXYydtoUNdSXTxQH67Rpd6AgWhlTGZjKm0oQxhVxuiNbvnfv8c218v9xtM8lDvIS2aQYRBV44tqYgLv7boRGdO9jVMjASZfwpEt60MNUQFnd05bC5NecLikVK1Ex3KygBvCpIDgBk/qwFlITKLkFfEF6T1jm5CoMFpWVRQfJCnOyrkHqCiXgnyw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(376002)(346002)(136003)(36756003)(1076003)(66946007)(6916009)(107886003)(6666004)(66556008)(2906002)(83380400001)(86362001)(66476007)(956004)(8936002)(478600001)(5660300002)(6486002)(52116002)(7696005)(16526019)(4326008)(26005)(44832011)(2616005)(8676002)(186003)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	+Qi72Hkyq4qHz1ztmcA5aSQS00rN2CAG/KdpuEII0Hchn5EZukEYz/sBOfAFMOe1ir7VhSIc8L000LLRU+d1AGbj+p2fssm9i6/9hg8mUHDutnNHFPuHTHsz7O7bwSPt5kJHbl2W31jhUHDWG9G9qS4BWDCVXIFPHgjUbowCJp26TCOfKmbOi94IXDMIbUtEjfv1QIpmL32lXXd8bIKfFiDsOh+ceLRmMQiXDnNRBzzXH6qprfMzSbBWzSgFbYmYtE54XxMV8thqE0ntuQLXInvmpOls/jWneqlgzq88pAKk7gpQ4md2/pwdk7iLgeDGsNpwoe7zJeZRON6LJJV594KJTT+NHVgvdDNpyW6Twr0yyRjKViC00ooltqloq5RNFR+cyR5ybFCzgPgj9EbPq2sJ5mgVeA25cDfkCqyOtmCTRq/BLcsqPOJgToEBL+o0oVHOBIwC8qrCfgPmsD0w5qbSSXG9NXeq9yJ9Bk/P7SsLpcAjOo0ZfI8SEOdDcPzH+7mNEoHl7dv9fdLUSFPf6nevmifnh6hF0MyVYy7N09AKfGnf4Nl7Z9X4ADqfcpp3G5ON5EWCOi3Lp3EIvELVpAOLqmr/ZLYxvbj+N+WOUXhivWtZmaSJfpJxfpzcYgNp1j19YPZPs0Q/C4v3Dllc/A==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac96bc46-da56-4f7f-d1bb-08d85351f6f8
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 17:17:57.5252
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VzoyY/5A7y06ORoQrlb7ao37ZTMBh+ITAN5RGabJJnHBFmTQ5aiNeu0zsH3vid8MwB+nldrcr7OVU8MMd51ozw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2404
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

This set of patches addresses some small issues in dm-verity rootfs
facility, which were observed while making use of dm-verity-img.bbclass
to generate dm-verity rootfs images for real arm-based hardware. For
purposes of establishing this changeset, the default 'qemux86-64'
machine was used as a reference.

During testing/development the following additional settings were
defined in local.conf:

  DM_VERITY_IMAGE =3D "core-image-minimal"
  DM_VERITY_IMAGE_TYPE =3D "ext4"
  IMAGE_CLASSES +=3D "dm-verity-img"
  INITRAMFS_IMAGE_BUNDLE =3D "1"
  INITRAMFS_IMAGE =3D "dm-verity-image-initramfs"

And the following command line was used to test the changes with qemu:

  KERNEL=3D.../build/tmp/deploy/images/qemux86-64/bzImage-initramfs-qemux86=
-64.bin \
    QB_NET=3Dnone \
    runqemu \
    nographic \
    qemuparams=3D"-nic none" \
    qemux86-64 \
    .../build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-*.=
rootfs.ext4.verity


Niko Mauno (6):
  dm-verity-img.bbclass: Fix bashisms
  dm-verity-img.bbclass: Reorder parse-time check
  dm-verity-image-initramfs: Fix do_rootfs dependency
  dm-verity-image-initramfs: Ensure verity hash sync
  dm-verity-image-initramfs: Bind at do_image instead
  linux-yocto(-dev): Add dm-verity fragment as needed

 classes/dm-verity-img.bbclass                    | 12 ++++++------
 recipes-core/images/dm-verity-image-initramfs.bb |  7 +++++--
 recipes-kernel/linux/linux-yocto-dev.bbappend    |  1 +
 recipes-kernel/linux/linux-yocto_5.%.bbappend    |  1 +
 4 files changed, 13 insertions(+), 8 deletions(-)

--=20
2.20.1

