Return-Path: <eero.aaltonen@vaisala.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44E12C61DA4
	for <webhook@archiver.kernel.org>; Thu,  9 Mar 2023 13:05:21 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.83])
 by mx.groups.io with SMTP id smtpd.web11.12614.1678367114670646050
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Mar 2023 05:05:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector1 header.b=uWTA9DVm;
 spf=pass (domain: vaisala.com, ip: 40.107.247.83, mailfrom: eero.aaltonen@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5FGUwqwXIGjC9ffM+2fJHC6tkfP5PMAnW8iCx61yi5p5KV6Jb6q82ghr8kQ5oZDu/9FmZzqOQz5nMaDh21zIdkYblJt1FYrd4IgFM+uOJUvCVxvluF0HzN0Fq7WmyQAszzb54oMERpM5cA6YC+H0kp2juU89T9mF+hSHjWso3QvRMbjNvNkb9xAGcde8Bxwj2hAtECwvcqZCTA/RgiYvRqQQM7CCJa0+/APRv4qIEWntAl0FHTjX6fsHcBtOorEWPvrzzJKYg5NnUPTEHuVd/HTEx1QV7eUtGZ9cHyKgNEN3DXe1HntM6r+RWTkgchKjZapBv0DcOCQLd6yYHiGzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PMg9ZO0xo5bKMdh/QMZvKYbJqZqEVqiyRWsq/bTLIPo=;
 b=eIG+4C1Gh0REm0S8H5Rbpa/BWkVJFL8D1FwXcJT1Wt0dW0mOkOX8VEKtIOXxlLMWN1oMk+jO+xndCwByXE6mOuN2/rbLPYisqExn+kE6Byd86wNAFhgupkoz1IGofU7ndWNwh7fZlF9fO4gXVQ2FpNyF7Tw0qF/iaPwkr9uSxIqZTpBDARe3Tp7fIx+VD4azIHIJMaOkIcDdg1n5CXo7sVJALdEGNZ+cEaXT2dmnOW/yYj/4OlFzf6I/1MZEbyl9boMm39kBWP36E5/Na9MU7E0r1ijvnLzhU6EtOyhpFUms3oHbwhIkpASu3zHTUCvjM62FJ8nLH01Cpxc26qYJhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PMg9ZO0xo5bKMdh/QMZvKYbJqZqEVqiyRWsq/bTLIPo=;
 b=uWTA9DVmNjBzX1r4vRr+O1H3cfs5j0fTdTbJPkRxHE23yD7/jflageAqM+Cv/AEx67t7nkPbuYr53E4QgOkc7Z2lVJaRRrQ+WruB/zWa46LIPOel29WB3vGsIffeV+AAQaBsaf3t77fihBL33ZcLuuJ2cAuie5LQPhHgu7pB8OYFqocpNuJoETs0hSRMFi1qWWert9yWew8JLnjVrxWK7MUB9eawlq8suSfRjF1lO6CSa3QaID+3zZ6/Qi/AWTRvslATvQ3Hma52dk6/c9LAO9QrJOblu7j6biNFLHx3Rh9CLVMihRGZe0Eq6ksA/4ITBZ+SE3xe4ou/2BNW0wbbLA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vaisala.com;
Received: from HE1PR0601MB2361.eurprd06.prod.outlook.com (2603:10a6:3:97::9)
 by HE1PR0601MB2538.eurprd06.prod.outlook.com (2603:10a6:3:53::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Thu, 9 Mar
 2023 13:05:11 +0000
Received: from HE1PR0601MB2361.eurprd06.prod.outlook.com
 ([fe80::a73:995b:1f41:687f]) by HE1PR0601MB2361.eurprd06.prod.outlook.com
 ([fe80::a73:995b:1f41:687f%11]) with mapi id 15.20.6156.032; Thu, 9 Mar 2023
 13:05:11 +0000
From: eero.aaltonen@vaisala.com
To: yocto@lists.yoctoproject.org
CC: Eero Aaltonen <eero.aaltonen@vaisala.com>
Subject: [meta-security][PATCH] dm-verity-img.bbclass: fix syntax warning
Date: Thu,  9 Mar 2023 15:04:46 +0200
Message-ID: <20230309130446.1160207-1-eero.aaltonen@vaisala.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: GVYP280CA0023.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::26) To HE1PR0601MB2361.eurprd06.prod.outlook.com
 (2603:10a6:3:97::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: HE1PR0601MB2361:EE_|HE1PR0601MB2538:EE_
X-MS-Office365-Filtering-Correlation-Id: c9e4afa8-2f99-458a-ddc9-08db209eea6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Z2yzx0UQlhvoOaYj2J9xvbBMlu+oFMqWVJU7exqamJNvxdUgRkcKZMP8JUIMQVeFW0BPJJbIuCN7AuUO+nwJkoKGdL6/U8EOG9WA2Dm/zwxir35rHkogpxTY2Eqbt1sc9TOhC/mqAhXi9B/NKexYgiJxwlv97xkqAulTbfjw7I+fQMP5D3B1K+P4bau+5HJjOSuNd0nrD2kCIGE6Sn+L5eLlxNVYnLdcw9s5vqNTe21BMMrSaS31p8vMgV4cubWgxwXcutDy6A3dnTDnZdwvTZ7XKa7oxBBKOsu8RO+lUTTrTqgC5rDAbGcG2ts2AZPYj/Qu9qHq4SqMLA36w72zjMFss9Xs5SrMHQiF+V0wDNnrP8VkLTB2gn5Q0F40aNFe2KaoJi9CAyClYvL3w3A6yRpP4t0xRE2iNqGkqI7FzeiKdIR4hjQXXz0SRXyqFN5Wimgz/Bk/j00Qv9qgOTAouwbU0nuk88F0YPGuBcvAv/Av5ER2n4tpD0DX53DqS9aUgyUxaXq6MdX8cgzmumGduIyqN1t+Soc2tlEgJTrkXglrhoxc1w+y7gr6T6jUCE+OZQ61J9xnyAuNo98d2+5/E8/tqhPefScFJ4/eskbwlDJ7yPe2jrYxIpTuXLD0KclA4bOpzn0Ki5VW2G/mDWTiQSRPgYREPqBhIBFIVucRvk4pMpTpbaHwK4OwlNty4t9zG3fY7J6r68OaC6fQyJIwAw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR0601MB2361.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(366004)(136003)(39850400004)(396003)(376002)(451199018)(4744005)(8936002)(36756003)(5660300002)(1076003)(26005)(6506007)(6512007)(38350700002)(38100700002)(107886003)(6666004)(83380400001)(9686003)(186003)(2616005)(86362001)(316002)(41300700001)(6916009)(4326008)(8676002)(66476007)(66946007)(66556008)(6486002)(52116002)(478600001)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?C7/Iv6B/5ARqVSR43ErGBTa+nXwD5ppZHv3BcWbHlWnEmMYxYtmOGlnUVYO4?=
 =?us-ascii?Q?nlscsFI0+3EhWVKqw95ujkPHJtsT7RmJZNe/WfGQOnUBnXjqYB7ijvnhvq3Q?=
 =?us-ascii?Q?+XAVvH5LK9jwmNcHzAr0mHPYFTqhikWhu40lFL7xCz9xy/gMN0vgWSfbEFsl?=
 =?us-ascii?Q?hoFXp15aInwrdG9+fvd3xOWB6S8vF3cvgJTysBXxkDtJpJnDv8vvVqw4Tnro?=
 =?us-ascii?Q?iOAdmzbDv5C0/2Rizx+XY1sOzbTtXxuzrHjPp7f9j6GU+s0rrZK6vfKmudA5?=
 =?us-ascii?Q?xxjpZayYyfKmMYQD+QFJ1TsFRWtGesFjhQ/+1mE2OxIm4g0noeko9G2xBwKY?=
 =?us-ascii?Q?bvGY/usTLwps+1KUIFpznbH4rPZvj++sx45lmyaoG2+zRNJ7kU9MdSbC2GIJ?=
 =?us-ascii?Q?/lplT6iDrLueGZJtj3z36gQ3jDYiAYMeDNWkGZhg4XEElusO4kHvIqhhK7p/?=
 =?us-ascii?Q?rCdmALEOR7UX90ukaNdRaLVm/7yhNsLDrpS469L/D4C5ZDyNazdldUhiULja?=
 =?us-ascii?Q?vl2ydo/Fg6Dkk5fzghALBk5vLftt2a3xbMpkgQpbrWKdkIW2aLGbOIsjHQpz?=
 =?us-ascii?Q?LtvKplT+0F0LsiGQWFo8GhFbO8c98zz0YLGPY6/FRurN8Rs/Wognn2zp0H0n?=
 =?us-ascii?Q?BbUv9BoNVGl1G2+nEUfRPmliLX2zdoSj52TywK16wjBfXKFGvBOkK5KtPRZa?=
 =?us-ascii?Q?dNecXenaExpw77pTL+NWpBnfeKusQRQWiMXqHuROVWZ4vEwNXmZ8i1oXX8g+?=
 =?us-ascii?Q?6pYyKmO8ERppWuWmwOWrcAMOMpryIxTWu5p3HZiPsCm6aVha4HXOasdgCyNe?=
 =?us-ascii?Q?fkDeO6ROvyxXOx13LzEAgi1GqAlrhuyb8NZX/QDLRtWbyntoa47rulo4BLtT?=
 =?us-ascii?Q?Gn5uEl3x6seqGuBXNBG03RSMx1EiDmtQPgtf0ix7l8Ko2tqrJOBX3PQUeJoJ?=
 =?us-ascii?Q?YBvhw8+9GmVUw1csjr8RotholLv6T1Uv2AnDKpR3MbJhaKyLkCS3x8zflXAz?=
 =?us-ascii?Q?cSHHxwRH/sFniaxIkbIrm5SfVqmd7rnCFlpfJ5tDVukRAjNBzVlyWanIT48/?=
 =?us-ascii?Q?bbDmjWXJoBssfZSgunL+mrrzbhvB4TzNUKiMfMEqPRoYOMNpU49VfiBKDlkP?=
 =?us-ascii?Q?8d2Yix7BLg4WXd3EGcGAG42n07hlvydbKEbmZ7jffVN0R4KITLqt8GxjWdWV?=
 =?us-ascii?Q?M9fJ5fgJTVLpNJotCriVMGCUPbEpsDA/Bdvqh52oiJ/WjCJU1M+LEtUZXsvF?=
 =?us-ascii?Q?4Bk5GCK7g8n8hcemMvkrH0W07R84Va16zmQSEaTgkI++iTH4DHB2OGc7NTiF?=
 =?us-ascii?Q?wCOLlyhSlzN+5CWHIp4UjV+WekN9oQELc+0Fp1A5kaWzrPQT5rU4sfKBxrf4?=
 =?us-ascii?Q?mxexR6T65hqhgaABCZHPGIQjMWi2T8SbsrBc4qG4wQ3A6QAHmKj2BOcl1fzi?=
 =?us-ascii?Q?pyuZrjysDcgJYFNZKleTcLAT7CbCIBnm6NjVuZPCTE4BA/wlGqmfu7CwOeYW?=
 =?us-ascii?Q?+fjWTG9L229WCkGf4mc82v5pA/Y37To/uyTEH7i9Sx50vn4KAyqSfElUYuMK?=
 =?us-ascii?Q?f0HTzxU1seedP0gaejV/DIwbyhWZFMIP1Gs+cxI+4YjqLOl7l0t10Hi7O120?=
 =?us-ascii?Q?8A=3D=3D?=
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9e4afa8-2f99-458a-ddc9-08db209eea6b
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0601MB2361.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 13:05:11.4791
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /1HKub0oM8gIXgvljgad+6SMu9VSDarCxhaf1eTTNfuiiwrfvlKpfqkIz3iz9yqEwd+ohLZ0SAi5TIANy0racpU1eXPp0/qr2E3K0kIRYBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0601MB2538
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Mar 2023 13:05:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59374

From: Eero Aaltonen <eero.aaltonen@vaisala.com>

Fixes warning
```
SyntaxWarning: "is not" with a literal. Did you mean "!=3D"?
```

Signed-off-by: Eero Aaltonen <eero.aaltonen@vaisala.com>
---
 classes/dm-verity-img.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index e5946bc..c57409f 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -87,7 +87,7 @@ python __anonymous() {
     if verity_image !=3D pn:
         return # This doesn't concern this image
=20
-    if len(verity_type.split()) is not 1:
+    if len(verity_type.split()) !=3D 1:
         bb.fatal('DM_VERITY_IMAGE_TYPE must contain exactly one type')
=20
     d.appendVar('IMAGE_FSTYPES', ' %s.verity' % verity_type)
--=20
2.25.1


