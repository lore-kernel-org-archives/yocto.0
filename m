Return-Path: <adrian.zaharia@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3E1C61DA4
	for <webhook@archiver.kernel.org>; Wed, 15 Mar 2023 14:30:40 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.9620.1678890635812026277
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Mar 2023 07:30:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=K+V/3IsC;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=24386f8b98=adrian.zaharia@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32FBiFp6024902
	for <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 07:30:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=BG61iAsym8RMQQ+PvP0vBLtzeoB8LB7jZMbjSvalYkc=;
 b=K+V/3IsCfXAqsFhF4aWGQJEPN3Cy/7Zv5yD3SIddrJoTruuFsWWuCwdZaErNnoVTspMJ
 Bm2eJ+11TwUzssTyvQ1FEVAHYi+Okrc3y1SGSqir1GAyuUxhs37sndIKSDF2Hdj/n+Du
 6Yq86czZMkG/6TR419S6igx69wq5onT2JcElnZIrq7eBdefsRzmJo5+l8hmIYiSorTmN
 p2REh0ucuNBVq7xwAP+RSSr+N6zHxK1Q9YULjuUS5jLhlFWx6dh7tn2qb/NQvMcBvsTZ
 1Lj5T2fVJ8YarWlSDpU9CpIzuSCYl/RdjLTAqrKh/isR1+CP+E4gzTkPScZ94ABSzH2x CQ== 
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2169.outbound.protection.outlook.com [104.47.73.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pb2avgmva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 07:30:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HFdXliTNsHW6KgKpz8XNJUt5QapZU5if7j8FgXS4aIDAUWeroroIlzuq1XCjTrc7V6nbUJHSitPcJGYpdu04gandznmltLWdJcXH+M8LiQnKOy3NAKGQNZCBw9GK1kgWOu86fzDM79sIHDA27SSK+IOt6yjRxEbPhdJREy8aR9tb2gKJ4sbZUpM748I2NCQbagBBpJoXRsf5dK2DzoQSzX1O1HAWfgSpFxjCv9JnwUpSL8BOgbeX3V2keZvhBl7RfWtili7t9Bz3YIfX7JDZJqDxhOszS0y99C3erqSy2fJcwjOdP0zg85w5UeFPGgthuUHucOwueLaRIx7OzUVirQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BG61iAsym8RMQQ+PvP0vBLtzeoB8LB7jZMbjSvalYkc=;
 b=D+gcwYyrYLRwIIvsQJARR1A7A3UfWZ7fQxv+w8KjcPHvhdSYAKTpzzyZo094tLZkpVWsvVyeQkgP/R/jEw1tkcSnX8bnJZs3cYC76cpb2x1zbPYzk4RMPaIu7pcgchyplGuVHLzkeiHQ9iLbe+PmsgsdlKApON098AxNswJOB5RG73TOgLOwi/qLbU3g3AAsORScuP1Sf5GHaaLuyZMk3LIE5wpF047nz8m52NzX79LcIcvxULcaMKGFcRiLi5BfVK+s6CTK0E5PMezN6xYxopLCJsBRe14ZLhzc/7Yx3KiNKSIiimt+tEVAo+ODpP1x8ReGjyP9Opc0lo6LlUeq5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from PH0PR11MB5641.namprd11.prod.outlook.com (2603:10b6:510:d6::9)
 by PH7PR11MB7643.namprd11.prod.outlook.com (2603:10b6:510:27c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.29; Wed, 15 Mar
 2023 14:30:33 +0000
Received: from PH0PR11MB5641.namprd11.prod.outlook.com
 ([fe80::b4ca:be72:6440:6290]) by PH0PR11MB5641.namprd11.prod.outlook.com
 ([fe80::b4ca:be72:6440:6290%5]) with mapi id 15.20.6178.029; Wed, 15 Mar 2023
 14:30:33 +0000
From: Adrian Zaharia <Adrian.Zaharia@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] libmhash: fix multilib header conflict - mutils/mhash_config.h
Date: Wed, 15 Mar 2023 16:30:05 +0200
Message-Id: <20230315143005.1112629-1-Adrian.Zaharia@windriver.com>
X-Mailer: git-send-email 2.39.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0801CA0077.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::21) To PH0PR11MB5641.namprd11.prod.outlook.com
 (2603:10b6:510:d6::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5641:EE_|PH7PR11MB7643:EE_
X-MS-Office365-Filtering-Correlation-Id: e98e32a0-cdbb-4d42-e192-08db2561d55c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	19JRsfIvxdyhITNrzpqZDRZVtyxovqUgMZPZ3Y77n4IxofIYA/yFlmLdGkZedVnbYxCzHHXsTZUSRJQJa0QoKKApk9bHEHRwVjZpSbLxvJK+EFniqdbLCjNWgfZl/Gu2/jwnYuzllth42d6R4W7rblyvJSn7RiS2fwrycykv1CqWoTEigN52phhhRsvYq75iXVQmK54uOrUB5UAgwfZYCWBrdky/6hCTbiCKS3TjgSmEYKymL2uBxWe2JWHRAv56PcVmGGUvU1SdEN/tiLvqhpX3PAF1kMDlqWi0HxKGv4+glIFzNPsZoEBx4RtKhjeF5sfzA65q8u39cXVWRR7SMl/irsgxa/5OCf9YISerHPpQMcV06U5Q0gxLZT25k4+A7h1Oc5zajJybLqlJ12A/dKfmLTbhDlMKVZgWgRorQH8g/e/hhd2UeGzh07pKi48/KGNRQXfOF1bGMQdgBHYM1qTY6zupThNLVunwQky4xkqiQrK7fmNnX69Kuya1pEOKqVeT3gx1Bxr4lk0STAy39WK93EqJ8/6K56eW/C63cPrGfemjPViHv2rCM0zPI9wqwL7+yyCiE5mvJKOtMEo2mfDQJ4psEvr4ifU6r9oCGZl1p6sVq6W2E9LKbuVCZbkGAHWZKinQ1GFsPIIi3Xess+XoyLeLF5EfUCMXSN02Y28s30jVu54k5aAFAkQQoTYl2FSTziO+szfp57KAAGin5w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5641.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(346002)(39850400004)(376002)(366004)(136003)(451199018)(41300700001)(8936002)(5660300002)(4744005)(2906002)(15650500001)(38350700002)(38100700002)(36756003)(86362001)(478600001)(6916009)(66946007)(8676002)(66476007)(6486002)(52116002)(6666004)(66556008)(2616005)(26005)(316002)(186003)(6512007)(1076003)(83380400001)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Iy+evHqV1/A/ZpIMSZiWKpRM40KrzJZemSVFhmg5a3gEFjMG/+1+VxhAVf03?=
 =?us-ascii?Q?yOXwS3U2plHKEAK8z1sAUE9JNpMCaT7rWHR7vdsOrCD/wT4vedlXFqGeTvVZ?=
 =?us-ascii?Q?CVVp6hNUtGmOV3/xoNJpFy/YOhNSX3jaWmxxFClB6SfM8TgESRY67OmLozU8?=
 =?us-ascii?Q?7iByVBHJye5Pw/Pzmnmcat7oH5yRot4p4yspxc3r8GdsfWUcSUVJifg21Lf7?=
 =?us-ascii?Q?oMyF4wp9Tvs1hRyS/9uvVV+JddhGWWUe/hpOPwxpQNh+FQ26KZd1gP8Uihja?=
 =?us-ascii?Q?9jAbv+xg7z+HFEvR3nTptBwLR415uoMGvKbLbfQuNcVu8ZEgP59pJItOmQoh?=
 =?us-ascii?Q?Drz9oANdKchW17PIqcz/hO9wQebtpe5XG2VlA4bhrPJ0tkSmbJ2hJUn27AQA?=
 =?us-ascii?Q?QNLtmsdHJcXccSn7IByLSwRiEIo8f/YDv0QOucICK78BUVGIOfEei+5U85If?=
 =?us-ascii?Q?1BpUALsteHkxIvr/f3kgF5m4rTLyFk30cbeH4Aba4nhxvVUPkzK8i1pGPCuh?=
 =?us-ascii?Q?RIU1OtGF8XWvi35v29TygcsvWxwn9w58DdF5uXgzoffHD0dF0UbJEvdTalWd?=
 =?us-ascii?Q?BVKBEMX4RGH58nsrbsn5c8qKDUIpJuXHtHiS/aqaUtPAjG8sZL7pzO+xFlV8?=
 =?us-ascii?Q?B7cmG19zYnxn7f26YA9Vtl82kdJrQ8fvRxhjmVw/RWfifJsZLmyOD/DS2wXh?=
 =?us-ascii?Q?wjLinxfswaHs+S0RsHNIy8G2+xLNeIl68OrQsN+VK+LNw/3TTBs8ZePdaHfu?=
 =?us-ascii?Q?hRFxHU6jGiV+7LkT3zCKEBx692FOnvM46EjATxTc0sMKeR+dN4RxQLDUHw10?=
 =?us-ascii?Q?/kY0DPLz8Smy/UDPUp6b7dGWWWMgUHRfarkXsSBkzPHlwyLczrYXBFOR+myI?=
 =?us-ascii?Q?eV4rl0Y+2th+JC7aT/c4bnKH7vdITeQcuwPEe0K3kUias+ga3P4ltIgiT6RZ?=
 =?us-ascii?Q?kYCDrZCSYte3l0UprtHf0TOJ5HAfaUDNvEQd4DQ6eeJapMOHIrd+hubY3ywW?=
 =?us-ascii?Q?b7yGvGDUNYt7OuX79Ym0ECtTA/aHjHb9Oj110l49gV4Vx0yc1UN4q6QI+uve?=
 =?us-ascii?Q?3GwMXkuCUkCw9OYJz7gR+IafYjGBFDxjdoK4lJR3motlMJUBVoEV3gX2ErBq?=
 =?us-ascii?Q?qToD1sT/os/DpWem2XSHPictdGdjJ55LPmX8UGwbOz2mKoIk0dahUWQzERo7?=
 =?us-ascii?Q?4CXg0FTF3ljSLN/JVScaPu8tbDYy2d/VDyCpyFn3s0efXqwdozclF24JJG2z?=
 =?us-ascii?Q?CWNuy//tzA12BT9iQZXTR9qOmorPjLEAr2Cy3qov3zRHIrBI+qJwo71ACctA?=
 =?us-ascii?Q?GHtkvb2KajgzGIOgMLPtFmQsTrQ9qit8hrX2beiR2uFYNdJXM/DWAZ9YI+/K?=
 =?us-ascii?Q?KeOgC8tcUezpp09xrmeY8mZtORA6Qc/wCWy8cYNyXXMCPyaSsSRpmV/1K9d4?=
 =?us-ascii?Q?VSCD3/rFmGwlvOp0WcPPnqphyJzOMa4EzSL4Qp11wA87bM3GGveoyylAWEW6?=
 =?us-ascii?Q?jEN+ZGp2/ZiVaihAcDFk3CrM18HtXL/28Hq8LtKrAy6dPIUblCpryTI7QDq8?=
 =?us-ascii?Q?+A492LnN+s3l4r6KIokFJGhv5DDCtIksV8eb3SNwUUTsAQzpmfPVWqlQvq1W?=
 =?us-ascii?Q?Pg=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e98e32a0-cdbb-4d42-e192-08db2561d55c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5641.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 14:30:32.8183
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yRfeN2EILJNRmgSXM6DP3kr5BVKNDUoMZVSgWSe/lWpCxmtocyVAr94NNrd4y7h6KiEi35i824rqd/N/Ghl1y6I5KLCM69npR5JgP0dpy/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7643
X-Proofpoint-ORIG-GUID: n62ikycf-Jfi_x2lr8im2j5HtRE21FkM
X-Proofpoint-GUID: n62ikycf-Jfi_x2lr8im2j5HtRE21FkM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-15_07,2023-03-15_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=636 suspectscore=0 phishscore=0
 clxscore=1011 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2302240000 definitions=main-2303150121 domainage_hfrom=7
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 14:30:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59433

Header file conflict between 32-bit and 64-bit versions

Signed-off-by: Adrian Zaharia <Adrian.Zaharia@windriver.com>
---
 recipes-security/libmhash/libmhash_0.9.9.9.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
index 4d1f584..49139d2 100644
--- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
+++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
@@ -23,7 +23,11 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/mhash/mhash-${PV}.tar.bz2 \
 SRC_URI[md5sum] = "f91c74f9ccab2b574a98be5bc31eb280"
 SRC_URI[sha256sum] = "56521c52a9033779154432d0ae47ad7198914785265e1f570cee21ab248dfef0"
 
-inherit autotools-brokensep ptest
+inherit autotools-brokensep ptest multilib_header
+
+do_install:append() {
+    oe_multilib_header mutils/mhash_config.h
+}
 
 do_compile_ptest() {
     if [ ! -d ${S}/demo ]; then mkdir ${S}/demo; fi
-- 
2.39.1


