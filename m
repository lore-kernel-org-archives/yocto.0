Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D82DBC41535
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:10 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.12145.1702714926576611282
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=rVdhPaaf;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG81AaQ001321;
	Sat, 16 Dec 2023 08:22:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=bL0ia4F9zUKoCrvue1Lfz8rWa2XEIQzFzP95P3eYT/s=; b=
	rVdhPaafepYzJwM9IEMC8g/utpXpYGOiw3OWkXqsTmGm5iiLJhvIQV1G7AmbAlaV
	QGWJqBoZkdhj/J8C4Kg1jgLHsFBBDTHp6z6NDXgWJ0I+ZUSKJpQDq5/57lyCnAVO
	m4kBOgzHbZlvE0oL7pocvIIRwWGCEOC/Zjbj2plzkc+vTCQV9ikDh+7DlS7uZ3EJ
	h+YjRXjFYPjrOitg/fhJtm+UfqffpZ8J6YuxPL5EO9BRyilAdY4DwBBsohwbvohI
	49M+QkqjCFvasWzK6qwj/Ir/bFxXrqfgCoR6ghz1IuC0P+EXCSm3uGMBRvucTeo+
	eQw+db+jcy5UZjlrQLQ0AQ==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v12v5r5r7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 08:22:05 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZF8u1lIyBnqmMDiPsrTGL9OCsuMAyNH5I+nwIBl1wC/NmDWTnQbKBRFYhbATHKYhGBoV5F2Bgt1aQw2RWUg4WAZc4woF8mZ/QcvKE+oflF/0RdAo6CKujV8xSHUWvh1SJ0+Rk6JEafx23T4+rWrM8BTeYmbP15fTiPAeQsPHAvkO+JIeB+1x4F7tsNJEZ7zIIi+hCovdQWxXwKiHWtPEqxlsUNeTadx5QqdF0QMzX8Sux2uUnOc5R3GCeEw5+nD13KNqRKVlsC/HbCx3l4ZJvhWLQNvTE5STE2WMwMVGAEVZvbuKvzKTydorDhZN5DPRRGE35IgOzINoYBEcpfu3hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bL0ia4F9zUKoCrvue1Lfz8rWa2XEIQzFzP95P3eYT/s=;
 b=bM5dr9RGeBelckRbe52wkZ7Euc6B1M5d134RKKxZdrcBMMOIY6zApoGmZdyQ1cJ68uzMGgV7wCd8rAKTJLoZ6bV708iBBlGN6aC0sMUCdToYm4KQ98x0+hcBKFQ5h9B4xTo0/Wu2RGIshMHi7W551HTDgydiwZ/qbzprj8fOSG+O/jmMtwTlQRVsGh6k2FBSSGjSqSYuf4t0uFSBk64NIE/DYhVrPWJD1f6kFTX06Ioj8QUcEw4o2QyiPiae6Uai6hzXUaYcKlUnnT5fIx3apAwBNHpHI3X4MsSoHqOQgfN3BdktDymZxPssbMbHEtKh0OXl9JfTxZ77TZdlMMj99A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:03 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:03 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 05/15] checkpolicy: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:32 +0800
Message-Id: <20231216082142.198501-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231216082142.198501-1-yi.zhao@windriver.com>
References: <20231216082142.198501-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:3:18::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CH3PR11MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 068ec3a1-12e6-429f-54f4-08dbfe101548
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HdqqsrDqYewJXAcmBp9BTDZxtAThxsjjuQ8QT9MFvpBJ52DJYz2v0qgCHNMPjD+jzECIbQJpiwamGT334nIVcb3FoTB6hitEZQqhzbRyu7OfkGm7ukzbeQ8KfCrCDos5EkVSjZjjXtQuSvYFOZnBSEj+jOylddAXWeNrJMxcaAxztpqwRnpJKJgaa7VNqW1hkSbCvYzD2486b3570Bs6Luq9mW19YmJX/7hH4kvoYNP3CL16VPgnGAAiJGlLyC0SLRzYy9pVzVlLeMXV8q3iGPZL2GC5QjKn9yW3NXGUtkeHxzeaOO3+HZeDHkgzD8H9zhYPjqWmXvPDxIbHWXubLFVUDO9SoGDq91x8XzbrEauzn6nHyBGetJ2c0tOrtbSCW+hZY2mCgfkFJlh+jkQAhlZ3WbxxEJxdRDSPwpuNTiOHQ4qL3LdWZwPt1hw1UyFv+YjF/JcAgxUOZ0zcAvgiN41SgrthrbUwWi2ZUM6jLGxuxjNhegDAs21zOduBdCan//HkeFC1zH6QqOLgwIRT+ahDHas5ENfR8V1KzEqwX4lIaVaxEBkdIWAt/L2GUNX3l4k+p4P7UWSiznZew+2YF5oPn2a5pWZRmGF1MI1Iyz/NciEB6zP9UIPcRFEqG4IU
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?pSOq9CGa+0koGmU5r2KrfjMLqES53TpCF4FcwQ2N7C71zdHwjQrBNIOlSOV9?=
 =?us-ascii?Q?4uqJ+mEan0ZsTnWm0nRR5Zq3wo21yxQSDGHthVGATNLPLvPIBOX0CZ3ZqU2T?=
 =?us-ascii?Q?Ns9b1nFmmMwRFQEWFTlL/YSjiA8gZ6iiTlhmiG5mzpFZvaRxMGvfQpFaoOi8?=
 =?us-ascii?Q?YKBTpI6V62YW6t0+C9BUm962JuLkNrcg2riUqvx03KyXPk7/ePsElTidzxZe?=
 =?us-ascii?Q?DMV5XXhJynQvG99JgBkKe9nyA0kdyOffcqpBRiG7M2EaDVxtU+uxHW88S6zW?=
 =?us-ascii?Q?+dVcjcg2ME4DeZyAuCmqhD8jETuuNbF4tpJvpyNg0kB8YHA06yT7sR2Qjn5E?=
 =?us-ascii?Q?zAHIQcivEJ2alWYMqY64tXnOF/g8gOCtHIjKPa4IdKsgHoSnh+xvY4dE+TVp?=
 =?us-ascii?Q?rmjZtCHgYmwQ1CAcu860U4m3d2sbqns+xuRGPut3I9/gKqjsCNhORE1Ytdu6?=
 =?us-ascii?Q?HjlMf8LYowESqxfC87390iqTnccGdiLhZ1YTqi6FVpoXGg8dhtn/yzCIb9Vd?=
 =?us-ascii?Q?vBGKOo6LuS27i8GH/ZUDwxa30qxFNfCidjUM5FECUMEioG/mnoebHqv9P6hS?=
 =?us-ascii?Q?KKx6DlS5IiZikRdEVHOGUbP7awuff5rBjvGZN9YsNoGNvwznoyXwE0rZQRIA?=
 =?us-ascii?Q?jipv0DEnc5h0UZReFVg+5gvMTUS44XsI+MOK5uoC8/hCwc66faAcEeM9nZ3v?=
 =?us-ascii?Q?8ogVtOU+GYKlwQHETUxkW49zUmaklTukE2siuVhu9+EqqTW++ic9KmvnocMq?=
 =?us-ascii?Q?kbPg8NImy1v0tsWcXKXxpr0G5FjdUyJwd0wG232On0vRK+8nHw4Gdnt0q40p?=
 =?us-ascii?Q?WFtlcL1FkTk842b9CjGklN3Idu6ScVnC0ACVHc/KHlUQdSU5z6BVbkFBHNi9?=
 =?us-ascii?Q?Q6Hv+yQ+wzRURonhX6WMHF2OjtdgFl77Yid3JkKGM9XDA7/AQBVowksKPuRB?=
 =?us-ascii?Q?SfsWB3NEQVm0w6H9NxLlVoh0yOumd4UzhK7P3dqOymAmF+o5byq2kYYfzAAp?=
 =?us-ascii?Q?Iy5BHGt+1Yc9SvgcongaQGdAdtNwRJ/K5abBTJod+Dpxo132e7UN+5ubijJ2?=
 =?us-ascii?Q?u1GgW5YrZeSTKKQ25xX8peFTDIJJASi3sZI8O99QM2wXxlflx5e0BdqWqA97?=
 =?us-ascii?Q?rX9JxLM1JhDb5hVn80ZHRnOkPv/UBsexbeBjbLF16CLPur8mz4nzwIvq2m4L?=
 =?us-ascii?Q?7q2Sg4ddSNwwLBiBzZ022qa6kjCBPjbSpWfhgJFqYqizhaoWCQIFAmdN+PJZ?=
 =?us-ascii?Q?TQssRdsiRe8jXx6Dh5idNRxLH9v3oDUuwVFM7wPkd5jNyjLvEMzeokWj3zL0?=
 =?us-ascii?Q?/FC4bH6mtdhPbBeFBXPSsTSvKaAoJTcVwNAiEmJRQIgk9sa/bpz+mv+qPJVV?=
 =?us-ascii?Q?lka+i7CEUh8JdUdTO0LIQ5KvJFMBaJK9dwVBvadERgBhXjZ1iWh15le8I2Gz?=
 =?us-ascii?Q?kbVktspJwbKvku0ydhfuLLiv4oRiEYNkCyCDrsrUlK4E4CONkC5kUMT7mxTJ?=
 =?us-ascii?Q?Bd7Y+zZLa/5H68Mw84ofQGEjkA8S7Np5tmslj0PETE7gC0fr/bxaMRWHJc12?=
 =?us-ascii?Q?KF1GrysI3HBM4JECg7/6tzqeRielkYru0BuoAt2e?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 068ec3a1-12e6-429f-54f4-08dbfe101548
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:03.6548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RdhTZ05gubjUQJr9BEVAFgKKQufhNwS0XxMRHDTdqlUmXOpI1ZLdfaZQbDv8Mi/Kn8lu1PjsoMMML+e/OsmrnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: Nyo8MgkRpZK6KQXGtOb7ObsOr2XBVtq7
X-Proofpoint-GUID: Nyo8MgkRpZK6KQXGtOb7ObsOr2XBVtq7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=576
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61931

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{checkpolicy_3.5.bb => checkpolicy_3.6.bb}            | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{checkpolicy_3.5.bb => checkpolicy_3.6.bb} (100%)

diff --git a/recipes-security/selinux/checkpolicy_3.5.bb b/recipes-security/selinux/checkpolicy_3.6.bb
similarity index 100%
rename from recipes-security/selinux/checkpolicy_3.5.bb
rename to recipes-security/selinux/checkpolicy_3.6.bb
-- 
2.25.1


