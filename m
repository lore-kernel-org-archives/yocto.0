Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BC20C6FD1C
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:14:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.44278.1678540437829585953
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=EQBV2fyQ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BCetj9028696;
	Sat, 11 Mar 2023 05:13:56 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=9hPvuadf3JQ+NmcXWuL0aJ2RaNpEZvCsz32Y86qnmbY=;
 b=EQBV2fyQxOrBPkWseTLBEVZFpUdIQrTp0127Njz4YI/7hJz6XQNSwYVgky1RlSjgLgBD
 SqvkYv5cCc2QJ0ZO78p8Dr96I8uAAsdTUkBuw0EP88EmkxG4Owhr8X8sRof1AozDpSIx
 vZ2okeLugZ6wqEuO25isSE7wykB5SVGesGZFV8i0RgZVR20gaPifl88XJRpEMjIx420T
 n1lzEoySxmlT5lzxKCzTZB6tsfI9DGLCfhfbm6p1px1Kd6ts0uR43iAynV9ZRDqzY3l4
 g46D2UQCmdNUY0OzxF2WoJxGh0uv3qzWXgl7LWsEwzWI9SYwcbGHMC5htPOdxW//gbbk Fg== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8nt8r57s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XYwGR+2rm2SebpeScye/FAY97BQXsE0iSF8o8x4opmYk1ORCAeSPj3Hazg1QhuspvwKn8AVcg21XhbrIaU6O9dKbSwjmC7keHT92xBcz+jgpqiWdyv+GNhrpI6aCgUZ0HtvBgKIHIzJQjXKF/dhw/orZHu5V0qNoNyrBFFzwTfNkOLCgREpRK2qNa7zsQRc0A3uOyDwyuqsWlQCR7tL1e1U8fLgstBhgPeXOoheMnk6kfmbEAOX2aLY1tubbPpySFhwSKQ7jcCeNHWem0SoUAd5rTb/ytjTx13AaFxpqRtiO95q7orTxUxhD7qUAl3LIOeCyJ52JwoNuAWgqnAc9HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9hPvuadf3JQ+NmcXWuL0aJ2RaNpEZvCsz32Y86qnmbY=;
 b=l9rc1K4SBdbffYhtnycyIQApOjoicBns+vf5XvUEBVxuK/8aRwL14ZEBSrlRFzN0zxheXnMtqIYIKsSISh8W912ogRfi5YMMNamRzbzGIalOz8cWzd1BmUo4StG5Mth2T/x/ffsNNfyW4A+ZmH66iiRVT5v58MjrrF8fwAnIh+SyTz4O+B67R0+Oj7/j8I7QWQThdqhv3yLXy7uapDZnvIURCW7WPd46kvSqmE/VhJwlK2aQ+PjWL/GfA+uJu4zuSIQ44S521UoT7LiF8v0o5jZoYO/db5wBaKVMzgTMvzJATJ3CY3N6yrPR3Pw2baJmfvlPRjtvLwjpeu9Csu3yww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:54 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:54 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 17/17] semodule-utils: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:13:08 +0800
Message-Id: <20230311131308.1337339-17-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 0282da17-b84a-4b02-1d6a-08db22327705
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	w/jSUhzNLdHiqDrqXhJe0mYnps1+kW/YuW0svao4RjHw9Cf6Ms3jk4wyWmGxwFiTCvnzz2i5rLuRna6E+191fBG5X/+Rj53+r6PjrBrEMhQDjCKHojN54Sr6NCIkUFrs8S2HyTGP7qo8nvC1Y2lK6bj+lJ7G9JM/XgqkOcByHCqYLF7WuCzLWzAMgcfHIG+ltqZY03lDOdlX25j7Of5n+GaIkDmWJS30dgsReLDPjucoq+9Mmw0gi9UWN7Et4Wz83Mb+U9x1SG+zhwDZ33KBA+94//HtheGk1nbQh5mDZRUDxGXMogwFEvJBmrtd5BO9i3pjOEU8JX1mO2+FZlrK45eJZw+6/hNPgRzJfD9NF+j71gnFfBcDZXpGGeUA3i4utR+Q7rVVC+A7cx1nQaxFuMg3P+svkeI1V5cwrSrJgTWFZgLOUJGXJRCVlCckhHiTSSUSMb5VPiDFGa0mN5A7K49VcKmHyFSn1HrZggfB4q8LDK2CCqVrp6lP/uARV95B/LQlGLDYYC4Pz027FwdaHhjzr5RUjL6x7at+L6qrWie7JhJkr7/ThOmmUXpgRkEs1+Y8sHYtJlThbZWTtUDJbV/LgP0iOHgEYTjW4R0sp+8FjCHQyf4lvw+kJNsxCbNrlt7rsgJgiBO4CBsJX8/vngbQbTbO3XIN3wFh9VwP+DGs87DlF5rR4qA+V+ZJWlQDPcNzxbrAgahJXh8kyzVfZw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?y1w8ugN/eSOpMcWjy7WMqK8YlJhW+2I3sHN4WNlEE3idegjcm3q4bFZvhcFf?=
 =?us-ascii?Q?PoCkIsCh0V6UAjzFiX2dN6K+b0XYLXrNgVmKluG22I33Qs73T/xQ5RjUoHQD?=
 =?us-ascii?Q?n+FVC04OkepcFwVhfEd5AMCL8Oqz2RzwuM5/c6sLVjd6qmDqxSLEYQA1LY83?=
 =?us-ascii?Q?FIj48NV2/5ickFEFCWbMGEltbwNvyYobjqiMw41zLCNzu8tqDIfMKsAW4CXp?=
 =?us-ascii?Q?5MUBHj1nYUF+L3oHzrzT8dzpbMzivmmL/INIc9a7JDgNRd5GuUvti5/wEkSn?=
 =?us-ascii?Q?r9Bxnz/6NK7fYQja4AT/pXwOtxgMPDy9nR6opujPi1LRXEmKnLeC0NoSLaWc?=
 =?us-ascii?Q?pzC4J0lB0YsgWAU7JrsBiNLiiEjBPSQq/XyJBhAilyUzJhjMUZc2/DQ32OBB?=
 =?us-ascii?Q?Ebv6iTwYsyAhiNnjz/vRNkvrAyoxMIY5pdEbSxPxACxr0QvMGsOFSmjTg50B?=
 =?us-ascii?Q?HUKJiCJgjLc85QYmaQ02wvg+oRFDYKpfH0Jhyar3niw1xweUkrIKB1V1j2gB?=
 =?us-ascii?Q?XcQArbydU4XlM5e8suS9+6Xyo4b/w4sfIIFab/HniM5lMnky8VIDfe15G/ZF?=
 =?us-ascii?Q?hkFcIJu4DukpmrIxi5HMq1tXfF2IUTGSEtIgIJYCgHkh1YzaHGTzpKdnLzp3?=
 =?us-ascii?Q?Y8lO5ui3UPr5glgoOflU4zSYqfU3a4pjnMFz6rea7b7O8v4w8jhQAwQ5+b46?=
 =?us-ascii?Q?lGgPSu91jdfmvRZ62V+8EdGVG4x1C27ZtiWq+17gisEnJHLeOIcvntTtrnGs?=
 =?us-ascii?Q?I9bPzLS0TkIO+Y3Er1NiIbQNf7wXDIX2tIA9jeNfwfA10RoNZ80kPTSHyB+M?=
 =?us-ascii?Q?f5pary+UkXQ5A7BN6ZJtaDHQs4xzqp6dZDA2+1lfxzfsAIgHZ8LNsgLZsOt6?=
 =?us-ascii?Q?/2o8TXR4qTlEmsbEP3xlFHpEI++lWiTXGA0I31nhytg1bvIvk7yfAcyLvN/K?=
 =?us-ascii?Q?ZhLNAiJ3cgTcyeln/KcVzWTwsOHGwh9xPR/5wjz0aSqBOnozofASMUA9HpD/?=
 =?us-ascii?Q?05GO4m3pTiGUNQ1fLEIpfbqxPyyVVxAhoV4IHHZDqlsmnqQtHVh+1y6TPCiY?=
 =?us-ascii?Q?U8nuHUU16gvW7cZIOA/YCX7tmFq8TKIrhErJil9hbT4T0JQnRYgkFJhyn0tF?=
 =?us-ascii?Q?aBBL9lPduWOYLoirtIzQsWGZWREjwaHRDYchdeTyeg1+qXlHjGvHZHCLUca6?=
 =?us-ascii?Q?xkwcwV9o4fJWHfrDuhka7hjT9odjQ4nzKOwQINDfAiLW7GNx7GL5VZdzSoj+?=
 =?us-ascii?Q?vteMETQhuWaui4QemnI7y5cp88yTbVCPK4bCLsmaeRs5dObiUEqPg+ouIsXC?=
 =?us-ascii?Q?baU73KoAbhd2jQLbwMfeATQS5qNLIjJmIGOjhLS71eVNKPUCWeTuSxAfQt0F?=
 =?us-ascii?Q?ji/t0u9kFn5PhCu4ONqSMfi/XpKVPcrVCZ6GFhudZsRzr8spF7lNkfs6S0zM?=
 =?us-ascii?Q?NWd0CUwB0M35HEhRtcC8odLoTO/qzj55/pzGqRavb57XLqmKwtoJ0fYR22j5?=
 =?us-ascii?Q?9TYDoEzw35XIC4w9T1QQ3i4+0+L/BoJEFpUi7CqQs0DyAW3ePOslv9cw+HRU?=
 =?us-ascii?Q?EQTrRjgvda9OYkiNfvtesSQHgtg2kiN+L34XT/Eq0h81r7hFg5v6Jbs9J8gq?=
 =?us-ascii?Q?bA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0282da17-b84a-4b02-1d6a-08db22327705
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:54.6247
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s5vvWrhCiAb+ZWaqnG8LYfuNXgGI2kzXcO/YAjWsCh3nNSytb5jkbY42ug5c6JXRmfIVvKKc07WkFVCbRz9I9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: IXzibCv1kq8fXmv5mJVHXiU0MAQJE6yl
X-Proofpoint-GUID: IXzibCv1kq8fXmv5mJVHXiU0MAQJE6yl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=633
 suspectscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:14:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59400

License-Update: Rename COPYING to LICENSE. No content changes.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{semodule-utils_3.4.bb => semodule-utils_3.5.bb}    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/selinux/{semodule-utils_3.4.bb => semodule-utils_3.5.bb} (91%)

diff --git a/recipes-security/selinux/semodule-utils_3.4.bb b/recipes-security/selinux/semodule-utils_3.5.bb
similarity index 91%
rename from recipes-security/selinux/semodule-utils_3.4.bb
rename to recipes-security/selinux/semodule-utils_3.5.bb
index 3f53cf0..0c1c189 100644
--- a/recipes-security/selinux/semodule-utils_3.4.bb
+++ b/recipes-security/selinux/semodule-utils_3.5.bb
@@ -4,7 +4,7 @@ The utilities to create, expand, link and show the dependencies between \
 the SELinux policy module packages."
 SECTION = "base"
 LICENSE = "GPL-2.0-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-- 
2.25.1


