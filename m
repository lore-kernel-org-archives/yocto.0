Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E742EC433FE
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 07:01:01 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.10247.1634022060809944855
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 00:01:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=B63TkvUi;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5919fa73df=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19C6uHe1032472;
	Tue, 12 Oct 2021 00:00:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=eMNl845ZkQGUi5iJ9ZKX7BLrJVz7o46y3KeQ1behvZU=;
 b=B63TkvUi9dMUi8e3A9NpMop5mphwtCIS7TphFcV/eXJijzTqkOyiwYL/e3llJj+qAV2/
 N6OuM2yHxuVa9Cut3S86glpMPJwiUBePaRBvfdN1QwVXC0VWTSCRu4AY51rN/q3uEY+K
 i/3WYVsTR6AMIVY3oxasKSBI2/lIwEkfSNCYSayeD34SEABLUyOTDWSqLox+j7PPDLMw
 D6/bLuH3P0ZI4UIz4LLVzofCfUzNcP8zUCaQn6pKqbW1qbbcPlaLwtavh+X5p6ZqfyN3
 oePsqOZ472rfjhRnMTK5W+z+BnDe8mN9IxItdlfUzn9RH8Vh8XX90mKP5B3PQSIiYUes eQ==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bmy72g7ea-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Oct 2021 00:00:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iJX9fd3e4nj4N9kVKTs0q3LOx51zo/63G5FcnooOUsylNnwB8WAS+MSLRlHiPnBlTc6mUGDqgXJbTqBFuh0r21E7089K4DY1WkDo7Yhe4t/oSpzxMxwvVLPyOqAPXUr/Sp17nc3MhlFdhxYYnDtyQhhUZchm45t/wKZZaKN8Z1IMw+iu7Me4zXmpP8KOasug5EWTSd20Irzy+mCN190BRp8dz4+bKK2EQqE9PPCoM4TiJ2pkaWNP7UzFoFPXqBmpI1vlpOIvq8KGEfuYTMXK6p7NA81SlOnuK6Y3Tlhs9aIDaWIzOJU+qZ2PfhdpqqCiWoabiwPAERs9rTE33p4RAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eMNl845ZkQGUi5iJ9ZKX7BLrJVz7o46y3KeQ1behvZU=;
 b=mlW31JC/XEi0E/09FS0U+bOAmW2CrYjfGKJabK43QXhsz6XoWHoiE8aaEqX/+4J2oLA1G9SbfSnKMSlT4hAPkgX4xt/XgXGhpISn2zgT2imEgOnen4BAtLLB9G/SzMcnxNkixv9c0d7/a2lF0U7QuHdep0mGSAPJnmhTQzHUo2IQHPMpyTFSCBjJVP/RU1gOhNUeeXVdVdKiAf0BnKmP+R+vaKgU53qYWyU2RixGQJRV0LuIIRAkjptmVJWos5VuWW/qQLC4iAkg8jZwsmeYFhCxN96ApCHG37AQLayFSHVTgGRjsCGcOZxAgFcO3AhSDwXTPpaezcycVv2TEkDbiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2239.namprd11.prod.outlook.com (2603:10b6:301:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Tue, 12 Oct
 2021 07:00:47 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 07:00:47 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 2/4] libselinux-python: inherit pkgconfig
Date: Tue, 12 Oct 2021 15:00:30 +0800
Message-Id: <20211012070032.124425-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211012070032.124425-1-yi.zhao@windriver.com>
References: <20211012070032.124425-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: YT3PR01CA0045.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:82::13) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 YT3PR01CA0045.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:82::13) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25 via Frontend
 Transport; Tue, 12 Oct 2021 07:00:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6caa81b2-db85-471e-2adc-08d98d4e04a4
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2239:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB223902B5D66F7095D9812112F9B69@MWHPR1101MB2239.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:156;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eK017EXzmAvkZhl13gTw98/AyW3bgP/KXFf6R/3Z06WVT7tNM4Os15RsaaV5kHL/lt2dTKtFsB11d8HLFS1A3RFJJPzvcAtw0A7K7lxkfzaO+zJX7lZ5BLsi4eZmLSZ8E/WLI4Ua9vwIIUR1G5xrOIWMRBeB6nQ/vb60zO4MOAtmCOeOE1wHRZaoQXZWF3ud7zZNBppczCuHqbgSmYke5vwrtFZfM35lZr/pInINR+mDBftnqNgODbWr052rovupweFaUiLbihnXfgOSZuBPqutd3UBffnfVzQsGcLbEWA9h0CTPFMNoQ7ZLdCD7SqxRyhEpZ0Rx6UeU9TeMwT24j9JVDy9dZgZY5DVD8+dEwj6USsh9p6rojJHFUCQR2u2kWiac/MsZjNw57I1VBOU9ZNR8auQBSDkgeJ/dGiWRvBvbcnpF+MUTx1CwGZMqJC9VL0OcQ/TmQ4XQy7i78DPiCGgCjq+D17sE3fo66gZ+E/sD76/Fc8wqb/x3sWzUj+75cv7J41RX5qztNmaQYzK0+HhX0qSmVnv+2+LFY4xnN8L/ZOkSOivwYFnskokX5wuJB9X1PzyUxx4wQr56e+jGk95Mi4Ke0adXsm6Z/6P0jpAcjq61sK7f5XHIW5AIt+n02ayaew4PD2RenPWAkVXjALn+VYYrEOFtJHMTJefVlHiFUaBBCCpnXFTwFESxx7PqLAGXIMUBBZ1QO9K6NAFoBA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2906002)(316002)(2616005)(6512007)(44832011)(956004)(6666004)(5660300002)(83380400001)(38350700002)(38100700002)(66556008)(6486002)(6506007)(86362001)(26005)(8676002)(1076003)(508600001)(66946007)(36756003)(8936002)(186003)(66476007)(52116002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?y3psTIrz7j4qjAV1wseX6Z1tSzozsaZQD1CWZ5twLCIfr38fOvFDZ2Lu5FU6?=
 =?us-ascii?Q?9ojT+dT0zPPp1Z+5s0pw6tMTAko8udNCXF12w+rUeo6sgIVwti0hJpQePItO?=
 =?us-ascii?Q?5yD4PB6gz1EHRAm+5Dx389Mw2rcXN70PJA9PQF5n3W/8tqyv0vud4xBfNm6B?=
 =?us-ascii?Q?W62oYPEIJruGBaHBgidqCmSQgn9uJ2s7JDte170Z8uNMXfXjPNp2f3YZGJaq?=
 =?us-ascii?Q?WIsGMnS3KzLzFurqSr4PJAo9QRuoEwYJAvUabaXM4F/HjmBvHFCwernqsUWi?=
 =?us-ascii?Q?v+B71LwjZCAZgN0Okc7VUz5C6ZYwhWbv9se64tko0q5iIV8U72fGurovNFPB?=
 =?us-ascii?Q?TQ/LjVKSeviDetKv8ZIwU64HvLltYaTw+EwxX4FluHDymhJ/Puh6KN0/7Gbz?=
 =?us-ascii?Q?kwo+6pxC6uAQThZYSj071uMsDnBKTFHYrqzujbdRx9wvI/Ro+dGd9pqKcOXG?=
 =?us-ascii?Q?RwFaIJpuD+oyi5JaMjTpOCGY0KiIjZYES8bVbDhh+mawV29H8mVn/PpkJDl0?=
 =?us-ascii?Q?rp2/5Hn7/Ci3i/+1bIGXLtG5AMUKTwmVCESXG5XcSpUiIRFLARyaxTeD0OM8?=
 =?us-ascii?Q?NNpwD6/mybmx2MlBXuaOCXyD8vszfd9Vwbd5nRqtaOKjHx+ike03R2I2UrEa?=
 =?us-ascii?Q?1XhWMrU+mZ1ntTtr5zZ6gOsi+9bV2Q0Y7dOgplR1D5dFUYeSDsM4bYEpRWoe?=
 =?us-ascii?Q?fDRyXyeAGVpawRw63NMKLwUDDNklgsoAvyLFOXzIivvP79BtDBzR5HRxIwMG?=
 =?us-ascii?Q?92IFFKLfetpady5KN6AFkClBK7HHy2betZ0i0qqjwWkZLESnvqVX6OD8B4eR?=
 =?us-ascii?Q?873aRe9rC1oxCgP6deefNYcsXOE7S2LemgOTtbilGWYD5FTGWOT0fD3uUbZR?=
 =?us-ascii?Q?1lvDGKHEKzMRj4DzJXjncDCpfAA23j0zMHPAwbByeIBlT21xbJ0FVBuQEiE/?=
 =?us-ascii?Q?8Wd3qBxd1JeDm4nQmRFO4kNJXsygU8f6X2iX56CGN/SdqAYq34GGKCWMFCbV?=
 =?us-ascii?Q?RclI3MrogRcA7wQ0ukS/umZD/0qwcbAp+7iL1cQGu2DDJLsCJ8G6HRli+n5N?=
 =?us-ascii?Q?yssxoXN0KJCEY2ZHOhK6gC/xCZhR7PLdlHIYu55h3IExZS7N4kNxdZhZY1k3?=
 =?us-ascii?Q?mfHA/LrhvMddmOxhL4xmI8FJFguhQfsFsqDXmGoQg9/cHZXKigVP11N2JyFx?=
 =?us-ascii?Q?ECKDyWWNIiwPolCzIoMGQVHSWcEWmb1edbteCs17nfPpuUCFoycXdNsueyQ9?=
 =?us-ascii?Q?HkgH8jo1m0KSXX6ztfACZHD5luXLYkrz86ugUuwDFAUAjIggxMoLRvr3RpSz?=
 =?us-ascii?Q?wjia+rINY3REIzurzJz6rjNg?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6caa81b2-db85-471e-2adc-08d98d4e04a4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2021 07:00:47.7943
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 XZgZsIr3h1t8x7/6+3pbmWnSFzQQUC+x2dyZqmR42k8XOA82DnKdkwDIoJorwxE9wmjJRu3UxUwEFIYsi82tjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2239
X-Proofpoint-ORIG-GUID: fYjSHCQ5hFFT3d88zn-Wso4-dVjQaZkw
X-Proofpoint-GUID: fYjSHCQ5hFFT3d88zn-Wso4-dVjQaZkw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-12_01,2021-10-11_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110120038
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 07:01:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55030

Inherit pkgconfig to fix the build error which is introduced by
oe-commit:
  commit 8e26252b45b7660c7c67c702411bdec187a76ffc
  Author: Richard Purdie <richard.purdie@linuxfoundation.org>
  Date:   Sun Sep 19 16:17:31 2021 +0100

    layer.conf: Extend recipes not to install without explict dependencies

Fixes:
make: pkg-config: Command not found
/usr/src/debug/libselinux/3.2-r0/git/libselinux/src/regex.c:399: undefined reference to `pcre_fullinfo'
/usr/src/debug/libselinux/3.3-r0/git/libselinux/src/regex.c:444: undefined reference to `pcre_free'
/usr/src/debug/libselinux/3.3-r0/git/libselinux/src/regex.c:456: undefined reference to `pcre_exec'

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libselinux-python_3.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux-python_3.2.bb b/recipes-security/selinux/libselinux-python_3.2.bb
index f589ebd..136f538 100644
--- a/recipes-security/selinux/libselinux-python_3.2.bb
+++ b/recipes-security/selinux/libselinux-python_3.2.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
 require selinux_common.inc
 
-inherit python3native python3targetconfig
+inherit python3native python3targetconfig pkgconfig
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/libselinux:"
 SRC_URI += "\
-- 
2.25.1


