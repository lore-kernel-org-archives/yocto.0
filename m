Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A4BBC433F5
	for <webhook@archiver.kernel.org>; Fri, 31 Dec 2021 02:08:01 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.6877.1640916480392946955
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Dec 2021 18:08:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=r3Zt5oqM;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=89994c103b=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BV1ltdw017391;
	Thu, 30 Dec 2021 18:08:00 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=fTZz662xHO4lvdpJ7dJlNcl/2z6G7vgTvkQ8YacDGbc=;
 b=r3Zt5oqMOpWIDmqzMaTzkePV80SWcnYpsyKgtiKcjLHNVIt8Wnw2z6FwhATB3YjoVRWg
 kN+onUsVCSfHkbKUGjiQnrpi/2s3E1JT6ZDub+k7bfVDSHhCZzjaTuARjTClP+3NMPgS
 /vDbio5kXtQy89suCW8V0WKTQzDIUYEv5rWxpER4z0o2ZnPyMuaRnwjRwRuceV4qoKPP
 TWlrdkLLC5NbFRfrcnVNHqkSqMC6nZhEM3fUZFSCpPAykEca+IWPkSKQGparzoJ0MVVP
 Qh5PZnAdDxbElPs7GWhfLX7Q8j6JbmzYx+fFIUtrFDoxjwtBjmC6rDyY+3zbRJBuOe7S gA==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d94k6rj0y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Dec 2021 18:07:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IxMmC5ux/9qMIh4bSzrdk47IncJ7A8DffyE+c5xj1AyeCz4xLuQ2cBjPdBpt+9HpJNg8QGYdWhl+oDpbqm2cBMhG3eqCOHphH4PbsMyVkiNBej5/26/qfeW3BFj3RV4P5Xm+/m8GIWsoQF7ttU3HP8YIvS59kJZDnJzsKBBbHeIU8UXLjkm2SK9XGfej02u40NLRqpjA2fSNX1NzT6FdROraLgAzRN0Of1DdR9Aa3cs9s+yYn78EI/rweAGtJgyJXtvYjRB9MLeY4+uqu+6QQ/jIsgC/OlNdYCo9AAVikRVxM1SKfzKCJQmmSdBnWhuTomtG89FpnxkpwIN8j8oEZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fTZz662xHO4lvdpJ7dJlNcl/2z6G7vgTvkQ8YacDGbc=;
 b=CB1X8U0TMm1F/yttJqMm6Syi6uoVrzsxS0tyCEd3Zn63OvkyzDZOIalZIIKjivFMfKIE/GhmHyslmLza+3sYM+aae3o5V7IjS9LM9WaN1gkE/JiqmFa3t0b3T1uibE6tzVKTWOdU/+MH+f90ftEFQDYazXtAvBI4cPvCEMWANsgi+AtTdSIFdDSIWMSgcIx9JDfSw0+n5yJWGJKfdMzd6RRdfzZ5sVyL3fJ0AjAzjnTVFjFqlJ8f+eNToabfXLwIyRSxNvwGkK7nEHY9luA5KiYq2z8N/nkuI4AS+ImPbveccRpuTTqWKhNPv+8fF8vJvkoHk5/8qIC9Hb3gcAjwfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB0046.namprd11.prod.outlook.com (2603:10b6:301:67::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.19; Fri, 31 Dec
 2021 02:07:57 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%5]) with mapi id 15.20.4844.014; Fri, 31 Dec 2021
 02:07:57 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 1/3] resource-agents: add UPSTREAM_CHECK_GITTAGREGEX
Date: Fri, 31 Dec 2021 10:07:43 +0800
Message-Id: <20211231020745.1149339-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR02CA0180.apcprd02.prod.outlook.com
 (2603:1096:201:21::16) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f640cf85-2541-4e21-3155-08d9cc025ce2
X-MS-TrafficTypeDiagnostic: MWHPR11MB0046:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB004647468AD2B574F71DE48CF9469@MWHPR11MB0046.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:369;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WND5rP7HlKzUBsgPmRxPZN5a0yFAmcgNxDHS8Bydh3rsHxKWY4M2dX1V7dOuMrlSDe0FvqvvA83/0nR3sRZOvdxD6Mwe2Nf52fi12eKJJPPr+dk8TE2cAqHu+XsEf6TLAH+qhobqZkgdegddIUM9xrEZuzX2/0DJnzUbLFGlzYtmlL1BV9tIm38o2KsmIMej0B6yH37PUP3cMw5Te4iCklPoi/Wm9lNH3sSa5f0mKUdEg6kPQOLAcXown2T2ZXJw6sWAGOF9Jep0vBXQh3p2wApadjx0/aQAduTEkNB8KtV/W7UEMorvqaKL+hpYF8F+W7eLmTOssYOcgWTZo+mYKuPnyZQYFEMTip2AOEmCfY+BuOItWzx5rW4Eayp6VnK1wLVZ8E8Fqb6KA1iZtAlKZxsNRx1O4zDaTfopvpfstVLaZu2cmLG7gIDngaKMT8M2wxKiSkxq007z/IDahaY+NzLzc5EUK5OV2fi6e9dH4AQ5m8RlRWseVYoI1u4cp7GxV9W0WEB18rUHIrAbQQSy4223diG6iIhku+3kB2QiwrdYV/onv3xE2voGzCU+9Usf2pmiisB7Z5r5EKCMOekMxZMZWYqTwCmLaAM7NAUd6N4UQKypvzRfSTl3AEfHGqQQpJPheXFf1Ymw45RpRsZM1uqxLFR1VQJnoV82bZfSYP2mdaD2NEusy1keK4nEhjFwuzpgLNByhLWf7cEg76S+og==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(66556008)(66476007)(186003)(26005)(2906002)(316002)(508600001)(6512007)(38350700002)(36756003)(38100700002)(52116002)(6486002)(8676002)(5660300002)(86362001)(6506007)(44832011)(6666004)(2616005)(66946007)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?yPHQj0pWEcrzmDdlCFDHFxP4kn9h3b4wNtitHHMEulC/wx5u+qey3JOvxD9p?=
 =?us-ascii?Q?CqAXeyFoOSnVcxJQnZAGJtgN1lTuO8qhmzfp0RFzOJWIjaBjnxJQL33VTocs?=
 =?us-ascii?Q?hhGKAMMtH34XdqhpeT/iZ+RF/TUhPdxdlY/uXBVx1l/yRE/ch+8Qph1taysF?=
 =?us-ascii?Q?1xZOaNAZyDsQNb68rtDaKtz66fousoM1JyfcJ0SjnOM6DsvyXT5buGUfqtoJ?=
 =?us-ascii?Q?2iXtnJqKb5lhJVFCuwsSjnXyvSNgRDy5tcB7fHNirYjKlGGhuKTMHa4RCqHU?=
 =?us-ascii?Q?HFGu0O2NrzEU6SxDRiCpGUWr2fUFugNQjdk99BY9n8BUqxa7WRt+RPKUs0Z6?=
 =?us-ascii?Q?FR/IvckeGF50xotIVwMA8xcoKJso6Jdb3gmDDcBC4gZHfZoCOHCEbGJ6fl9K?=
 =?us-ascii?Q?hnIa220iVg7V8CsNUovC2kHripT88Z9DQMnUnNLK44pzhF0H6LbOrIRltC1K?=
 =?us-ascii?Q?x82mAWs/ToaREXPY+2y2xH+ytBuUsaPJ61tL0YW4DjANP9KecM9kH5PfTSnD?=
 =?us-ascii?Q?eMTwSNOJ3j5HtkXrhQ2tg2Po05IOfFa6WvkSmWQsrfSEGKHNQuu0ipPpUUnD?=
 =?us-ascii?Q?c2T3bClFwu053p6Lhqq1cXE28gWZ/Svp7Op1FlA9jUmei+/o2HRWpjc+1ret?=
 =?us-ascii?Q?w+K9eANT3nyEYva/GVHBj91lxXEUyLq88nscVUtwTBaQzTyE2rO3CC1R9y5A?=
 =?us-ascii?Q?WikAOVFgMjylB9bVw041VjFYrJQeYjUmjonB7OTDy/YIkxLIxlvEWhbr0KLA?=
 =?us-ascii?Q?1Ji/8iK2/whINcoBhWUjFtTyzlwtR9Ch5ClbLSlDDwKlyTKodnZWZiWBtQid?=
 =?us-ascii?Q?QOj/uSATzhccOPYTZxMAYD4RSfMvn2rbsnM/eUdzGRhd0Qyl7g9lm4UR7dfu?=
 =?us-ascii?Q?kJcnw1X1EMUDy2TbRctb8+11PJ5q6T30oCJ4q208JjfjCq6f7H0oPf94o88Y?=
 =?us-ascii?Q?FMZJLHHjfcIZkh3ye+R87kLnvDrBkkJhWYXZZODiqf1O47qTjy83Wvnfb/1L?=
 =?us-ascii?Q?bC/YSPeRL/gH473ECCRGV/DK5UxaaMxCj21ykTgIUpPVDr0UFK9XDGbHne7H?=
 =?us-ascii?Q?QUxuLvw6KqofaIsW2julTDtQsMntM2/ZSrkty5KCO9m91GqDNJMx3DwMHx3D?=
 =?us-ascii?Q?efm5kbUg3/DMIXqYFVJHIJ6/rkEfr48hyWhwEfyTzJzIkhPpm7YU46tpVRIN?=
 =?us-ascii?Q?0WcubcprlW4sGS8dYV5LJu9qCReFA20YurdFZpHBonJDViTjb8gCa7TcSn7H?=
 =?us-ascii?Q?2yg6ZnxhwA0f1b9o7kwkUHdYspD5RjH/YpNUVGo+4mjYMtyNoavngwFdvBwV?=
 =?us-ascii?Q?j9YrT45ADqmzzZd+mifa6WiGZfepfHH/M1SWV4sZretuukWyBhJ0twxs8EgD?=
 =?us-ascii?Q?1oM+MEXq0InaNBSGR62C4wMML+LIOF4jnMxugo9Q77dr9dy+g6dHi07tncKN?=
 =?us-ascii?Q?BhTT2QRBX1tf3DZQIINPbRRlpo6peDWBTwxrUjPVk6BxSeJNJNWB+fzwYkRQ?=
 =?us-ascii?Q?rRHjqdGSws7eEXohVhkHTF9NANVBLOcPjzg/T/zsrQmhlZrHSvPnfKDrOdc+?=
 =?us-ascii?Q?HCM2r7veWxsnWqK8WDYlV2nYvJ7kK3xsoufyXTNbRuz801vipm6zDhm/h6z2?=
 =?us-ascii?Q?+9+uNRkqtU68RF/b6m96dxU=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f640cf85-2541-4e21-3155-08d9cc025ce2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2021 02:07:57.2941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 5Kv6ZmpyqlbyGthK+TZuDPAgRFOEuOOKQkCfWuPxqzFVvTg1hBlTB+D+M4A1JE4KrCMNolCXV5DlE12IcLOLkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0046
X-Proofpoint-ORIG-GUID: oOQy93P0qLIFav-nVlvwDYYxyr2Mz5Yg
X-Proofpoint-GUID: oOQy93P0qLIFav-nVlvwDYYxyr2Mz5Yg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-31_01,2021-12-30_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 mlxscore=0 malwarescore=0
 spamscore=0 mlxlogscore=999 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112310009
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Dec 2021 02:08:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55693

Add UPSTREAM_CHECK_GITTAGREGEX to check the correct latest version.

Before the patch:
$ devtool latest-version resource-agents
INFO: Current version: 4.5.0
INFO: Latest version: 10
INFO: Latest version's commit: 5cf93783eafa22e8b82d50834bfb76b9e8434783

After the patch:
$ devtool latest-version resource-agents
INFO: Current version: 4.5.0
INFO: Latest version: 4.10.0
INFO: Latest version's commit: fd0720f73a06042ad0a5475a3398096b2912cf5f

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../cluster-resource-agents/resource-agents_4.5.0.bb            | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index 00ddd22..c8b2fbd 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -24,6 +24,8 @@ SRC_URI = "git://github.com/ClusterLabs/resource-agents;branch=main;protocol=htt
 
 SRCREV = "fee181320547365d7f8c88cca2b32801412b933d" 
 
+UPSTREAM_CHECK_GITTAGREGEX = "v(?P<pver>\d+(\.\d+)+)"
+
 S="${WORKDIR}/git"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
-- 
2.25.1


