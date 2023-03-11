Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46E8BC61DA4
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.44266.1678540411900105996
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:32 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=CDUEamHd;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BD3C1H012457;
	Sat, 11 Mar 2023 05:13:30 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=HmZO51ENXNFpayaohMVFelead2egJ8NAKUzklOWo/+Y=;
 b=CDUEamHddDLY164tLN10zJ8WrmMJnD52o7wQkCmTn3X3FUZVDOKxl/38XVL5Xr7ddpsX
 FCORiip9MUkHZSkLtjL/ieli8KSfVAsNtQmI64U9oF1gVIqJHf20dfduAxW4w2rK4Y4I
 rOb5dLZ+E4dagz5TF/JQT0y9q2wOG7GXASzawcXauCb3Wp78EOeasL6YmPBwVCvVk8ya
 kPTfpmsfyyrmlkB7pXO31U2IdVu0BuyqvE2LQ0UT/rvDiE0pGBwrXmHof7iTMYJaSING
 5OqIVm+/ArAdNJwlTVm1xWR3M/ax2IxT9EnkXLh4FrGs5lNxTIuTOLh2Ybjch54UPLhg AA== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2106.outbound.protection.outlook.com [104.47.58.106])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8nt8r554-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bsK0DPsBblebEc2w63RaYZzvQJE0e3NBuBJARhGfiA/SJ9XAkCS2r5NQPCg3O9DRzJXk+t+mDWZY+54KKuSIhRAMwVQNd7JDN9hRTuKRcytsNvivvafiz9CaoMTjL/NNtXUj2IPYWpkFfCFgcwTjXAbpha19xk76rjA6YlbNoHrQ7nsfH8Rjuth0gve4YKEtdm0FbT1+Iu73iv8cjBwCUTSxvVxsoTIdh6Y5Vxvdg26b+fBl6dhAmkokpmh7Zwbbngzc5AE1yKYfuyE2KR7bY0dDmqrDxNwL9fRSJ8k+DMVNmqX5Mddj5HrxyPfm05ew+4eDPK4CnSgV1t9Tc/lgvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HmZO51ENXNFpayaohMVFelead2egJ8NAKUzklOWo/+Y=;
 b=RahQjUhY13tgNMdRPIXOSY2zENJM2OSDQICTZKgvlytCN3GnQlJ5hzwJj+6PEqLs7/ojyCK8M4vX7IujJ71vXKTVsYAd9QYb823xzh9IZmU3e45mG3ct1Qei55sufOUqhn4lR32khc9x8xmU4nFwLBIqBZ+W9GbT69pU9XfETGTXeDmw/jqY3+n9dDIZIjOY7FofROXVy7xxm3wHpcscstG6iXDZfaUmFW4umqPYHJRHDUQp3sJ8XoYpjDYassG/LHdk8uVw/oDBZmzsw1doyEqdXbLV6HQ+dUKlead/WtCuiDsDOyBa5LwqMQMm1baYV0b+GELBV0D0C7uCzX9QTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:29 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:29 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 04/17] libsepol: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:12:55 +0800
Message-Id: <20230311131308.1337339-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=UTF-8
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 16c3f4aa-c711-454c-9a36-08db223267ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9ggNKqkvM7VNpiKWR1lxcWwxajaRlkO7GVM1uNmIDE6WjFE79wF5GK/Q++ec6MpNuUQ7mAln7d/U/qJxcW+r5bkEYmHYK/VQQhqWbJR6PTYsbjCHt81xoHrwusdoHK5UkUXtjanWEHZ2kHn8A5nNUL+xA/m6xuPlIzaRRBm1HwC55JKDjR8K7zJQIMULt7zqYSps3LDXdure+v9pk+xcddPS/WogLH1VBsySw76GagQEaxTbXi4r0WWhNjkGREuEyY17QkkMQ+BcaVOP26Z7tT0oFpGCYUqNBm5ytuhlaN+atNRj0zBW6azqpiRBz+Twq/toRvVCIrc90zCd/fKc/s2gxTJRpq7r0qRvd1p0swT/XyWHADZX16z+HIDzoGAgu5XCIPt9W1c8hJMvB91c/g51qjv/1BjB7zcA8weteu1DL1wcIGwmiObVWk6Jx38Q+cdeeCAPaDsGmcawZa4mxxs2JI1nG3I4yjgV6NnNXItsbSFHcT9a0GDbFa8kuBY/ZJtDAcKC+Tva6dQTkWUPVUMW43QE83nfBxHpJfFT3OW40O+QUWWshX5p28GOGjbKG227yEOWbcTXVNZlJ/vgQMXUhXDCu84sVaLW6gJ7G8zAQDPvqNg1s0A/T+cP/DSOQ06V8K6ps9ZFWrfe/mWKtwZu8k7xgg/DIF9dtPTyRZIbtd/8UsDVg5GsCfGMBstH
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(66574015)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SDZ0U1JpT0tvaFN6ellMZ0RGNU9Tbnllbjgzb1M1V2gyaEc2TVJwZktPdzNK?=
 =?utf-8?B?emZ4V21TcDRJU2dtcnR6Qmo2UmFadE01ZXlwOWdHY2w4M3IzcUxic0VIZmZo?=
 =?utf-8?B?UWQxWFZRUUcyQitJWCt1Qlg2NEs1TkxyQ28vVDZLTCtsVUYvd0xCa3NVbWd1?=
 =?utf-8?B?TEpIWlcvRW9xWmd5OVpSbFR6Vm5JNnN1Qm5NelRtUVRBMG9pRk1VQTlreWFM?=
 =?utf-8?B?eURxSkoxcDN1NnJjTVFhUHd0eVdmOTN3WlZKd1dCLy9JZjdveFcvYm00czZ3?=
 =?utf-8?B?aXcxYmpSSi9kTkpDdS9uOWI4MmgxZ0xxWDFZdU5GVWZXMjR6SkNDMXVtbDFI?=
 =?utf-8?B?OVo5TkhSalc5cVRrcFpBWHMyTTN5ZmxoR1hpQjU5bGFobTdXQ3VLWWd3bnZZ?=
 =?utf-8?B?SDQ5ZnRvcGpYQU1ibEtBQm9aclV2VnFDckVPQVNQVnpNM1ZVVVdZeHBXd0hI?=
 =?utf-8?B?eWUyclVSNFRNSTdUYzdNOS92dXM5OW90MGdTYkpwUEJZSTE2cmVwZ0dnWXBF?=
 =?utf-8?B?L04zbUEzeXcvaEd3U3Voay9WU2JPUWJlYWpHQTZMOExVTXYvK2luVU1KUFBN?=
 =?utf-8?B?eEhZVkhoSXZYbFBEMEFWQjA4SGR3a0w4UDUycWpNa3ExdkxRZUhDSCt6ZzZ3?=
 =?utf-8?B?Uy8wQTczRlZ5dWJDNWU4VTZOR2EyMG01MDZ6NnJDeE5XOTcwQWJTWW53Z3hF?=
 =?utf-8?B?QkFJUTNKM1VpSktITDJSN3NUWVR3TGRDWk1NZFExMDM3K3VXV3lUSkZXa2tw?=
 =?utf-8?B?VlRuWWlKaVRSM254UGNrRERhV3Q4TTVMbjJBNGJsVEZaRkYxVHA0VzdIMXk4?=
 =?utf-8?B?S3hqcytPR3pHQjVJZ2RFQStXd1hHZVpwTDVlcUdnUDFraTdwUjF3SlJNL1Ri?=
 =?utf-8?B?cUN1Z0lIV0pXU0VXazVVSm81blo2WkZJd1J4M2JlTWFPV2Z4cmdMWHVSSFJV?=
 =?utf-8?B?NHpzcGRGV2dGc0ZxcVptV3lUbm5qUHFTQjUxSktPR2RkZGFUMEdVa3hLUC9C?=
 =?utf-8?B?VmZiQmIxdEE3WllqRFlNdEgrc0g2SkZjMldsUUg1S1lHZ0lLcEZwN1ZqQmh3?=
 =?utf-8?B?cEYycFlBVnlYNFVEU0U2YS9helRHR2kzbWwrc2xJeDdxUjMwYVkrUzY0QWd3?=
 =?utf-8?B?WitraXZWNmtjbVhHV0Jqb0xvWkt1Tm5aWWdDbS9Cb2VMRnlHY1Q1UGMwRnBm?=
 =?utf-8?B?Vk1jb3BnZnpVQnJqSzlGcnI1TXJtKzRBZDcrdHFZUUdDc3B2VmVwVzM4dkVP?=
 =?utf-8?B?RzJsRkgzQWtFaXRPWEVvOEFRODZiZEI2cE9uNXVyQXF5VXJKdjZ4OWNwaFR1?=
 =?utf-8?B?Q2JsMWlqUmwyVmh2a0Y5ZEtlRUVuUEFubnYvK3EvMFR5YnFQL3M2czJRcVJ2?=
 =?utf-8?B?ZG55SFFCTit3NGIzN2FCaEtxMVVWdzlhZGYrbVdWeGduWXUvOFFhVDJqdFA2?=
 =?utf-8?B?SzRNVzlncW0ySkFFM0EzNksvNjArMWNpZDdKRG1DcmZHWXh1ZkVFL3Y3YktD?=
 =?utf-8?B?SVhXSHM4cFNKaDA1U0pJQVZjUzlnRmhXWDRmczc3R2pKNERFN2VEMjI2cGdE?=
 =?utf-8?B?SHFTWmphR2lxbTQxN1hWK3oremw4QkI5enhjQkppQmNzTWVDaERmOUxEaDZr?=
 =?utf-8?B?MFNzME10Wkdudk82Rkh2RXd6VlNRTFBJbjhreE1MRUFGV3cwV2NUNGJaNy9L?=
 =?utf-8?B?QXdxN0ZXLzdtNTNKa0NXWjN1NU15U1RxK2ZmUVU3YTFLWnkxTGp5cERscXpQ?=
 =?utf-8?B?QXpHM1NPVGRnZE5GOSsvUWUySTl2cWhXWDV2QkU4VWxHWm4xNnV4ZXNpRlcr?=
 =?utf-8?B?RC9mNHYrWkNSck5LZUxHN3pMaGtqRFQ4ZDMxcStwWnJ4NlMwUFF1c0EyWEc0?=
 =?utf-8?B?OGRqYXFIM0lPTTBGNlIyZTBhSTNsRzIxRXBtc01XVzBpM1YyQWs5dUNRa1hv?=
 =?utf-8?B?ekJnV3hrRUN4NysxUjMvK1d6dGwrOVYrVndGb0FoNzlOWTdmTjNVQnRPR3du?=
 =?utf-8?B?M1RRRzliRDFHalNaMEQ1THV6c0FqdmFUR2FlZGplcEc5eG9vanhQZitLZXNk?=
 =?utf-8?B?d0wrZ0R5TklZOEFyaTBjbnZDUS9JNWRzd0J5eTBIai9JVXJKQ2dYYW9DajJW?=
 =?utf-8?B?TFFyRUNyUGEvRUE1R3BUVFh0QVRGWks5OWswRGw5UWh2NnM2OTEyeVNwaW5i?=
 =?utf-8?B?eWc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16c3f4aa-c711-454c-9a36-08db223267ce
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:28.9922
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eL79toEnWnUpisvd9kgv+pVhw09JN/G3yAI6Wwjl2RD/a96UdbzIvs8HVTCqDsuRn1u4KT0L+n5mDQH/CQosLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: 9vFEY3GMr7qEtf1bTA7HH8xqfGm1cPqj
X-Proofpoint-GUID: 9vFEY3GMr7qEtf1bTA7HH8xqfGm1cPqj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=618
 suspectscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303110118
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 32BD3C1H012457
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59386

License-Update: Rename COPYING to LICENSE. No content changes.

* Drop backport patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...idation-of-user-declarations-in-modu.patch | 80 -------------------
 .../{libsepol_3.4.bb =3D> libsepol_3.5.bb}      |  4 +-
 2 files changed, 1 insertion(+), 83 deletions(-)
 delete mode 100644 recipes-security/selinux/libsepol/0001-libsepol-fix-v=
alidation-of-user-declarations-in-modu.patch
 rename recipes-security/selinux/{libsepol_3.4.bb =3D> libsepol_3.5.bb} (=
78%)

diff --git a/recipes-security/selinux/libsepol/0001-libsepol-fix-validati=
on-of-user-declarations-in-modu.patch b/recipes-security/selinux/libsepol=
/0001-libsepol-fix-validation-of-user-declarations-in-modu.patch
deleted file mode 100644
index 47c1806..0000000
--- a/recipes-security/selinux/libsepol/0001-libsepol-fix-validation-of-u=
ser-declarations-in-modu.patch
+++ /dev/null
@@ -1,80 +0,0 @@
-From 4831f73dd356fd72916f594dbeae44d26c93bb6b Mon Sep 17 00:00:00 2001
-From: =3D?UTF-8?q?Christian=3D20G=3DC3=3DB6ttsche?=3D <cgzones@googlemai=
l.com>
-Date: Tue, 7 Jun 2022 17:01:45 +0200
-Subject: [PATCH] libsepol: fix validation of user declarations in module=
s
-MIME-Version: 1.0
-Content-Type: text/plain; charset=3DUTF-8
-Content-Transfer-Encoding: 8bit
-
-Users are allowed to be declared in modules. Modules do not get expanded
-leaving the `struct user_datum` members `exp_range` and `exp_dfltlevel`
-empty.
-Do no validate the expanded range and level for modular polices.
-
-Reported-by: bauen1 <j2468h@gmail.com>
-Signed-off-by: Christian G=C3=B6ttsche <cgzones@googlemail.com>
-Acked-by: James Carter <jwcart2@gmail.com>
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/88a703399f3f44be2502fd=
4ecd22ac3d3c560694]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- src/policydb_validate.c | 12 ++++++------
- 1 file changed, 6 insertions(+), 6 deletions(-)
-
-diff --git a/src/policydb_validate.c b/src/policydb_validate.c
-index da18282..99d4eb7 100644
---- a/src/policydb_validate.c
-+++ b/src/policydb_validate.c
-@@ -18,7 +18,7 @@ typedef struct validate {
- typedef struct map_arg {
- 	validate_t *flavors;
- 	sepol_handle_t *handle;
--	int mls;
-+	policydb_t *policy;
- } map_arg_t;
-=20
- static int create_gap_ebitmap(char **val_to_name, uint32_t nprim, ebitm=
ap_t *gaps)
-@@ -571,7 +571,7 @@ static int validate_mls_range(mls_range_t *range, va=
lidate_t *sens, validate_t *
- 	return -1;
- }
-=20
--static int validate_user_datum(sepol_handle_t *handle, user_datum_t *us=
er, validate_t flavors[], int mls)
-+static int validate_user_datum(sepol_handle_t *handle, user_datum_t *us=
er, validate_t flavors[], policydb_t *p)
- {
- 	if (validate_value(user->s.value, &flavors[SYM_USERS]))
- 		goto bad;
-@@ -581,9 +581,9 @@ static int validate_user_datum(sepol_handle_t *handl=
e, user_datum_t *user, valid
- 		goto bad;
- 	if (validate_mls_semantic_level(&user->dfltlevel, &flavors[SYM_LEVELS]=
, &flavors[SYM_CATS]))
- 		goto bad;
--	if (mls && validate_mls_range(&user->exp_range, &flavors[SYM_LEVELS], =
&flavors[SYM_CATS]))
-+	if (p->mls && p->policy_type !=3D POLICY_MOD && validate_mls_range(&us=
er->exp_range, &flavors[SYM_LEVELS], &flavors[SYM_CATS]))
- 		goto bad;
--	if (mls && validate_mls_level(&user->exp_dfltlevel, &flavors[SYM_LEVEL=
S], &flavors[SYM_CATS]))
-+	if (p->mls && p->policy_type !=3D POLICY_MOD && validate_mls_level(&us=
er->exp_dfltlevel, &flavors[SYM_LEVELS], &flavors[SYM_CATS]))
- 		goto bad;
- 	if (user->bounds && validate_value(user->bounds, &flavors[SYM_USERS]))
- 		goto bad;
-@@ -599,7 +599,7 @@ static int validate_user_datum_wrapper(__attribute__=
((unused)) hashtab_key_t k,
- {
- 	map_arg_t *margs =3D args;
-=20
--	return validate_user_datum(margs->handle, d, margs->flavors, margs->ml=
s);
-+	return validate_user_datum(margs->handle, d, margs->flavors, margs->po=
licy);
- }
-=20
- static int validate_bool_datum(sepol_handle_t *handle, cond_bool_datum_=
t *boolean, validate_t flavors[])
-@@ -689,7 +689,7 @@ static int validate_datum(__attribute__ ((unused))ha=
shtab_key_t k, hashtab_datum
-=20
- static int validate_datum_array_entries(sepol_handle_t *handle, policyd=
b_t *p, validate_t flavors[])
- {
--	map_arg_t margs =3D { flavors, handle, p->mls };
-+	map_arg_t margs =3D { flavors, handle, p };
-=20
- 	if (hashtab_map(p->p_commons.table, validate_common_datum_wrapper, &ma=
rgs))
- 		goto bad;
---=20
-2.25.1
-
diff --git a/recipes-security/selinux/libsepol_3.4.bb b/recipes-security/=
selinux/libsepol_3.5.bb
similarity index 78%
rename from recipes-security/selinux/libsepol_3.4.bb
rename to recipes-security/selinux/libsepol_3.5.bb
index e756557..0c28e9b 100644
--- a/recipes-security/selinux/libsepol_3.4.bb
+++ b/recipes-security/selinux/libsepol_3.5.bb
@@ -5,14 +5,12 @@ as by programs like load_policy that need to perform sp=
ecific transformations \
 on binary policies such as customizing policy boolean settings."
 SECTION =3D "base"
 LICENSE =3D "LGPL-2.0-or-later"
-LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3Da6f89e2100d9b6cdffcea4f3=
98e37343"
+LIC_FILES_CHKSUM =3D "file://${S}/LICENSE;md5=3Da6f89e2100d9b6cdffcea4f3=
98e37343"
=20
 require selinux_common.inc
=20
 inherit lib_package
=20
-SRC_URI +=3D "file://0001-libsepol-fix-validation-of-user-declarations-i=
n-modu.patch"
-
 S =3D "${WORKDIR}/git/libsepol"
=20
 DEPENDS =3D "flex-native"
--=20
2.25.1


