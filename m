Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=fdrnEpEi;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lAkpKxzTguK6hodNNJZxlfBXhl47koHuhA0G1tPweuQhSsuDvVhShJ3aXofFXwdnFM7+d7Lt71SXU8zeseq8ZB0ygFIDlq6DHjlbai70WshWeRLwoD+DtWXAixQ82EQQwjbdU75ogQl5YQjF3eSNBHlTbtohTUxgiLFuG7ZFVuD9dW5HJ1WfyZ4ew4WeKHU/7x7n5kVBqaJcYyElzu2wc5ii5qPQP/qRU4Yz1pNnxQmwLOiLSKSl9aFNMdAeyx7URkEifmQrcWTGSV+1KV0w7Mv4Lkhg4hrNzrPfKXCb5N1HD1dYN9Hram4Dv5ZnilHLGh7Yqw2YZgwEwbgpzJHioA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ru1nkWsAZdUe0a4/8grYEI7akiv6D8+nCbROTVRCdg=;
 b=XvMgoiTOg20MhUnRcjjW5py8WSMkCUe7iiZ8T9Ym9YFqov400jT+RzDjgCQXX0LR/gPS3HfE700c8RM3DZ83gYW6dsDcZmCH8cFgUQodaD6oJAAC/lcSLmM3gWbYPOKAuJja1bqy7TjxmapzJYU19AqGytVGzRp5yIH908Og+Fkj4Un4j19x6vrVEDviAVx8weNU/Yf/Dm3/ZLigkFGvvlnpUJv+o6ViHWk5csY3AgJ/cj7OIsxFOw3G1x/bUL/bc+FFsKnDqwAmq3IbQcrVdSCVPTKEMR0/ij3gxtyEnmlVYXxM+Kymzc2NVmOD+ba1+CS+F8r3OGKKgH8/E/31pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ru1nkWsAZdUe0a4/8grYEI7akiv6D8+nCbROTVRCdg=;
 b=fdrnEpEiGjElKeB41uMmpVoctFX3LbRhQvmEQOmycPHVaD39+WFXRbFYdVOhs5Egybx/65OmfCDPphbHqKDhECN2xXUqus4hjcExXs2rLJDmwFS62A8YVR6+W1YBcjS9LeJqrPSK6PaqSco8oZLRfsDxDSJn2llnhcvGj/zLOyE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:27 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:27 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 05/12] linux-yocto(-dev): Add dm-verity fragment as needed
Date: Thu, 10 Sep 2020 16:17:52 +0000
Message-ID: <20200910161759.87958-6-niko.mauno@vaisala.com>
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
X-MS-Office365-Filtering-Correlation-Id: 7c6c18f7-4516-43de-d5b2-08d855a52667
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB59256744FF60D825A66DB92A81270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:326;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rTSkKI39S2JZWTihCPKMV4nbRU+OTNRP7j01HUVK2nd61UhZscNWHVYBEffgmkNubvWNUO2YtHV7g67l7ft5WODNBHcrTlaSiP5ShHKsaY2zyuwNCXu/u8Tb4tJq532SN9ucoQraTvi/0/mxfjwKksKuEAA3RUnqECqn2C43WSW+N/H/lrFevlJgx+nkoLVM41hVP+s+yzRn4DAxW796eQQLp4QT0i6ipMCNx+yDnUfjAFbnJ3QE+sG/5pi7D1gKSO1bZtC0ttlEhq03SH9qfJG7Qnd8wRHXmzM7MtPAwB7+LTZby5R9ipJwLTGFu/5KkF7LJizQ1ntTqxijmCzEPg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	m4Q1222nsFT+wscCA9oYdORRb3vDYVxHukg9hQ+3l14+DFPhDQeEGEG1uHnfi924OyfOsVDbfeaAls1RoK+V9w6gxy0/1wHfagGEi9qD0aWW+O1Txh2CPAB1hYD4Lh915hwmz5bWKkGrOmVLzhKgwn2zbn1f5eZqgGvs8wVaqZ8/5qWeTBZq7ygiqcjSw3PNTrH336sAHbAjCQaM+4ipxgpzxnKblvBiFepNdayZvImEun2d/72q3iZxwK+4iL0sbvCnyYyBJ3KH1kKxAOMQeg2ET2fR2KGa0NWHHFTbT1QVikY4Ak7s9RTG5FCdcyiE3+m6Jy08w89l1QR4mpNWXXmQSJkGCnAPidGJ7VJ56Pm7O3iOSrrUR2jwIgnwXWq2xIaS5jPLvIoXM8lxQ2H8vurN7eNsPiRPXXmdEEFphbaH6ryxtvo4k5bdVajWdo18dUBKquOq4ow9x0aS0yiFpJ57MWyu7OOocCMT8IztpzBmZ59s3o78xkdOsK8Yh9o5UdTYG9TDpAOtSB2p+A9HqfWmI8bstqgGD3Rv3xBgxaCqjyTjm6Niuzvl5/U/5Bl7j9ywWBPfya6DxRJg21G2Dl8SHPuUYSiZvzfAiiQaRUzGaU/AHZI9+s3e5VqI7uOF5fW4N0uoR0Vym511D0+rQg==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c6c18f7-4516-43de-d5b2-08d855a52667
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:27.7038
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YcavV5R/oxOTpdhWQC0BGFypraWqTcXOQOFaahRJ61bF/zOK1+XG27cEqH/DB6euwm8ntXkTGZLVy1OMCVsYBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Add checks that include dm-verity specific kernel config fragment
when dm-verity-img.bbclass is used.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 recipes-kernel/linux/linux-yocto-dev.bbappend | 1 +
 recipes-kernel/linux/linux-yocto_5.%.bbappend | 1 +
 2 files changed, 2 insertions(+)

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel=
/linux/linux-yocto-dev.bbappend
index 39d4e6f5..fa536d09 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,2 +1,3 @@
 KERNEL_FEATURES_append =3D " ${@bb.utils.contains("DISTRO_FEATURES", "appa=
rmor", " features/apparmor/apparmor.scc", "" ,d)}"
 KERNEL_FEATURES_append =3D " ${@bb.utils.contains("DISTRO_FEATURES", "smac=
k", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES_append =3D " ${@bb.utils.contains("IMAGE_CLASSES", "dm-ver=
ity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
diff --git a/recipes-kernel/linux/linux-yocto_5.%.bbappend b/recipes-kernel=
/linux/linux-yocto_5.%.bbappend
index 39d4e6f5..fa536d09 100644
--- a/recipes-kernel/linux/linux-yocto_5.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_5.%.bbappend
@@ -1,2 +1,3 @@
 KERNEL_FEATURES_append =3D " ${@bb.utils.contains("DISTRO_FEATURES", "appa=
rmor", " features/apparmor/apparmor.scc", "" ,d)}"
 KERNEL_FEATURES_append =3D " ${@bb.utils.contains("DISTRO_FEATURES", "smac=
k", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES_append =3D " ${@bb.utils.contains("IMAGE_CLASSES", "dm-ver=
ity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
--=20
2.20.1

