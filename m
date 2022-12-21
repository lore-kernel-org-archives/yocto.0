Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A684FC4332F
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 03:57:00 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.11049.1671595016473285547
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Dec 2022 19:56:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=r41h4yHp;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=9354952c09=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BL3hGao024926;
	Tue, 20 Dec 2022 19:56:55 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=03VTuG2sFvpxZtpkypLSy6Gvx8ZfvqxNPfqvu+oEY2E=;
 b=r41h4yHpJw4PMv8c/keCoW+L//OR7AieABWe6FoPb0s/7D/XxlkpK8HnizD/FuKvR8H/
 JNj7ZSxWUFs1wBnLaMWT1XwdXzcsPfTnvl0Y7VP/7IO5WP2UtH3euHE80IHBFBZtVk0o
 3woaB/fvKnyRHcuQgOKDk9o6vUNlUIwlDTKh2IwMAa1sHfBYNwpLBQJpNq5/62mEFKJ9
 AnieNOe9ugq9sOkqhm1GySNmCw0LtekLdB7H+0jDMomrgSzDfrwFf9uZvK3udS10yHHI
 Qfk0Zh/l20kdfrgYBxf37J39v+/cnSA1Ud4nI7SeU9FIUiILr85wK9cyyC/YPAR9o+Fy Lw== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3mh9x8tsdw-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Dec 2022 19:56:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OjF4E44e5N4Okhi2tW2RULvClLJKT7k0AaeEKhLyza+jJtuOXc+e/IKDCetA0XLJSwB7aALT4no5PFsyj9suEML/s7H3LIDA4g2vnRc6siIVGRHUgXLL4o4kcfc1FYPa4XuxmqPVC5l6qkDKQFa0htc6yYOBpgZx/DnkP5v2XpTlanxOjffyj6Eo9WdEktonIDDCwMH8Qx62mnVwUsqelbR099x2RyHgFaH3tLpDgCVB3cxIeCo0fLOcG4D+3BcvKqeKlHCI1oY5+sUa3PeLyK50q9rpQZ3k78S5Ar/VQxLGvuxHP9LT3gD1xNMCddi7OYflfZqw0LuKwEYC8KHzXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=03VTuG2sFvpxZtpkypLSy6Gvx8ZfvqxNPfqvu+oEY2E=;
 b=maCIkuRvpajTWGzrRR17J6eV8spcdPHgtbk54xmF7ksWAAE1XgokKkfWPwMm373HG9SzcoeqgZ1gwO/Zv/9oCtaXHik5uuXP2/lzhink+TeyaLRwxPARI1Z4SMYA6xUP9/QhCxeGTaQ6/c0jRpt6p42ECcNTAkqihkuzg4h5Gddk+hxHwxwggG4aE3jiqq6nsA+elLdpn3HvDBuSwvaolaFbbVWfMfwzyW6TTiBZzPLJcQYloNZ3bhe0tIkhUrBmXKILb3Xmz+yqk6sK+vUV0vyw1LmUmtRfdUUBpxNMif7NQXCOn1RXKMkchNKH+8IZioZxg8BuuXVdDPzm06YBMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 21 Dec
 2022 03:56:51 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf%7]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 03:56:51 +0000
From: Robert Yang <liezhi.yang@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: tim.orling@konsulko.com
Subject: [PATCH 3/3] utils.py: Prefer the one which matches branchname for depends layer
Date: Tue, 20 Dec 2022 19:56:42 -0800
Message-Id: <20221221035642.113852-3-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221221035642.113852-1-liezhi.yang@windriver.com>
References: <20221221035642.113852-1-liezhi.yang@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0073.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::14) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2789:EE_|PH0PR11MB5013:EE_
X-MS-Office365-Filtering-Correlation-Id: c9bc977d-1401-47c9-25d9-08dae307643b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ue9gwKsNankahzo2iZswGdG4u/+G+Y9HbJz05nsCL6Lb8qtUXNwQy5zs4FNgaBQFiWBNhX1fhw8Xv0JufkBSPGoKarPVlNHATkogAGqdpYcT7vi+XasfzfbP7U7l7AEftwjcrSlj8Pemvnaua6uNiBAIckRB7t+qK+F1/FpT5MAPZei2X9QiR/YjcLUUWhoL7ycXVpJhodXtiesMbhFBvvxbN/0UYKx3C0GtPlubh5zN4j+YNwtJqfUSj8hJ9WZzJZITG38qK3R26r5rbJTzG9Q3XPRlZYwB3UN9bkjekFqJJy5X9ntog7vH9KEemZCvJtrhRJPrc6SbfZBUIleCQCZIvpkIocojt5BBS3ovzZSc6NFBmtbNGMXP1SA4PI41OZOrDsemeCOqreE5AQQ4RnSxclv8kevBOvdS0rAMbvk68iVfd7uSfJJ0U4Ai59U3JFGWWSuWIc+VuNig8b+vDe+eC/KMQ0kpURUPtZULZyFONGvXZphecR7i2DTriDIq88eGMjBVemTQT2xR/XK/3Hv3o0z7YGcUlznP7Ir8QOrMZc+XSFv7uJL6XQWDjybc0uYzsQKBIz2hVkeaH6eSdBKKAGSCnEt/asi/oEcpHXJdtdWkIfCmloxDXC3Tg8FlFoAiP2TNlh097zMW8rohwxtX4Po1pkgfF4crvQcfkfpIoxZDTktYEPVJuB3Z+C5RZlOB6U1Tl9b/oC9sxgRGbg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39850400004)(376002)(136003)(366004)(396003)(451199015)(52116002)(6506007)(478600001)(6486002)(26005)(6666004)(6916009)(2906002)(66946007)(2616005)(36756003)(186003)(316002)(8936002)(41300700001)(6512007)(8676002)(83380400001)(66556008)(66476007)(5660300002)(38100700002)(38350700002)(4326008)(86362001)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?J4lyFziFf4TzJwLnrExxJ1T2apAnXPg+Y/xdWVdBiaGF9btQaElKjzSmJg/L?=
 =?us-ascii?Q?V0qGSulF7yRhyuF8C0PAJcBkTVEDPVHJwZSbu2F4j52C6GXPzmreEmBsIHNW?=
 =?us-ascii?Q?2rMw2CblsaDUAz8CHOXTCPEtJ8wBH/DCja8nDwDqsYZd0rDK5fUUokY511LX?=
 =?us-ascii?Q?mzygn5nDmXY5wWbhk37/rAkKCrg34NY/VBUc71UpteWSJ/ZZ/G98nz6vX49u?=
 =?us-ascii?Q?h+3E5IRu2UoDtszfLjdwsQ6qO5prKOO7NgC9DiohtR5+KQkFmdb0ke+PEPab?=
 =?us-ascii?Q?Cr/A/4hUnm6AyNNvDyFGdObE9aBD70VIUGbZdpxQ64UC9GzDsir/M+6S7nYU?=
 =?us-ascii?Q?YOMAAQ+8Fzg5RVjrc/0EAghrJO2PCoUr8sz6zGH32WGfP4Sivp3yjc2iNEZ6?=
 =?us-ascii?Q?WfTsTHy8gfMdP5ZrcNniy5+kSIUOZuOwKCaf5k/wxGiODXki98y91waRji2v?=
 =?us-ascii?Q?wu5PhabL9XLZRyhnmfsL+4a0FbhW3IkkHngtG6N5MPB9VIGeRicBBy1928pR?=
 =?us-ascii?Q?YTGLAvtALVtUtanwlbSPLTTLo7LAHvilbd6xYqapX/uJpX8M9U4j7SPOfxYM?=
 =?us-ascii?Q?YcfDJQqzb5+UFZTu765TCIMW9GTXGMzowuKGpX18SkObNY3Q4XZabJD70Icp?=
 =?us-ascii?Q?FrKXQwHugt0ahY6hmIpHKx3t8wFnl2jPQeUz8tpEirPX45cHDGCBROvavl8+?=
 =?us-ascii?Q?bDT4Fsy37wsyrj+G4tTGZGHPjbfFvi8NC2Dzu6Lgq61lQAnzRMa7nTpSkZl4?=
 =?us-ascii?Q?uVORHZR260342PjR3fu01YfpcHr/IYxeGi8oTRxV6esNfoa4e5DYcKJXP127?=
 =?us-ascii?Q?icHDE3cIZKSNiQNB9L3xHGJeANSNmwKbFugvfpmliOWPpoJQ6omtrlvfhmcp?=
 =?us-ascii?Q?P4savfEvS2BD5w41O1vR1dDvHjjq9YaZ3Dd+0A248WBINs2OGJzRYyoqMeNh?=
 =?us-ascii?Q?8YmvBH0EzzQnI0NlbS88HKb3VvGX8hhpNlmYnHvbENQTAYflHxge1hPNNhlE?=
 =?us-ascii?Q?7SMUQk7rrntzoJCqHIh8+Sr4UtLI4GkhFIZCUfBP84GMUj71sLHCi5VoGkw7?=
 =?us-ascii?Q?hT99T3qKdl3LR9lgMKXpW4vPfCLB/9RsF+fTl92nHbEoIUDMkKu1lBDT2zok?=
 =?us-ascii?Q?+/F+M3vN1SbS3Y9mtMmAQCnISZPvlvBGZD8JndiRDcD6ZZlMBBn4G0U7Wfcc?=
 =?us-ascii?Q?syjYPYXRFxfxrMvBgt6fPeoQlwBWMjIvTWlT9il6ikVGX42ogO2qlY7jg3QQ?=
 =?us-ascii?Q?oLC5KfZ5xcbYyE0LEnKW9OzYV/Vgx2xWFqgNNFZr/9g8tdrT6/aAYymAOMIp?=
 =?us-ascii?Q?DvJcvCQ4IWQhz668po3Xjnk8TeCg0l7Ay/+KRNgJhf5Ayd0ZrP1qSHpXdR1A?=
 =?us-ascii?Q?5nvylwRfk5Tx3t9324AAHa5ggJD0fzKE5J22KqLU8Gu7YgK4ZMD/qaGJ2txd?=
 =?us-ascii?Q?OV+9P+ppQMWIDxJ3OIX1A7XhlW/lR2AGZBw6pQTR943q3m6YyX1I6Kb/F0Bk?=
 =?us-ascii?Q?fb0p9EmFnfqUKpQ4DchPZLQD264xpaToQZAqTROqOhJVCRqUpOj53cF99PX+?=
 =?us-ascii?Q?ALEDQa5mEOf46mUWOZ6Awl6cMHnkFOwqDWNjfEBr3k6xzR5PEKftTUYWxXSE?=
 =?us-ascii?Q?hA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9bc977d-1401-47c9-25d9-08dae307643b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2022 03:56:51.3470
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +gfhzY41IE10SVNwtlpuLf56iWngi4RaeSHcKt4ouDd3y2VLoVlCQV27wd9o1wWPa4kt1P51gnaHNjU9mwPMJIqZSAfPdbgXKAiQIj0UCPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
X-Proofpoint-GUID: gGpm5E04WkH_YyYC_6F0WXaCzI6WlHye
X-Proofpoint-ORIG-GUID: gGpm5E04WkH_YyYC_6F0WXaCzI6WlHye
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-21_01,2022-12-20_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 mlxlogscore=616 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2212210026
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 03:57:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58847

The meta-xilinx was mata-xilinx/meta-xilinx-bsps, and now upstream has changed
it to mata-xilinx/meta-xilinx-core, but get_dependency_layer always returns the
first one (mata-xilinx/meta-xilinx-bsps) found, which causes errors like:

$ ./update.py -b master-wr -l meta-xilinx-bsp
ERROR: Dependency meta-xilinx of layer meta-xilinx-bsp does not have branch record for branch master-wr

And for build:
Layer 'wr-xilinx-zynqmp' depends on layer 'xilinx', but this layer is not enabled in your configuration

Prefer the one which matches branchname to fix the problem

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/utils.py | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 4b6aeca..a1f689d 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -75,7 +75,7 @@ def is_deps_satisfied(req_col, req_ver, collections):
     # Return False when not found
     return False
 
-def get_dependency_layer(depname, version_str=None, logger=None):
+def get_dependency_layer(depname, layerbranch, version_str=None, logger=None):
     from layerindex.models import LayerItem, LayerBranch
 
     # Get any LayerBranch with a layer that has a name that matches depmod, or
@@ -87,13 +87,20 @@ def get_dependency_layer(depname, version_str=None, logger=None):
     if not res:
         return None
 
-    # If there is no version constraint, return the first one found.
+    # If there is no version constraint:
     if not version_str:
+        # Prefer the one which matches branchname
+        required_branchname = layerbranch.branch.name
+        for lb in res:
+            if required_branchname == lb.branch.name:
+                return lb.layer
+
+        # Or return the first one found.
         return res[0].layer
 
     (operator, dep_version) = version_str.split()
-    for layerbranch in res:
-        layer_ver = layerbranch.version
+    for lb in res:
+        layer_ver = lb.version
 
         # If there is no version in the found layer, then don't use this layer.
         if not layer_ver:
@@ -105,7 +112,7 @@ def get_dependency_layer(depname, version_str=None, logger=None):
             raise vse
 
         if success:
-            return layerbranch.layer
+            return lb.layer
 
     return None
 
@@ -159,7 +166,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
             ver_str = ver_list[0]
 
         try:
-            dep_layer = get_dependency_layer(dep, ver_str, logger)
+            dep_layer = get_dependency_layer(dep, layerbranch, ver_str, logger)
         except bb.utils.VersionStringException as vse:
             if logger:
                 logger.error('Error getting %s %s for %s\n%s' %(name, dep. layer_name, str(vse)))
-- 
2.37.1


