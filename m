Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.75])
 by mx.groups.io with SMTP id smtpd.web11.2109.1599499086976420909
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 10:18:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=oO5p6Zk7;
 spf=pass (domain: vaisala.com, ip: 40.107.7.75, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W0mhvF4POAq04KBEYhZT3awYfozRyVTuBR8RIB5HjrAZshGbUn0217Gg8MxhnLWyOfrxqEv17HhEFCjgPWVUuPdZTtt9jGqGLy5pnQ56eRR5Zd1s1mZNLcrISaBERerl5b8GhEke2iIQZkJEzd27w4FUo2lAA3LzS8OAgSiSS8xUWsqVqBwbTuqzmu1HHucPQ5vrm4p+BvumuzTeR6q5lbKRzIrsLUzcHxR0O3xcQbaMeILMtLRYk6Q4i/h7pFXE0nchfdYNiMPz11WlEJd5+bfD4NvT9iy3wMGHZ/OAEKe9zV38zMFhpiFeWl8G7AcHBf7nZwcPTkzy5sc9TP9sxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YNSBwFt20Y+aMUYidBZKBGn0CxD2CIHh8ov1kCTAH2I=;
 b=Pgq1R2nwI9WiH1Mmst9XA08Bsnpg8CBVZUgF83iSP/aJJljIO8QlAvsTuRQ8jA2r7zMcS0SBUkkRp55HU8PNS1L7C+ZMNA8XlfVqslPdp6Y2QNDllCTsC0AFTP47W95Ic6wyBqqtH6gXvtp8CrcPOLFYhKQome8K4g260Dmge0ac2O8TRflQnajH0nktmsDPsI3UWJ355l59qQ+hnaULDxEwFoNutW78MeHySe2XuvBgk8SnshhqDFNYjAKldRCbDbP64iuztlty0JFlX1xYN091qqsG9xqOhf75wwnJvNo9GbPsV9vchAYpeilv0xzYJKNCWS5t8eXDMDly0wpn5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YNSBwFt20Y+aMUYidBZKBGn0CxD2CIHh8ov1kCTAH2I=;
 b=oO5p6Zk78au4ToYlo4r+qDnRzrH2ShrqxyN6Cj7hLZ1w1VZS0Y9aScVDbvyUlEY1L3k89/lg/XyJjTBftp66kjS+ow0T2AfVpaPvUi4FBd0kaX8wCwS3f026VyBGNyRssmOOjvcp/R70L/u+ZsOZjqSigxIB0yGc7f3gaVTD/Vw=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM5PR0601MB2404.eurprd06.prod.outlook.com (2603:10a6:203:6f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 17:17:58 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 17:17:58 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	bgolaszewski@baylibre.com,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH 2/6] dm-verity-img.bbclass: Reorder parse-time check
Date: Mon,  7 Sep 2020 17:17:33 +0000
Message-ID: <20200907171737.108284-3-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200907171737.108284-1-niko.mauno@vaisala.com>
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0502CA0006.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::16) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0502CA0006.eurprd05.prod.outlook.com (2603:10a6:3:e3::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 17:17:58 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2479091f-2134-4bba-01d5-08d85351f7b5
X-MS-TrafficTypeDiagnostic: AM5PR0601MB2404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM5PR0601MB24048382CF3B93111F4BCA3781280@AM5PR0601MB2404.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dAJJYrtHxQhnpYfBR4xoOgQ5Qszb3SXiYL0CyHJnESFfT2+MkF5HgAFmwBxt+Ia+JZEEupIuFZqPtICwoLkzTZpeijjZkxXBIepAn/ioBUH2LEm5yj9HqTFJnzQpfSprwT3MlyhQKDYGecCJRSoVEPwfZbM5Z0Y6pVCQgh+9ktZjCXHs4V/++w2qpHfkHLmT2gY0uETYwta7xlbQ5iKi3dvLbHDC3YrhD3Sunhzf6cTaIZ1abRjfj1vhwK57S9bLtY5ma/GAKHUUtDyp5tZWdGZefSsFM+QdAizk7peZc47Hk5if1EU7WsmYU888yQxyUCF857PYafIdVEOUW6p9fg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(376002)(346002)(136003)(36756003)(1076003)(66946007)(6916009)(107886003)(6666004)(66556008)(2906002)(83380400001)(86362001)(66476007)(956004)(8936002)(478600001)(5660300002)(6486002)(52116002)(7696005)(16526019)(4326008)(26005)(44832011)(2616005)(8676002)(186003)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	YyUCDptTDlxBi3o/Hlm7R12vFjTH0cAaw4AxvdGUzyYQxjolbsz22M0osyHmc7YMG7r3BqNTklLq7aziqLNyeh/J9PdT4K8H2R2gzOQhTWBl5byB4qbS/ONPD4FV+UYEmOoRT3zX8BRG3gwvxQgo//1Z9mpBo6ZgIlj2RIljZU4pWOm3amHCOFuObwfAVYbj9JI7rY2od5+PqRqMHMgbWLn6+mEbee5/TE3pIAbi0A0jJEexWpxaNB/WgP72LKlDkLyqLm7L6Qu2ZpY5jCzoT5gx/HOHWv080ugA3Wxdq9vYEG9YLLZi5AMAu9YF5A83BFggBjRgCQV8/VDxFsja8uEZLA960CAjzh7V05zZDze98b5K/Cc5PXLNUrHXcVZvInAonVtYTniYFdU4SX3PiQvgkDzJtJHiJ4kdZTYLUrfGFOhVEPdwfURblaiz/+FM4SbT2PyHXCSevM9ywcL+X1IULbzGi9eOt2heWmvlz3ese9RazGMytz9GDa909INI5vhSSiHNHH4zMNHnGPXVUU5TUubGg/eeKjpbWyYpuRKsq21VEXNxw3wC3nXNhSV3NaCFl1fhfxCnpkJYPFBbn2pIOvCm4jJVcDe4r4KGj7YoZIlS9VjGClcWKak+ecFKMqTH2WaNNyzgkLSNYyk0uA==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2479091f-2134-4bba-01d5-08d85351f7b5
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 17:17:58.7935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X9GisBUI8EbNqGZbaddDvgQPdPNHx+DABbGkDXGXjA9C0Gg0Wg6lAIWArTrJhCq8e7EOdE/AOK9C/NPgmLmusw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2404
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Relocate checking if DM_VERITY_IMAGE and DM_VERITY_IMAGE_TYPE are
defined as non-empty strings before DM_VERITY_IMAGE vs. PN
comparison is performed. By doing so we start seeing following kind
of bitbake parse-time console warnings in case either DM_VERITY_IMAGE
or DM_VERITY_IMAGE_TYPE is not set, when 'dm-verity-img' is defined
in IMAGE_CLASSES:

  WARNING: .../meta/recipes-core/images/core-image-minimal.bb: dm-verity-im=
g class inherited but not used
  WARNING: .../meta-openembedded/meta-oe/recipes-core/images/meta-oe-ptest-=
image.bb: dm-verity-img class inherited but not used

whereas before this change this warning was printed only once, when
image pointed by <DM_VERITY_IMAGE> was parsed (and recipe with that
name could be found in BBFILES mask scipe), and DM_VERITY_IMAGE_TYPE
was not set.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 classes/dm-verity-img.bbclass | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 6faed5b6..6ad0f75f 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -68,13 +68,13 @@ python __anonymous() {
     image_fstypes =3D d.getVar('IMAGE_FSTYPES')
     pn =3D d.getVar('PN')
=20
-    if verity_image !=3D pn:
-        return # This doesn't concern this image
-
     if not verity_image or not verity_type:
         bb.warn('dm-verity-img class inherited but not used')
         return
=20
+    if verity_image !=3D pn:
+        return # This doesn't concern this image
+
     if len(verity_type.split()) is not 1:
         bb.fatal('DM_VERITY_IMAGE_TYPE must contain exactly one type')
=20
--=20
2.20.1

