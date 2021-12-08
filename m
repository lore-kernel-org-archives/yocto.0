Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C5EC433FE
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 07:34:05 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.9185.1638948844704609217
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 23:34:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=M+FFUUmL;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=7976a6fcf6=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1B87TdAa009076;
	Tue, 7 Dec 2021 23:34:03 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=gAkM4mPGwqryZigwzLHSF/kBBCKla/vqC0RgLzvluFQ=;
 b=M+FFUUmL+FuSe0tkq96nx2SLzGu8DIxIUCnZP9OrzXbwE5KPW+kVXaCUbYtcAV0bTmDa
 CM8Ihj9+QwxJeg+qGNwtSLnv7xadO0FGR2H/oqZVEaHtdmsGek0srYH6Qs93Hv2u6Zcq
 ItLuJTScacv7wudh2eIV/+SsLONUCOpdKmY3yBvLV6eoPQz7wUWh6ciYEZjPnt8zF6BL
 V6N5Alqne9JzhWkWyMEB8HrXMooB4S+q7vC9svQE/fEbX7tmnq3cPFsqwyg7hIxfWhse
 aqZl3mYi7XQqY4L6pRR5xzZUGDypOgOUdsPhv5Mq6cfj98Vzijb6BzqmXtl/kWKfPmvW JQ==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ctfxvr9us-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Dec 2021 23:34:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+JO+349lDV6Vh8FHinmTSp34FefrOAA2fW7I8W1V1O7XfwzsXcEfljhm3yqz+3Tp47HZQxnAATqMqdfDhk0xwjQtN+n0ZEF32P4sLVQMWla+2eGnHALQClSxy2HLRdW6yvK4UXKNwzkjSpBVdXL/UHOrYI3ogZ5jSGNcfTyRgOb36WpISIDL/qETt/jmdIuFpa+24UexGYpm94JHEzt+XJTWWx5nWTBQl3aOP45uSCTi74QEaTZh4Q/uf1mjwEeCpINLRBrKHfBgsnkLdmZa2b3QX6ykRWssppz+DgbAIEJLtarepzeVnodLu5qbJt7NZ1VRx8XCWwzc+JH2tw/YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gAkM4mPGwqryZigwzLHSF/kBBCKla/vqC0RgLzvluFQ=;
 b=mKrNK3WEc6CGWSeOQNVmhCeOG7PwQalbH4oQSPv0CtyOrc+lC5dXgLUd1Pu6z4uWofEKx648raHbIokypbG8f2hxhf+hssJK22HcYfhEya6dUoAm49V0D+h/MF7tRYL7F0Z6RmpjOL+NwwMJtxlSvhvg3Zh5BPDtDeoDc+ljtmWUN+li2RXDuX7gThtIBCf/NooTRB25+x5DKDjx3f/V+U9BJDZPQI6kKAQx9tIUYdXJ7iAAI5UcI8wBMrdxzW3ZDc0AR4yOhyGcpgwmgjQYjbn4wlcpANdO7d49rR7Y/u+GAEjgCmsk980fvLHHN1i+XWhYk9XxK9S7nMU1Hf7qxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1262.namprd11.prod.outlook.com (2603:10b6:300:29::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Wed, 8 Dec
 2021 07:34:00 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%6]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 07:34:00 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 2/3] selinux: move selinux scripts to
 selinux-scripts
Date: Wed,  8 Dec 2021 15:33:44 +0800
Message-Id: <20211208073345.38198-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211208073345.38198-1-yi.zhao@windriver.com>
References: <20211208073345.38198-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR04CA0086.apcprd04.prod.outlook.com
 (2603:1096:202:15::30) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK2PR04CA0086.apcprd04.prod.outlook.com (2603:1096:202:15::30) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.17 via Frontend
 Transport; Wed, 8 Dec 2021 07:33:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 610bad16-e86f-4efc-0a58-08d9ba1d19be
X-MS-TrafficTypeDiagnostic: MWHPR11MB1262:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1262B1F635F4340162EAF5D9F96F9@MWHPR11MB1262.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	P+f1pT3Is4sbSQ+5jIpmhBcWxXQ1M1ItXP5Xp3LoulvvlRSINVWmeJZ48fy/I9MTanMIgLbzujnwexTQqlnHx1dB/c/6OJRxNfSzUN2r5XfR7iTnsLEl51t/2cATfME8Jn+PluGIQ73Pm0RJIq+cSFCNaRaPCAEai8KthdxUDAED3EArzu1xV9ryMmgA4d3E/AHyjscmzK2tnaz92O/oGAmMqyUruMHUBtVec9TWDemMnE7xvK8EqKvuYys9Zbh0RwDKsk24r+eSccNzhg5h80AJeaHoc4hhmpspC2sYNuIujmGhG0LmJGaz5mB8KtbjqOQnWIu+ai8/lPBLAqp9Z1msCwgitunHLcTGvfiib0QQmEOmNC0GaPi14BMuKE8WNx1vxcxdXePrLG0OoOtokFz6pu5Kf+nOu8m53uXGHClpQD499hJpad6onMwWwBiRFnBrK2pUV5V5DDpYIICTm2880yr61ft43NuOYsDnsh6oJFCRSBun98lRzMphff7ogneqGjC+4MljFLPK/OxmwXUDArPnFbbnBHrCXrExevoVDuqMg3wZSntiyBlho4KnrE/QC9ZFtqjjt2FOProjvdL+O/48B4C/9QCYmCR6fasF5eYJG1rzwJmFGlV6wgI8IDd7JbbIyKyNhtd5l886A1Got87doovCC/OoFoZJD0FCdjl/MZpOxIhofwKr6b7vCjaSN368I6sejhh9JhZ4363uKiIyIQ9NhChsuQYykJs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(44832011)(36756003)(38100700002)(38350700002)(6486002)(86362001)(5660300002)(186003)(66476007)(8676002)(66556008)(6666004)(6506007)(316002)(66946007)(508600001)(8936002)(6512007)(2906002)(1076003)(26005)(52116002)(2616005)(956004)(83380400001)(72063004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?dbZQXrHPkizyfj+yhCtAvVVLby4/WCtLmdR8Vs9zSb6PiAMd2sw/lxCvR9BP?=
 =?us-ascii?Q?KERTz3lYF+0I1SNYWNbe/b+FVsyyaQ7fJ8q+u2ActWEgIhIA6xmmlObXOFYI?=
 =?us-ascii?Q?uAhUI4Wo6mJubB52CCtrVCyd4uMAlYNp4dVHKjRKT7CYPmcLPgh2SBvyBjQu?=
 =?us-ascii?Q?bpwKTMoylFuBFV42vDv+KMAdhBSbPEfzUv7eBcBgWATBsZ0NiPA5gCGKn1zD?=
 =?us-ascii?Q?yx9lzFdhNqqbgcaT8OqSTe9oU7lbQrBEAtW2lpYvyZ1m1qi/Tga4hztLUnv7?=
 =?us-ascii?Q?oTUJ34wZAXkcwchx97viQewJfbfaKyf7TDFmExzql3J4csFYZLAqXpbWPtVR?=
 =?us-ascii?Q?Zjh/cG03GUZBwbRfWbb1uNJQ/O4E/oA/XETscF8gbuLfvxwwmQ6BtpLL3acd?=
 =?us-ascii?Q?Ssh4lC1eyyZY1hhA2TLZSAChRZ8UD4dMzAqcGazBWvtk7W0S34GTYvVljQc+?=
 =?us-ascii?Q?UdGZ7PB9uhLSYgRkIeF8iepROHn/qXXn8m/YhQenmZVhgDbN7BAZcTy5r+Pc?=
 =?us-ascii?Q?868wr678wfH3nkdf7oJXhD+BQocvOE20+bd7FKXPssLYbuJEmHaJqWvlWCQb?=
 =?us-ascii?Q?33kP4r2fYjihD1Uv+gfllBTPdkb0sXzHBpJoYbsNSeWOmmleLwX+smjmPL9M?=
 =?us-ascii?Q?Gn0V3+ig2jpXQim7z6RaUBwehqruks3Rm85WFVMAGd8vuyyCjZyBYIt+tCYr?=
 =?us-ascii?Q?h5bQ75bNerjCYan0AzT0XgGDQkr9ISgL3+92yu2zu985b+9T3L0XE5smR+/p?=
 =?us-ascii?Q?gKIiUw+vlBY6oxCTT9PgjiZUandleWbGlElB4y0Zg43xA0WEKvQ9yeGU+G2D?=
 =?us-ascii?Q?rIfpyajZiFWEwpTO2WkbYDuLpUAxejg7o6cM/ipmmxQiigFoCBbYTtwFVpal?=
 =?us-ascii?Q?IduFFrcT1EMg/zXhe3G0DycjCAMtKqZj1Y9PloXD5E78P4kxA8ukZIwNLY92?=
 =?us-ascii?Q?vLrUbX2lyCnhedrddDo3vRWGr/6cIxCSPZl0TmD2f8oAPt6gj8gimc52v9BY?=
 =?us-ascii?Q?7a0soWnf/5LXhZod+0UfUKOCfIUBY/ZBv/gwNF8a6QNgpycEu1JXTt0JmvQG?=
 =?us-ascii?Q?B4fFjGdNiOHnhABdfbsg6iN5YJo4EEw46DTVboJvceu3DmGPdFs7uCZi36h+?=
 =?us-ascii?Q?X5M2q0Wrz19zvuoG0sSZ/Njykij1755B97XS/enDod1954ljDsI2VMGe1+qK?=
 =?us-ascii?Q?kUWt0mojBuS6kxMvnEB+Wg73xX9J2D0p3q9JMDz/Zalklj4/97ruXquqE9K4?=
 =?us-ascii?Q?3J0VETcG8fHF6BDs9b7xtDv4L6x3QQVFZRlAi7m7K1PHgMf5CLyTx64bE8kK?=
 =?us-ascii?Q?R7FfRur+BjHcnpgrYllPrM3YTZQ4H8L6GFnDPzaozHGdMrF343aranoKQibP?=
 =?us-ascii?Q?BWcYuozYRFK+Fc/FJj6uG7595hzrezpKUhyZMxRVFVeMavikx7oDCAX3Pi6S?=
 =?us-ascii?Q?iKIyECip9I0aGO3dRUgmzsm4ic46KVaqxO8oQCTGPxqviMHZWv1U9fXBV1lm?=
 =?us-ascii?Q?cC75ioXVA1v/r1kBgUonKXyY1krWfn/4Ef3apwOa6RVUKIB+TiTJSFImnwmx?=
 =?us-ascii?Q?ph5xCtdOZYVwJuFWBi/rylxpCuf23dPfsiOJU0e/9Ktrx01w3l48XLjBcQMf?=
 =?us-ascii?Q?2OEXhjMNsgL7KQ2jYagecsg=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 610bad16-e86f-4efc-0a58-08d9ba1d19be
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2021 07:34:00.1006
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 orn44pXp8sCgMObr4oRK2Dd0I0418zjuphc9E1jMh2bIKqAi7CSR7oePu1h7g2YSl32/sYHBdM4TvcC85qvHcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1262
X-Proofpoint-ORIG-GUID: jDfk5cw3cfwgpFdhUMELsGXOr-ZHFHs9
X-Proofpoint-GUID: jDfk5cw3cfwgpFdhUMELsGXOr-ZHFHs9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-08_02,2021-12-06_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=905 adultscore=0 priorityscore=1501
 suspectscore=0 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112080050
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 07:34:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55511

There are too many recipes in recipes-security/selinux. Keep the selinux
userspace recipes and move selinux scripts to selinux-scripts directory
to make the directory hierarchy clearer.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux-autorelabel/selinux-autorelabel.service               | 0
 .../selinux-autorelabel/selinux-autorelabel.sh                    | 0
 .../{selinux => selinux-scripts}/selinux-autorelabel_0.1.bb       | 0
 .../selinux-init/selinux-init.service                             | 0
 .../{selinux => selinux-scripts}/selinux-init/selinux-init.sh     | 0
 .../selinux-init/selinux-init.sh.sysvinit                         | 0
 recipes-security/{selinux => selinux-scripts}/selinux-init_0.1.bb | 0
 recipes-security/{selinux => selinux-scripts}/selinux-initsh.inc  | 0
 .../selinux-labeldev/selinux-labeldev.service                     | 0
 .../selinux-labeldev/selinux-labeldev.sh                          | 0
 .../{selinux => selinux-scripts}/selinux-labeldev_0.1.bb          | 0
 11 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/{selinux => selinux-scripts}/selinux-autorelabel/selinux-autorelabel.service (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-autorelabel/selinux-autorelabel.sh (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-autorelabel_0.1.bb (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-init/selinux-init.service (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-init/selinux-init.sh (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-init/selinux-init.sh.sysvinit (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-init_0.1.bb (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-initsh.inc (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-labeldev/selinux-labeldev.service (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-labeldev/selinux-labeldev.sh (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-labeldev_0.1.bb (100%)

diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service b/recipes-security/selinux-scripts/selinux-autorelabel/selinux-autorelabel.service
similarity index 100%
rename from recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service
rename to recipes-security/selinux-scripts/selinux-autorelabel/selinux-autorelabel.service
diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh b/recipes-security/selinux-scripts/selinux-autorelabel/selinux-autorelabel.sh
similarity index 100%
rename from recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
rename to recipes-security/selinux-scripts/selinux-autorelabel/selinux-autorelabel.sh
diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/recipes-security/selinux-scripts/selinux-autorelabel_0.1.bb
similarity index 100%
rename from recipes-security/selinux/selinux-autorelabel_0.1.bb
rename to recipes-security/selinux-scripts/selinux-autorelabel_0.1.bb
diff --git a/recipes-security/selinux/selinux-init/selinux-init.service b/recipes-security/selinux-scripts/selinux-init/selinux-init.service
similarity index 100%
rename from recipes-security/selinux/selinux-init/selinux-init.service
rename to recipes-security/selinux-scripts/selinux-init/selinux-init.service
diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh b/recipes-security/selinux-scripts/selinux-init/selinux-init.sh
similarity index 100%
rename from recipes-security/selinux/selinux-init/selinux-init.sh
rename to recipes-security/selinux-scripts/selinux-init/selinux-init.sh
diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit b/recipes-security/selinux-scripts/selinux-init/selinux-init.sh.sysvinit
similarity index 100%
rename from recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit
rename to recipes-security/selinux-scripts/selinux-init/selinux-init.sh.sysvinit
diff --git a/recipes-security/selinux/selinux-init_0.1.bb b/recipes-security/selinux-scripts/selinux-init_0.1.bb
similarity index 100%
rename from recipes-security/selinux/selinux-init_0.1.bb
rename to recipes-security/selinux-scripts/selinux-init_0.1.bb
diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-security/selinux-scripts/selinux-initsh.inc
similarity index 100%
rename from recipes-security/selinux/selinux-initsh.inc
rename to recipes-security/selinux-scripts/selinux-initsh.inc
diff --git a/recipes-security/selinux/selinux-labeldev/selinux-labeldev.service b/recipes-security/selinux-scripts/selinux-labeldev/selinux-labeldev.service
similarity index 100%
rename from recipes-security/selinux/selinux-labeldev/selinux-labeldev.service
rename to recipes-security/selinux-scripts/selinux-labeldev/selinux-labeldev.service
diff --git a/recipes-security/selinux/selinux-labeldev/selinux-labeldev.sh b/recipes-security/selinux-scripts/selinux-labeldev/selinux-labeldev.sh
similarity index 100%
rename from recipes-security/selinux/selinux-labeldev/selinux-labeldev.sh
rename to recipes-security/selinux-scripts/selinux-labeldev/selinux-labeldev.sh
diff --git a/recipes-security/selinux/selinux-labeldev_0.1.bb b/recipes-security/selinux-scripts/selinux-labeldev_0.1.bb
similarity index 100%
rename from recipes-security/selinux/selinux-labeldev_0.1.bb
rename to recipes-security/selinux-scripts/selinux-labeldev_0.1.bb
-- 
2.25.1


