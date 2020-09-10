Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=qoZ/N73R;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m8PF1fQ22Pgt+t6USwZs+X03NwTSYu/eyJEfpGtNA5p5DFnSv6HIwYIY92/wWr/V61psFH8NlAr24SdkoRyx8aCICqCN2tLjwAi4ze9EZWxv3tdwUSel0O2q2RJwE776enxSrxbR8Qw4vCvmSMXZFZhWNW3Am+szPFleKqEupLkNsYWY1XPM8Dy8iuda2GsyLLduD86sW29o1xqd6CjiPgFsnIXA8m/tjPo2Rhlw7cHuPuFYFqcuUxp4Bo1W+aHVvymaAiga1Mrfer1zjqNghavfi3ms3M/Xz1quilx24HPcB/Uv9Vea5vQLcldB+WEjMnijFf6gWvjFXFqTGaqZLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c2Y1smuUgb0PNXveM/5bBNUkKSm5Pozgay0Bl/VYJCA=;
 b=LBCgtqtKGIqaZJIZApH9bwwRGt1Z5Ph9l0+52vJyUzR1m7dhusxjwnfvpAOwJDEmYL1Vmu03dfcOGgC9lUSQ7IDy2WdY7E4TMQQvo4jU6fWTNZEmYPTzgRIYcrnqOGHNO1RM7i3kD8TdnPw536Ii+V1+pUmtDOxh+Qbuc5XrFadRk/svwl5FJNGWWy+P6OxyoJlT4tfODcq0aRGvqcZNxFc+a0xyUI6ngmuXjxq/GKW8yspPbJasYLwjo67gwKZ21WgMMAMnToL9QvqBfT3dU0rbr9rpNaJoCE5HOnqQxAlHSKo8YSskOGgynGtZVVU8v3H2whpXkIyucYjUh1sspA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c2Y1smuUgb0PNXveM/5bBNUkKSm5Pozgay0Bl/VYJCA=;
 b=qoZ/N73R9WimNFOrn5XoI5B1re0yDWdkpglNeHVkf5e7ZFmVjLfJ4dc0969e6vlH/FcvuxdiKKXe92DRxhkQj3YnDqJ5hAoYnanJ/onQ2vwG3uy/PY1wsFMU34zlPoxlZJSmmVkXCCRrZcb79U9HySHYfLO+hRuHicPds5vfAKg=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:25 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:25 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 01/12] dm-verity-img.bbclass: Fix bashisms
Date: Thu, 10 Sep 2020 16:17:48 +0000
Message-ID: <20200910161759.87958-2-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:24 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3aab73c1-9be5-4c35-8e20-08d855a524ca
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB592578DEE11619FD794542EA81270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:580;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	W9KtV8eD+FZpZJ9q/MPCQTeDekvBn7OX5vfdzqQ/3d/8j4pR2L8hB285QK6L1VWnd+FaH+FYLlrBhPCuA5bk6VDVuQImwtZtYFPVDwwVD4a6SD6TRaOmUxQDeCKkOWGrDnw+yYFLPgpP91PMIppKUnW3VRrn/J3c3OA+2qW7HkNdCoko24Hlgd8QUnIc6QTl6uxrJKv5RQ02TzBsPayLvKB8mdwtlgns0cufwYoBJIB1IZvDEq91aAA/P/j8GC0xnHsKjaRDA+WEThj3Wagav3dQbZu/CnVWtr66gDv0bYlonErhIJsAr+EzVB9dtYrWs1U5gu440kEPvHwXxAeq6g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	VPaf+HDCJT27s2Yy56f+rsQMvWTCOvqnPtfc8rTPoGVK617cwmXpM92ZCI6+FPpKYCSdlMOxRtxpTAaz0iFs49u+sTViaWPXYhSnB/XnVdCQsPHGnD6dV/YSJmG1eAIfin8h6QFm6f9TtCyZbc5r8pRkb8ut3BOC+9XZhe2orxUEi+YN5DPIg4gQywYb06+LTuBRm4yPZlV3+4o6C+y/IJRAwCTy9EGZLcWg43k32nFtZH9H2mhqcgn2lzYPG/EyL7YtIaOHpMJG0pdbEuJyMlAd5/WOA2vFRNKo3D2WoNvqZJs6/5gZZx3UUC1lKjWjuIIvdodIthpQUbfv+RCZPue3im3huX8n1W7ODC3Aycba7CjNmoAE4i2rVLfnFow7AwPDkcJaAZ4PnHppjTBgWgJ0P11UEoN7uVx6TER/7X0ypMfwplEgK85OPCES+Y0fpf/OA5edojh3+trzrCUV5YpFoU09Nu5bNUNhxn19iK+si0GqeAEVKBcrv4SgER99q09yzZCKuoa9H7Y3JZ6+EaBET8lFeV1SXC4CUms3hyXVzMjZgHHS1ON5cQNjuXpeV6R8UT2ehdwbMVkKPy+l2lOyvQPmQmJRjvxa/sF0O2RjUym7ypqqSNHeDxlDSx2MvgFKV1NZbEQaD3Zmp5HXDg==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aab73c1-9be5-4c35-8e20-08d855a524ca
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:25.0003
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hV8UWSdtVvrv4AxePCJRJpznmQxfubXB/1CVseboonyZ+8MZhaOMK7M7Mb9W20trOxMuifWxTHIlE7OwInkC0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Resort to printf in order to avoid usage of non-POSIX compliant echo
flags. This mitigates following errors visible in console during
boot-up with image that has been built on a host that symlinks
'/bin/sh' to 'dash':

  /init: /usr/share/dm-verity.env: line 1: -NE_UUID: not found
  /init: /usr/share/dm-verity.env: line 2: -ne: not found
  /init: /usr/share/dm-verity.env: line 3: 642864e8-6a17-46b9-ba1e-9386a390=
9c8d: not found
  /init: /usr/share/dm-verity.env: line 4: -NE_HASH_TYPE: not found
  /init: /usr/share/dm-verity.env: line 5: -ne: not found
  /init: /usr/share/dm-verity.env: line 6: 1: not found
  /init: /usr/share/dm-verity.env: line 7: -NE_DATA_BLOCKS: not found
  /init: /usr/share/dm-verity.env: line 8: -ne: not found
  /init: /usr/share/dm-verity.env: line 9: 12064: not found
  /init: /usr/share/dm-verity.env: line 10: -NE_DATA_BLOCK_SIZE: not found
  /init: /usr/share/dm-verity.env: line 11: -ne: not found
  /init: /usr/share/dm-verity.env: line 12: 1024: not found
  /init: /usr/share/dm-verity.env: line 13: -NE_HASH_BLOCK_SIZE: not found
  /init: /usr/share/dm-verity.env: line 14: -ne: not found
  /init: /usr/share/dm-verity.env: line 15: 4096: not found
  /init: /usr/share/dm-verity.env: line 16: -NE_HASH_ALGORITHM: not found
  /init: /usr/share/dm-verity.env: line 17: -ne: not found
  /init: /usr/share/dm-verity.env: line 18: sha256: not found
  /init: /usr/share/dm-verity.env: line 19: -NE_SALT: not found
  /init: /usr/share/dm-verity.env: line 20: -ne: not found
  /init: /usr/share/dm-verity.env: line 21: 19d98185b42a897a37db6c56c7470ab=
2d455f0de46daa0df735eee6263816439: not found
  /init: /usr/share/dm-verity.env: line 22: -NE_ROOT_HASH: not found
  /init: /usr/share/dm-verity.env: line 23: -ne: not found
  /init: /usr/share/dm-verity.env: line 24: 298d75fc2ea27fe594b6a37158a6ae7=
538e77d918bab98c475934f625de0e4ab: not found

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 classes/dm-verity-img.bbclass | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 1c0e29b6..6faed5b6 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -32,9 +32,9 @@ process_verity() {
     # just trim all white-spaces.
     IFS=3D":"
     while read KEY VAL; do
-        echo -ne "$KEY" | tr '[:lower:]' '[:upper:]' | sed 's/ /_/g' >> $E=
NV
-        echo -ne "=3D" >> $ENV
-        echo "$VAL" | tr -d " \t" >> $ENV
+        printf '%s=3D%s\n' \
+            "$(echo "$KEY" | tr '[:lower:]' '[:upper:]' | sed 's/ /_/g')" =
\
+            "$(echo "$VAL" | tr -d ' \t')" >> $ENV
     done
=20
     # Add partition size
--=20
2.20.1

