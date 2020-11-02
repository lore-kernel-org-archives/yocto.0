Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.28442.1604308302238684209
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Nov 2020 01:11:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=QpE8guM8;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2081.outbound.protection.outlook.com [40.107.220.81])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3696138C08ED
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2020 01:11:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ifpRBcs5tjvRZpBi+KCFquQtfumGkeNIqKgNcXCFpTeBQ2AJaOhMryxlgqegPC6SX9WKljTy7ewqUiiLKtXlNokhkdtNemTkWbPI2Oiezb+MV67efwGM2yPXbAhvP/gMYLrfmIz/sapmUwYDSC7IB9EJgZ8HXcrUliXMw6pIvv3Lvzw1bBs0X8boBAJ+Tfo3rf/cAi/5s2elHLWQHFT1FTIa+QrNUsHbBjFFEXDbrgjd9JNcoqHdie5m6DSBxxclvSwDQDaQaSigzcE2cyZGkwxIiX78n5oZCLnc5U81N4SWQKpRbu+lm6bJ1XrVo01Oay8/GPRdawv3hM6HjHweiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U6k3V2wcbF7IucQTN/nssxzNueRoc4Z2qW/68oACmxE=;
 b=X/0jmtD1TUfur9xpbAMrHQ3OhdGlfFbwmWRuoid5R9tCp3BvgweJq1UCrPFo9IWPkro28FbnhiHuWKtgHGEWeyhxwaYvdQZTdPaBW7VL1IyaDWKZ/5eMrHEwE2sLMdWkc3/Wj1di06dvEqss5y/UTaNciePBK/7qcW7w/T5CXynNF98jszwDY0Ear4/9GjXzay8W+3+75rc63E6IIf56QK486w1DVNeJActuHvSVvs5eHCuKjfTUqsNcyETqa/3N57fC6n2sD/wq/Mu3zRuBom+kMUISm4e0hH5F5906mgNJXwNQd8OCHYR8URn9eOqSnxNgdw48FvYcQVkpPhzkdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U6k3V2wcbF7IucQTN/nssxzNueRoc4Z2qW/68oACmxE=;
 b=QpE8guM8E1WyFT2fvOjCeQmPZnZhdi/MyOTICGWWeQ+mJPgsxt3quV/GUt5h5U9oTq7ShvdeSW8ZHe2kUypXvK3+8jzB7P9s/cHS6yPpgEdFCD//9y2k1XpeSaiwlqiMiYrjqoB4WO/i8jbKlSC0D12XyQ1aLbh2avRBuwveAlY=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1856.namprd11.prod.outlook.com (2603:10b6:300:10f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.29; Mon, 2 Nov
 2020 09:11:40 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98%6]) with mapi id 15.20.3499.030; Mon, 2 Nov 2020
 09:11:40 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH 2/2] clamav: unify volatiles file name
Date: Mon,  2 Nov 2020 17:11:19 +0800
Message-Id: <20201102091119.15649-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201102091119.15649-1-yi.zhao@windriver.com>
References: <20201102091119.15649-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0186.apcprd02.prod.outlook.com
 (2603:1096:201:21::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0186.apcprd02.prod.outlook.com (2603:1096:201:21::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18 via Frontend Transport; Mon, 2 Nov 2020 09:11:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 47979b37-0c4f-4a58-6cfc-08d87f0f4f17
X-MS-TrafficTypeDiagnostic: MWHPR11MB1856:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1856DA1DE437277EAE2E601BF9100@MWHPR11MB1856.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:597;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	a+pitAbSA6lVvOEnqPexRInAmxKo/ErLyTRpPc36vKZvw725UitYmsM4KpMyQHRIREMWTgZAKTJX3LQ2dU3Bu9a1bUjQ2B2ln0UIVy0SElhnmaU12t2rF07K3+TyMsF/huWoLtxlRYfU/srpLOuqp1sGcc/rASbGJiqDIo4IXTRm+GylDCFTB9AULOeyxsLslOq1tEIvgoYaX6cun9WaLzClMEtcamJ1/PbLjfsMZaA5MN2Qthyc6zgY3gYrSUDWm++WIjsH/b6ddAtYdDGTW4q6QEDHrf99rNNMFXZ1qNeJADfI8w5kR57fRNrV2ALzFrBY1QvUHaDIadziH2y/Gg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39840400004)(346002)(376002)(136003)(396003)(6486002)(5660300002)(26005)(6666004)(8936002)(36756003)(316002)(44832011)(1076003)(4744005)(2906002)(86362001)(16526019)(186003)(6512007)(8676002)(66946007)(66476007)(66556008)(478600001)(83380400001)(2616005)(52116002)(6916009)(956004)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	rDBVFvGOHJczaHF8eu9vLsxdLwKtVLszob7s7c/NrPFcFQ53wwGh5sDOA8iH99OnNC8keoMWW/yEoQ3ttrPxGugvv2mcFuyanzhD2+bCxBOMuG/GodEwGmDpvZ9o/nRV2AxTa6+DMtp5nnJ+jm3+bZ990oIt82Aem+JqppFMKPERAg0LIATHiP4x2hPtdWvwxSv3c8ryvZDCT8TF4/G6nn9H9IxLCxVHafWTN/AVCEUsGmVVxRIEjDEU/FoQKjfm3uulAnoBtuJZvyHP3jpyaUjeICeu+kW29lk7xV3RK/IkiRv+GzJbGX/61D9yoWN1WJUn9qTiF0c5Ds1KrUmcHK9Bs/bz9VH21YMTGX3WrL1JCYeFI0txtI5yLUa7rvbgt4QPsxUpFEXGXzG1+j2UetfvTRsj+8okUbYqSgq3MAx3mjJ6f12EVsM+xYr21oUs231WX1SqX3mWG3Jahdce3RAdBaW26kAOu8eDHdIK/EQRFt7wYs4B+DfkVzNKhH5dtkTkEV4SBWes3BGWMC4oie90W1y35V9m3SAotQeci0wUvwFJM5gXAwfoE530JyoIAvRSpdkIChkPXznMbR309Q7HEjUKGctEpVvTfYqkt4m0dv1ur2XOavDepIJp1gLwSdoiRq1qenIdtsXWoyShHQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47979b37-0c4f-4a58-6cfc-08d87f0f4f17
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2020 09:11:40.4124
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fuepPPzjyi7Gdcnhz7mrs3pZ3kWT3kEEjrYAbOnPlaZnZ92CR2c04dzjI/VzAg5hXxFLmvZzd927Lq5eI8AJ2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1856
Content-Type: text/plain

Make the volatiles file name starts with digital.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-scanners/clamav/clamav_0.101.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
index 47fbae4..7dad263 100644
--- a/recipes-scanners/clamav/clamav_0.101.5.bb
+++ b/recipes-scanners/clamav/clamav_0.101.5.bb
@@ -86,7 +86,7 @@ do_install_append_class-target () {
 
     install -m 644 ${WORKDIR}/clamd.conf ${D}/${sysconfdir}
     install -m 644 ${WORKDIR}/freshclam.conf ${D}/${sysconfdir}
-    install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
+    install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/03_clamav
     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
     rm ${D}/${libdir}/libclamav.so
     if [ "${INSTALL_CLAMAV_CVD}" = "1" ]; then
-- 
2.17.1

