Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D296C74A5B
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:46 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.44271.1678540421377459260
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Mk/IpWh1;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDBRdk029481;
	Sat, 11 Mar 2023 13:13:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=aoajR8QvXLSw57u6eCxtXvJU2R9b9uB5obxCP1hUVPg=;
 b=Mk/IpWh1Y9xIMABXizlKS/k10dM4B9Ujs5SHPmUyeDAh26J6YfTIefYWjaQB8raMgnu5
 iR7/9JgrcR4/DFdXshUyQXWeOjJtrO27XnHPaXg4ZTu0QDiXLnFJXc9zmP6u0bMLuDu7
 xSK7RSeTEJwP4YVR+i1pFdVlIfPwiuWzG/lXW3sTH3taqJg2ZVvxV9ALxxK7DPbcmHBb
 M/2iK78Mi/DtYvXTBvC507pscg/qcsxx2JJVWXMctoIPPnQ9Rz0bhg2hasYBXNOz4L93
 Z8luk1fL2rF6BKjO4hDyxs7zqfuX/RviDKtvbAa4ksgf02PG/pmpXNw/wfOloLQzryYA 4w== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2172.outbound.protection.outlook.com [104.47.57.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8gma0b7g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 13:13:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rk+9AVasb3zt8xJG2IoJ/uJowWf85iLfEWUz1nrfPmJnw4Ra2HY5JS32s3xiQ9Rku7HLQ5YbEvKERExz2NYV2ppmjeomlHYtkmwT9jMi4emgL56UZDN42NX466Qkt14KvJBKVC6NlauJDhvi1Ij12LwjngWMlTjfE8nOhz9T9Sa5/2UjhyxZA3cC0qh3+QJEDUmmn9Dgg8JmVkEFe+pPkVhjH1ymQY1Y4aaOjF6k1ZQM4G0aITmw8kujKuqpeFNS5JUzfAbPr97yiRiWLMxUDpmxOuS8p2w/LvTjpv0NAefXZh/8+PwJTgBkl0VueQfMKFZ8EgReOiIOIepiMSO4PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aoajR8QvXLSw57u6eCxtXvJU2R9b9uB5obxCP1hUVPg=;
 b=duCNwFmnjIhnezliMXBAkWOJSJdAvIV2fPw4tLe/Wh+eyWi61uwqZ9bW3NCwT1o/eYCFe9M6f6Zj3/KIJx5Sa3FOh4e6u7oXyoe8YhDgqu+Od5/JSaKf9DC63BKx3iDaOuuTBltiQFfWyRT2pVNP2uoYUxSgrE4tn1jaqN6KnVrKNx0wSPCianriiwwWU0TE1VhU3sznA2UE1xETks/NQ7FzWyu6ApHYSzS3WQRT7TkI408kxY07+hGAc4vrZHccGojljQGeFqUfnyjpUrVICVxr4iPFUFLTsm07CxDsmEg3NqpOqGaonhB4Tb3gvKWH4nIQ2EVk4gt24c3Nb8OimA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:38 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:38 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 09/17] secilc: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:13:00 +0800
Message-Id: <20230311131308.1337339-9-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: cc370793-e941-47d4-cf54-08db22326d8b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Umdu2Rk8gPCvnrIpjm8TrfwXyzYGPTcgCAbIoXqPEEJEnNGNYwnEuIu0LIFDe2RACj/7KzS1P4gCdbaDT66B4psZGd6O0w6/P5z9nTYE29IanvfqVDZajNg7MdWiEmnZxzt+VG1Di+0l0lDF0JmcTHSe5bgi3Ho5Bpph1ScA7blNO/kicRHa93mGmNphXAqY1iVh99FZY4h0h7CDY73IyY7IN+x8QdNmLYD21tQfF8gY9j6onSpiWw6K/v390KTyFS/DO9c2iNaYQPTMGgGIef+sUNbHkI2lKrfx/ryMmoimb2H/ZTaNwGevyci4CfwfmLB9cjZVjHdJ2+KIENhQWGpoBDkKhKFbu9cxw82b9+nHEjjGfBQqe97ySFx0CTdCOuwvADU/VxJ5i57ibuzR/cacuFGjngxiJwnSCqq27AhKEnqTGog1ykIXRqVDC5DNVmhtv8aBONHYwlM3091zbJqF6aP8SGaayGFwOj97TAXpEnxisn6/4c/1voLy4XSHVkc/7gINKmz2bZSIlpkvov1EhgyBG9gf4ltdqU4z/5Uj7f7VJjKjb/bu+IY3PvzkMB8+d/jSG+31Tu6DVBDq02G8MeFklpBqDlBqv0FHd4zAtysdCv12d4n4fk+21PY5OChz7BvffBWiXP4gp12I3MKdU7cIh6h+IAO2Tp/1n8eF+6P3j68o1UC/SINY+dWlCveDH8jH+9UlUf5jQQma7w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(4744005)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Z/5858u0OnTFm5V9mRX6z/NY/lTbXcuJ9H6lx1+i7R9i5yMm6LTHAvx3TmHk?=
 =?us-ascii?Q?xhHUAbpiYOk5OkxVFSoMX6wEv6B1twvDYvoa2iUlY9TBcIoLGD+QvES4f2lc?=
 =?us-ascii?Q?ryy0Gqh6x8hgyjKMegzuafSpIa0NVqMACfw0be/FCAInXX/VfQzt0eR9GJU1?=
 =?us-ascii?Q?3MET12oF5xBGeACs/JHRAp2XV+k7z9L2PQj0RkRu588ogbgvZIHJ3sT14NVW?=
 =?us-ascii?Q?Q3chc4DKzXflIl0oXt+uewmzeKr63X/9XOYUbANUA7bYYzKRJvtvbnVqaWw0?=
 =?us-ascii?Q?iYR0myRjRvXquI/nV91blN4yEh9Hu8chLJX9zcwlq2BgmhZVksbWPxEaj9W1?=
 =?us-ascii?Q?Ilfb1kUMES1sO3LP7TQJO7kbmlmaJzFS9FRWlmWB55wwk87/6L6jbFWvVcS2?=
 =?us-ascii?Q?xBbUXU1QM/810dua4kKMWONyoAzArDmP0yzsktK3nV5VbPvHGOXnRnN3AcVk?=
 =?us-ascii?Q?Ieqpm5TjSMLKK9kJnKdiEEiLWseu9sUU0rJcnuyNaNMCInf2RXs+Zt0ghzdm?=
 =?us-ascii?Q?s8Mj2gSqNutLLczJ4OfN+GAz4bJ6b6DWJXMBSsBCdRAJ62iO/Mdj5lfxJ6Yc?=
 =?us-ascii?Q?NGsDZEcKclobiqAqcwhoYSJGMfULFCI1lcxXZEQEk5fwa2pM0FtYyJSIyYnS?=
 =?us-ascii?Q?xVCGmKNWBlkq4Dj/obgacFKLx6F7darXlG6K1Kgw4nC189Uf6caZf+PBFO57?=
 =?us-ascii?Q?85UI9ma8p+TYW12tfHptgoDpdy23DVbsEzEbXIXJdVOqAasDwNyfFmzjLsML?=
 =?us-ascii?Q?Jd6cYdm4w5JrKUEZ4qOsbCUON3FKXmiJ2afE9TwE7is8qh5akb74v7AWVjdA?=
 =?us-ascii?Q?QcOVhATvy4bIV9DTWM+vkqLZdKcKwNSpOPToZX/mUlbPwjYB7044rDVCpDGz?=
 =?us-ascii?Q?rhl7QFzd1cvTi/bDkUXrlPENFB6ODEFpqPHwJEzTAIiztqhJ/NPDIaNOOXzm?=
 =?us-ascii?Q?0W2lLyb/U7zuR7T9TC33GpN3lklg9c8GF/AlxEP27Yjz6ECXZEv4GPTiX/fE?=
 =?us-ascii?Q?wsdDcUWfNab7Vxg9jGNaOe/nXiEmVQBORaHhyMs6kRHHGvK6EOWOgYoPgcOZ?=
 =?us-ascii?Q?xcYqgddZ2rOLN/XKuoQCa9JxCZkovq4Zoh3H8kpjOfMsuSed495Rr4M64RJg?=
 =?us-ascii?Q?9A0g5ps12iX18cP+RcR+SQU4AFArGitS6FZuu9Q2UJoCk1OnogkDq4CJFUg1?=
 =?us-ascii?Q?djeADIMNCE0j6dXqfxLi2oBb8Uti17vfoPlOfUOSxcbyzUvosZDdkCzKE4sZ?=
 =?us-ascii?Q?qfxoLxDXVvkSHRSal528xQD5yrFkrH9qZX6SUho54/4J9UK/H9o4t4b5+mBp?=
 =?us-ascii?Q?QqkN/gKIX/CJwy3Mvf2fZvVdl8v2n+UK8NQP35yRu+UlB75bW30SiXn/WWEt?=
 =?us-ascii?Q?fXaAQYDJMVe4lZuAk1r/hZa+HDDe42h/fxwXHD2UXdBYWzhgA5z8vuuqJrFL?=
 =?us-ascii?Q?d0ig8UQ1/HzugecLlkp9KHeiWIPz2MZpypJACAjsDSmPXVWV/HFoEQZPGYs5?=
 =?us-ascii?Q?VHYdlvQ5ljuVuDCsamQqo6ljRZlXDyHx8DO7+szhDPyU+5PCdORW3tKq+H1u?=
 =?us-ascii?Q?EltawU2E1FY0FmSf/jAI/xl2OEwl4OCQKRLU9lwtYEFmcjvOlhxe6mZWqTlL?=
 =?us-ascii?Q?xQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc370793-e941-47d4-cf54-08db22326d8b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:38.7300
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cTuquxOAW9/hwDb1tIoYMGjBW/FTBpJV2nycvTZmVZ0Y3uZMmm8D3oUgo6dzokrZh9ekRKQfqTvO4r6gq6LRFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-GUID: _I40gNkXgqieQZe38pjGagMQFKdXiPdt
X-Proofpoint-ORIG-GUID: _I40gNkXgqieQZe38pjGagMQFKdXiPdt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 impostorscore=0 mlxlogscore=519
 lowpriorityscore=0 adultscore=0 spamscore=0 clxscore=1015 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59392

License-Update: Rename COPYING to LICENSE. No content changes.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/{secilc_3.4.bb => secilc_3.5.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/selinux/{secilc_3.4.bb => secilc_3.5.bb} (84%)

diff --git a/recipes-security/selinux/secilc_3.4.bb b/recipes-security/selinux/secilc_3.5.bb
similarity index 84%
rename from recipes-security/selinux/secilc_3.4.bb
rename to recipes-security/selinux/secilc_3.5.bb
index e30cd3a..5e0da3f 100644
--- a/recipes-security/selinux/secilc_3.4.bb
+++ b/recipes-security/selinux/secilc_3.5.bb
@@ -4,7 +4,7 @@ This package contains secilc, the SELinux Common Intermediate \
 Language (CIL) compiler."
 SECTION = "base"
 LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c7e802b9a3b0c2c852669864c08b9138"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=c7e802b9a3b0c2c852669864c08b9138"
 
 require selinux_common.inc
 
-- 
2.25.1


