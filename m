Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9A4EE4993
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 15:22:27 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.14432.1692804143835991276
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 08:22:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=o5UW2n5R;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=7599c7e7ca=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37N9hSBA002705;
	Wed, 23 Aug 2023 15:22:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=x5KGQ9pmhmSRFF/yujtaEa217Ll7liQDFRW+9z4M7fE=; b=
	o5UW2n5RUX3nGPNoUT5SSlkEwqfrqL2RWqGSd2yMIXRlUCw2oVtbeuPHrOZOPF/4
	6ctJpzbB0j31UnFxofQGHiqzOcmRPGq+TBE54I+F19G67yEpv2gMaXnwA9ILjijQ
	Gv6EqeXGrxoIo4qHzdxsGMbT8yMDb7MvykYoIdBANbmFemdJRAht7Fwkv4GiDJYd
	wNUWB/99i+0Z0ws5EXjlzGBKFuVrQC3nxynWeMKrI94aS41NltsoylzU+i09K3l3
	xGEUuPusTeolt9AwR5n50Baxp9nLZ4MmSMX7+tXiGdBVukwtKmyuZwDEFMPk+bMu
	ijk7vQT7hjIy9pTjQiTn/Q==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3sn21krvhf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 23 Aug 2023 15:22:23 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ic/rcBSOJUXH7LQz3+UaNkeMfSqGx+rL6ccuulzMoef00mUjb6j/AT5jtvTrvbGbeuJsVhUXyEnEUG77MoHwvJQ/4G/+1maH65+thD/8bFJYz9HW5edeJEbPMr6CtT//q3iMoKE6yGQCdN3pzQEVE2gr/T+Ffn6/QI6+DnTOTSijmVh9af6PKz3q9AbZg3sEr3VnqYi1lZMbTddfS4zUwzIpkvoI0mDANnnwnwORWBc8+Hlgs6Te07juOIKg6ekBQQFCyN7N7KlMAh+lQ/u0kG7WtbaxrYHJuBYvRIQ5Mmp1saqm2C17vnwrK3CbZuWzbCUmah/FmfW7iu8fYpuNxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x5KGQ9pmhmSRFF/yujtaEa217Ll7liQDFRW+9z4M7fE=;
 b=IN4noCDo5sOeadAg0oVsa4TIZk4IOqqiv+60pJMdA8OJ0biHvB3Gos4mooBHW08VGOLrPXuh7JhdFtEmLrG2K+Zw/pci+2oln7Bm2md+C0yjDlQ0KHcg2RyWU4w0YSx8LfPwveI6TKyqjOnI5pcUgFtjm5TTtaKAlEadaLAyvmYaws9dHzR0dH7+m858FPOAEOipNvaaVzEy3RoI4HOnUl2de0jaEeTJMl8zh5BzKYYaN989fVPCu/nXZaF/r5vJW0wan9wSU3JnGqIm2isseai29UzZ1AOhjJTXPk7SiRuUGNR4/+/LvLEqDKNNh+vQTD7a1ARKcKxfohdPDJ4Mvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 15:22:21 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306%2]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 15:22:21 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 2/3] libselinux-python: fix build with musl
Date: Wed, 23 Aug 2023 23:22:05 +0800
Message-Id: <20230823152206.2932585-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230823152206.2932585-1-yi.zhao@windriver.com>
References: <20230823152206.2932585-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR04CA0010.apcprd04.prod.outlook.com
 (2603:1096:4:197::11) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: 4838e765-e802-4cc4-0e88-08dba3ecbea7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	r/RPuLdvVsmtjVVbrOU2QF0r/Qtnc8WJ7/1tpFLclagDTotZ2XkRANywCyppug6OZMGauGVXpizL/ADFx5U5Zr1xL7GIWN8lIA35Gq3wOI5uLTkDW6wv4eHI93t4GeWi3cdmVK2yLxQoJC4zs2TdFRb2fe/FXdhV5UnOjAqvDoHy7W7ixKIGu+rOLL9dCL+M9YB9kXvr01XjC59EwB6Mlug+ZZbjqhaia9mw+vDPKKLgB0DivoP1w8e9Ynn9Z0GyDPZW2DvyFXOKZ35Sg/K5jHzal5eqJBFjHS2TOyXlfMpl/u9Zfp6whBn1Jw5edRFZ3IfU1zUJGHsBqQ7vNaX6bAb6RTVKKMZz3XzOn8yyumRMbgkkZdqQqqm/cmdQp53d9QVT3kTVX/0NMNEXy3lOxjCirnrbLe1mKDRYcAef4OV9q15SOyGpEWsjOKZeIAKNyuXp/ItRbscho/LNROU0/TH4FVjw+/mmzMt+OkkHc8ehiNiY7zYdjviJdTAFocAYS+l9I/t1SyvPsMZEY/dXr2EUeJU32TgAy3Qz2MYa8zm8KW3qka0OkmSOa3DTK94cmpkxjaQpA28j5tT1NmRSEj/skDiL3wADus9XOPQ12sg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(376002)(346002)(366004)(396003)(136003)(451199024)(186009)(1800799009)(83380400001)(4744005)(2906002)(316002)(6486002)(6506007)(66556008)(66476007)(52116002)(6666004)(66946007)(966005)(478600001)(86362001)(36756003)(44832011)(1076003)(5660300002)(26005)(2616005)(38100700002)(41300700001)(6512007)(38350700002)(8676002)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?q6Ek5jVf7LqOeYHidEIpieYqt9boDh2cj6VY4GMhZv+cWcF652Lwzdl8bxSF?=
 =?us-ascii?Q?AmkbAAc4dNHPhr6rwQ2T/kxXG3tfRtw+0GZIheQSBx0IJA4N8PYl74DjX2rF?=
 =?us-ascii?Q?K3p48peUHkiOP8TF5B5VVlRwFBJmHXGiCSPn7hgJx0Z3fZPflGDirjLeNiwV?=
 =?us-ascii?Q?8Pv8KKeIrYdXE0v7MFHqmJi6pIiDnzD1okk+eGlvYIZFmOoIbdUX/Pp6Iw15?=
 =?us-ascii?Q?3lrmSwuGYGGbpdCosN1tJ/DtmebQ8bZOTxWIFx5gSdVHEtlDXReq283hVtnV?=
 =?us-ascii?Q?YOVYBuz5tDZ/PW3/VxhNOX+V5TqcLtDe6DleHvevEeD+gWKWHQdko1+PZ2tL?=
 =?us-ascii?Q?AlGV9865bcnCAPb/9u6sU4kZyI8FNvKoR0mYBimmop8+YE9LeuBa0pChmyA4?=
 =?us-ascii?Q?ZiaUQK+PV/NKFIAsvuX8Wf6Q6/x8cKYfSKDyO7RPSi7hUHpeqkgcFUFasRxq?=
 =?us-ascii?Q?48/EOEyIn9vFc5LAs1BFMIcz8K0tq2i1X79OyerGOpFFn4t14LMKC+kw20n/?=
 =?us-ascii?Q?o67vjzUxMP1p5ChJt1tB6ChVMvMVFlHGUZohCicphEps6/mEd5FVw+ManBdz?=
 =?us-ascii?Q?U6Wg4OzFd+5AzHniR0iYq0L2IZ0AVPHSWWyCwI60IRqDM2cq74pXkSRpQqhy?=
 =?us-ascii?Q?zbHPdPOpmGNCalsFssUTdsWCRDgAWCM7aPVXno6AxSkmFZoJTM9kVr1k6J7R?=
 =?us-ascii?Q?h+tJ7TDENteBQXrYRJbhWMpWpfrO2wdHXLRzkpb+bWukCWE4antbIb2CezDq?=
 =?us-ascii?Q?fpNnZkmSJe4gceajKS/bMbEwD0f2kEbOB3pHUYKpX5gQMLvW+u/1qBLwDLXG?=
 =?us-ascii?Q?vmBm+diF/k7B+Q/dbfOTWD0pNPxfsl4tiQ1mhQVhTtqSNpRkSiVMPcSWWjIY?=
 =?us-ascii?Q?lG/j+aGR7VgQFdCSbaDA/Q2uR9URw5pWxT8egy9ZLp4pDBcjIvq2XMBhGoOu?=
 =?us-ascii?Q?2EO4EKt7zc4V5qUbrrCHwe3LCoHAlUQtWfOfH/kWM0aMDQbNNZmgFpBNXfOt?=
 =?us-ascii?Q?HArLMnBVgCJpReTkNAr46Ai4crq6WY/12/6TlQ2V7VClHnkaeSF+314+CC1d?=
 =?us-ascii?Q?48OMgH5WonVpBRzO27s2xfh2uS6/xHsvzCqu2jtgsa+k+JdGLDYnGciEwf0j?=
 =?us-ascii?Q?lir76wa8HYwhAx8y25XcyrRFhdkW/PuYAlWtB7zPyL5p5EFXjjcnfqxWzVjz?=
 =?us-ascii?Q?2mKZ1BWnunJDv2RbdsvJqe6/4XnYDP/R0vt+juNJsVJJGke8QNUCq4ryFm4I?=
 =?us-ascii?Q?f3xNt3TEIAQ3StKNu8xWupPXBKw+tBQ/omTtlzKJS0Qr20unLMNmSmqJDK6V?=
 =?us-ascii?Q?aDwAK0oM6EEbbPD1QZeG6AJuYw/F3YsfS7mIaeFJArPGFl/u64KwXQ2SnrXS?=
 =?us-ascii?Q?NyaSx09lU9gDs3XWSTaHhet7u/FuXwLqjewV8zNKUiMG8Ulssx0tXJMxbmg7?=
 =?us-ascii?Q?65iCoh9PngtAXYCki9x5bXpzl9KtvZQ9iyzmuTMuokBYnI5sp7i8oHC5d0aa?=
 =?us-ascii?Q?iW0GNIUCkf0v+th6Ty9tnRX7QPfO8wGmvnQtyBrjAO14vm4mUAF5Cuql8tOx?=
 =?us-ascii?Q?mU2TOXjfzOUUYkxjVxlj/40eN4PU7zw558dNRT58?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4838e765-e802-4cc4-0e88-08dba3ecbea7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 15:22:21.1907
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Ob6+soCWkPMRpTCn156yu0ky8C9pCTEOwpS41HWa+6z0Wz/bVy81iKGSmyYbDKHi/Fb9YkM6wbGIsNgkt4M9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
X-Proofpoint-ORIG-GUID: HWbNVJLSvQH9fZAM_2AfTfQiWbDVidMZ
X-Proofpoint-GUID: HWbNVJLSvQH9fZAM_2AfTfQiWbDVidMZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-23_09,2023-08-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 mlxlogscore=587 clxscore=1015 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2308230140
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 15:22:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60861

libselinux-python also requires the patch which provided by [1] to fix
build with musl.

[1] https://git.yoctoproject.org/meta-selinux/commit/?id=23d8e2d86317170c0a3c155640c71b83329ff726

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libselinux-python_3.5.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/libselinux-python_3.5.bb b/recipes-security/selinux/libselinux-python_3.5.bb
index 3555a72..b382be1 100644
--- a/recipes-security/selinux/libselinux-python_3.5.bb
+++ b/recipes-security/selinux/libselinux-python_3.5.bb
@@ -14,6 +14,7 @@ FILESEXTRAPATHS:prepend := "${THISDIR}/libselinux:"
 SRC_URI += "\
         file://0001-Makefile-fix-python-modules-install-path-for-multili.patch \
         file://0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch \
+        file://0003-libselinux-restore-drop-the-obsolete-LSF-transitiona.patch \
         "
 
 S = "${WORKDIR}/git/libselinux"
-- 
2.25.1


