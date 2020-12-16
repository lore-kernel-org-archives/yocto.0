Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7074.1608124159529358811
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ij9hHmye;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2078.outbound.protection.outlook.com [40.107.93.78])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5D47C38C0879
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XST+J0myvj170bQlgOYAS2BEHh0FJqC9RI1eORb+BtBWFxFOas13lXyDloX+Yoi6xv6iHL1bzv5Y2lZ8pgEu/nzRd5M7HG1MeG9s/PscRXBtISMN7/gUoO/HOfyEIbNrf82h/eQsynw0wsMDMCXIRct11ikGUivYlLIavrkQYSKzvj00XDYZBZgPWV7Yihmr+XzaSjw+K/RyflpkM+0hhl5QWQUIOu1LBdfuHShEB5bWoFk0OIS5UKxDofsQIuWhV/TH4xS0SliC7yzkUoAo9vMOKz9VZqp5s6yBfz8oy1kM8u3f8rXjhVmkv+28sulqMdhR5LVVjQdHoZIXul69Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6N5FW8Qn41ljIlFDftMj+hwv8gU9I4Zs1Fpz40jRx3I=;
 b=Vjn0F8XIk3E07TiExCovLjcgTbBqiGx3U/em5SZ/TrK5VWf/s95qXwwcfLNqCmUByuNIXwGENLxcSfsN/bmwGmmO/S8BIqwt4UCX8AIeCqJ3UhvQljrU/2CJddy0JvVSvwqnO2vguN3LbBMKV9SJa4xxbWjNHZ4hIBCE1Awlx8BlTpatAFovtY8ILIdf7u5ty6Nbk6gCcZgvCeOrqR1WRSvZ+bgoSONYjDD1oPK9v6II0NZVFfzbgUSU7ktXVASazqm+TKUmziDyEXZ7zCTTZpGakQXxA97hW3KSnjLC8ww6XRiBVOwVeEJIi3y3gtuaC8ESvOabM6EJR2etGiBDbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6N5FW8Qn41ljIlFDftMj+hwv8gU9I4Zs1Fpz40jRx3I=;
 b=ij9hHmyeKgiKWgAR8RVdKpbt7FJQU3YTL9qZAztXeLTE6+dBt69IivSEVo/4NnkUt6SIviy2gv8jmWxHR6c50YyCSDOITH90FliQCwTKxyeB3mj5Sx6C7U7ps0OqiZ0AkowRFaWfPJl0SpOzo32v2J/JNt+zp/HtxsRQcDLPkTQ=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:18 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:18 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 15/25] python3-google-auth-oauthlib: add version 0.4.2
Date: Wed, 16 Dec 2020 21:08:12 +0800
Message-Id: <20201216130822.28476-16-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6d891c6b-90f7-411d-a09c-08d8a1c3cbe5
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45775C8ED967F3F5ADD8F3AE94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1388;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MhcEBicAFvAXhKnSpOiyNcssAwKer1GVYzm7rZoCVwh/KjLCgZ6fhC0PYvEzBrw7TVO+src9mDv9AGB3k+uWWF9b/v3CaDz04XPl5UjTBa2TfyOQcKJhJM8IlVwAeG7SB9cJ2n4YXqXXd4w9zvPKAjZE0c+F6i4EC11f27yq2lwk9p8Rst0PKpuaCbEMohlbmJ8UCGg8vzCFE0YwFJROw7kFhuGyTqwUtee7+eU3tauuKFVwo3JtMo5rVoFZg8aOoyTgolk6BJg6JLh4+7i1IrI4Rx73Ahd5k3fnrIzm53z2G+yqaXRYOal5cv3XGhLx50Rm74NMxsEgOI49JFN16iyLhqsZipsOY4ceWNWxU06sr8OkBwz1T+q2A2vfEMTSZbDTcnm/UGcCns6K0VfIXg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?jBzi8mLBl5HV+BfcmDTI+8Dh9Zh/gF8h7vMv55t1kXPGFfjDp1hiMyaz0EEx?=
 =?us-ascii?Q?RQfkmAALPUZUtS6YPTdyYIn55gqVf8DJXsxx8qFfpgoZGBJ7LXZ+QLw81VrD?=
 =?us-ascii?Q?wJrdKpJdmo+qARsAN7ZQScciV8vaw1XZ7RI4il5RKKMt4RV0NcNtxHt7nttf?=
 =?us-ascii?Q?+X83MSNWfc2mtCh+VZ0CvQYdxhSLtvFVU/lB3Qb/gJWjZ1CfJlSpuENzhqH6?=
 =?us-ascii?Q?hZzd+YAShQBjXzaNLdmAk1uZ8QmBR/iIREw+beDWc0KEYrqHfPUiIIfY8BVd?=
 =?us-ascii?Q?0NS+yJv80eHqB44p5Ba73OzvYCi5B9HWv5gV8mAdf6fNuHMDXc3S65ZtRqmx?=
 =?us-ascii?Q?azhyezBJlxhvr64VDSPm9IWe2clLFZnxSHADzqH9QVSXxvLtSAUxi0pV9GUM?=
 =?us-ascii?Q?13HNyb7aN2Kt4BHFvYaEdt8KHN6XT5rHV4pc/r+KQK/XIe3K9DLHeIpyJO9l?=
 =?us-ascii?Q?oPAgOsgEQytP/MmVR5b2HJhWpqsSt3aYfYGnzvO2edZGTzYCWzRIPw2QwiiJ?=
 =?us-ascii?Q?kr3LUt1Kavdgl5I1mPt1ksCtQ9hpffnXrBTR5bKwQ+brLr2zwBj7K39YwRmZ?=
 =?us-ascii?Q?rsYyJ3otnH11ekLddkpP7jqaZQStx5WseOp4ExjdA7/tztdtQCj4YkHdITo4?=
 =?us-ascii?Q?53JNcbKNeQII6hUWD/TfIdad+UgKfY2hWlMDGyJ9Ka6OQF/0/Zk1gxculLa6?=
 =?us-ascii?Q?YjFdi0VbVi+t1q4cBiU7sHuCpC/cFDRdqiTcZTMxfTM1J5PKf6vpo/BKfs3a?=
 =?us-ascii?Q?iF+TH8Z99wBScCGMhs4LTe+cnWccdt/kYcRSnYvyPi5ziAsgrnrGb2jtAOUP?=
 =?us-ascii?Q?zC1SGtPUeyYp2FI0jmtedHy9lfh2kO6Ffe4oIqLwZdXntzkyULTFjCoYupLV?=
 =?us-ascii?Q?0PFmr3GeUjYbpKThc3VobOq2hsHQJ6ZK2fcaqNUTRm3qiZyPtOFL58UkgVE2?=
 =?us-ascii?Q?3PRzrp8r4I15RwqcI2Jtp86AivpU+HxigOHdKdT2B/Oet3tqZkL4799Me3Wq?=
 =?us-ascii?Q?MoHd?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:18.4143
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d891c6b-90f7-411d-a09c-08d8a1c3cbe5
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tNYpKodsywzJc9UfodyWjPR8pI4+qD0RVnFY0t2ozMf6Yhw7+ofQekt5bc1Hnok+8eMrabkwNNApaFMDR4FZORoh/LAklfECz6sB0b9RqB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

It is required by tensorboard

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../python3-google-auth-oauthlib_0.4.2.bb     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 recipes-devtools/python/python3-google-auth-oauthlib_0.4.2.bb

diff --git a/recipes-devtools/python/python3-google-auth-oauthlib_0.4.2.bb b/recipes-devtools/python/python3-google-auth-oauthlib_0.4.2.bb
new file mode 100644
index 0000000..09e3900
--- /dev/null
+++ b/recipes-devtools/python/python3-google-auth-oauthlib_0.4.2.bb
@@ -0,0 +1,20 @@
+SUMMARY = "The oauthlib integration for Google Auth"
+HOMEPAGE = "https://github.com/googleapis/google-auth-library-python-oauthlib"
+DESCRIPTION = "This library provides oauthlib integration with google-auth."
+SECTION = "devel/python"
+
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=7b7e367c7e1664e6565ee7d16cccc58a"
+
+inherit pypi
+
+SRC_URI[md5sum] = "5d3cb6250dd05fff0b7bc0912a3e8f0a"
+SRC_URI[sha256sum] = "65b65bc39ad8cab15039b35e5898455d3d66296d0584d96fe0e79d67d04c51d9"
+
+BBCLASSEXTEND = "native"
+
+RDEPENDS_${PN} += " \
+    python3-requests-oauthlib \
+    python3-oauthlib \
+"
+inherit setuptools3
-- 
2.21.0

