Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=v6bqkJ1c;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gRvrn82Ev3SbQONBtwQHJX5Dh7mU+3rgAUgRwQwYwpmcOXY26L/QdTZeKNomMhhgrvOlQShyXWAmShXjVVE/a+sSnfNb7i8M3IqWe9lDEI5+/ewTBWPbclgNOCXr1nG4An8AKaWGK26w/mV7Pg4QyWdniv8lXiyREo9CBC7SIwjocXzziiKR2dLf8Erc5LfBnqiDvT9wnf4F2RRqKNo+vH+kF1QnymSwaauBxpigZE08xfa9WsFrn9EZcaBwcAL4ZsmJoUL8c+xyBqWH6CVmbysgFbOcSZIZj/gu0wGmvj/JDpIFat30u+E3ie7puTnPo+ulnljsSmryIBRt/UnLaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wq6/C3GndxL6OhZgXnhHeK/6V9fP7rIW59wvV/Oqoyk=;
 b=bQME9X8aG7/HRu5tSGIfPZ6QCoyruoATH3VDKqyYIsui0vC3E2xvNiTXzHpUAMDhDBqGdoDdWi6Sv5wtk0aM2vbpNl1h7UYurxPkckA9ugXJLteda0q0DV+abneK8A9V2WMLC+CIydel36NKLuK0UOZaNg5GjOj0iJH6630IdF4ZTQlsVpSgn97Rn8W1YD9OA/sklICzjkR/OJ2fl3DlT9F1ykkoBHB+ZHHuqqpSmo1ewdbXjS7C9L/YTl71N4vgVLJDLHUTm0asP4TKQfAbWzxUlNf2y24B1TBrWynxCl/JpPy1ZqhCVcj2PChFT+CDnCEKU5iBEwkq8xxhPkUSBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wq6/C3GndxL6OhZgXnhHeK/6V9fP7rIW59wvV/Oqoyk=;
 b=v6bqkJ1c7QAXmv5aJzJsM5jZUeu3R6p9ciYS2r6OeQg3afXXVAXyh1Ne5IDDZCQKHk25HweIotKMb2HhNwjsfaEaQrB0uuRWjGJe9NzK6tf88Ds3ll9aVmepB5LpdmXcGyoEjP1x4SoFiqznW9moORTzuE9jzJvdJ+GVxcGkof4=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:32 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:32 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 12/12] beaglebone-yocto-verity.wks.in: Refer IMGDEPLOYDIR
Date: Thu, 10 Sep 2020 16:17:59 +0000
Message-ID: <20200910161759.87958-13-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:32 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9ab04231-886f-4961-d5ef-08d855a5295e
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB592579646286D84A7217A69981270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qxqY7oUzSzUMj0dNXAAKiOCNSSGlOilteF33wjPJIopSqKNT8FNyjQdrDonAfImJSYayoKRh1EB3ZvRgLH6Wp5iHrB59A3dJMetx7HWCD5z+k2ZgdvN5M2b1nBWUsXI169CbtpqPMpcfoNkbi5rytrmOroikcsYTMOS7Hw0HUpR80KTIgD3e12nFQzraVYdDP97dA+HbTksWsXKOKRls5FYr/N9h7QoRx9sPYJz6NGKuKVDZL6jkqbyD9jNXRXtSel7ZorAo7Qj67gkXXNvnVS9wMMOEJJcl7YKC9yF/t9BsqW88BtqTZxfjdN8trc4sat5a3r80RDEZRkWb/qM0yA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	tUlZClC+xa+0wUFP2mZ+Yush3eSz3xmDEtU9sUzuKvxI7kZEBN6DwQ8AL4MgPIqsiJCt+hH2AmUd+5ZuQsCSKP3LxaCv0REYDbDpOK9Qsiyd9jdQ5cw7t9EWiLM+btbJU7se0B/qg1YDXxj4iS+HnB9PP2fpcc1vrKgWBus8JXUruEBWAWQU4KvSeobe4rohb6eri4xs+jSW9IVoZWx6LJLeaSAB02FNK/3ARwDk8yepS4FgWuBT6e2dG+Ok9P08LREiLeQE6J76skUEwBwhWKYw8/gBW3cCEtEEEhCD5Yixv0RqqwvjRVAODuJJCcyOmbNqVMoN5PI+PSwGa7pNg8mXUW18KsnyEbshcXLa5S/p27dR5keI3D/eYL3Tr0QhlPv5VaFFygBUkQ2kqx0qf7LkjG7pqKOICwuoMkOwg5aai/dJ4Rsb0IM5coJ17WUSSb1nynMuJnNejlIWg/PidhSpz4WTZ/GYpSlwndtCJwcTcI/ezDAsWdO6ckism2VShx+uI7Y1P8vk3Bi9E+I401wCEk0RtgJIPYBe/Z2aKI7b8zK7hfpYcotym6N48qe0x+SDeLKnQwi1/gqV5mKA+7Cmn9t1uOfRTwk8yHmXsiUeA346kyl/tF/23wuHAoaWp27XxnCqmeHMbWqfzEh46A==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ab04231-886f-4961-d5ef-08d855a5295e
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:32.6610
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HaXrC8EwuTjvPjhO1wX8LSSaR7l9aDvAVSMm8XHUIQIMuuTyw9XDRWgjW8tcDmocX9O70t5KK63PmKgsf1G6zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Since dm-verity-image.bbclass effectively injects

  <DM_VERITY_IMAGE>:do_image_<DM_VERITY_IMAGE_TYPE>

dependency for do_image_wic task, we can change verity rootfs artifact
reference here from DEPLOY_DIR_IMAGE to IMGDEPLOYDIR in order to
mitigate following breakage which was observed when bitbaking
<DM_VERITY_IMAGE> target from scratch (using sstate-cache provided
artifacts):

  | wic.filemap.Error: cannot open image file '.../build/tmp/deploy/images/=
beaglebone-yocto/core-image-minimal-beaglebone-yocto.ext4.verity': [Errno 2=
] No such file or directory: '.../build/tmp/deploy/images/beaglebone-yocto/=
core-image-minimal-beaglebone-yocto.ext4.verity'
  | WARNING: exit code 1 from a shell command.
  |
  ERROR: Task (.../meta/recipes-core/images/core-image-minimal.bb:do_image_=
wic) failed with exit code '1'

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 wic/beaglebone-yocto-verity.wks.in | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/wic/beaglebone-yocto-verity.wks.in b/wic/beaglebone-yocto-veri=
ty.wks.in
index cd1702e1..658018ba 100644
--- a/wic/beaglebone-yocto-verity.wks.in
+++ b/wic/beaglebone-yocto-verity.wks.in
@@ -11,5 +11,5 @@
 # This .wks only works with the dm-verity-img class.
=20
 part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --l=
abel boot --active --align 4 --size 16 --sourceparams=3D"loader=3Du-boot" -=
-use-uuid
-part / --source rawcopy --ondisk mmcblk0 --sourceparams=3D"file=3D${DEPLOY=
_DIR_IMAGE}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity"
+part / --source rawcopy --ondisk mmcblk0 --sourceparams=3D"file=3D${IMGDEP=
LOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity"
 bootloader --append=3D"console=3DttyS0,115200"
--=20
2.20.1

