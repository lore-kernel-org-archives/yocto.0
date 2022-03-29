Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E964C433F5
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 21:51:33 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.2779.1648590691401410040
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 14:51:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=qmQFhC5t;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=1087e86483=joe.slater@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22TLV7w3025682
	for <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 14:51:30 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=XxrFd5wtO/jviNmTeZflHRzHQPiVegYB6LbK3FlkPFU=;
 b=qmQFhC5tvl2l7V7qxbbCY4GUYeva8GiNU+6uM0LQnkMStHLifJwwlvwlF1I3T/uQT1T/
 tceR4TKRgl7LWHuktKGigIgfdQT0c9/DxOtHShT70EsVI/6Bq5zuIEWlth/Ipl5Hppjc
 1wXQuU2Mt5FEkbD0XXHSkojitx2zvcoj5Y95n5A0c5MfWmXCMYLknKZ6IcLKZpmvNUjr
 AlLgiUJrZCUUEdqzZhDTCIdI7goaLIaerEYSZ6oD/oDwhoKgDvH0YcnfP4KgkrQrJ31C
 QaMUC3TEdeNlsJnIH9xHQO8jvtZPYoCAnXBv4Vm3iCCcXUBNJRaYzGI/527vmeNdIGkv tg==
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam08lp2042.outbound.protection.outlook.com [104.47.73.42])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3f22bjank2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 14:51:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NAFiN6G2OB8Q5hzs+AOmHOBJrOaOcn0W1Gs2UUZf2CK9f2kX6ihZgKy1ByiXGFPYrRlxiIx2stIaueMA+sDjXFgIbtuQylPhZJsNnTYgjjaqnDGsRUzvyco6o8zoDLpIiO1hSDq6jcGwqhBGsFDojBS7cJvhU+7SZt8gW6x8f8Fjz+JSo6bjFoUEFxrwqhcruZ9CKOYil+54kbCOLbGivUFPSIeT8HlxyY5QkSKtcwHP02DvF/gGO4770wa79bu7PU5H7W6US5KcTMNcevKTBFrmtwpv48LTTjrOOM37++/R2HA/LmYg/SmoTzfWWKwMPgB7kcEVkN8B8oMKEjhXIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XxrFd5wtO/jviNmTeZflHRzHQPiVegYB6LbK3FlkPFU=;
 b=OJ50VwE4x/k/pa5I0Y3RBYgJWv6kUoRZhwXgSguQGpCbAFZEY+p6/Da6yNeFINt6jJ1qbKRQVnt5kaFGmSulcMcHjvNvXPEOdkwGwUruI92+NtJVFDuJ7wumVFsTVDdRePO7t7ELp1qInmSI6F+j/FMV9sn2sXcTxAopyF4aqOhQ2Htchlloql2ZJuLTf0BwPdPEwIwr5e7AFw6PAsVfo9/w6wi1DdmDhKS7y+wcMNcnvUCVTFg9Pth6a9kiV2nNCP0MrNW9UALBxY6s9d0jAO4afF7czWNPDv9SDvRnNqwrFqm55CPWKczX5b6XImuyMiZ7B8wi7030ba9YjTYrnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3992.namprd11.prod.outlook.com (2603:10b6:a03:188::10)
 by BYAPR11MB2648.namprd11.prod.outlook.com (2603:10b6:a02:c7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Tue, 29 Mar
 2022 21:51:27 +0000
Received: from BY5PR11MB3992.namprd11.prod.outlook.com
 ([fe80::389d:5330:bc19:13c4]) by BY5PR11MB3992.namprd11.prod.outlook.com
 ([fe80::389d:5330:bc19:13c4%7]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 21:51:27 +0000
From: Joe Slater <joe.slater@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: joe.slater@windriver.com, randy.macleod@windriver.com
Subject: [meta-security][PATCH 1/1] LICENSE: adopt SPDX standard names
Date: Tue, 29 Mar 2022 14:51:12 -0700
Message-Id: <20220329215112.36894-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.35.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR01CA0011.prod.exchangelabs.com (2603:10b6:a02:80::24)
 To BY5PR11MB3992.namprd11.prod.outlook.com (2603:10b6:a03:188::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e2233d14-5a41-4f72-2a63-08da11ce468d
X-MS-TrafficTypeDiagnostic: BYAPR11MB2648:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB2648FFC1B7A858EB89FA0DF5881E9@BYAPR11MB2648.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FyXTmEMBDWzviU4kyTOBu73Nm0MYEZBT1s3Xt8drWvTIbtvUNGKZVvSR574qU6YWCJhYz20io+j0q0a73Xazn1wEAilAUSTUj7VQMgZI45W61JzJfgKrKg/oo7GIyp4dbvW1QxtsKU+LKCWmIH5pmyDoC4xavnYEMOih4StGybgWjZYSH3hTY5lJQNMep/blgCnx+wlU7xX8FyEqdsGJAPMRssVIZHtB2E8Hygm2RdFIOtguhmwZ2mtUVR/NvI65CZdQb7qvea02YnH469E+OyWhsqqoeMXWLtL4IGNAHHTNOYs2yOZKptlkqC+8ov/hdpOCyhl0l123DLwK0YBQYprp/juFaTU4bMKnAKHAhMfCVUT6M3OtyonqOiITHuynWTDFOfxs386xagKNkTDm2KpSOVGt/IMtyWAd1JCB82RsBDmVtpNVJrhq27nCEWITL7vPfUXro/izmG1gUy6ohFYWudae169GBMHm9FeiqXZh8HCrbrXAssNe0GhjDSouGpuD70W3ePFF3z4yeHYQrQDzgbTIF+yQ1u/AcKNeayjehiKcdN7V6hxmjd1K19OScltYCpBNzaJCwPe3K4bXNeT3jMWL16Vp8cTqrsswd3Ph536Udhtrq57V8tyIJ7JkPBnoahAjcNcUcKArEHObRKA/VDITYPa2g+x9qA4IPT1K2RG0IwnPED5gUs//Shj+1BQdStNgqNMqzzezFVeaSBlZrVgED/tV1Wbly84YMSt+uMdQg6Pv6kNdh7CJc4WJJx7PFed/Y7HsT3ZsMLKYARJVNQFD9lBTGZwS4QhP3nI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3992.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6916009)(8676002)(38100700002)(4326008)(6486002)(66946007)(36756003)(66476007)(508600001)(38350700002)(86362001)(316002)(66556008)(83380400001)(15650500001)(186003)(8936002)(44832011)(107886003)(6666004)(2616005)(26005)(6512007)(5660300002)(52116002)(1076003)(2906002)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?On9PpwT6wRpFDHnO1CKCtGJz6tHqZgkXh/aJj/sL2Yo/9xmSSnRF6MX1pfLr?=
 =?us-ascii?Q?fHb6hkSJ//0hZ/LXy1K10G/2W1EKd2SJoLGCHqIDnfVrHvWX+351IcrjV4lT?=
 =?us-ascii?Q?7D/DMisz+lZbj/ZGchh/pnH20q/CyMby7VI5M//os8Kio12BdOWHCJtLo4VI?=
 =?us-ascii?Q?OFFGF2OMBv//IRbWoaGsMtw94z8yutx/fzzYBNY2WILkyMz1txAxXTO9qk0D?=
 =?us-ascii?Q?HGHo6wqenuYFxd1nEPS0Q18KjXipR/uQiiFOxjceW5WaM8MKoVKiIESltGHu?=
 =?us-ascii?Q?My+5wyx/04foqOUnCjOEL9RtIxDHVkBNZcGvqOSm02yXuuO6TMPj5QrC3GTI?=
 =?us-ascii?Q?55cfnkgDZPERcP8+ZPdKok4QRE9VDJATWzhJ01/2plKI0jApPEpaQL372peR?=
 =?us-ascii?Q?E1rtGZthdmjnpF4cwsdptomh52joN7eZuaBjxJzb8fKZQZI3PFeeYonZLkfm?=
 =?us-ascii?Q?fsFb4ZEzVizfu+5jN7qQTbTI3D8xijZAIKA8TnnOKsH9/rQoUUpaS+2eYZ35?=
 =?us-ascii?Q?zioCjMHvu5eMX2DDOHi0ERWz+UT3ja60GPxcPquGmyZHg8FNJmH1yWC0CNR0?=
 =?us-ascii?Q?V53GHdYqfdfTO05LR3EjPAtbVavc6qnpbCbl+W2IZMEumRR32uvsIDJMtg13?=
 =?us-ascii?Q?6SYCgIdbhTtyfJFmWba++njSeyrvfnmO92kGPvbuhcQuPnMROmnp/SLRPLS/?=
 =?us-ascii?Q?jNcEBIfQxPep3UkAgKwn+auc8bWfHL33Zf+cwSXAqOEzDktzQ0YsRKVhy7CW?=
 =?us-ascii?Q?4K8yVijDyjc+fhuSgA+yQOmkcqn3gJhIxOLZJCjhfPQyZZqh4n0HCilImTkw?=
 =?us-ascii?Q?Dxmu5p0cXY7v2UwwhuL5MI76C61SHemfTw8pEf+kxPD0nPPqmueI1tvwn7U2?=
 =?us-ascii?Q?J/oFD9i3IACGybtYF8KhqM39Uhl13aRVFcF75U++tXC0b+44xqqPSpbAABjX?=
 =?us-ascii?Q?QrrrTUuWM6RxpxHEPTK1J6GPCFKZViXlzak8wrBwDzQf6JgI6wxAzsliy3ah?=
 =?us-ascii?Q?YNMEfvFJbtRXe6l3G2aTu86iKms6QCLtjq9ZNrZ57ktKI//ihyXIQWFY0rTV?=
 =?us-ascii?Q?B0IDzn8LxQkoVriReUZWiS3drkENDOrTLigMtxbe7refhY1F9uT/qifokRb0?=
 =?us-ascii?Q?OKcNI9CGns4CDSTm1URNYdzo/TKzqw0Ct0jew7rL0JfVg+ZvshKapvJIPUVO?=
 =?us-ascii?Q?/sTbUPo1OKRlnQ9DgfUuu5HX6xljn15wSJaPo0aUFMGULkZHqK5x6oS1pAXm?=
 =?us-ascii?Q?bP4yMhJ3F/8WkUkCcKfM7dkERKnovNrZih+5v+o71uGyP/TLlYsBolpSng9M?=
 =?us-ascii?Q?Dn5TVKtO1OD7ie1P82UxwLBxKcCWOAjh6e2FkEBNuq0W9dL5hkvYSFpLpR0V?=
 =?us-ascii?Q?x5UCLENHzHsuoviCCRWhTZdsUxJcRrEK8y+sX75QH/VONioT18uw/9utXWry?=
 =?us-ascii?Q?GuO6zzUDseRCufOE0wnAVHKPQBmGS2c4dXaUzHKKac6vaiOYV4DzQotqgYGd?=
 =?us-ascii?Q?7lxIwWLoQLgBnf+3U0llL4TLbgVeYU94w65KpwOznjqefijQlG6R3aDzg4pl?=
 =?us-ascii?Q?xpcA7kj0o65h0wpJlssS2TRBZQrMXni4OhVWjTGrJByoFI+ikjg3NtxIRJcn?=
 =?us-ascii?Q?cp1SXIdDBwzRA1wGuYMWF3YFaRy+9XucIs34PurYgW2yeImpehPW2XwejG+4?=
 =?us-ascii?Q?cHrULQQX+IVAeP07jhgVRE94SqcpOurBeanV81gMDlG1461PHJF5GUJCDXfU?=
 =?us-ascii?Q?QTmzM2+VEUj5vtKZm3BGtYIZlrX1h3w=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e2233d14-5a41-4f72-2a63-08da11ce468d
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3992.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 21:51:27.2656
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 yAPWniIgDpuovrSPeh40g1JjJ906uAfUzAXVq1g7xkbcvxAPBI7QgjlbbSnhTtLIEfAg89uJE3RkHnBRyZdQHpF8UYs8UwSIEQXEqKdvP8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2648
X-Proofpoint-ORIG-GUID: kSrLq8__VaK9BNWvpuGythgsNvi76kRw
X-Proofpoint-GUID: kSrLq8__VaK9BNWvpuGythgsNvi76kRw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-29_09,2022-03-29_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 impostorscore=0 mlxlogscore=531 bulkscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203290118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 21:51:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56586

From: Robert Yang <liezhi.yang@windriver.com>

Modify LICENSE for ding-libs and libmhash.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 recipes-security/libdhash/ding-libs_0.6.1.bb  | 2 +-
 recipes-security/libmhash/libmhash_0.9.9.9.bb | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/libdhash/ding-libs_0.6.1.bb b/recipes-security/libdhash/ding-libs_0.6.1.bb
index 6046fa0..843850f 100644
--- a/recipes-security/libdhash/ding-libs_0.6.1.bb
+++ b/recipes-security/libdhash/ding-libs_0.6.1.bb
@@ -2,7 +2,7 @@ SUMMARY = "Dynamic hash table implementation"
 DESCRIPTION = "Dynamic hash table implementation"
 HOMEPAGE = "https://fedorahosted.org/released/ding-libs"
 SECTION = "base"
-LICENSE = "GPLv3+"
+LICENSE = "GPL-3.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
 SRC_URI = "https://fedorahosted.org/released/${BPN}/${BP}.tar.gz"
diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
index 9b34cb1..35c5ff8 100644
--- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
+++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
@@ -7,7 +7,7 @@ DESCRIPTION = "\
   "
 HOMEPAGE = "http://mhash.sourceforge.net/"
 
-LICENSE = "LGPLv2.0"
+LICENSE = "LGPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 
 S = "${WORKDIR}/mhash-${PV}"
-- 
2.35.1


