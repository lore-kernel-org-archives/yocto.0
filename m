Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C367AC433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Oct 2021 15:40:08 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.7102.1635522007849654314
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Oct 2021 08:40:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=QrVDF0d/;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=693691a099=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19TFI0oX026991
	for <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 08:40:06 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=waQeVgRh8lUo6QUEFAcGgvkplc+oY1EGp0sGp07hCeo=;
 b=QrVDF0d/qmDR7IXExJ1A5ICwQm3J+Shdq/YSEcVOuwOur/aAMYHG0DHmQ9FWEro5X03r
 B2EReKYQjSK6BwZ0gn8LY0uJtZGmMAKt97Ld/kt2CIzn09Vf87ZCF9YubpHKQumNqeup
 eqXDKkJkNcmYEDw1StrNdlzc6Tj6ZTfvzE/1gBBgsQXchlz+flPqmLi1OFTXlubJim4v
 g0YfmJzkiSTo5sVU+QNU/I0USq3dbynKqj3Ej/yRNLPSBGQOQLzP0OAv5zgXxAAzrXrC
 HJZYL7HdKjfRHOSXZ2etxuQW4ST/ffK+f0M4nhAD82EArRvTivK0uh29CTf+kRMXsLEb DA==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
	by mx0a-0064b401.pphosted.com with ESMTP id 3c0jekr292-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 08:40:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WHBXABNjJGHZ4d8OGMVBkcWqDPCTz7vLgaNrLYKD9Lkrm1XDX/m/UJnjeNwIKG4RQKc498TsTxaetDx8c/mJxE8hkbbTTA+OWSjFCyQ7Nq4doWwe9Rlc3cg3xyVOm5aqsuQsVWDBhlltZ7EPxuPoWpHbdt1fwNkkp2/hKi2n0r4b6wbc6s02+ZvTnDM8qL933cR3DzEqOdbD2JY2xxDp7pXgHucPaQjJLYb1Sz5bk1SZShZuVk3yRSE8kic1bohAAyStBt+7h1IrkDqWmVT3O0/NxUBIWThtyK1d6syEk8uOwqCoVynaR4/6iUYRHpfZzUV5R5wKDH9E6wuRXwSfsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=waQeVgRh8lUo6QUEFAcGgvkplc+oY1EGp0sGp07hCeo=;
 b=WMnyHltpdTUDg7J4igP1FBTafrz8pYwK6FOk7c52zXE1c6+530VAIojE5YXq+8ZBfkdBaIE5Vyt7gVveJf/stFazefotP9Ij+x3CUhV/1l8qKPyyrCHMHtJOohZLfRbkCqxAVqLULNyJILMf7xaNz83TGscQx+OKS2zXsaeCVjlHGZInP9s4QQnwu0FySiNlHGyuGRfZI/SnjehEiVCa2v1dp4ImrHoCdMfZ+HvZntQknvxPsSbPknBPaf3a7RbakPbZ0B7Wbfkefr2uDi25RRRS1NkO8oPy06T+PBq2zL+ekGZ3T8skioD9SjzeU2BXrmvIYMZMRWjOM0o3eB00yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 29 Oct
 2021 15:40:04 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 15:40:04 +0000
From: Trevor Gamblin <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] builders.py: subtract builder weight
 instead of add
Date: Fri, 29 Oct 2021 11:39:51 -0400
Message-Id: <20211029153951.211636-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.31.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR01CA0045.prod.exchangelabs.com (2603:10b6:208:23f::14)
 To BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from yow-tgamblin-lx3.corp.ad.wrs.com (2607:fea8:c29d:d7c0::60cb) by
 MN2PR01CA0045.prod.exchangelabs.com (2603:10b6:208:23f::14) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18 via Frontend
 Transport; Fri, 29 Oct 2021 15:40:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 22c74fac-fde0-495c-33b5-08d99af2603f
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5866:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB5866F18879B45B5CF74038449F879@SJ0PR11MB5866.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1060;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LGMRgPJrXk90y+4sVQpzQk1/28aKOM1ILce13WRLW4GzNa3sy5TP0VjYFC8Bi30Rtg4VQz49KLFiNEQx1JAVDnccxEg58Wr0GTi2XQrbNbY8LPwfAYABL9kMneCROUHNtontpU6A9RpfPGXDoV5HENZ9EhOe+JufHQ2avmN1xnFI8RgwQEZeoGSMkx5yENFNLcrxMOplbnUN3NyOjsRXIXlXHrNC4LVsLF+KgLBN8Ag5wICIFNC8R5axUisDZwarCrRauC8ajjGFblsIdDMG/zjBF5VISd1H0rNTS0yYhIRZ/RlcI2YjKALKmUHxMRYo0T7ss+R8TaKm7HhOjemeocp0kbPjG4RhPuhEA9X+EPVV9dUVxCBQKejYESk9x+0GoRk0PrelsB9CwRrXE7G/JuVXRC/pN3WHPgjh9z1lhcDHCBxJ5ucM60Kg5GYNmU6zn9a7Y+6fh34N4MIw8Q/lRhnF+JAuJw/t0mbgbnxoYgUmnMcWQPzC/jdTJkc1QVwmj06Dcs34y1CgTkXCBXRADEfqjXDtGMfwaww7f++2vB3tm2YhnNsrNjYyhOw+oM//awd19ALNX/6fPqJVwvhnfJF1QRRIkXUXW7Y4Ev9I/XvV9B7wEUd67glvjSIITIdxHgePHNQJrIQUULBwvlj/ik96NFbySgnfzGGltG6cnCGdjcsPpcEQ+TJXWK8kLRyLR5DPh2MyPL3duzcEHypjsA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6512007)(44832011)(6666004)(6506007)(6486002)(66556008)(8676002)(8936002)(2616005)(4744005)(66476007)(52116002)(5660300002)(1076003)(66946007)(86362001)(83380400001)(6916009)(316002)(38100700002)(2906002)(36756003)(186003)(508600001)(16393002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?UKalK4kzeQRWvDmjQhjkshBqs0AqSJUJrdwtZCFlvdJtTYWzQvHJCujjLFsi?=
 =?us-ascii?Q?avCvZPCJwxAfXzlVfcJoi2Nonb4NRi8kwr7l7F43AmJBvTSJoLOWSmRnzS/U?=
 =?us-ascii?Q?hvrz9+SvJQ3373NMQQlkZ8u8J/KcTal8MKmEqYTDTpm5rh/RyN98FwGIL+r3?=
 =?us-ascii?Q?iykSOMNVXNxoPizoV+wsvZyKZn1lDqv1QYH4BOVjUSJJUk9OX5hB7NApN6mK?=
 =?us-ascii?Q?vS5QWd9g31lbw/fWj8MlYZPnd2ytbfhtwAyhR9NzK8u4MW3PcuIVvNie2QeD?=
 =?us-ascii?Q?sAIklrMbxoLxPhO8lI2HK+Hq1BpkpSEeo6R9+HSTrnV+d/XzKZWyrH3H3odU?=
 =?us-ascii?Q?EOTNTyqIBLClQEnklv8xFtjg2Vdbio4co2TNOfiOs771kD4wkaOT9fyXNOER?=
 =?us-ascii?Q?k19g6qxE41kLLLRWN9p4fcwtH7IwLmAIFRask13JORHKaZS5rhK5Y8UbbGRV?=
 =?us-ascii?Q?h8ja6VRoxTZE9J78krsC3LqkjRo4YAe3Tr1+vtQc/R2q3roGOEliqfPUKXjq?=
 =?us-ascii?Q?0Z/4I5b4YjE2iSvblPORKfs06KOV2j3+fK0BffMtngmrSihKMT9VLyNhQ2Cj?=
 =?us-ascii?Q?90C0dPj8nJOlgr5g2QQ/OHaU9hAHkBL04Mg7TIu9z39xBu7M7zaVAgvWa0Q0?=
 =?us-ascii?Q?OI30HvZsyVN34T7kNxTeGV3CMZlURHP6NNTV/LII8ifrLJpBteHnIFkOwLCD?=
 =?us-ascii?Q?c+x6+UUOPb6sc2okOQ/Ebe2Ul7ozGpo1wm7lB3ffJKXw5mBN062lr+P/2qh2?=
 =?us-ascii?Q?7AgCQIH6dRgCnVGajJLpvprKsIYSuHqj5Zhd5z4sBcA0H+OwwzsUqfj0OcWp?=
 =?us-ascii?Q?ffjUlfYTIf8GJicMlYzjKMZ5LWzKrbgz9wCgVF+//lJPPnlKH5eMFLgJ+azz?=
 =?us-ascii?Q?PsodxkB00bOBKB/vHgAHO/0ZLNkX2kGWeBp96XaSQC35rMJHIsPqrROpInv6?=
 =?us-ascii?Q?gLj4c0yBL/wQ0TV36MY6CIxsFsEF12+/sWWouiUVYgZ6wY1cLhE1QLGcyIPf?=
 =?us-ascii?Q?DmBRAAiZucZqVZHq+hKlnHn6trRFGYFg1u09JhL0ZJzR8i5fLixhiARcrfQK?=
 =?us-ascii?Q?gJt/NGwfN6BP+fX3cb7GGjA9EuGolKXoOY1LVhpl6F8pq/rXumAiWp+K9V2p?=
 =?us-ascii?Q?6h5waVql9cZA6UPDeDDiBTxUcG5+3IwbnyxzEJAOq6foIPvhIiUIkmOyKe8s?=
 =?us-ascii?Q?+J/OBa+WkYl6/ttzftHcQzarbIeL9h0rgAjv8pkiNUnKc6Z9wCslIz1tqbqg?=
 =?us-ascii?Q?FiLBMYDrUZGMcK9tIXSnG7Lr0LRaeBi1LqBkG1cxoYoaysQMXlUu6Dz0wR60?=
 =?us-ascii?Q?AZmZ6CKFeQkZHw56U8R5estejRTERRRTCUf1k/SixxhB9tsu92EgaaqoBPqr?=
 =?us-ascii?Q?aljuXK//FDCFjfGjinNvY4YxXtnxVLht5nHbKNvsoE7QGy7qoXstMOSMvwQj?=
 =?us-ascii?Q?TdcgSq/H6Ca//xNX6j8wOcr2enImNPDpf2tBRAj3UAGSX5lodtoXxkHYTWoL?=
 =?us-ascii?Q?eDQ5MFBjdM1d13GH6ibNqLoT5BK/fOeCOq6Wh39xBYo9VYh6zC/ZKrV5Rail?=
 =?us-ascii?Q?SSOffTDwET/qFSgGWBqG4d3k4D2ZZ0y1nKZez9ZHTet4d5rI938EzAbcOpqj?=
 =?us-ascii?Q?ydsQAhontK3IwxLiyb2eYPP936Nr1uJ9rzid6OWoMnAngSPeFtBEszCKJPeD?=
 =?us-ascii?Q?sGxlVKmdt75OqghrSSW8AMkH/712XIBvQI+vT4T55OF/Pqvz?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 22c74fac-fde0-495c-33b5-08d99af2603f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2021 15:40:03.9452
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 +5lUBOV10Xg/JsYeh1YpHHRe0ySfL0JzlDH4MZPc7uW4W0Y1culsgnHlyg8U3mYsa92dZ7l6PvqncF+rvZSR4sQk5+171XDa6cyZpP4QgHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5866
X-Proofpoint-ORIG-GUID: XAXQF_1qjYKHZGKlTUbmtRXid9N_46e1
X-Proofpoint-GUID: XAXQF_1qjYKHZGKlTUbmtRXid9N_46e1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-29_04,2021-10-29_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0
 priorityscore=1501 clxscore=1031 mlxlogscore=496 bulkscore=0 spamscore=0
 suspectscore=0 malwarescore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2110290088
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 15:40:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55188

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 builders.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/builders.py b/builders.py
index f94d1dd..fc92e36 100644
--- a/builders.py
+++ b/builders.py
@@ -168,7 +168,7 @@ def prioritizeBuilders(master, builders):
             time = max_time
         else:
             if bldr.name in builder_bonuses:
-                time = time + builder_bonuses[bldr.name]
+                time = time - builder_bonuses[bldr.name]
         defer.returnValue((time, bldr))
 
     transformed = yield defer.gatherResults(
-- 
2.31.1


