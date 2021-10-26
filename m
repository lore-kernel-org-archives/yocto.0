Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AB16C433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 07:46:14 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.9091.1635234373120788701
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 00:46:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=n6BhMD1z;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5933689bef=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19Q6PjuY026008;
	Tue, 26 Oct 2021 00:46:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=dhVgw+NGG1mtId140+PK9evlDrsbcOtXmiGUcgZWi4g=;
 b=n6BhMD1z22Ohh9Or2MXMsinJacas/AcUfTxH/TVV8i4LllEWn4nuMNGQB3Qo56z1x+kr
 L3rgYvR2bdWmw/hfyI9PYPfj3kc/VLN/qD6xEYOq8df4iwkm6lakHIC+GX1NKdGWgPxp
 cZObPs3YheUBcAVRR6rM79gXjn+xITCZ/wfC+1n9xS/fYGTkbEPPua+/Md5TYPXdWlJ8
 50xzKwyt3GbS3XK8rZIoaVMRwngnfXf5+MVBvdyvoZEYj4lwmReEk8UJrUd4eeH7bLn2
 yTGjW5nx3e+8paOjyjPcU1vQx03iRzF+wbzFjbo79LrclmMqaFGHq94qX9ClYYUeqnbQ mg==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bx4uwga0r-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 26 Oct 2021 00:46:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGseqo16NznB+YHJOtuPxEzJFC26R5cRtIfq/bfNNxEwbuLQ2ajmnCcE9HoQTUoeBDSSqeU+CtzvDogrMcsA/bBBLnNuIH7KLLcgLy3c0Oj7IL/2JhnNsQtP/IGP+m+OL4czFOQNTdbXxU4d0LJv8zL8KCZ7lI1ZZj/jfzo5jwfKwp2s4fuIaA83uQLPtH4SWqG90kl4OrNAwLRPvjMqWjcwxTyIyz/gEt8K9LmB5GST1huwNKOfw20HdL5AAqA5FNKk0fsyJIPbaug42FmQm8+Gl/09bBL0UlnKiwNvGyX357hC1EltzoNS0mYZiw/En6C3qilRu8AwZxiU1db/1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dhVgw+NGG1mtId140+PK9evlDrsbcOtXmiGUcgZWi4g=;
 b=EW4BIEWHDUE5Qa3HA3QiP+m2IA1lw5IN9w4MJ4Bdc7pMr0K4S2JAhYLlWr/Q/alz0AQbmiDxzRBTVS2B8BErC9i737TtWoGTp0Y2rll0uDm94KHvOLsIDNZNdI1iyL7caov9hAWFDqSdQSMWJuVd696sVCQzSABlh0KZ52GwEMQUbJEtGKfKla4aapYmd/7hS/kaFaToMZYRV3TRpgfmBRUsJI2aKFpCIdCC5VExgzxoVeC9IGKgd+4SJQlb0nBZSDpvkRCFFeLiR4F0/bB1VZPDzOAcX9Lif9EXbeEHzESOjYZMfgfFIz5h7OJ0SyJ09xHTYj4gEbGQ/eyIKh98bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1581.namprd11.prod.outlook.com (2603:10b6:301:d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Tue, 26 Oct
 2021 07:46:11 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%8]) with mapi id 15.20.4628.020; Tue, 26 Oct 2021
 07:46:11 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 2/2] crmsh: add UPSTREAM_CHECK_GITTAGREGEX
Date: Tue, 26 Oct 2021 15:45:58 +0800
Message-Id: <20211026074558.159072-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026074558.159072-1-yi.zhao@windriver.com>
References: <20211026074558.159072-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HKAPR03CA0001.apcprd03.prod.outlook.com
 (2603:1096:203:c8::6) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HKAPR03CA0001.apcprd03.prod.outlook.com (2603:1096:203:c8::6) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.12 via Frontend
 Transport; Tue, 26 Oct 2021 07:46:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0982b8ff-350d-4818-a514-08d99854ad9c
X-MS-TrafficTypeDiagnostic: MWHPR11MB1581:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB158126251EAF935014B79DB1F9849@MWHPR11MB1581.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:369;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cipnydoLlClMqKBmkhpIVpA5Xur7ficWjvhGQ+/CoT5VcW9y9f8a65Idw9H1081dUm8Ipr73Ya9+6xqX7F7hhhgeuO7B0j3bbN537DAWS1+61kLOjW9lw89zrX/PIzsYhn1nqRjJUB61yicgzZC/o8nnVhdStxz6EDO0fauKPszlG5f8yXOBv8bRs3KsbxtQJR96Els1uO9LorutwqS7qQfzLq7Px3XejhCu4yaYp0yFzNP+/fik0FN6h1Z9NMg3RTuDlkDS9eEF7bvckUliHFEq0AFfe/ukNgtTri163JKHyJ29k+yClk+EScfHB3PChNT9IqeEFx+1yLgxQOTvJBtTe8WiYPJk7sVrItFzGcE4WYJgX7e+E6RRbQTllBTuXcAg4ZS6UeSWCq3+ZlIIsEFKZus9SBw7fUE94O31UsGuVGCh6iX+aZ233qMb7H3HvK2QFe5ar2lbwylKjQr8FWd2bbovs3GzZuk1kRInp0/vPofa/6PIDFLFU7E90rxQ5qiEiQ6Qk8eNJ2mctm3MMQ3O3JXq5BwoNb+JDUio/LfuSRIJgDUPwCFj7kF76NPDUNju6zTLEOWeamIF/8x9oDr2uBWjFO4AmJXI8XG4SIDp2rMkwzSSN5kja25j1JmLIUEX9zuvW8GnRvBTQ0bX0eiT9uRhcEh+1RrnIuzTwQT4gc18E3FO4qqZOiDqprTLPzPmNl5wou60ZwiIDIvH6w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(1076003)(186003)(8676002)(5660300002)(44832011)(66556008)(36756003)(66946007)(6506007)(508600001)(86362001)(66476007)(316002)(2616005)(52116002)(6666004)(6486002)(956004)(26005)(6512007)(38350700002)(38100700002)(8936002)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?af2cIEuSx2DoNt18fjyR5iBYAXL7XKhNdjxZ49lRbUv3PWYkY0ULJ+A7IeAi?=
 =?us-ascii?Q?ZVd1FQg6XWw8MfX9QGwUPrGZNLJNUTQcOc7jQjzQ/AkgX+OujgfDQtSCola8?=
 =?us-ascii?Q?d0fVWmAGQdxV1dqGQntmzKPCPanl1775lPiKmdtz64jY+253n49kLyQ+zppm?=
 =?us-ascii?Q?dewQkMYFVFhSLgg8AQAWsAsusCgcRpYDm1QuB8lBlyoOf91qiO5kMEE2+pMq?=
 =?us-ascii?Q?x/JGzMOqiAPCNb+2Z33JfJCmXFg5LZ5oJUN08JL+948DYIGlzTtrAI51ESev?=
 =?us-ascii?Q?2h6pGUOb5ZCSG3ykXLBe/ZC6V7n4ifDLTslG55HafcmeDoixwTJhpAxDMfeL?=
 =?us-ascii?Q?xCk9uijDCXsj4M4EsaTB4mR4SNeOHx/6lB77mjj2i4IjmR03vQydyc6w0fK/?=
 =?us-ascii?Q?SmlmKREUc2eYmz8pgS6lirj4+WRk6+YxALL5wjkFrXHUdBN1dpX2czKCw/pz?=
 =?us-ascii?Q?nlR4GrqOxJ0xzrVkXQLNtHWkz5cW+McmLFvEKuhn/BIQnnduwF5jzb5NJmoQ?=
 =?us-ascii?Q?Aa27QiIpfqsKV/HzhSHSemD6kL5v0yS2vAYISGBq91I/Cn6H1csBZjhjLKQE?=
 =?us-ascii?Q?YypcMTpwMWOWBOvyDOElsawqqlhzWGdApKaTGYV0+HuwnpnmkWEwmC8Gz/2/?=
 =?us-ascii?Q?GVy38qD1i5X6PFAPAZYvLJpevLKjeXHTaooTR+u0x1YZiZG8uaa/+PjJXtEl?=
 =?us-ascii?Q?Nxs8vEqNZgXBaora0d+xpMtZLSwYsav/dSS/wR+vZsAl/2JUGclqBp60motM?=
 =?us-ascii?Q?hI42/GSm5HOanR5KlreSyINHYUq52ev3KClH26zYakmgsrV36Ta3n1FJhSp5?=
 =?us-ascii?Q?CJoeUf2VnrSLPYZYH5Pb1OJu3BjlDJllcmY1WZLT85Hfb1+XH1r7kJBEVvDz?=
 =?us-ascii?Q?SLRzjjbl6X8gHjIOS12Dv4d5ndwK+POaiQUo7XpdgY40BYxEVUxqI7oFFXEZ?=
 =?us-ascii?Q?HfixwE+fYPThpHorx4PDYKaZwah39xuOSz/2wRmJM6x0MLxR2XC03efMaCZy?=
 =?us-ascii?Q?sbPZ9Do4vYP2hZBZ/RmXbsQaKgxThv0YndjUfNZRW1QfG77UO9ZQiOIpQ8yL?=
 =?us-ascii?Q?Gn/p7U/tAjWtwtPeZEZlInjCy5tCfe72/93Mp3Msct9ng6/p+gtkDMgJZ0Kc?=
 =?us-ascii?Q?JMCuC3/C83yHPKx/HcK2u/cxFMu7pKpt/ojZn1UI6cu6AKjnGAV+lk3d130E?=
 =?us-ascii?Q?UD+geuVeQY9ZLcVhXUhEiBffvwdXr3BzRcD++jJE9pLbTQoll8/kDhcd7DwE?=
 =?us-ascii?Q?I1ucT83ewW80t+SWuwAEWEldY9aFURXtsHWg5tO4ZXl8szWGaMjuD/26ljtB?=
 =?us-ascii?Q?Ua8ZZY8suosBEU5ABKVuPZGLYlZwIucdLwKCVz7vQL0MyLQOSolQHURVMbVx?=
 =?us-ascii?Q?JfSjDU1HdomwHa3xcysr1S0j21JWmp4uWhNYUh75VdYcUS6QpTYO9S1PjMPi?=
 =?us-ascii?Q?0Lc9FGO/mOITm/kHHbtW6qvqEFMQH9ucQT8zyUCwpaRejIOKP/an5UtLpVTd?=
 =?us-ascii?Q?Y0povMAeFtE5T14d6F1CrIFLO65eJqf7otukR0AmqhySQxl+ZpEJi1s1zQnJ?=
 =?us-ascii?Q?Cmtca4538HknKxohgq1cuXw5hYy9WBeWkU2D6cNUXtNW7iOIZ0rFvqFaPFS9?=
 =?us-ascii?Q?zaIe5h7U0tbKv7KYWJsSXxk=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0982b8ff-350d-4818-a514-08d99854ad9c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2021 07:46:10.9822
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 zKEQEUc4CwszwgSv4Dkokj6k7oKnpHsNpxSEnAHCJqvPH1fZy9RbrWe14NJFusHZMplc+Kb7X2k6Se2G9sI4og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1581
X-Proofpoint-ORIG-GUID: CXNqbb0IxkguIhKbdIt2aZN3u-xvm5uj
X-Proofpoint-GUID: CXNqbb0IxkguIhKbdIt2aZN3u-xvm5uj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-25_08,2021-10-25_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=777 mlxscore=0 phishscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2110260043
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 07:46:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55162

Add UPSTREAM_CHECK_GITTAGREGEX to check the correct latest version.

Before the patch:
$ devtool latest-version crmsh
INFO: Current version: 4.3.1
INFO: Latest version: 12
INFO: Latest version's commit: 3308c27651a3657a019d7dc313435060f68454c5

After the patch:
$ devtool latest-version crmsh
INFO: Current version: 4.3.1
INFO: Latest version: 4.3.1
INFO: Latest version's commit: 00ec69054edecd068deda54c6184c0385d90ebd2

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
index 0b6ecd3..531a053 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
@@ -20,6 +20,8 @@ SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
 
 SRCREV = "00ec69054edecd068deda54c6184c0385d90ebd2"
 
+UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>(\d+(\.\d+)+))$"
+
 inherit autotools-brokensep setuptools3
 
 export HOST_SYS
-- 
2.25.1


