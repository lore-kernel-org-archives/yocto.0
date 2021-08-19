Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.65781.1629348447374693466
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=OzKFTk5k;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4isul005254;
	Wed, 18 Aug 2021 21:47:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=fdCE4UcoxuvmfB1V7oFLsd1rWgzA3LF/V9TF3anmbS8=;
 b=OzKFTk5kpmwnbfchKsno8nZuja+OgCJI9DUMi2gvI3KW3QU1dUbXVF3aBdWLer8OzuGH
 rpv3BtRueKk8BkPzP5xG6kn17YJqdAWT5qneiPkWyU/3ZAyA35xwXjS7m/NmIw8PXVSK
 DeEa5Wvvt1XWrcpUSVExEmnJHQA124O7ZPqOoYyqi64OatZmGbt+ZfGR80dDyCbSYVrc
 IQZ2kFT0KEZFXP6lPK+hBI6Svkt43qoHkVF3LdadjOf1szvNLk4iZ0bqFRXffNA9QDyu
 KZ1PL4y7532vFLif9rWFU2rQf34W60FIqvkhN3CbxLON7i/2IBWMbYDww5d/Eg9yJUOs LA== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2049.outbound.protection.outlook.com [104.47.74.49])
	by mx0a-0064b401.pphosted.com with ESMTP id 3agsx8gwss-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Aug 2021 21:47:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h/3PhpIN/PNfIGKnz58o18Bb9CnHNu9md3vdrh8VMa0t9aUrODbPWCCdZocid2MdYd+eBCoRRYRUItHrMOxrfYAyFSibkBH2jouRnBRG8Bha6mdzwyyiTiZInhYKBKj3eEsYMgIutuFwmTPQ65IZPiSNRgaQ1HOc103AK8u4sG0bnTwtYnnePaKdyxsgvH7fWTk1MyAq1TFPhoBcxQ3ZcnlQJH2VrOB/W0+8STN5TJMT5MQLpaQUYhJkdpZ0ZRVe4OcWrL8KUD2fdaU1tJh5s8V9iwzvhqmkdy113Eu8ASyUx7A35w5CL6xMuWUPhhynqkxsPlW9PIGAd0wMYB7ROQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fdCE4UcoxuvmfB1V7oFLsd1rWgzA3LF/V9TF3anmbS8=;
 b=MUWtEUfXrpJK33SIMM2uLtkbi+DQax54TwuoVnDcGw3dPWOJhvv5+7yUeIAZjGCeAPCIqHVegYGf0hqqZaB6g8lGlsODTGLQgHFMOsKfN8t0OaSfWkT9VVvv06r+yQ+tAWFe4S/UhB8yp3POahmeAGbkFwITWChsxf1CgrtwgL6ovU4w2IsoUVE6hFTQGgjjpvWH/9/MtkaGX4cdZBEzwn4v6L6V4CrfERU2yrzB38x9JEAEAs/TSaU8Mi1wtdMnNw0M5/GqCqgwnVglSEUc5KUGm/N4E5tN6ucFbprSVd4pY13E8qE8ndcxCJFaefLWmDJuWer238bt+ViV6RPouw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.22; Thu, 19 Aug
 2021 04:47:24 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:24 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 04/12] augeas: drop bbappend
Date: Thu, 19 Aug 2021 12:47:00 +0800
Message-Id: <20210819044708.105282-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b907045d-5b83-41ce-3603-08d962cc7039
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB48677BF03CF8017901A0A283F9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1107;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	i93786Vw8+r/e68G6uWt9pSKUyxDtU0jVxe6i9yOo3+o/KakrCb49oLdN96TO4zz/XFAR1qqJl+QXFhHy1I49t1WPJ7gv8dAoiEOVJ1m+yiGbotGFrAKdvIyz3WXE+bn2iNZRBpajINbC15StD7PILH8nxWQxLEdI1Byb26na8Pa9F8DDYDhI1Hf6PL94KjyTQHgt3ruB+EqFTTIekHq4YDT1Bl5bQJcxACE3PHuGITO/cbBAGxqywTtTRXQVphQuIZybueESaYRbc3RfNUp+LqrXClpFiTq2p8PiySCKv+NqQZykaZULhSlFTETfj6TelthpV5qW0phF2EefUEkCLPYt8xKoGYcOEKRcXG693TdFYHSbldVKy7ns9bjdjZAMvrY3I6aymShysKtSCm0ebNB8d8uRpDxw0YfBYro33cbkLJxl3w4d4C8memAlPjnux1a48qoCBGhXQ2MiQwjDt2n21pi0zmnF0negpjkJzqE525H7bnTdQUAxjaCvaRsINkxaEHRkoLEK7B8CX+sPrOKkdOzBc9YtccOekXW0tGgtz76oghj1j2vBIrfqrMKRCMAWA8r/m/UMZ5w6j4aB+D4dgp/SHZCtWof2BTxkAa8r5KlsqR8Eqk4L8U6wE1XVqaOosGoW085zhvjRgl8QySY1Egz+4ukpK0sPJiVuIqYIp64BkUUB0uYm7Bqmo3vyIzBuaRcFRydgTzvBXeIBg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?498lGYIpTWEPn/lxfRtVxYALYeVw/h+D3WsFW/V5GM4cj3HlYyDRfvIBtleO?=
 =?us-ascii?Q?ddq94yhqhEnv1EJ0+YIx7OCe4yGU5aCGDpAueZCrW5ZQIx+gqHDgYVcxSPaw?=
 =?us-ascii?Q?LsVqCRThGz3Myf4x7sU1hFH+dY791BMCzeR0+hi8LVKDLxPG96poTRlrlCwY?=
 =?us-ascii?Q?ALGIjUSQ5g4c8zr7HY3N26sNZ0dUo8iUChaSfsESkn5t8XQM3IL5moBP8xhh?=
 =?us-ascii?Q?x5SjNb6XYyfF9xaweYnAZ1hjBnVIvUWcmfls6FspNG5Mpi6wxf7zw/OJU6k+?=
 =?us-ascii?Q?cdLQW1sFr05pbrK3kqUE87WtR5iofAZGNZjRQRkpy8iOr3KIqfLv/QY1SUeE?=
 =?us-ascii?Q?evz3CHSMjEFakGwyuU50nY6M801ltgHe1221BkCoUFWZ3318GG6xByQGTcAz?=
 =?us-ascii?Q?MSdQtHqlmfkImHAej9RJ3jMMQW9v5wowj413g7vYXb0pzA/OsyIQu+wc4OtO?=
 =?us-ascii?Q?79yB+NhaB5EUgIIXfguB03Wf6mnLCepuq/F3ygZv7a480BGINnGH5wctLIh1?=
 =?us-ascii?Q?7RCdvmpK4j/niR8lgkhTy727iEgL4ITTFPMjXmQRuex4WmMk48hcdaOiuBMF?=
 =?us-ascii?Q?cQDJX7gQoeTYmrThRt6rkYe7FFOgTy4ertkVux/bdt/VNecrEc2nNrfveMf8?=
 =?us-ascii?Q?SNipPGJZM4/sHqltbudVAIXkJQuVnlY5DQlAYhzelulxJ5WnkuxuEq/1RzzA?=
 =?us-ascii?Q?ZnQ/jqmmvb4lJZayGiZnKjv50AFXqyVHGGKwzRYJrRdsTQ3v0dRX/Rbd7ycT?=
 =?us-ascii?Q?LUiDC/34Vn+aoO1gvEfi+zMykDNA7s+kz/AJNTKEaWzy6aRn56uineGbUaeV?=
 =?us-ascii?Q?rWkw47bZkLT0PrJ9BLh/kbflRy/pr6v+hoGTOEBEzsLEedA4S0gfF1iRtX/7?=
 =?us-ascii?Q?pjFFkhr+j4jYFQFqMV9QpcTOpkl1+hu9cUTfNinuQrq0JkSpXpBafA/YCuWc?=
 =?us-ascii?Q?xHOadDEST5TrWpN8Tf5UozaGg+5LDphdgBriwdECVqPFzvR/rOvt5gDXmvOo?=
 =?us-ascii?Q?3tUKuk8qGV2Ml6S4N+LSNtyUAKDnI7vMZDjAnALq2Zj9Uql4MbPgoeuHV5GL?=
 =?us-ascii?Q?EchDvZM02Ee9OhJO3YZXWetYLnhRhEbexLbe/QVxXZAwGdx9cOibjeoMHXVn?=
 =?us-ascii?Q?R0VCAhwy0biqv8YlwPk6hkiyQoqR/YcWTt/iJRVYVdDjq++Y9Xm1ffjgIPDO?=
 =?us-ascii?Q?bDkKiIhx/nug1eHUby7Ha8yZq3lJCYP/+qkAw+2tKzYEzOn9z0lolkLShAlU?=
 =?us-ascii?Q?DkD2w+03F+5gESNZ/xPrxZMsK+IrY/QxKqjqvtOni1GG1RSgcugcZ3aB6Cr7?=
 =?us-ascii?Q?s+8AOQv6AF+NfUKyWmseOR86?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b907045d-5b83-41ce-3603-08d962cc7039
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:24.6846
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TZJyTfBjtvzDMdu5EwW7OHV3B2R4LWwTET7gPM3LTjn/mzMHsCC7OAahGiGOjZNuom7Nap0tMzP4yrenH0BLrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-ORIG-GUID: blzANo1pftpKrQAJEux1IG9avtsNq2pH
X-Proofpoint-GUID: blzANo1pftpKrQAJEux1IG9avtsNq2pH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=855
 impostorscore=0 mlxscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2107140000 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The PACKAGECONFIG[selinux] is enabled in augeas recipe.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf                                               | 4 +---
 .../recipes-support/augeas/augeas_%.bbappend                  | 1 -
 2 files changed, 1 insertion(+), 4 deletions(-)
 delete mode 100644 dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bbappend

diff --git a/conf/layer.conf b/conf/layer.conf
index 673cc13..ebc8e33 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -5,9 +5,7 @@ BBPATH .= ":${LAYERDIR}"
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
-BBFILES_DYNAMIC += "openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.bb \
-                    openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.bbappend \
-                    networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bb \
+BBFILES_DYNAMIC += "networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bb \
                     networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bbappend \
                     virtualization-layer:${LAYERDIR}/dynamic-layers/virtualization-layer/recipes*/*/*.bb \
                     virtualization-layer:${LAYERDIR}/dynamic-layers/virtualization-layer/recipes*/*/*.bbappend \
diff --git a/dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bbappend b/dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bbappend
deleted file mode 100644
index b01ad25..0000000
--- a/dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
-- 
2.25.1

