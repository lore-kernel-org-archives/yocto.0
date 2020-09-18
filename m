Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.136])
 by mx.groups.io with SMTP id smtpd.web12.11659.1600432256289277512
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 05:30:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@qt.io header.s=selector2 header.b=ZhNdNNqT;
 spf=pass (domain: qt.io, ip: 40.107.6.136, mailfrom: samuli.piippo@qt.io)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lXkNXLK5UNOvSjev1DEJG7RMMgqgHONHqp6lYtX/PztCrE81SlGv1cLvfIeol9yqLAkaes1ZzzF9cAEqcVSWdW3rfoIZ0eCzRSgtU+kGz5cfwCuubfZrZ/WUPj20cJjZcAglei8f5xkr4Wb8q55G4alt9gni3BmrcvM1lDFA3W8DaxrFyZfEyKJShugu9yNyjIVfEUEAj8LqwDtxmWGt4WhGtENLYjwwFdUqphe62pu46igDQgtcZCYY5H+78oIwhzCgl3r7KKiVliPCmrlRmGwFcIEtBBKnAdkIGn16LF5yMKIoIumu3aJWtT9dNKkEP3BUROwcPGg2cpfchYPZzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yMYPFbxkLzD79AIMuk7sSygvxYzQv8u1tCgEcUe0jXY=;
 b=iBlQc5Jgyp9W4NtJ3PcaEFmhnAVsiywk88RW+0ALR9NfDugEMz6hxBLfRb0YnonDGNvB4+k6DfpfmBPMSSSI7fjxx8ULxqDQQ/4zKjxpo77lsGv77SXABr7jYwbRtFiKfuoYbVKXG4CypDrn0dRroidVQXLSNMBhm6PueOC3W74DySrVUJ4mebC4SA0z2bEsHO2FUOAdvLrocVURUHkypEFP6PqWfp0MYP1NV0fwnP0pDmSXRkty4ZmYlxNtbYKmpYRGvT5PsAaK1YcidhhADQhtpX9s9RYgwtNoVVEvRDyG3BIApZanlL1+blK4wpPK5/V5gllwMIK/DMOw9q211Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qt.io; dmarc=pass action=none header.from=qt.io; dkim=pass
 header.d=qt.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qt.io; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yMYPFbxkLzD79AIMuk7sSygvxYzQv8u1tCgEcUe0jXY=;
 b=ZhNdNNqTGQqD8M4AzZoeSKnas8DB1VsVvvmQFy2N2azKXwHDns5hfNQaVnI5mRBXxPU1m/WYYGsrWly3WLVV87PrHzQ6Pj1O5VTBnhNcKWjI5GgoU7QmyODcTZCTgqzpBHecBVg75cQu+TpPSkx36910EXlRAZj3ZlHLdYKZx/k=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=qt.io;
Received: from HE1PR0202MB2841.eurprd02.prod.outlook.com (2603:10a6:3:ef::18)
 by HE1PR0201MB2460.eurprd02.prod.outlook.com (2603:10a6:3:82::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.17; Fri, 18 Sep
 2020 12:30:54 +0000
Received: from HE1PR0202MB2841.eurprd02.prod.outlook.com
 ([fe80::4817:13c2:2b92:647c]) by HE1PR0202MB2841.eurprd02.prod.outlook.com
 ([fe80::4817:13c2:2b92:647c%8]) with mapi id 15.20.3391.017; Fri, 18 Sep 2020
 12:30:54 +0000
From: "Samuli Piippo" <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw][PATCH] ninja: configure for mingw platform
Date: Fri, 18 Sep 2020 15:30:47 +0300
Message-Id: <20200918123047.23682-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: HE1PR0901CA0052.eurprd09.prod.outlook.com
 (2603:10a6:3:45::20) To HE1PR0202MB2841.eurprd02.prod.outlook.com
 (2603:10a6:3:ef::18)
Return-Path: samuli.piippo@qt.io
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from munkone.intra.qt.io (62.183.187.94) by HE1PR0901CA0052.eurprd09.prod.outlook.com (2603:10a6:3:45::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.13 via Frontend Transport; Fri, 18 Sep 2020 12:30:54 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [62.183.187.94]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 03d2bfee-4807-4371-d449-08d85bceafb6
X-MS-TrafficTypeDiagnostic: HE1PR0201MB2460:
X-Microsoft-Antispam-PRVS: 
	<HE1PR0201MB246003C20F7C348E32ED16E3E93F0@HE1PR0201MB2460.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eaeVeOtt+nYNMSulGSsZMkHWzRWnGMMUUfNfVDfcURMz7jjnzGb7hkkBDG6E3h4npURwgA2eyXj18GtwuG7zl47aV7/suVyGC5rS1oAuR7TYTEOk82bIXfOsFvlo5AoTs41PZybNr3JAV0HeE/U63qC+y/+Q5JFd0FpSLLn4pILOXGd52I0l6HuJyE8U9WOVvE/V2gUMOnxnbQGgDzbxs7MAWEKGCANKki1VgCSSfI5da/bB3/lzp3vfmfEwKyJIPIUIZnU9SCKN3Ko3ghdV+aZeOOqM1c6PuU1lCzoBVYdyvggzxK69QptWPX8+Ce1l2NSbPOZQL6ndV8AFbO0lLZAAPPrXyZePWS2zOxIagIefltBPISmTP2Leo7KERPuwDZiAGfa2E/yHD0mSixuNT0vM+a5ev3sPsMMUbdKjmPM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR0202MB2841.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(396003)(39840400004)(346002)(376002)(8676002)(8936002)(5660300002)(478600001)(6666004)(36756003)(1076003)(6916009)(6486002)(66476007)(186003)(26005)(86362001)(66946007)(66556008)(4744005)(316002)(956004)(2616005)(2906002)(44832011)(52116002)(7696005)(4326008)(16526019)(460985005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	gpQ01h7AwKzAA9zvCh8ZuZ4CzM6EcvA47XlJuRvLUvTM3UyaPWmkrRqOPnhHbf2GpyLVMsyMWBkQszPDgKcteWvtjorzQn8/j93g1yzZsm1/zjgumzlrTmUOm37Ba3HxAJYnp0lg3Fpq1o8RymVQYwwe51nAwvSQQcUR4ITrABdGOxduPL763Bf9/qTOIPBUa+27pMF8CJzncBD1lgvFeF8Fn365XecRV4quFWBO3zRnMYGNpw4/GdKtz8613YR/2Zyd7hSO4vWV2B5T51jwze9pJAzy9szwNILA46iadNVXp9MWSTi7Sh3Pch+Nzcd3vWmsNlbUKNI6Bp15aFMdJb8R2e5hpMELoaanykVBUykzy1zIGvGXL/eci5frNM5ybl7u2ROcRQR5IoYO2MSyTMVX2h6QJOisp8+Kjq3xoVUzXpp6NapyiIl6UjXEhC/cRQHnpem7voNOEG4p+6fcFwMGWW0sw/0WfVy29Ijaj5VfoAR1SjNnjbcF1BeUVny772O1wZzBY03zBwKT0U2l74ov6fzOzDBvYvDEU6oAcu3YvXYOalRSc7dH9FtkdctMCDiiHrw7bvK0T8H4m51GcxRlzLV15ZUNvDSNbwzTCw6SZi46IwHeSuxDJp0yFqzgbz6TKwQQMFrmfI1LitzGRQ==
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-Network-Message-Id: 03d2bfee-4807-4371-d449-08d85bceafb6
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0202MB2841.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2020 12:30:54.3849
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E3cdombH2ObxQ3rQRvgZMVDerOR7e5acFCHmH5jkbjjFdZs7GcVUfM4fmRsRmCD+GkDNGVqQT5fUhDHrFQ6aEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2460
Content-Type: text/plain

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-devtools/ninja/ninja_%.bbappend | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-devtools/ninja/ninja_%.bbappend

diff --git a/recipes-devtools/ninja/ninja_%.bbappend b/recipes-devtools/ninja/ninja_%.bbappend
new file mode 100644
index 0000000..e7ddb4d
--- /dev/null
+++ b/recipes-devtools/ninja/ninja_%.bbappend
@@ -0,0 +1,8 @@
+do_compile_mingw32() {
+        python3 ./configure.py --platform mingw
+        ninja
+}
+
+do_install_mingw32() {
+        install -D -m 0755  ${S}/ninja.exe ${D}${bindir}/ninja.exe
+}
-- 
2.17.1

