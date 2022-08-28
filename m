Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93051C64991
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.55469.1661653799925120737
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:29:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=GD9MCBQH;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2TgpO010099;
	Sat, 27 Aug 2022 19:29:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=NFEPbNFxfmGOybpD+3KM1zmSLBAiFCczsNz077+1XdA=;
 b=GD9MCBQHv6v/JQfg/U3zoD8LoBtMLe2KQ1xPZz8L7S0So5u0dvLCSQpCg91ZcuKnLtKi
 UyD7aXQ7y15kggNPEihPAQTBqYj7pNqxNrPUvXj5gVoM50evxGXE9/uIFidcNeDtaFya
 XP+wbrEOQEDBVNgnxKD3wwNnlfd90bDEbFkaTUGwLYwf7wylJgRxe6lX7IDXC5gfRwgK
 9quE0GjK+8GhT/3hqZgLgZrESVDsLAfhkYGrJWAsmZKcBqUiAfAyR8Tv8HJfCufl8zBt
 OKyNVnNMezJuMM5B6ViwcB/Hu5WxZ8ho/ue+/soye8XrGE0FTpCgLBkdleSiEOfT+NMN Pg==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2048.outbound.protection.outlook.com [104.47.66.48])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7ej60hhu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Aug 2022 19:29:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nx55XthRLf/TWhVmEmtAL7gaqhZGGmCZ1qqcxIahvVRk0sipwH77Ro2M5MoEMZzWWZRHeNoL8FwDPPDxiNnaRHSHnL1DB8vrc8Gs5t59zBUEdeOeHUz1xUofQXGSiFJPYzU0Pk1CTAM3G+y07uBqOTfnvZpGju+UvMGmlfGVDzQcdseNrtQ+LkhNOkDUHLFdZT43Bu4AvbC85Ey406J1nor7S2bKEeuSlhByNYa1I1X2sS7x+JeR09CqeNq+pCTy53VePvI0PCzrspQwzgOEBPUlJABO9c8uwKtoxfvXMB5hes77lkToDCFp5Q3ScbbQTIHDb6wnYUu0+UClEzEnsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NFEPbNFxfmGOybpD+3KM1zmSLBAiFCczsNz077+1XdA=;
 b=GutcqTv7py+zjwnJw0k8/WE5X5n3MOHmynZXyqsN73d7Jwob+haW70IrL3UTN136VU6OeOcLocusTeCX8Sb6V7oe+X8h516gIPnXdoHBkMVep9q4/HfmXFXnCceoe/++4PyfRtID+SLXefmSC3EXe0jKrF7KenOd7Tc3BkOdCaOdcsGVBMX7LIZMYlPS30xR8vKKH8zdJ3L/LjGVJEpMjKe0SUfJ6SWk+2G1KDoPwIEIyqZLi3hV5jIxQjRGtbX9nn17sBLUKCwh6q7ZbNJSIWkyUcyNWEZeMctouEXySoEprg7Jglkcl1NvM55Vb4K+QFTBeg/tASE5AgYZTbuv8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:29:57 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:29:57 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 07/16] secilc: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:25 +0800
Message-Id: <20220828022934.47592-7-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220828022934.47592-1-yi.zhao@windriver.com>
References: <20220828022934.47592-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6f205ad5-39aa-45ff-db92-08da889d32ee
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0cmO3UoOKIKnKP69l8MBteY5MLocGAtLFFb5CKIhqlQgzUZ7sij71ytaaa/O+XFYuGUnqqDIFgLYrtQ0w5BzLv5Z0CMugcOBymIutX/uxeQoSwB6uKILMRf5eYpFNJf7rQnwLyvfjYwztXUeYMtyfKPfY/12PISkNItCyeMkm3uGOpTznA56/3EnB8Q1ae4+JAY6brK1uZdPt+wtxzFHgTPXGVcl8ulcs9WVXH6Ho1amgP9KBlfzZfxgJeAp4AOIWKwUee8D8B003/pT7fXpYXdRhmegJ23AAfbZad/i2Cla1Juq8CCWaoJTgwxHSuXZP+qAZimXlgWFfgUCd9S1FhZE9hinnQ1FwUuMBM6tXASLofhz1A5cg2Ix3XLdgUqv2EYSl/my1QJPobAZHkMyGz7exDnXBUHWbXCiBTKxSNhbSyesGu6J3v1/26p5vl2oCe1R0AYLLzfWNMJqbQT97Qtt7vPTXQyZtws1nO62PnkFb+9FEgPhTslNKLxQhivihBUkgqgNQ9xO6jbxfInFsyIDVkJ/XIsO/1GmoJf1Idh8YrTBF+Jcg+xsecRagG+DSRbXjGmwjFu5vZ7Y/sfJSZ2wXI9Gitp+G0QcaivLAD+eDf0yHjrgSGWKVzfCqC618Yl/G7D82c4McVI0PLywNTeTSe/3YhXo1Nz0ZIFjYwzLOt6Y7NZiq3bc4n7ZxDN/gxkpAFiMbtB/ExLwethLDktGIvzXKY7CjkHJdF2SJCFwrlYtk1c3s+NA9m5nZAHTPZcN7YhD2TE7lybaxTAKcw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?tO5Ya24bpS68N5AV1ngdfiSlMV992bxpDymZag9J9pWtslFhkgKOceENcfx2?=
 =?us-ascii?Q?80RuH1/GTp40eJ+XbsY19oIrkQOehbHS3NMm/7e9pRMM/KTMmPR/+6e+ef9Z?=
 =?us-ascii?Q?mAKrWuLYZxthY8kFtD1xGPf1j47So6HqV1uNw8K1OkFqeSpoBjzUrBJZGLmN?=
 =?us-ascii?Q?PEqXIEDJVtHzR+e0yv81jA26o29A942po9PmXrZKemx5XPktvp24snFnEryY?=
 =?us-ascii?Q?Qm1IxjTDMEcrh+4oNzXRLKFhrWId8GG2osRtbNkB0wBX2dVQpfUd6zS3G5+Y?=
 =?us-ascii?Q?cynQpJk0iGf6KI6jHG1G8bOIpF0kkVYaCEmm5G07JRrn4xCP/vJlEv35/fWh?=
 =?us-ascii?Q?cX7g9duqp3Yci3dstQV8QmqGfYDzUzr0VWQgptBixo7KRTOjuw7+Snp9KPD2?=
 =?us-ascii?Q?Ke4lcWK74dX5EvL7M7NylLlf1vFeqKx3Iac6+aEoLjxKNk4mTWNduxui+N/D?=
 =?us-ascii?Q?emBagVfTHVw7zULOR5Gi3T3ysXnOksv5SedpZ1PX49Dkd6uzCV0wDAuAYgRW?=
 =?us-ascii?Q?BUeIspUEScSQkqGOqEb/ZVDU1DRQ1EOlq+Q0N8IXmFE6Y7lrqyJJA8cVcefC?=
 =?us-ascii?Q?ckNyA2OU5uUktPCDBA5KpQLt3rkFq0uqvrLmfn17RZ9GIXp/j1ksOEGJTH4r?=
 =?us-ascii?Q?SFuY8zVBXKfRo8T5uheBoQSAmY6II2LTMhMD/IaYwwVRLkF5v8IeogeaZq60?=
 =?us-ascii?Q?JML81fuvo/9E3LdsOyEVhy8K8QtFGvaCqrkacmHsqG+AUC54feb62y0PeXa4?=
 =?us-ascii?Q?qx/oNdHkFqVvDYHwICFgI/EKsHY8RvbWwv8RN55XdBAo7cFKz8ZFt6jfrBwR?=
 =?us-ascii?Q?zGwuVs8cRNkUdXIve8XRbHv57RVKpVs7BcoHXul4OUf25Y9yfELOtqeBQyg1?=
 =?us-ascii?Q?Nc7EJJLjQ1KjJzQXfAyvWlCHWPBIstCLEc6h9k6aUrlUCtw6DzY6ABsLwz8Q?=
 =?us-ascii?Q?h81VAUgcVcs7H6U4DCasbEb1NjsKcZYK/gSBj902tP7Bb1/5eMSEq3D9wNfl?=
 =?us-ascii?Q?xxHSfkhkPktfSz+Di9bfwkjWGz3aWQohkOsYdww4OTeZD1C4XznbrexWE1to?=
 =?us-ascii?Q?KJGaN1hJo0lfvnSdWMhKfrS3S8Wxl0ZLOWZ3lSxm5sfgW9tR9lKWLVN0HnJs?=
 =?us-ascii?Q?wpRLKbU7/ykCTZdy5np6XWYYRjeblNOHzbBqrrjYW55i2rp3hQdqoV24thB2?=
 =?us-ascii?Q?2zesV9q9ciGuNoqAwb/n4qt7MM5+t+969oKQBXquOLu1D5mwBjwvdnR7hd1N?=
 =?us-ascii?Q?wn7DcS/kAe84XyiFFtC4+UCAx1RfDBbWjGMTX7EGEtZks8S/Wvf9UuE35y/G?=
 =?us-ascii?Q?8yHX/1qg4goPXia9R2uzOZdls6BhzmRRPsPhyXgTXT8YckVq7Yq3z1BLy7R5?=
 =?us-ascii?Q?Z9ZCcs2Ioqc9oNDPuCZ8nBxrGZeoukE+nOG3nnUbSGZZJyY59BDUDPpMSYZC?=
 =?us-ascii?Q?69AqjFib/e2YbxjtLQHWW3Ihvm428HOODuX9h1bkNnUeVKvdzYrLG3W895cK?=
 =?us-ascii?Q?Gy1l02pdDSsLqHCWTSU6cSeqK4MmIK+fW5x9LJgyFOIjc4bvU4Cre2bZ9mOW?=
 =?us-ascii?Q?znvm1J8MlPf6lZmdD5bOMStzISJKXqd0g4ixwYV7?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6f205ad5-39aa-45ff-db92-08da889d32ee
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:29:57.5072
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 uifptmHsLKkHlTeYZqwAi1AVEeim+jN30iN7T4hZQRUMvOvsQc59K+nbusLw/rXfeVm7I7jj0PTsyiFUPl/oqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: yEQtRGFtAIXMmaaNNzh0BuA9kz_P7LGA
X-Proofpoint-GUID: yEQtRGFtAIXMmaaNNzh0BuA9kz_P7LGA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 mlxscore=0
 adultscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 mlxlogscore=688 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57922

Use precise license BSD-2-Clause instead of license BSD.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/{secilc_3.3.bb => secilc_3.4.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/selinux/{secilc_3.3.bb => secilc_3.4.bb} (85%)

diff --git a/recipes-security/selinux/secilc_3.3.bb b/recipes-security/selinux/secilc_3.4.bb
similarity index 85%
rename from recipes-security/selinux/secilc_3.3.bb
rename to recipes-security/selinux/secilc_3.4.bb
index 60ab2fe..e30cd3a 100644
--- a/recipes-security/selinux/secilc_3.3.bb
+++ b/recipes-security/selinux/secilc_3.4.bb
@@ -3,12 +3,12 @@ DESCRIPTION = "\
 This package contains secilc, the SELinux Common Intermediate \
 Language (CIL) compiler."
 SECTION = "base"
-LICENSE = "BSD"
+LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c7e802b9a3b0c2c852669864c08b9138"
 
 require selinux_common.inc
 
-DEPENDS += "libsepol xmlto-native"
+DEPENDS = "libsepol xmlto-native"
 
 S = "${WORKDIR}/git/secilc"
 
-- 
2.25.1


