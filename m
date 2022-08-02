Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03CEDC00140
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 11:39:12 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.5082.1659440342672078910
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 04:39:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=pcu9WFPP;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5213e48a37=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 272BHJZa009053
	for <yocto@lists.yoctoproject.org>; Tue, 2 Aug 2022 11:39:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=WFdO6sq46ecR+O7XF7pt3Oy/hUulbsis4mw18JlAN6U=;
 b=pcu9WFPPwNaNABKKb/Ws5w8NC6oDVGpR0E9rJwaR2dyPp/tWPYzBuokf4JsM/0vpQGyE
 p1/1pMFx3DqyiNthiumU0GdGWxN4Dw8x0iOQGKU1Jl3Te3uL5sxdEzfurA/UTQ29YTy0
 EkyXO2M25iNU/pu84o+mT6xmg9VY0Z9SbpXgvsjI2fzxSh+XV0dQbpnmIaJMd/590s0F
 /O83kH1Io28GLFk/JExjKV5k9YIaPLAXJ8bZIOA+T9Y2w67So1Wonp+QZEvpSEx0amD5
 dxEHrcGmX8pIFtrn1M2igZXI46vpIejjo9WTI8eTlANDm7M4YXrQhKIBArDKpzkU9NPk Rw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hmsv22b3v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 11:39:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PfJ+4wUOAiGBiJiij3uGnaQl5a0wbL370tsz5xGp1x7RTlcsHaXyEMaPGosdCfQCy9Y628AD7jeoUlMUIC54RlP06iae7ZtPLqPbk9od9YvIzWZegF+SxBhVTFD4Pd2W68fy1tumKADuesLzoxuQhNKrTmIGNGSnBNQdMQJk8XrgMXS0FogsY0glEls3feIIskyv5rmFlrSijQ33TBosJnnfFBPi2DJZRybjBA8mN9+Z8ctmzAm43bqe4iC0krwiNQfY7vjO1H+xcCEth+cqaj4FprcPxEGozv2JermyKJxYBTH5DXnmLxYB3FGMRCtVmVyc5xDRlnpIk2DfYe2WdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WFdO6sq46ecR+O7XF7pt3Oy/hUulbsis4mw18JlAN6U=;
 b=LR2AMLQQaFDjZfTYB8QciZkk1UKeZF11kWvj1bwST+rE34+RifXpVXIENzjLRJPDmTz+xtDfFptQyIRQrb6v1ue0ruzqul5tHaSImd9uhzSyCygn+zKRV6dYXsvLzkHBQbuhEee0ukaJ7Ifh0ebgrNJVZnfT8VFyZ6VSWepJEqtDpr+/eB0L6vTt++djRWoG2g6pOpqsqvd15P//IoXs5z/k/zZlPlFIe9ukzTAXy0zCHQeOwn8hls5YeszyuXJreu2bfb7hvf2HSM3+ZzbP//Xdplaxz8FR1dah17oiRPaT0fJkKlLZpOMX/Ph5ouvTL42SX7j9mT7Jsm6ICTjoLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by SJ0PR11MB5199.namprd11.prod.outlook.com (2603:10b6:a03:2dd::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.6; Tue, 2 Aug
 2022 11:38:59 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::df5:1876:3bf:d8a9]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::df5:1876:3bf:d8a9%5]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 11:38:59 +0000
From: Robert Yang <liezhi.yang@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH] utils.py: Use get_layer_var() to get
 BBFILE_COLLECTIONS
Date: Tue,  2 Aug 2022 04:38:51 -0700
Message-Id: <20220802113851.80315-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.37.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR21CA0029.namprd21.prod.outlook.com
 (2603:10b6:a03:114::39) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cea157f1-fdc1-4f95-d9ff-08da747b9716
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5199:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	G4ZAhQCGD4S+EMEneBCxodNYUlnMca1Cwk5j3+AMj9KvGc6p08Drz/3jxfRuqrfFoXCCFAHDUnh3eYBAnZ7szsCDM8h/EVY4tiMala22MSgHoj296m/ZRHttplrcpz5dIdC5NtaBq6pRr1pHUcfGAEAKrhaxqwG02+D2Fk4I28zh0+VkrghFg5CaBLajNQJBSDIOK0MpCfHnm+K5gALICd+p4K7w3WH6xZm227+Nw/2n8uZtIRpiIYad0+my77iCaqxAyaTRMX6yOaeMqk5B1xT9QXQO17P/hxP4ATi2cfC7QrUavdwfi3Fb+fhbv2q4l19H1MojXhC0/RzhJW2+jZLmk1ySvCza6Ko5FihlB4d1mHZ7h+wiGHSvUp1n3VfTyXXLzfJd3qhs8fHSGnDDdmopaAUkrmPzKDNlZzBVeDz7+tww7QVmMTTcKIFgdopsjxRF0WY6ltWM/gy4oyE/qHJO8EcBKQm/q+3QtdJGJX1GdR65B2P0iDSCyt3dlimnf0b1nPd7GSn9YU1q2kJMeLkVGkvqhZ/segM79AjLUrXcM/oqaiP8txh0rmryi/YHclpigq5jf1loqLD+O0bqXRJRlybLYiBn1mADU8WuSkKtvFRnnuFSU5AVhITlXYBs2p12G9rNXpx9fk4txgH/9zme52mwE4TbILHZmayhIu0Ni8dzwJtp2CwgllxKTF2+5CGwnu1rybLE20jDing3tQs6ebMK04Nt3hPDcra4MWjB8TWcx+m/e+HSfSYttmkTbI9SAvIc4kWLWcIKlim3qH2Bm+dtwdTLOBofdh6xBjU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39850400004)(376002)(366004)(136003)(346002)(396003)(6916009)(36756003)(83380400001)(8936002)(66476007)(8676002)(66946007)(478600001)(66556008)(86362001)(6486002)(38350700002)(186003)(2616005)(5660300002)(2906002)(6666004)(41300700001)(316002)(6512007)(26005)(38100700002)(1076003)(52116002)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?+HM1CXAHIot2nVppHa7OVi+6mhf0Kp3L1grO1WkDMEjuLH3knFIu/TuK3MF0?=
 =?us-ascii?Q?7fEL/85J4fSJ/uls39rAoVSm59CgXaJYiDSNj0ElTjVAYTGoPLrB7fUfHa/x?=
 =?us-ascii?Q?uzSEB4GG928gXYdCdG8OKjOXL6NpNLFRYxnEg07B92paBTRcB0TmEVw1ZH64?=
 =?us-ascii?Q?I9SbDi1Uh07Z0OzrdG2NAm4kW3vo1lpX43zLXAVmZ/vP7r2/quyxEV5i4pCA?=
 =?us-ascii?Q?f6OOSlXmtF5GcmKSxKIpVOD14Ceyv8AOM0mp5No0lP3aSFLuY6RJossWoCnB?=
 =?us-ascii?Q?vm2mPHlwdWNsdvdpc2cK2QMSZ72Zn8vLCpqfk1eNEdURXjqqMWtBsrGG/nMO?=
 =?us-ascii?Q?MhMCwCyYLAUzFAGPapVFgcTxEO9+QM5QvFsuh0NbG9tHfTqXZ8t5JjqZTFnc?=
 =?us-ascii?Q?bKeRoQ69Vkz5NqmPo0o2jEvW5EnZCaT86fbvLqIgF+lvBBLd8g8nk2oOzWls?=
 =?us-ascii?Q?UcOGRCV2K3oBA2AvyJXAetOjRZSKMe+D0wnzMt7/WDG49r1Sxt35K5Rv+5Xk?=
 =?us-ascii?Q?sTK0uaE0igdFZ+a1L9QrAGQSvlXoSBknqDZKLVuVvy9YQyMEsnCXgVFMdQD/?=
 =?us-ascii?Q?IfU9fZTQBMostYmvBUVE/Tu75YLzzOFIHO+j73JTWfa0J3/JKuBPl0CgqrVw?=
 =?us-ascii?Q?eJGh8TnZ29ka8sSumkaHTULiV6B3JLSoGy+3yrElxa9MhJpGbENEemCDenf7?=
 =?us-ascii?Q?LkyXjGD2pnEM7elYAS4oIffqQc+AqJDXj4J3g1bD7rv389bxfnXTzz0C3Q6x?=
 =?us-ascii?Q?iwJLNIrUiGxte5ILqAXMVKMsAkwceYP2a527ci21rgPbvlvgEm7sJhsYvP5q?=
 =?us-ascii?Q?we/40xVRe2Bf4JGLH2f9tnTfNiidxhSbDwUfOV2RuCME46mrxsWVYBHIZ7Uc?=
 =?us-ascii?Q?fQ1TYWsqnbnszF0xtZSbnJiRfvCVgziCLrbmKS2Zrw43HapvksOSTb07OHyf?=
 =?us-ascii?Q?qfRtJ9LOznUoGMSofMtqqnesXadMYlKTmFxDBQlTYo+q2Xk+STAnCrpCK/WM?=
 =?us-ascii?Q?VFN3jblMWFFpk/U8ew6/IHfBa4eAHZIyhT89OJxvh65rawCAvEU8VHn1OP5q?=
 =?us-ascii?Q?FzNzPei9b5Q1GFrkIXKvb9Kysm1ccDPy9217GxNnloKqf2olOW/RDfnbG9be?=
 =?us-ascii?Q?GZJNA6N83540euYcKAR5ke/Df0ryQrFX06TzVQs24q0yOMhVMnM/dtz1DUpt?=
 =?us-ascii?Q?4xNjVqMr75fKlugqoeqxYsNSO6wMmI18k+EW+VCmzqUwAAL5Zg0qjITak1Rt?=
 =?us-ascii?Q?ev2VsOZFRyA8XFfKpMr+VXWa4gpt1HNzp+JMen3mUYcjI8qeJpNdW4p4Cl3c?=
 =?us-ascii?Q?bEvf/DPwTr8q+0I9LEqdbvJotsiz8olM6+kftwlPs8A3YP0Cm6tGWuPXH4Jf?=
 =?us-ascii?Q?MP+wLls+XbCIEsgn351d2dutI9sWmxELMINoMnMKi8InO0Vns4xFM1XVPuHF?=
 =?us-ascii?Q?IMh/dNrbVXlvOOj/ofKLkgI5z9UHm/dwc0BchPsoV4LyQOV/ETh12vudBzl7?=
 =?us-ascii?Q?VV2F5IVg/k9zVaSydEEQXBMJi1XwvlVhMVIlaPNez9cGs1gVt35z6jHsxbF2?=
 =?us-ascii?Q?e9Ihjz740DzLt2HmCQHBn50UxDEW1YSsiz8rqKmbBZ/swBhaywEn9utE11wD?=
 =?us-ascii?Q?uQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 cea157f1-fdc1-4f95-d9ff-08da747b9716
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 11:38:59.2409
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 V7kbx4E/JX5gKqA6R9+jS5CKszaR1mB9WdMOCGgDy27Rgsb4Hc4eimwrVRlrHs/I5+cdCWYiLDsYTxvg2MFpC73hHE0V7wIiTtDjfFQCzNo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5199
X-Proofpoint-GUID: d4C2i0JydQPpScp2SyJAMC2Edyf741k-
X-Proofpoint-ORIG-GUID: d4C2i0JydQPpScp2SyJAMC2Edyf741k-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-02_07,2022-08-02_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0
 clxscore=1011 adultscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 mlxlogscore=639 impostorscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2208020054
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 11:39:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57726

The commit 38e6288c7dad579518b0de2b6664f23be58889b6 has added oe-core to
BBLAYERS by default, and then there will be mutliple BBFILE_COLLECTIONS and
caused update.py failed to update layers (most of the dependencies or
reccommends are missing), use get_layer_var() to get BBFILE_COLLECTIONS to fix
the problem since it can ignore the extra oe-core from BBFILE_COLLECTIONS.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/utils.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index efd18e4..ed7fb47 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -188,7 +188,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
             logger.warn('Either set REMOVE_LAYER_DEPENDENCIES to remove them from the database, or fix conf/layer.conf')
 
 def set_layerbranch_collection_version(layerbranch, config_data, logger=None):
-    layerbranch.collection = config_data.getVar('BBFILE_COLLECTIONS', True)
+    layerbranch.collection = get_layer_var(config_data, 'BBFILE_COLLECTIONS', logger)
     ver_str = "LAYERVERSION_"
     if layerbranch.collection:
         layerbranch.collection = layerbranch.collection.strip()
-- 
2.37.0


