Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.92])
 by mx.groups.io with SMTP id smtpd.web11.11487.1600432217396332813
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 05:30:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@qt.io header.s=selector2 header.b=Jof3Dzv/;
 spf=pass (domain: qt.io, ip: 40.107.22.92, mailfrom: samuli.piippo@qt.io)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B7xKhczO2cjD5WiYBeiMt/70aCe7VgrtOs5arEkRThGEiv+TDXVuw3pdoG5WatS0j+oUzRuAP6S9tsFuJO0XnreCDDa4eG6lv722Vqqlg+C0SOi6k+SA85GraLcWc986I5PFT6Nc7+M+vMCED8Snk04/Wlb+xWFw2ShyCuQ8axztHy3NAx0cnqcTLxlPciqS9kBjNfumsvCVl34UqGX4CNUFSpw/rNUyvBCxdr2770dhz315pgwjhlalfZQtKA9LfnhzYJ3NteHqTGHVYqeqNB9uK0/Go327M8LQXZEtWE31AVZSkU6zG2xF9ZdgwAFZ4lbPD/87O8I0z1rdhQGADA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ddJ1c63T/YqXl5lUbH564SJyJbmZAv11yx6wSeE05EA=;
 b=Z8OQqa0xY5+7r+gEXeTmfjg+gyhMw660linphBW+tCSJkbjWSX8+Rq+wyd7Onu+A2QfBR3CqKNIAQc6q+yYsO4r5dzA5LPdcfeIK5RhgOACM/Q/X+EL5VuROBhVTyG0L9tfn1uFQ4SgSQLJfeA3z2ENtWrlZu24fhMRZ2rcqfkzfWmtJrrSWcrEzXdNw08rEcovjCrjZrbdxq5mGgqGe+nTlHqU8SISD+emv95C6buuLOifB5ngxvZQ5aTLEgfuA9tgmqeVm8sqB96egJPlRvm0CqlW1zdMqulJim3HlRvUa4XS0fUT0iT+ozKuVc8wrSR7BPmgOq0uIxUkvV6NUXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qt.io; dmarc=pass action=none header.from=qt.io; dkim=pass
 header.d=qt.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qt.io; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ddJ1c63T/YqXl5lUbH564SJyJbmZAv11yx6wSeE05EA=;
 b=Jof3Dzv/fZePpIlat+fYzF66vq9QP8DIJBsK6EuMDGBJBKO8EOdPuLO1cUDtsetx+gVdW8wmepF8WWmlp74D4So74d0gwMPvvdaot07N610Ifu91UQ3Ulp54LzBlbmbUxItAgzXb1HsQu/tkUqLsRQL3Rzgq+QY0Q98HtnxO+Kc=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=qt.io;
Received: from HE1PR0202MB2841.eurprd02.prod.outlook.com (2603:10a6:3:ef::18)
 by HE1PR02MB2985.eurprd02.prod.outlook.com (2603:10a6:7:39::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.17; Fri, 18 Sep
 2020 12:30:07 +0000
Received: from HE1PR0202MB2841.eurprd02.prod.outlook.com
 ([fe80::4817:13c2:2b92:647c]) by HE1PR0202MB2841.eurprd02.prod.outlook.com
 ([fe80::4817:13c2:2b92:647c%8]) with mapi id 15.20.3391.017; Fri, 18 Sep 2020
 12:30:07 +0000
From: "Samuli Piippo" <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw][PATCH] Override SDK_VENDOR
Date: Fri, 18 Sep 2020 15:29:51 +0300
Message-Id: <20200918122951.23340-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: HE1PR05CA0197.eurprd05.prod.outlook.com
 (2603:10a6:3:f9::21) To HE1PR0202MB2841.eurprd02.prod.outlook.com
 (2603:10a6:3:ef::18)
Return-Path: samuli.piippo@qt.io
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from munkone.intra.qt.io (62.183.187.94) by HE1PR05CA0197.eurprd05.prod.outlook.com (2603:10a6:3:f9::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11 via Frontend Transport; Fri, 18 Sep 2020 12:30:07 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [62.183.187.94]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fc87746a-1f28-43b9-7ef5-08d85bce93e7
X-MS-TrafficTypeDiagnostic: HE1PR02MB2985:
X-Microsoft-Antispam-PRVS: 
	<HE1PR02MB2985A265ECA285770242B942E93F0@HE1PR02MB2985.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dBFDSegK+qKPQzA40K34vbjpSp3UIoyYSkaHOGQu2jOn46F2XIAl1AUiQ0l+v/QveCosA0B0x203G4Yaz2rjfkPyehtcQKYTwTp3bp3zT4HTWLKdfeUmq0iagX1dlZciLCLaexFy8SushqFFh8RViidzTcrRxyviH/Tfc2VUFcLOtf4CdH8OzReRStP75HnfbBqUVIuve1vszDS9QblZ0ZThUOk/Bro3B0wFQWycGENiZH4S+R6XVhPjw6eIlEHsZI8HHeWvO9VM69+L/Y4AdVEqb6MM62tWue1rhWpTuRyaq0Ikoxu+6Q4liFhzswlcSVG+iat27jQLdhd5AYuuGw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR0202MB2841.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39840400004)(376002)(366004)(346002)(136003)(186003)(86362001)(26005)(16526019)(52116002)(7696005)(478600001)(4326008)(2906002)(6666004)(5660300002)(6916009)(44832011)(8936002)(36756003)(1076003)(2616005)(66946007)(956004)(316002)(8676002)(6486002)(66556008)(66476007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	c6hrDdMh2zp2gqdfmjOwCVhVwcKoEKFdoqcrjb+yQJYlraWtHNkEj65ndYrobgwT+Hk2W42UlpJN8fAU9clGL3ImN19W2JcDXbkBRsFA55bv/n6GJ5ArbYG4L31dLnmBhP4dlEvLNXdt2bcxMDUdBlhwdyMirID70SZiWeM8VACftPA0j2fMa97ZUu7QsEKSGB8bZRh/lGDJ1r0tOY2FCjx/YyzzDk3ft1DLQ8cM2xIYZ0XzYEV09cxDCF5d3XJeDAan8K9PoVxMAx5lgf8dWA3fZxJrS2vp6MWJdOzeziUr8la8vfHS+4FyVXJ9ZYXfCvIBYDz9NTLwiGy5L4Ebys7b0UxKzT4Hey0QfQS+spmzCpAPsT5V1W1ETi+NeXua1dOsLQ7A4+pwgPVcwMipFT2qJWmHUvX2Y6V5SrAp3mXBA2OqlROXTr/ik6Igjo0gjz2JCYn86fhmaqEePc+eQMb4kn/mouPdrHRWpzjC9JAOcd+WSs2hQza+1AwnI8aw9L9MXL3Pq15fUTTrECO4zXk61vH4zSkll6XRzUUgfgZUNrqg7RwZ4bg5KuoDZgyUxGdKK8S6Sz5cLgprazdrd27YrIZSHC87BO+DUs+Ah/f7ddrax+bwLOSaJ7ATzRHd8PYN0YsCOxKEsSzbexhP8w==
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-Network-Message-Id: fc87746a-1f28-43b9-7ef5-08d85bce93e7
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0202MB2841.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2020 12:30:07.7247
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cVg2/Fe832b7Yta1vBmxnr2R5Lt78l+oSZsbcOS8vHF3ML5z+uMKK0s3bYGud87oMPN/hiyoxfC7rIhprBvIgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR02MB2985
Content-Type: text/plain

Set SDK_VENDOR to '-w64', which makes the host triplet match what GCC
expect to find when using mingw32-w64. This enables features that are
not functional in the classic mingw32, but have been implemented in the
mingw32-w64.

Disable 32bit libs from the runtime component when compiling for 64bit,
which were enabled as a side effect of the GCC config change.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 conf/machine-sdk/include/mingw32-common.inc                    | 3 +++
 .../mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb             | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 9011ded..bc6c91e 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -1,4 +1,7 @@
 SDK_OS = "mingw32"
+SDK_VENDOR_mingw32 = "-w64"
+SDK_VENDOR_sdkmingw32 = "-w64"
+
 NATIVESDKLIBC = "libc-mingw"
 
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
index cf39c6a..9f79ffe 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
@@ -19,6 +19,8 @@ PROVIDES += "virtual/nativesdk-libintl"
 
 TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
 
+EXTRA_OECONF_x86-64 = "--disable-lib32"
+
 do_configure() {
     oe_runconf
 }
-- 
2.17.1

