Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E1BC433EF
	for <webhook@archiver.kernel.org>; Mon, 28 Mar 2022 02:25:40 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.6447.1648434337212117058
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Mar 2022 19:25:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=akRRaP78;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=0086464a82=qi.chen@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22S2PZsh004104
	for <yocto@lists.yoctoproject.org>; Mon, 28 Mar 2022 02:25:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=APlgxpMxZzNDMzDsCZC3wn/SWvapN6B8reobYoG6qiE=;
 b=akRRaP78baUeJZZrchmnFZn/5W9LzFlJHqQ5QOYr0bxch81lFVW6U3NVMrBjuUe8nJAW
 xR+RCSr9nP8uV29j3ISz3OirP7HFz39J6/sfkm8Osl2ltuM6VXDg6K4RADA4h78kzcng
 Zt6x7L+US4xrNAqZungyaDLmprBu1el5fwBvcXPHDpeMv74vQZXTZ0Kn4JF3g76Ba1Tj
 sEl2cr3JDpQ13hh/9DYllJ/7KaaLO2kxHbju/9YOSXreQ/zdDlMAyRQpOIiw57Z9Uxfg
 I4c26TK45riKqCIzd1ig/zeAjAO2bu/Ngiv0wFEy5CkwONxd8IYQfKpO2Wnud+XQfh7T RQ==
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam08lp2168.outbound.protection.outlook.com [104.47.73.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3f1st81577-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 28 Mar 2022 02:25:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SOKEzg/ndwSwz5WHgWx8P5SnS3FBpIgEHAdFKDIHrKiLbZOlTEi2gvqiJXImDC6HDfWTjkVnGFYXtHQIKBDTti5qbmdyk6T4YLSNlonXC6x2sdYN2c4AUMW0hdxZWV1PyhdgdwZw3qS5cX35B/AAEv91lG2DIqhq+LoGpB2Uddi8tPfatX1E7T3iUitjrjvQLiqdZgAnHAMg68y/XX89c1MNgUt2OIQBUD9wha0fmzAzvcRGGUU0jLIG7KunlYxJGnLljlnuTvw/ZjzmMpIf6oxonG+9yUKNTUSsxp8ivGCCCV3j3cCvRHmtom3ZVfKBjihZ6usnnQB9CvhBcSngyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=APlgxpMxZzNDMzDsCZC3wn/SWvapN6B8reobYoG6qiE=;
 b=lcQnjkm9ZAOdww8/IAEaWd+B8BsrWqmCnHsQh+KG1FBiFmVxAiG44G5FeeOY9ina23zd94Mrv4efLsvflkqHIpostqaZBuDfiX+ZC3sEOydTVPvqUOjQXpWVA8by3jpuEDSacxXscjuJ7MAXqdVVK1MKAE84haletwu4UvBIRu9vP45OMTaEYEKG4KzWzzML+cIbbolvVOYEb2wmOUoNv9J3x9y2KsI70XUCHFUWaih7GErfIKyNgk/cwuphAKSy2p95TwspXQE4311sCamaqKN21OE6Zp2hhnrM74/+JZHMBOJn/VHVudpHbQw4ElBgbQNrZUj9MMI1Lny6jEEWzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by MN2PR11MB4413.namprd11.prod.outlook.com (2603:10b6:208:191::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Mon, 28 Mar
 2022 02:25:32 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::f0d0:2344:b876:db97]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::f0d0:2344:b876:db97%7]) with mapi id 15.20.5102.022; Mon, 28 Mar 2022
 02:25:32 +0000
From: Chen Qi <Qi.Chen@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][meta-security][PATCH] openscap-daemon: inherit
 python_setuptools_build_meta
Date: Sun, 27 Mar 2022 19:25:20 -0700
Message-Id: <20220328022520.52018-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.33.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0018.namprd08.prod.outlook.com
 (2603:10b6:a03:100::31) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea693abc-7ed7-43d1-5f38-08da10623bca
X-MS-TrafficTypeDiagnostic: MN2PR11MB4413:EE_
X-Microsoft-Antispam-PRVS: 
	<MN2PR11MB4413F618584C0B20A1B87151ED1D9@MN2PR11MB4413.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hNieP8RCztG4T1GdbBtSirYYNZF6w0CCi5uVwJSPyThLZ/lbkLHOIH4Mlxh2MjQqC1tjEU4iSiSR2TwgPcxQSKGku0jwDgztSaAgJPmdyI5+mEJPSqsI3POevhrE+URtNQmHA+r6XXmzbrl7HVDqy+Xk6kO6Xg8Rb9vTR3yg1x2KmOhmpdITvkdUEgaV+rHlTNTDt0FHoNmXKb3jJUQXtkpPQejLdphk8nRrqqPcnOOaLs/bKpxuuINaKeJd49yBjD5FhxforST1/Trg2QkjrAV16Jns/F1ae33lIMnUyYg1DgNRz/DhFg9Pa51DIASaCWiMwxjJRMZaeALERXax00ipzNhpqMItY+2V92Ox/9Xu30ndxgNY0g8+ekcKSHOwqwPM5j4I6cPvHhbm4b883OyDJlLld8WmMe7f56AggQ79u9ZL/X9jiJ5KqV7bKcZN8vG941g+JZn0oBT7UpSFYNfKVR1jKeEzJjLxA+K21Pkrz96m9wDp5OInvo4vhlFhrixZwjz/mAoW7AFkjpP9sMPbCc3tNbRFoxdKQPPadBff48LTPdGGxCzG4fSWVvUOkWADiNM/ZCUEoOYpKpjiPy30wEL6f+ulGm/4tztgUyglf9p70h5hxM/Yb571RK2YDqb3QUQXlSmVRffyg21TTUKXaJSCMszPUKPbUscVJVaNj7P2ODwhX7p5Bm8c3rIBZDpKPxj1Z9UeQEr/qTEYuA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2906002)(186003)(6512007)(2616005)(52116002)(26005)(1076003)(66556008)(6506007)(66476007)(38100700002)(86362001)(66946007)(38350700002)(508600001)(316002)(6916009)(36756003)(5660300002)(6666004)(6486002)(8936002)(15650500001)(83380400001)(8676002)(4744005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?/rntV6wMqHXMv75BuCUqDN0OpJwc67v9zvFwgmpcBy+AOlEsWtJtiOf2UN1y?=
 =?us-ascii?Q?oto4QBg3V03GKvz3tNFcj2m4CUUJEIKLCY09swHfTkeWZ9o8qsL9mU65cSvf?=
 =?us-ascii?Q?RmQp1CeKrO9LLAOLQiKYE/MamzDwUqMRY3eJsylbFyZThJiBXvTfXrXgT8Ze?=
 =?us-ascii?Q?HLU37uL1z7AB8fzNz3EBjR2rFd2dGjEpbkIED9z+ZVjCvEA+Qa3+JAqBn8z3?=
 =?us-ascii?Q?EtfyLB6FXQbQRg3pieC5wM4wl30MzJjzYhzejFkot5foE5VxE/c2JJxnHE7E?=
 =?us-ascii?Q?ma4KGf5/bp1WXN9V/yAzhi3OZwK/FDe1mOp1pmrMofrDxOvExt12Pz8K0HL9?=
 =?us-ascii?Q?ZFD/3eqKpBamN4ATkI1HTzMS2pX4klRBAo/g/4TSnAzski+2K42ces/MZIDO?=
 =?us-ascii?Q?ocycFkVOTr53pRFga+Pc6QkyR9XCr7YkQ5ejvWIBEikHatiXCKAMO6P2cy3t?=
 =?us-ascii?Q?7UAjwpCg2xzDnAF62XC5YKIshOYTJ8PdJXaymtFAUEGVBEYctccRcRLRTb8Y?=
 =?us-ascii?Q?FxaOmwvy5KrE9W4Nmhe/x+ZVImRWZFrspFhbYSIcEeoyYGo7n6qz7HIPanAf?=
 =?us-ascii?Q?ad/uKIYgU7IB4lteidJYfx+390vkErTWoCWURLrahZfQO2HEL3+js096Cd9W?=
 =?us-ascii?Q?GYYQdtsSGImK4EBoD+crLRnPrJ5fO9/AlbV4CmfJl+blAxd7DHR+VkojdwBY?=
 =?us-ascii?Q?jnZFeJoJH2cjeDzjKpnDe+Y5Nr2ZGeUQU33A5OMcv7kw2jkCPq0OoWHdKccL?=
 =?us-ascii?Q?KaWXETdwBaG+QMX73e+eFlbzXr8uFW5ySH0YBPoO6D/lYO2Ujhi72ziI7AKy?=
 =?us-ascii?Q?E5UN8SiIxgAdCIDwJqxhtrKmCYDIZ8IwcyrV/OPshOGm3QHWyJYb4NH3veeQ?=
 =?us-ascii?Q?cUx+LcSJzlfz3fGFDb/WQ4VLGb8Yn6r2PnH5ofpFnKlqAOBV3LjD1VsWF+lW?=
 =?us-ascii?Q?k/E6tlxkRxNJCcSemoN+kmarG1r40qS7K6ZrSEu5krczDEMWmvd8DX5V7uB0?=
 =?us-ascii?Q?MOl8s0+y+FyGDtWaYScFRdC2TFciSbBPQr1iVvio5rmlO0GYa2H00udGzfU7?=
 =?us-ascii?Q?TbaYGviCBeEzVL76tOIyqonTiCK25MFvZqkJ5J3NJ4uVVz2zDmZhbJL4GUbr?=
 =?us-ascii?Q?8I2bWK3PFZbRZOkFgtTx3o9oM3oqMBL2cpS+8cgtR5txyrqd1yHjzbaSrnN/?=
 =?us-ascii?Q?rqWO8Xmkr5pd8T74XySSP2q//ko1kKzVHZpJIqAw8dugkZtUfvoKQss4C/lf?=
 =?us-ascii?Q?+CXMxFjSpSLq/xezC9Gm7ci0tuzkbBBzuv5OSgxQbBvvgg6fuBwY/zkk7j4w?=
 =?us-ascii?Q?i6CQHGO0w9CgqRE0TFzGHdhXH9NrudilrTsCNha6QNUglB7nZeoDnhMrIYRw?=
 =?us-ascii?Q?nwWUaDdwEogcWRHZrCenCQqze7XRmb4HkHl3i++QfsSNnMXkjC/kfckgZRbQ?=
 =?us-ascii?Q?YXCi9uZYCu292aj51ev2k8bfINhxREHHnkt+rbsBbCUELvwadN/WYpQX9qYf?=
 =?us-ascii?Q?FRRmWMtJ4np8GtMz9VJNT8FIwM2qNuzyYFfFBbORV5B7noApDpwjM1coee2G?=
 =?us-ascii?Q?Kgq1Gtjxb5S17X0KpOQVk1WmAsVidEAB7ogzUg0WmtBHTrBPZVmDA44dILjV?=
 =?us-ascii?Q?LTKLrM11282dOKo1hCuEM2Gzs4LDtUJ85et9irg9GHpo3QqBvPe5/CXvMXyv?=
 =?us-ascii?Q?Q8mAwBcAgJIHh1nUa66U/uzM5NuO81K6TA1FHsfDYkzvvdbT1halQVz9Vx6G?=
 =?us-ascii?Q?v0TzMKIKQt/igcGOEBCbUKee5C8TJEw=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ea693abc-7ed7-43d1-5f38-08da10623bca
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2022 02:25:32.4335
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 VZoG4VXbFalMLYG2E1jy1TXtdyGkddrjz6iWFb3fmvAjHjLepb6iguBHQDelT/+v5tVr1AcyoGyX+VS1rFLy6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4413
X-Proofpoint-GUID: 3II2PnILhrDwUgm4e7o9Cevl2WvQkQzD
X-Proofpoint-ORIG-GUID: 3II2PnILhrDwUgm4e7o9Cevl2WvQkQzD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-27_09,2022-03-24_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 impostorscore=0 adultscore=0 mlxlogscore=721 suspectscore=0 spamscore=0
 clxscore=1011 mlxscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203280011
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Mar 2022 02:25:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56563

setuptools_build_meta has been renamed to python_setuptools_build_meta.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .../recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
index cf6d531..9659323 100644
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
@@ -13,7 +13,7 @@ SRC_URI = "git://github.com/OpenSCAP/openscap-daemon.git;branch=master;protocol=
            file://0001-Renamed-module-and-variables-to-get-rid-of-async.patch \
           "
 
-inherit setuptools_build_meta
+inherit python_setuptools_build_meta
 
 S = "${WORKDIR}/git"
 
-- 
2.33.0


