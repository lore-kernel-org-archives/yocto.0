Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3031.1625116224489842875
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 22:10:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=IP3vgV2a;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=281692f184=qi.chen@windriver.com)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E492938C06D7
	for <yocto@yoctoproject.org>; Thu,  1 Jul 2021 05:10:22 +0000 (UTC)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1615AKIO008543
	for <yocto@yoctoproject.org>; Thu, 1 Jul 2021 05:10:22 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam08lp2176.outbound.protection.outlook.com [104.47.73.176])
	by mx0a-0064b401.pphosted.com with ESMTP id 39ga5r95wm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 01 Jul 2021 05:10:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RwTI1ezZVaWeZid97ZYaEIpYB0XEEZ0yzSwzMWhdjmI37PqRFszxgNdSlCnx1pNwVK2zXil2jvJxhKnNR/5cGZ6rinGSlQlLOvQmjyQ6FNNfQLUv6csiQlPepRrAEsIgcxyTF6au9DhFBFK7npHQUs1G5c8NjLc489H3KsyFlZ3vbN1kC1c2rGy9OXs1YOxtFaL14/GkS9pGBnkjs1ADIm3pvhrrb62pR6hetORzg4wpxW61/aKnYhFWiGeZDBohj47pZslZ5kYqOn14zZhf5GsmfCqcN/KNwzquFZ+3n+U77KWZK9tKisDcGGOIa1MKxb2MjB4/ljEFKXO2rfHAbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8/s+gxy20rwwy+5HUfcHDCkea0MCkxEcoVmaZovBC8=;
 b=QzHxnAL7ejTx6n28WLjRwOZNC7S1wIOY3IOYKxHHtwR5BP5Rq/JjEAAEofHta0f8NQ4ABdc9OK54DVOhV7NLo9wSkvT2LQ/FoigMaYE6lMt75FVEI9gQXnc2+Re6DrW+jEs6WsNUKK5/64gvkDq5XzwU/blwkFmQ23biowxEPGHob8awOcUGqzP/Qp75eCP9elSaMZuvPrp9hdYUEghcOA6Ervrko1+SjVFTK5eocZct1ivWdVQaX1/bJCOI4HhLCGgHthnzxPrgvFYfBLAmLNm1YAav8JveGt+ScwLrykOIZLxHhAXhtpOI8RyTP+DvA7kGcJ0eqKr1rKehH6Igmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8/s+gxy20rwwy+5HUfcHDCkea0MCkxEcoVmaZovBC8=;
 b=IP3vgV2ablUj+8z5lX+kzjVzhIqGgrh0RMgqBQ2gazLTg4SPhocUXoUNGlW9bYBxUoSiti7hpb7d/Nys939roCXk68evlrtwcNdfPEck6fJdAFxL+bSMp/O+JO/8C6G3zoG8d9kP5l2EjwJUIS7A3zhAYAki2PfgNp+KaMOXSh8=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by CO6PR11MB5667.namprd11.prod.outlook.com (2603:10b6:5:35b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23; Thu, 1 Jul
 2021 05:10:19 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::85f3:7d46:9b5c:ba6c]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::85f3:7d46:9b5c:ba6c%6]) with mapi id 15.20.4264.026; Thu, 1 Jul 2021
 05:10:19 +0000
From: "Chen Qi" <Qi.Chen@windriver.com>
To: yocto@yoctoproject.org
Subject: [meta-cgl][PATCH] layer.conf: add hardknott to LAYERSERIES_COMPAT
Date: Thu,  1 Jul 2021 13:10:03 +0800
Message-Id: <20210701051003.16407-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR0302CA0013.apcprd03.prod.outlook.com
 (2603:1096:202::23) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpg-core3.wrs.com (60.247.85.82) by HK2PR0302CA0013.apcprd03.prod.outlook.com (2603:1096:202::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.8 via Frontend Transport; Thu, 1 Jul 2021 05:10:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 08751c5a-5ba1-47d9-ad31-08d93c4e84fc
X-MS-TrafficTypeDiagnostic: CO6PR11MB5667:
X-Microsoft-Antispam-PRVS: 
	<CO6PR11MB5667CBC6D887EA13E06F7B1CED009@CO6PR11MB5667.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1iG+pwHKf+QqxttOlRoqTR5mq6ctM6J4N1EQADeXOwgYJo21IIrgxhupIQ0fmOf2lRVXCQOehdOqBjXGCKfGEGy6qUvYAIjdAYKSQd2v2ONZb4WM0TNgmRTdy+K8N3orN6UhlDt1M/a/MLpITpm+ufEOMuRoFuokHqrms7os3dfPak56FJdYBGTZY9uH83cTj3jA72o26xjOWad/yVWFFYr6b9uGJ32nAV1rh8KGeFKRiEvqWz7Enf8wHI2Q2MbCHTuwPrmHNapjox3HwtE05BC4Eok9S3OOtsgT6M1Dd1JkPviwq0YRed+XAVACjUVI97BXeo8jpL2JxJfT4xsr2eelrm+AfDlLSysDPez/KVRxyuupReK/S126ptsJTzCE8EAttbFveNzJXCdXXEuiBjsOa+CPdTkhaCDMvhckSp3G9++DbHWXfP/+a9paZmT4tgvBdXzx74CG66VY0c1soh2Yf6s77TAD8pfcX55IR4kSreKw5AK/50/G8VxceuyrhacNTfU9gIJKQ7BOz9fQ1TQpV0sFcLGR379mDEc9E820pEYId4LgVfZWsvUiKixjFeREOFtEkdahnQBqHQ/ffJz+L2eZXuSEr7IKHyHBc1P4GXXYkuK+jm+vCnC0r+MomS0Yl/FoCYaMcoJv/IqDiebtocBLtLgmNisqu/GCCvCEkQSdsrBhw+sRQr/nxbv/53ofQjHlyQv+yBUYPT/jig==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(136003)(376002)(366004)(39850400004)(83380400001)(4744005)(66476007)(2616005)(956004)(66556008)(66946007)(38350700002)(38100700002)(186003)(16526019)(2906002)(36756003)(26005)(316002)(1076003)(86362001)(5660300002)(6666004)(6506007)(6512007)(8676002)(6486002)(52116002)(478600001)(8936002)(6916009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?sJKy1hCI2NMjtJjVu/G/aHMjfa5SSufVNL7Xjgu2CwiTPJ3wE5OCS6Nj3OEr?=
 =?us-ascii?Q?CNyPlKhTCaLWdcFxUAuuStZDKSSl3srRIGRLSkaBVJVcdXUGyF6TS/BlSZjS?=
 =?us-ascii?Q?LO2r5m6gwb34FLR/QxRfrPocc9YNBUFiQ5HtD0qsbgxjTziN6wsJmcwOuCC8?=
 =?us-ascii?Q?E00jF9Ay+VW4r4UL3BW48Gn5Vs2/FNHMZlbkesQ81B6ftV6R+xCrD88gaYjx?=
 =?us-ascii?Q?Hvc7fqvCENr4oCUUTKlrVwvS2NfYhia0ITOClHMmXCjuLGs2HQMk88k1/r6i?=
 =?us-ascii?Q?MJ/Tns+SEpHYiilej8EbUliDIY8Yt38hwJb4PRa0fKcHthuNrSM84zhxX/Bo?=
 =?us-ascii?Q?IEb/aFtMZc45SDbuIO1H2RwN7zudTjJLpbGoh4cWzsXS6/sp7/HP5lmOXw4t?=
 =?us-ascii?Q?Glqq1vqYL7nkyEklB4a84+zPJW9WtxMwHRPrOMn/8Mbtx96gn8PdDnWZJOe/?=
 =?us-ascii?Q?loiCmBilDR3DAwGDkcnItgX4NHgsmwOQtY/67bKl9yZvozvta6o2/J+1Wkmt?=
 =?us-ascii?Q?Xl+sTGZbBS1nHvqUQQI+RInZhqyWLXZ7yppcJr3IZnDO/bnEKfbHy5aEwb8D?=
 =?us-ascii?Q?7KsAADKam/Q0Ip7K4HMnbx3jQrno8Irb6VetXAvyK7XW6R7LMRaIBsjNDvCu?=
 =?us-ascii?Q?1I0Tr7is2/kPfezWnYSqDaUb/B7cQRCvqxO9EBt+vJWnCxNI/rUg4ceBWFVa?=
 =?us-ascii?Q?2PpTa8kkTJxEIEJIkj6XYaBwbPbSQem5vxGqy8B4DODGvXHZk+Lss+Te+Jz0?=
 =?us-ascii?Q?loiVPk1Q7TGlaa+sEsHzUjcze8Rmr3NLJ+FstSEaiByQy+nk+LtxEgxUWahw?=
 =?us-ascii?Q?iA4LZd2ExHM/u5TXyMZz2/l6jL6vRZ3gWiMoGN3rlz/UTtB52K3xA0J0J6hm?=
 =?us-ascii?Q?P/PLzXU0Mvr1eJDlCYeGuY5TEL7SV+p4Wf3wi/sFw0Wg8VBn02H15STHy2e/?=
 =?us-ascii?Q?19a7FeXnsAO6E4JkHmlUGDkDpSLISVvpsGhEj0ln1nzIRGL7j0bRSjsEfyRR?=
 =?us-ascii?Q?AmqurZSk7ezHQJcZJVgQxtYrcXZWPL8ayMuhPax6QCnKb+GnQS2gKtsqxtP0?=
 =?us-ascii?Q?1qH7BJ73QV83a/WVibjiQFRy1vnWrDvKHRoE8iedPeTIPOkYR0wt08ryVwwJ?=
 =?us-ascii?Q?wPBKvKk9rldgotU3hY/VF/eveOQ90fo3kHN+LOx/uHpfd4bRMgn3xre4Tbs8?=
 =?us-ascii?Q?jyimvh+Iu6HrpF6Cm7/UqWygvFg5mleHJieVJocNpnc4MmPG6yfx9y0xGmAy?=
 =?us-ascii?Q?Dfye/u7V6Tu8Tt1r4GFmV8qig1xL9Awj+wRoAD7itln72BUMv01BVEy0q37/?=
 =?us-ascii?Q?4piXuAY0ib8YgM6Lk/d/isWW?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08751c5a-5ba1-47d9-ad31-08d93c4e84fc
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2021 05:10:19.0791
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VuhXv/q3fJdjmVzumMaADo9dwGpVfrdX157TjyCTsSSt5z9/XWxariQs5EGxDdsVFG/xG/KzO2DskdQRXLk5ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5667
X-Proofpoint-ORIG-GUID: S2UMr_nxtWVvpvCdWvogFfAHfC1YUECP
X-Proofpoint-GUID: S2UMr_nxtWVvpvCdWvogFfAHfC1YUECP
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-01_01:2021-06-30,2021-07-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 bulkscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=817 spamscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107010035
Content-Type: text/plain

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 8100e23..56ddbb9 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -11,6 +11,6 @@ BBFILE_PRIORITY_cgl-common = "7"
 
 LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
-LAYERSERIES_COMPAT_cgl-common = "warrior zeus dunfell gatesgarth"
+LAYERSERIES_COMPAT_cgl-common = "warrior zeus dunfell gatesgarth hardknott"
 
 require conf/distro/include/cgl_common_security_flags.inc
-- 
2.17.1

