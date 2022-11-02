Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 835B9C433FE
	for <webhook@archiver.kernel.org>; Wed,  2 Nov 2022 07:31:13 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.3568.1667374270899670963
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Nov 2022 00:31:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=Q1hBRPFV;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=83050761c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2A26x1tS011832;
	Wed, 2 Nov 2022 00:31:09 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=3xR27ASqStHYOIBl6QvF308HbuIX+7hmd1a9ol83Tc0=;
 b=Q1hBRPFVfFFKQgrM0RYeQzkKYz7sWoQzP02X86506C8q5oyyssCkv61aWs4+Bens9Ifi
 /HTNe2wBMRwFqxNeLZyKzQcAyKdro4iBCBnkFXAvczlvsK3nNu0cPyXENaCPjnmbjPlZ
 0hJ5PliILQX/fqZm+m6CueyforMz1USRWHwbadniIBMsjTFR4LaEyxjYsY5l7nQWTZG1
 dj5CAtvfSmtDl3zOVZfNl7fSGdpoQ9vLTp5pZZaryYkAhN1KSBy1D6ce8zWiA3sYBEs+
 3CWrvMQo+njNvVI8DPHqAhim4T2oKLS0R/Tp0RMYgUykMCa6zMvU1MfgyF8NtHw1BuQH NQ== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3kh3pkjym9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 02 Nov 2022 00:31:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FslbBMzA9EOs3F2iPikUroM9d7Ax79QUO+wN8iFs6HuT3iQgBcZEYTOnxe8dZElmZqnC/1+GgCL+sgPpnRttcRWPqHzl6m3aFrpCiHo0Pnand0nM1Z1i2aTJv+p6RK+AIyx6CuX5Db+LMvO/L0wygs/INLGxpKcB1gKmIzrmnEA1ZjGcVEFffis/8EFZ//f/VcdYvt2QpItFkPKssLZmFeQFfbRQz1jX0t70HHqmWaUEOsEwCFkOYmaviSJvlFmVchiGu0D4GiwgsZEFg/ZXYQbxTUneqBDrD7p+vocy4A7Rc6G+WTTn7e6sPgeIvZlzh3LP1i+f7og194Q4TVRyHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3xR27ASqStHYOIBl6QvF308HbuIX+7hmd1a9ol83Tc0=;
 b=gq3/qiOqqEsTH3A9ggOePo3y5h5tSaS25BtOCiPTgZC8D+JbGBMMf3rlNFnwNtIUNTsXeMxXWEBGY6RK8dw/pFKGkDKTJdxHOZS35+0rRwmlD2dFLYqPt7y9q6bcIj9Nz4Qx/r6EVcUOPfT680KwylIjbG2jXMEw0jGV0MNiCBM2JItLKNhBeoa1SQ1fI8mTZIQrehPCXLPaVRby+N/xGMMmKjd4an1ZRyoRuRH+magoD5XPW+goK82iltwjhpAY7ltDCLEL+s7oAi23zP9Ofgzl0a/J7M0ilWMnCRQJ7WOg/yHKk0ru6YGSnemPNsJFvdTY44sAwIKF4sCdh5UybA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DS0PR11MB7333.namprd11.prod.outlook.com (2603:10b6:8:13e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Wed, 2 Nov
 2022 07:31:07 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae%8]) with mapi id 15.20.5769.021; Wed, 2 Nov 2022
 07:31:07 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 3/4] libsepol: fix build failure for refpolicy-mls
Date: Wed,  2 Nov 2022 15:30:51 +0800
Message-Id: <20221102073052.1567876-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102073052.1567876-1-yi.zhao@windriver.com>
References: <20221102073052.1567876-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=UTF-8
X-ClientProxiedBy: TYAPR01CA0108.jpnprd01.prod.outlook.com
 (2603:1096:404:2a::24) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|DS0PR11MB7333:EE_
X-MS-Office365-Filtering-Correlation-Id: 29720ea7-e5b3-4275-5589-08dabca434e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iZRkgK/WhqWeHAoMfWaabvG+h76eiA5j8m7YWaqrP6N4IsLSyKt2E8tsfEbvcuAWJElFTVLtAlrHFWGL29TUzPgs8Cvr6M776RE7fk8VF5Nx1Nb9l3A39B3etBXDwP1HQJKJxRZTPmuZ/k4r5g8IAVO0fZ74Cdsu0cW8VG5GU6K7jmiTvSjbzSbThn93NSLBZYAsQvn8gY5t7fr4s6dZsNcLBlfUCAY+Wr3DRYG+UX/g7Fcun5qyak7zxQmxETuixNxnhzRhUvzcVrRiUJtTDx6N88TqcPvdNY5yuM6A1nJWLiAG98J8KFJzWGkXZEZJAQ8q6B2Kb5vBQTqmnutBuwznZu0XRh5tbR8L7QXVJNyPmR05yZOoPwrhyf2dtsexBFbnjPbgXBWJBsHKD8eW628GQ44z8mEAtR+Ik2eZa2jey0l+4HFz6MM8JSWVYnbWDQdJSR1LbS1GVI8KT+I5LyvdxhJKTokkn0gWpaB2f4/tvsGVeBzDLvGxoYMlakNoimZTcQz/JjRbtYCEkMKA7Er6DJHb3uMY4QDlmxSmUvprHuJM4FFrxev2lGz4XrWkjgI0OZeuw6nZxk2e80pboNDMam/KSTTTqI13aJdhii0TDwo2TqzPJI+sRJVM6B1JvqU+JYi7ajnnboZbEefahrkl4+SOg78ES4MS3rj5B2qBpD3nWEuNANySrNOxUxMiYaIwoYcLK+WyMOEyuoeyAOXx0BbaXaZr3OVKS0pMd4EVf0U95aARdpDqoiTRA/Y0nC7MBjqSq3l2tETTBhTWxG/YCtkzUafbDv/O+Us0IEE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(39850400004)(346002)(396003)(376002)(451199015)(1076003)(316002)(38350700002)(41300700001)(5660300002)(6506007)(8676002)(66476007)(66556008)(86362001)(38100700002)(26005)(6512007)(478600001)(2616005)(83380400001)(66574015)(66946007)(186003)(6486002)(52116002)(6666004)(8936002)(2906002)(44832011)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dXEwUXpGQ0xObEdYQmNibVB5bzRZU2pPK3JGN1V1Mm94K1RETi9hNUQ1TVBF?=
 =?utf-8?B?bktyeTl0YjJOQ2tKQ0hDZHIrSUpNQ1RDR1hQRzdDdjM2dk14NkZUMVc2ZkQw?=
 =?utf-8?B?VUNOM0orSVY2UDBvTU9XNE52THpOMXlqUWo3dFVzYTF0ZFArM0lwdEU1VDZq?=
 =?utf-8?B?TWdFWk5ob3lRejlMb0RXYUV2emRHODhFQWtwYzNHNFNVd2xRNnlqVUV4aFhI?=
 =?utf-8?B?ZFJRYmwrN1JNUnlyK1FuYXloeENma2RkcVJaVVYwTkU4UTdEOWlzSXFWQUFE?=
 =?utf-8?B?dW5pQzFEM1VqR0RNNHJXdFJ4S1MzZVJvVXlQcUdzVjR2bTRWUFROSFpsOVNr?=
 =?utf-8?B?R3lYUnhEdTRtM21UNDRXanVKMFhKZkE5ZkZiSWJPcDBvRHRuNmwzSmRtRzZz?=
 =?utf-8?B?bUZGZS9uMDNkeUFiRUdud0NYRzF6RnYyRUQ5OWZMY014aXRZSzQ3ZVJycG43?=
 =?utf-8?B?dDZFcTB4LzM0Ym51T3RkWkVKeHpJaWREWk81dCtNck0zV1dEUzk5aU9adDBh?=
 =?utf-8?B?S0hnMWFHUlpCWWhoZlE1R0grRlh5QW1LNjhqWW5pZXlEbGs5RWZITS9oM0NS?=
 =?utf-8?B?UExBdFFleVJPZ296OFdlOW8vZWtJOGhOWk1JQXArQkd6WWU4N3VtbFZXYThn?=
 =?utf-8?B?Z1FMaU9CcFBQRVN2OUNqQXNpSmVaQmlXQU9WUTNmR25IQk5zVE5yZzZvWTE2?=
 =?utf-8?B?NHU1K2ljK2VIYTFoME81SkhTRSszc1BHOUlvY09jalJjZE1rQnBGZm8zQVQ3?=
 =?utf-8?B?MXNIUks4azNvN3BRUkdQRkViWk1IbFBxMjlDbFpnd0Z2clc2d1lqdTdPNDdr?=
 =?utf-8?B?Q2hsU0xiNXd4UFA1QUtsVXVmZnY2aGhEZERQMy9WcEZkRjlaRXptSXVTdTJB?=
 =?utf-8?B?V1RMZ08rV0tXbGh0UGVrUWs1OXp0VFkxdTc2Sk9DTTF2cUVPeUcrbXozT2g1?=
 =?utf-8?B?WUFrZDFxY0R5aTFWakR2T0J4VWtFb3FDTkhZZEQ0eEc5NWdnZE8vTDlzYzhR?=
 =?utf-8?B?NkVxV25HUnRTbVpkWjRiY05wSXZlZGxtNWd6bFFMVEgzSnhVaDB4K241aC9k?=
 =?utf-8?B?WlFGbVFBQXl6NGlwWlBuUENYY0swM0YrVVgzT2tEV0NFUWVnTFp3Tjh1N0Nm?=
 =?utf-8?B?TldvT3FsRjdLQWsxa2pTNnJ6YTRkWldCN3JyRkNybnNxbnZSRTIvTWYvWE5t?=
 =?utf-8?B?d3ptekVkWklDSFdjRWdBczQrVThYMmovN3pTVmdtOGRHREtCdThORERiaSt2?=
 =?utf-8?B?azI3WlVGcVN1TE40WE5LQmtYWTFZaTYrZkdGeEh2YVZtZFFZekhzMkdObytr?=
 =?utf-8?B?MkoyRTRZbjNOZTl5WHF3ZDhZczZPcFNWcWJRQk50dmlSWnJJWUJJR3V2UkNU?=
 =?utf-8?B?NzNlbVZLaDgwS3A3VTlRZG1vVVBoeHdiYWdLV3ZXSmZreDNsK01RZXpPUFNB?=
 =?utf-8?B?Ky9jQjg5RVdpdEJ2b0Q4SWJlV08vWlo0NEJ4eExnZ3FITE5TVlh3Wk9Zc1Mr?=
 =?utf-8?B?ZXIvNnJqSFlIdTlxNUZGbHY3cHg0M08rUXNQUGRtSkxtQWFWSXZxazErcC9k?=
 =?utf-8?B?ZkVRbVMwU0pKaWRlbnpxSU1qVXBNV1RjYkpHc2pKMzFqb3hsREVvMkV3OVQw?=
 =?utf-8?B?ckQ3cjdSL3g5TmdMMUhpaGYzOEZKU3Raam5RQzFIeldybmd5RFdsNmtQdndB?=
 =?utf-8?B?ZzAzUTJkYXFHbVIwSWtSNEU5bkpNNEJWSUMxMnpkSVRrc2N6ZnpaS0pVa1Q1?=
 =?utf-8?B?d29IbmxQUTBNS3o3VXlWNVBGakJmTm9iVGRxRmx6Ylc1TitkSXYwaytYdDN2?=
 =?utf-8?B?SWtEeHBRd0NqVm5CekJDMDhFem5PcEkvaG1ObXVjdklPZHVGVVQvSUNPWi9t?=
 =?utf-8?B?Yks4RDhLTFlocE1HWVpwb25SendtdUZKNDhMQ05hUUVBNFFDWXZzVmZjWFJ1?=
 =?utf-8?B?Y2tyeFh5R2luelRqNEtHczVYblFOZkU3QTVNTXh2ditNUk1GK05mMTh4a21F?=
 =?utf-8?B?OVhTdHJ0dldUaTBQcWxvZ2tDMm5LK1k2ZnY5aytXOVJKZFZ1T0VmU3dHTHVa?=
 =?utf-8?B?UitSWGpBbnBLUExoZHdob1lJMEp1K2s2M3dVVUJPV0dnOEowK3JmbUlmTUkw?=
 =?utf-8?Q?DSIhRmVSUYh9mBBLhmwuUjtVX?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29720ea7-e5b3-4275-5589-08dabca434e0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 07:31:07.6308
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yutezl9jzInyZ1cAz8zZLutkyWuW//0IGL0KPC5hP7wHZ4GW3LtTHUJwc5P7msJkbxfj3dxlmOL1mVeoU+proA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7333
X-Proofpoint-ORIG-GUID: PqVEswlMI6Ts-7OGrIo0E2mcwCRZliF7
X-Proofpoint-GUID: PqVEswlMI6Ts-7OGrIo0E2mcwCRZliF7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-02_04,2022-11-01_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 mlxscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 spamscore=0 malwarescore=0 adultscore=0
 mlxlogscore=867 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211020045
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 2A26x1tS011832
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Nov 2022 07:31:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58469

Backport a patch to fix build failure for refpolicy-mls:
| Creating mls xserver.pp policy package
| libsepol.validate_user_datum: Invalid user datum
| libsepol.validate_datum_array_entries: Invalid datum array entries
| libsepol.validate_policydb: Invalid policydb
| /buildarea/build/tmp/work/qemux86_64-poky-linux/refpolicy-mls/2.2022052=
0+gitAUTOINC+f311d401cd-r0/recipe-sysroot-native/usr/bin/semodule_package=
:
Error while reading policy module from tmp/xserver.mod
| make: *** [Rules.modular:98: xserver.pp] Error 1

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...idation-of-user-declarations-in-modu.patch | 80 +++++++++++++++++++
 recipes-security/selinux/libsepol_3.4.bb      |  2 +
 2 files changed, 82 insertions(+)
 create mode 100644 recipes-security/selinux/libsepol/0001-libsepol-fix-v=
alidation-of-user-declarations-in-modu.patch

diff --git a/recipes-security/selinux/libsepol/0001-libsepol-fix-validati=
on-of-user-declarations-in-modu.patch b/recipes-security/selinux/libsepol=
/0001-libsepol-fix-validation-of-user-declarations-in-modu.patch
new file mode 100644
index 0000000..47c1806
--- /dev/null
+++ b/recipes-security/selinux/libsepol/0001-libsepol-fix-validation-of-u=
ser-declarations-in-modu.patch
@@ -0,0 +1,80 @@
+From 4831f73dd356fd72916f594dbeae44d26c93bb6b Mon Sep 17 00:00:00 2001
+From: =3D?UTF-8?q?Christian=3D20G=3DC3=3DB6ttsche?=3D <cgzones@googlemai=
l.com>
+Date: Tue, 7 Jun 2022 17:01:45 +0200
+Subject: [PATCH] libsepol: fix validation of user declarations in module=
s
+MIME-Version: 1.0
+Content-Type: text/plain; charset=3DUTF-8
+Content-Transfer-Encoding: 8bit
+
+Users are allowed to be declared in modules. Modules do not get expanded
+leaving the `struct user_datum` members `exp_range` and `exp_dfltlevel`
+empty.
+Do no validate the expanded range and level for modular polices.
+
+Reported-by: bauen1 <j2468h@gmail.com>
+Signed-off-by: Christian G=C3=B6ttsche <cgzones@googlemail.com>
+Acked-by: James Carter <jwcart2@gmail.com>
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/selinux/commit/88a703399f3f44be2502fd=
4ecd22ac3d3c560694]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ src/policydb_validate.c | 12 ++++++------
+ 1 file changed, 6 insertions(+), 6 deletions(-)
+
+diff --git a/src/policydb_validate.c b/src/policydb_validate.c
+index da18282..99d4eb7 100644
+--- a/src/policydb_validate.c
++++ b/src/policydb_validate.c
+@@ -18,7 +18,7 @@ typedef struct validate {
+ typedef struct map_arg {
+ 	validate_t *flavors;
+ 	sepol_handle_t *handle;
+-	int mls;
++	policydb_t *policy;
+ } map_arg_t;
+=20
+ static int create_gap_ebitmap(char **val_to_name, uint32_t nprim, ebitm=
ap_t *gaps)
+@@ -571,7 +571,7 @@ static int validate_mls_range(mls_range_t *range, va=
lidate_t *sens, validate_t *
+ 	return -1;
+ }
+=20
+-static int validate_user_datum(sepol_handle_t *handle, user_datum_t *us=
er, validate_t flavors[], int mls)
++static int validate_user_datum(sepol_handle_t *handle, user_datum_t *us=
er, validate_t flavors[], policydb_t *p)
+ {
+ 	if (validate_value(user->s.value, &flavors[SYM_USERS]))
+ 		goto bad;
+@@ -581,9 +581,9 @@ static int validate_user_datum(sepol_handle_t *handl=
e, user_datum_t *user, valid
+ 		goto bad;
+ 	if (validate_mls_semantic_level(&user->dfltlevel, &flavors[SYM_LEVELS]=
, &flavors[SYM_CATS]))
+ 		goto bad;
+-	if (mls && validate_mls_range(&user->exp_range, &flavors[SYM_LEVELS], =
&flavors[SYM_CATS]))
++	if (p->mls && p->policy_type !=3D POLICY_MOD && validate_mls_range(&us=
er->exp_range, &flavors[SYM_LEVELS], &flavors[SYM_CATS]))
+ 		goto bad;
+-	if (mls && validate_mls_level(&user->exp_dfltlevel, &flavors[SYM_LEVEL=
S], &flavors[SYM_CATS]))
++	if (p->mls && p->policy_type !=3D POLICY_MOD && validate_mls_level(&us=
er->exp_dfltlevel, &flavors[SYM_LEVELS], &flavors[SYM_CATS]))
+ 		goto bad;
+ 	if (user->bounds && validate_value(user->bounds, &flavors[SYM_USERS]))
+ 		goto bad;
+@@ -599,7 +599,7 @@ static int validate_user_datum_wrapper(__attribute__=
((unused)) hashtab_key_t k,
+ {
+ 	map_arg_t *margs =3D args;
+=20
+-	return validate_user_datum(margs->handle, d, margs->flavors, margs->ml=
s);
++	return validate_user_datum(margs->handle, d, margs->flavors, margs->po=
licy);
+ }
+=20
+ static int validate_bool_datum(sepol_handle_t *handle, cond_bool_datum_=
t *boolean, validate_t flavors[])
+@@ -689,7 +689,7 @@ static int validate_datum(__attribute__ ((unused))ha=
shtab_key_t k, hashtab_datum
+=20
+ static int validate_datum_array_entries(sepol_handle_t *handle, policyd=
b_t *p, validate_t flavors[])
+ {
+-	map_arg_t margs =3D { flavors, handle, p->mls };
++	map_arg_t margs =3D { flavors, handle, p };
+=20
+ 	if (hashtab_map(p->p_commons.table, validate_common_datum_wrapper, &ma=
rgs))
+ 		goto bad;
+--=20
+2.25.1
+
diff --git a/recipes-security/selinux/libsepol_3.4.bb b/recipes-security/=
selinux/libsepol_3.4.bb
index 49312da..e756557 100644
--- a/recipes-security/selinux/libsepol_3.4.bb
+++ b/recipes-security/selinux/libsepol_3.4.bb
@@ -11,6 +11,8 @@ require selinux_common.inc
=20
 inherit lib_package
=20
+SRC_URI +=3D "file://0001-libsepol-fix-validation-of-user-declarations-i=
n-modu.patch"
+
 S =3D "${WORKDIR}/git/libsepol"
=20
 DEPENDS =3D "flex-native"
--=20
2.25.1


