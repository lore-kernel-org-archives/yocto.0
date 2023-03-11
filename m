Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B947C7618E
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:56 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.44273.1678540427424409620
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=XiCV6RHs;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDBBgn006580;
	Sat, 11 Mar 2023 05:13:46 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=4rFpUIWLXkcNCDsKm2Prsr/GvowKZCqkRep2YxpQ3LM=;
 b=XiCV6RHsOQP3qkMRRgPX05pGavx5CT/JnsdmuDhXIZBiOxaSN3TOMwGLo2bUXmHA38+H
 u9pS1cvB7qDWKCPpY7P5oNNhdTbM/p3lPotRfj4lkod6ytKAhdX8/nW5QnMpt+XiJIrn
 c6A1DTl6DQOUA2Nwv3cJcKQGF7LOUcGuQ7WfW8wtJIH64yQb9KkAtlPz96tfxChwS8lb
 M5CwxBTJR4/UIc1gk/lVFUI7X9exu8kIEHesnTk9dAsX/3HWr+JbQv82uTBpahO7wfgC
 WUwlce8gcrUAXgIcf9vh4tMQV5VoTh/Xlw88YyKmQ4fqpeVKeim+z7ghGr4FfW0T8Epx ng== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2102.outbound.protection.outlook.com [104.47.58.102])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8t1r00d5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SN2yqWmtEHgHmoc7cbZGbiEOIYgsfK9svNau2GzyAmVgdcQfjp4TU2VQC2jXQvlRrmEOssmpNg9I6/8b0BR2Acxe3rcE05V6IEDbrEDygEovZDfTbLsoLW6KldKy/DIfFsIkONPsuOJEE3Ey5cAOKvBkGk5D4NhxGgcOQAv+rOYp0lLVUAf3fD2zPy7aMXLYJDAvg57D0ZP3Nj8F/M7Ngx8BYn2jhi1FQyoiHLpaAInI/Mic5u3ucWyD9O9KSiWI/EcroDe8p8/bB0eT38zXT206BGSIRheLoBGh3bjGFQBZYcuQyrgTgmkfInl6pkc9b45DfW3XuKGuxvicsA73ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4rFpUIWLXkcNCDsKm2Prsr/GvowKZCqkRep2YxpQ3LM=;
 b=i3P2PgadqVI3Vdfx+HGeSk2COHK3idJ4WAoNxF4dsjaNvoE4zECrsIAWqLzq4YmpIcvZ3cgNethjUQ9c8PCNAoIO9LqHyzssL4zO2UdMYc6YNH2teEqExPn4wh2TTSk93EitQ/UiC77145wWk6iVpK71QpSpWX8VvJdZPZmQ8YmfGh1XDqcdzkyUGtsIGEdF/zaZtCD/CuO3z7FsoB+zPZtbE9ziA/uuy2G27NzOCblSW9ymNMdbnZFHKkpMkBUBSi55Ink6G0hcRoMJ48k4gQkORvsCtaeExd7/OGSti3fZl9QB2Uuxy3N2hQ8F/s1hq6Pgcqb59kf9CCLawQvlGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:44 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:44 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 12/17] restorecond: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:13:03 +0800
Message-Id: <20230311131308.1337339-12-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 7dfb36c9-2792-414d-d740-08db22327115
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gTlYbZZ0Yh+D2HkisHbjcaTrU1PhlEDRxtF8RSYppxMQOrhKbXYSONAipPFiKcykxzc0FTAI/EN7eh3GEAdrqjR2L8qhiO6uklFj2Vab+I3XQ/yAmoNG0ZWfrmKuZz2QHIZN1jfG5sIpqY0vIwr2zSpAqluOmZ7s4L8q6sIRU+2fcqyD4wS2pBdFVlNXihJk8lg6LOnzUpIehOVN9x2ikT05vXDGmbwIlwHWk/Wts6sc/poTQOcN+DixQDaQH6l7Z7GHbThdw4PBddsnMMl/5pSr3rQ+DXJbuC+bgVFNpL1o1ZRUiSV7h/JmMQj51ZuOxQ6fayFT7IZLmvMDoH49pdkvCXvGU8xxt7ELz9XZuQKBn27cphAepW72llJ75RJU77GKL2wOUJiqvMei4i+NSka2/7cK+pqziMbLT34a7Y7sIDPf1E+MnEkGk4bziZg3QgWRDz7VsFb7p3niejVuLOaaJ4ZPSMXDcTQl/ADvlJGfevP6bLK7xVQukIg+M1TEYJY9gS51EsZARfrtHD0PtAEF3ZQUljAFkVXpdsYIEhKT2PT1VpuBc+Q7Dy3QOM/Rt98kG5o2u/DB2Q0Ni2LoTFqJo8y4ENqwYBu4xlsEUEzmJdkdZN9VAfjkL0hh6qOYl3StHwRpHvGnvXVsL2Qkx+t2+d2Qr5dXEz01ItWiI9uoQATYli2NX5bkP6goi0oH1LV9jp+YaPoPnfZnrN5VOw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?JF2j9FQjH2ls9KQlMeLoya7kz+AuXSVx9KgmZD53PTw1GXwOgHaq5Oc5M/FQ?=
 =?us-ascii?Q?icxyoFj2yYyUiax+voFzmAqUMZhrY67ZO8FPB+e4YvIkoHWKCNhe/7PT9Vpa?=
 =?us-ascii?Q?3yEf4IBdb5Ez85ddVTHDFHAxNkl1HJ82KcgkXmY/lrzIxhcKDRUFpBRoQX43?=
 =?us-ascii?Q?As85EDIuuBNU8MwCM3JqVm75M9QuCfE5KY7B5enlMKKbqdSxvisNGbnF+ffS?=
 =?us-ascii?Q?5v/raf5ZEltj3SBwukMaNZ9Ngk2RM6g1knMbd9hhXmFWFu2B2zkHyAqjHlNf?=
 =?us-ascii?Q?tD44WKW4UKIJZQ3vCBCkvI2mCJL729QQnFC6XqD+7K4pnFKhWm+y+W7PLaqd?=
 =?us-ascii?Q?ZLYRcxQLEf4fW2hOLtSHTk53AG6/Ffq1xZ2s7KjxLybc6tL7+KCS1COs3J1K?=
 =?us-ascii?Q?7RmO481e0JBQefUgpLRBxVl5cx6kFKCMkzuAMbSdPBck4gkcbqHSZ+5zcI/C?=
 =?us-ascii?Q?Hhg51Sm3t1EBTkHKlEY8DrnPvRqvR6wJ02Ue3QziYzSvPG2Fqy7jjhQItbO8?=
 =?us-ascii?Q?GbubRbwBQ6h/17iR39Oh7/SJd6Lv7Fu9vUxdyj82F7fMMvR1iz1GVpQ43sWA?=
 =?us-ascii?Q?1QBFHK8sePb0reoW4Eml0eGAgRgRqXONrAuhSIbe45rXZsW0nbEP+BesO2/f?=
 =?us-ascii?Q?cvfc0lSEvnGCNOCTl1OizMJJ2wZ/gkaQlXWSGKEZl7nZdvNryNVZNaRAwYwD?=
 =?us-ascii?Q?/vZVD2zJCYP8aifZO5FBwId2+kv0nTANNNdUYh6INCKUexbqfc1DpR4TgIpT?=
 =?us-ascii?Q?qMBM1SLkplh8OVDQYaxxMnkY7ltPzDWw16/qWN9luMr8lePyK9jV+uj5oKK9?=
 =?us-ascii?Q?xiSeiTee78Hc1thubWJa7ZA9TDq3XrGy+1wfD7zml1u+yFXrYrKCR5Aa0EB5?=
 =?us-ascii?Q?qXNH20CWAKryYyfDCRwfV4vTOtOLgsMnFtEWAku406OC3NtQbVC4mH7FKUoK?=
 =?us-ascii?Q?GtZPLgz6gGR6YvPqS7m79/4AC1DMYp7sCQNXWPOHZPwl8TciWzNl4komFM53?=
 =?us-ascii?Q?3JXF1kcXi/gA+rZhwDnN/xaeowaH1e02AeC0GAS+zIEAs/lW6MITODo+JlK7?=
 =?us-ascii?Q?eR1JScs7+IVkvraQa0mGKV7VaNWrK599cmaBitB67FPQIqREue/GX2dlvKv6?=
 =?us-ascii?Q?AqAuCtZ8yQeoiiU6RDNTes5uQo1CbkVlUPUnev75YDHR84Q8104aCYgQjAkU?=
 =?us-ascii?Q?puP1Drw9Eu8iWif1WFut0vWmqQgqezHiGn7wTActbGjmgXAE9uIzyy9y49v9?=
 =?us-ascii?Q?lzGMRmz6Qe5mWot5FCr/yUuRP+JN1u4bWXQb59B0cAaf192F6W26cQCASh8u?=
 =?us-ascii?Q?0p0IYwdOWNXwnjCo7O/My5si5KnZCj/5XIDgrzLwER10QTNS7rpwKAsIoJNf?=
 =?us-ascii?Q?6AlUZ5eVBp9nPu3OQFDkxSJT4c29M5fpGJbXO1yJEVsBentPgx4JW/lsqp/j?=
 =?us-ascii?Q?D2Mb+vZkD7dWzXB1a8Ft2VkF752Ql/Gvdw+GE2CfMxq8ZzDlqHLkzFzuB03Z?=
 =?us-ascii?Q?he8AOt3vlJ3HOYLmZ0e1fwKk4NqHK5HShbuANmmUcUN+LimQoPgY15dzwpGZ?=
 =?us-ascii?Q?tvW4gey6uZZ2y78HOyrVH51eA5WKJiK88NizXuMycTMxDdgYTwsxY9DOZ3Xm?=
 =?us-ascii?Q?+g=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dfb36c9-2792-414d-d740-08db22327115
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:44.6678
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ttZbZp1MxCuOKEMD3/Dsi8t+wNTEXvnYowUj/7jPwXuAn6OWO5peOXICQFz9Hud2QUtsSNblzeg3T4FO+Z1aUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: zKVH4Bc2af5NWyYLUaLso3GIBHK5oQrC
X-Proofpoint-GUID: zKVH4Bc2af5NWyYLUaLso3GIBHK5oQrC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 mlxlogscore=713
 suspectscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59395

License-Update: Rename COPYING to LICENSE. No content changes.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{restorecond_3.4.bb => restorecond_3.5.bb}          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/selinux/{restorecond_3.4.bb => restorecond_3.5.bb} (94%)

diff --git a/recipes-security/selinux/restorecond_3.4.bb b/recipes-security/selinux/restorecond_3.5.bb
similarity index 94%
rename from recipes-security/selinux/restorecond_3.4.bb
rename to recipes-security/selinux/restorecond_3.5.bb
index 5b690d8..8e57283 100644
--- a/recipes-security/selinux/restorecond_3.4.bb
+++ b/recipes-security/selinux/restorecond_3.5.bb
@@ -6,7 +6,7 @@ will make sure they have the correct file context associated with \
 the policy."
 SECTION = "base"
 LICENSE = "GPL-2.0-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-- 
2.25.1


