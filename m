Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.78])
 by mx.groups.io with SMTP id smtpd.web10.6233.1611023708634768917
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jan 2021 18:35:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=iv2MHb3V;
 spf=pass (domain: windriver.com, ip: 40.107.94.78, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WASdIVi8EeqtpAhZtcqMviNteQCohF3pXwNrpLzxK3d8vhw9ogtR/im5qcFYcWSfObloDcgbjuJ3VB4dAf6aqSVCLtrKTcMnnrYIkDakJDmUQjmMFdofoqBtZ5rqd2dDzjkfmSENyaCBK7BKFuXgHL/ZR2HovHS3MNx5aIOZ2V1Q5OA/OF3/X1LRZ7vFHdkt/Qpro8kJKS+YuExrzAj7dCJ07H+T0yinSwFqYaPQeP09cCRz2/Hok9xzhVrYjR0DA9osX21jP6A16kIFVpu6+V/IUODM6qY8U6utJrs4VRDI4+UerBh1HrkHUVduxos1TqaHlqQQbCZOaTWt97LgcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QYE278g9cQzXPpc7CMPOqYumEYBqhViMtaITuDqu5X0=;
 b=B7adxyU2d+x0qUCFLCIyL778VQeUv+n1LLAv9ohg430pVM7JL4F5lbS1O+G9kQg9hg/7Rtq2xk0i8/nQl4NTh9TZ2rlV6zlXq5Zs3MXqNc2X8uE9GSqL1ahxCiFPQuqvjefUyha645XLzgAGehZbPEQUb7eiAW3O8fqwNJYHzzId/dRHUvvt3HW7aQNQnvQctnkcXeQb7Z/XvVyXcadupt3IRGXp92IiB/yQ9P8IoUVmA3XliZmGZ81I/QhtnFC1RrM0AKDs94e2oMbifrUTDQGEOkB4Z7PKJB44Pp+tkA4pcE0CaANVTQeA4XhPeztpYc+S362oRvY35uXfprTcdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QYE278g9cQzXPpc7CMPOqYumEYBqhViMtaITuDqu5X0=;
 b=iv2MHb3VBBkW4ff7iLLNCg6pRPvuHW1+P0XS24UKPJfH3HZCjVMRCTCObNnmNjB+/7tl1U0UFtRHmK9UTyzWGL06Z52v508Lm2V/kjzhOzyimuBPMPueHs+oyy5qLkVuAtzV8MNI6bEw87kv3keSknhRNmeS9H3zMx6hazAUi84=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1581.namprd11.prod.outlook.com (2603:10b6:301:d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9; Tue, 19 Jan
 2021 02:35:07 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3763.014; Tue, 19 Jan 2021
 02:35:07 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] ibmswtpm2: disable camellia algorithm
Date: Tue, 19 Jan 2021 10:34:27 +0800
Message-Id: <20210119023427.27953-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0159.apcprd02.prod.outlook.com
 (2603:1096:201:1f::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpg-core2.corp.ad.wrs.com (60.247.85.82) by HK2PR02CA0159.apcprd02.prod.outlook.com (2603:1096:201:1f::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10 via Frontend Transport; Tue, 19 Jan 2021 02:35:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a4fb75bf-8b3d-49f2-77ab-08d8bc22d5ab
X-MS-TrafficTypeDiagnostic: MWHPR11MB1581:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1581A536A7A7E7B119197FFAF9A30@MWHPR11MB1581.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	CTZ+W/aZOsvMg5CmOU264BoLpkwcUT4fg1pL7u4u1Ne0Ex5uIDDQtFPGOg8JF/OP8S1ZQ5H6XljThUTvxUuneOkT5oxlsc84HWgF5xdyUNbW8tWfYd/+Xxvg63+c5LFwFt+KpXNPcXCEnwJjKzDNCuGJgOfBMEIflnqL40pNvBTpMo1bAACCM03vkOxJ9ujepyNP1aWGRQfku9zcZVHoOK+iTReVhz97DiPgE5svRFxt+Ixd5q8MzanTykKBnhIsp5MNPZevgmQu8Skr1DqE8uLKdeICeBjO2BAeOjvwhopUiGkjMj4yFArMOPTuqE56gUgbV8TxmSTj+1qdfp0GkYPhrKw+o3pNzyQYuprIJ1XSE/N8sOxTPvbXv51k2MHGXoT3cdP03qZ8wC41xCCJZQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(136003)(376002)(39850400004)(396003)(4744005)(83380400001)(5660300002)(6486002)(6512007)(36756003)(2906002)(44832011)(2616005)(66556008)(66476007)(956004)(6916009)(8936002)(66946007)(52116002)(316002)(86362001)(16526019)(186003)(478600001)(6666004)(26005)(8676002)(6506007)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?I12uXEzQHHojx9ZV7VF7DOdCWu5tw3B8N+BAVvxFGiqdbrsr3G/Yn0GoZ4f8?=
 =?us-ascii?Q?nT4Txf1p/rnaZCawprVTqDE2oiA/Ros6tmt5vUmmGcmFUHjmflg0/Fc/rTbR?=
 =?us-ascii?Q?mVpR36BHD5cxgOUWyYDWHNbJQ2G7t7t8rpBoLQhomp6oZNIn2+02QzpH8aeG?=
 =?us-ascii?Q?ftZWc0gvf39l71DkecDWm1A9GvL4uvAnPA/QXlA1HzYS052GKx+byCCMj7pW?=
 =?us-ascii?Q?9gE9qNxa7X/PU2dCAuMMdATv/aiNGte5L1f1y8z+LZEveUGd700TiD5Vuqcy?=
 =?us-ascii?Q?n2aD3y1YpCakBrmhc19xzJb4jlgZw4z69FWJYJYCt+8TPcJx0QpkyPgs4cGL?=
 =?us-ascii?Q?aATevnf8RcdqMbH1k9KbjaGUbI9OAsJ7Dh3sdsEa50CBp+XEoMQk4lQ2SlLz?=
 =?us-ascii?Q?3WC6opnqbxU8vAdR8QtsXSJpXqrIxQMqVq103/vSljZvDUodDukewNpOT1zm?=
 =?us-ascii?Q?SXafBbUk5ghAGyrRNuYxVI/FnWR3vaxxuRAYNDy9TlqosZ+OJblK5lRsfaTa?=
 =?us-ascii?Q?gc1i5hmMJUHL1rdNz5mV432V+AjMnFEnFoOMoEiTC7arWVbIfzN/E+uZ5NSO?=
 =?us-ascii?Q?iCOwg/lAX/z8SnQ5U1Q8/v/A3EkOpozPFlVCORGH2Ss1+ZIz3gTdxT6trTEX?=
 =?us-ascii?Q?m7tqJfsNIfsVECQElOxBXP/3IUzqttGeBKcZW3Es7Ld6t75hEoB26KuGWruB?=
 =?us-ascii?Q?V4SyvVaKQzVdtODq2d+mwRm80j8KvD7X68T4d+xJTFIBlY/JZwWeWAWloi3P?=
 =?us-ascii?Q?PTU6NOGjVuFKP2nI7j5HO3kH1juCD0V7U328bPP6U8+/yT21C/d7Jlx52NpR?=
 =?us-ascii?Q?uHRsNavhHGKnBT0g3DeuG4u57D1ChEZN2pwSAg4wFXxuXlqLBb34xbqvslk9?=
 =?us-ascii?Q?zFxbi2LGCh5FKaJESY0lULKc3oRyPiLv+FCCyAC7rKXlKaORcX5ku1jCl20S?=
 =?us-ascii?Q?DJApDANEcTsfctAG1241w9AFvPOuYGQzhGyqpz+aU/u0hY4W4QC5UFLqwePc?=
 =?us-ascii?Q?JwjT?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4fb75bf-8b3d-49f2-77ab-08d8bc22d5ab
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2021 02:35:07.5317
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M2p8NZiGNfmd1P+7WgktbNjs8vaEITrKo9nF2WbBA1xtVPMoGBas6YMBzdwzfwRlesTPzbMI10HyEd1rcFg2lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1581
Content-Type: text/plain

The openssl in oe-core has disabled several deprecated algorithms
including camellia. Disable this algorithm to fix the build error.

Fixes:
TpmToOsslSym.h:185:42: error: unknown type name 'CAMELLIA_KEY'
  185 | #define tpmKeyScheduleCAMELLIA           CAMELLIA_KEY
      |                                          ^~~~~~~~~~~~

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
index 32afd37..301980d 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
@@ -27,7 +27,7 @@ SRC_URI[sha512sum] = "007aa415cccf19a2bcf789c426727dc4032dcb04cc9d11eedc231d2add
 
 S = "${WORKDIR}/src"
 
-CFLAGS += "-Wno-error=maybe-uninitialized"
+CFLAGS += "-Wno-error=maybe-uninitialized -DALG_CAMELLIA=ALG_NO"
 
 do_compile () {
    make CC='${CC}'
-- 
2.25.1

