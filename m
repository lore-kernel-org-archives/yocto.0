Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=jEXEo/+k;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MudQtDl9KyN7I313mlExPjWBJ2XR2pvaxR1s8gnfTtY9I97J+AIWF1lEGaQh7p/GdAVNZByjZQtUq1LUHkfndW8Ea0xB0I+krZERE6NDtuA3r+b2ZlzUkMM0zsTgpqAx0i9eDymfPwdoqV5L4Ov1mbvtk+G0tDV/aUqgalFV9I1UZuqMySihek7SiwA8QKStgQ9RCOnSDc2jRqix2bA/F0Lebt42B/DRw4rbEX0fCnB9PEmAqK0jVB0ReuoKsN0NZ4Q2mkQXMrgEmgnwRHItctmcdhTRTssB/F7rl5mzmMYVQXxkHembpHjuuLKjueoACypDJCIJpbJGeK7CPxEyQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VC6fPWdkcKYbCXrKGVXSPEoAe/L+w0qxfYo/rb4i9LM=;
 b=WUr0ZgXMw9y2MhrfZd1J3CqKusDDsaMhArGGMmP7I5kdNLmGTnVDjC/CaTO8RUnhnaq9rNJJh0arhj8Us2phZA2sTN/C56C+korwsyubAb+fL9GoZZCmDRiGTXqliRm/HUU+1eCuM+R3Lle6KfJAe5AHsAKW6rQ98vmP4oPrB0A400ImLBFxbI0SAQLOXTyzhtmnlj+EN4FaE6aPCOErvo+1Mv/45ZA80zOU3KLgrwRJbTTf44oMM4B8MPS7R3hYztcSBgSCfPGzeGcVaHyR4F9W4JGkYFo8s27QhpSYq1UGso7c+lKJZrZx7WEcv9fVPZfa3EGLU449tjQHl1KoDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VC6fPWdkcKYbCXrKGVXSPEoAe/L+w0qxfYo/rb4i9LM=;
 b=jEXEo/+k4Wf6Bt/8dlW6W077SgwMShWB7LEreqKHEOdQJchW1ye7RI5gLgDcTs1aZqEwJ26hREkjq4vGnGqmuvY9atHpaIwpLA1bh7cCoWuWBsxW18Lye8EzKoNXoYUIT5U6/gfilpC2ikz4xpg8mIsm/PVTpBhKtpiJmQLXVAI=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:31 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:31 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 10/12] dm-verity-image-initramfs: Add base-passwd package
Date: Thu, 10 Sep 2020 16:17:57 +0000
Message-ID: <20200910161759.87958-11-niko.mauno@vaisala.com>
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
X-MS-Office365-Filtering-Correlation-Id: d38daa2c-7576-4d8a-f21e-08d855a52880
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB5925AF6E53E19173A16694F681270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:466;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UzxPZxOH/n8P2hBpI3mgCARjwnLmzTR5kmVVvtY2XAXxyJt+HDiZF2wstKDM58jQzpXPjln2ZbBOp6EM2kKEDf0Cr0Lx0VUUd/LS/bL/1xgCl0AtbMzFlxaCCrddX3Gs6Zgazrk+OHHe3gJlJxG951pa66OeWC7eUeE5uqlBuYQFu9NJSfgYKjHx74JHQwRDDgsaqqFjTC2Ct5ZejCE4+dVGievYcWiYhgH/BUvCxBAWzYjAHIDuFyf+a1rh4DZ2jo12DM9EiZxlMIoh8JrfjTvnhdRJ6RGSgN8qFo+abBjV/c5Ub7eqGdfDTHOxcs+d3UsRpRSvMJYNLqs9ePaP1Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	b7nXJg1wmhJFlAnf6EQc4DGEItZPO8rmPiYKbRNyTJvkGgxhvXhG2jtjJIM9h50acfUesyBEkkitGjYMyhaE4GLs6E3VVL+sFBB99zteMV43yas1IXGSFjeAd6js8fJ7PcqGyJ+uGEkyielnIAB5/kZ/zNPTH5M8NlyV/sKiEBDYiF6aTs2Xu0wyg+uIwThFaSxVnIUzcyPkQof1/ju5GwN4gQIiqpeQVQUE9ho5626qtwIvx2IeOQg4Rh1MFJH34OZmpmnx3E1haGQWI3Xvp+daWgsTrYjDMuPDCpqtorxiif+rwjFurZawz0LkEr46J4ksWYsNMyuYo9Pqutbn10cGNvFJT9UOikZQG2OmrlLXaIKW9U1r8iiwg2BBxkKFSjyTmE0XJ0Wie9PO0XdudD4fR4vxlJULPoRq72twnVSKWn3NsMwI1IE2tK9gnlaGFHZo4AAS2aJ8HvHAn33FUhEaxTa5NNwBmFSE+x8Ah52naeRRtkzkvChrH3Bb2dzE+jg+xqVB8l5cEhxQKftfq8bshXf2eBT6SPaKDq/PcQwuDf4eAbe8dtf2m1wMxB64SrBjmsSptvtBIwDiW/PwlEF5gJKLNxvPcfiq8yjNGBxq5fjluG1JfIq4aL61SzOJO4sWUck7cyRh5M9dsv3Y5w==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d38daa2c-7576-4d8a-f21e-08d855a52880
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:31.2558
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HxsHPgAYAAHRxVuWsA0NYASR2dLPV1pKH2F3q8+ZrAy8wDhQrJObWYjJD0spqwfboeuG9uq4sRUugO6r3GWu+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

This removes following boot-time complaints from udevd regarding
missing group declarations:

  [    6.624454] udevd[163]: specified group 'tty' unknown
  [    6.625340] udevd[163]: specified group 'dialout' unknown
  [    6.625692] udevd[163]: specified group 'kmem' unknown
  [    6.626022] udevd[163]: specified group 'input' unknown
  [    6.626541] udevd[163]: specified group 'video' unknown
  [    6.626977] udevd[163]: specified group 'audio' unknown
  [    6.627532] udevd[163]: specified group 'lp' unknown
  [    6.628187] udevd[163]: specified group 'disk' unknown
  [    6.628558] udevd[163]: specified group 'cdrom' unknown

Size impact of this change on resulting bundled zImage-initramfs
artifact is less than +1kB which is neglible.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 recipes-core/images/dm-verity-image-initramfs.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-cor=
e/images/dm-verity-image-initramfs.bb
index 0fdb46c5..05ab10c8 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -4,6 +4,7 @@ inherit core-image
=20
 PACKAGE_INSTALL =3D " \
     base-files \
+    base-passwd \
     busybox \
     cryptsetup \
     initramfs-module-dmverity \
--=20
2.20.1

