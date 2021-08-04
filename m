Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.5654.1628059800104005609
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 23:50:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=n4/Jip9s;
 spf=permerror, err=parse error for token &{10 18 testsso.windriver.com}: permanent DNS error (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3850754a31=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1746irFj005313;
	Wed, 4 Aug 2021 06:49:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=B5FQAoh1gkaCWHpfamd85sMhBqLA5Vc+YZuGJzbeNsM=;
 b=n4/Jip9ssMQ7LyCytVMSTmM5Rt+0ViW/PYVVjXLk4R2z80GfAh4nYdLvwVT3AQipi99R
 wzr1+eyIMUl3/wH3lQomu3sfoiycQVMHQLgST4cVxC7eiq+6IUn5eXcPu6yPrEYhDw+n
 kcXI02afLco37igJ50PaC6JFt48egw4B+jQcisgfm4//D7p6+Sx8Lgciyvpx0e01gipz
 v06U1UatAi3Xpgi19Ka/0tfl8UscGA7Nlr+cpHXuFQ+mZHi7fZ/IuxiAVvpv8xjRRh9J
 0iFXvsTWr15/+gdVpuKACPZM2P2OdYhmQS3eV1FHiPOpNGsKOIunf+6ts+ROK2PKHRfv Zg== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a705h8tmk-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Aug 2021 06:49:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K4EJEJBwMKDmN0MZt8mbILGgeLtINu2YnJO3zfUc12L5lkNunj0EdWj0pp9D2IuONqr9werNa75D464YuQwvAJ5BVMQ3pmTBbCjUMfj1dFw3hrfTyR8myAMn7pjbBDEClTY0ZpwdpbnD/jx7S7SZ06Aedi8FX0ysZPdPdOD5SPn4F9Dt5yQLBliuP8PINlPlYxovI0PWeJNx4O5XLgRQz6ZNjaBoB2r6I7OYr5rxla7RfNWXHY5TFTCkaBOSHdEMTD5cemMWwv+qLu0mm02lwAaI9sd5bOXLaAfD+jc4DLr0OlWw/wYrYIWrgriNhNS6eF77fLpg1rZkDCY3zxrs6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B5FQAoh1gkaCWHpfamd85sMhBqLA5Vc+YZuGJzbeNsM=;
 b=gc0AjalNbcRnh0Qx45jGXixBJO6aPmgXX2TUPJCeZk5RwTzOqsi38A8g3fZ1iQoHye2GcyHTBIFsVgjUWp7/NtAUEcx2vfp/OIPi4mRii2TbFKCdNTtjnzcuGlYF9i6umgnqrmhucSxp4436X9hrTQfMR/gikmsiyhAtFuMvnCZlHc1TVU8vGIrGnUUzR53pDzkNLIPpzQekvGbi0BORKkEuWtNGsAmGkctwc5PanptAXxLgc+L8nXFzB/3xPnFfRMX0awegelk4yPsQIZQ8/wUAHKiBUCKVem++Nnhlol6SVc5HonT/i0nmJzpejwGL0mtwGW//VWr4cHr8JAwQQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1950.namprd11.prod.outlook.com (2603:10b6:300:112::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Wed, 4 Aug
 2021 06:49:57 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c%6]) with mapi id 15.20.4373.027; Wed, 4 Aug 2021
 06:49:57 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 2/3] layer.conf: set default refpolicy provider
Date: Wed,  4 Aug 2021 14:49:43 +0800
Message-Id: <20210804064944.334566-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210804064944.334566-1-yi.zhao@windriver.com>
References: <20210804064944.334566-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK2PR03CA0047.apcprd03.prod.outlook.com
 (2603:1096:202:17::17) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR03CA0047.apcprd03.prod.outlook.com (2603:1096:202:17::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.8 via Frontend Transport; Wed, 4 Aug 2021 06:49:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 265133e0-e93d-4024-b175-08d957141291
X-MS-TrafficTypeDiagnostic: MWHPR11MB1950:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1950A61BC6C7BE31C0D35C67F9F19@MWHPR11MB1950.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DyVwLqOj+LDJjMgtSTAMRQSiaC59v0MMHk2BWAYrCzZoLCwfzA0gDEUskvZ9v/uEiUvLA6T8ULAgP0hWYUFcZZ/AqwhsAm2kCBqmflld+H3YPOXM3PfCMM2WkD1qzZCcb7gYpAlcE5t7CFfJ6Zg14zRyQcLeuKit/g4uq02K5MumN6VQYe0V6Ni0CBwCnpeM/6rhl/6lxxGkIUb1JqrRpTtYAgTnQV/uv84sDdtQsxilX4q+c03RnQ1dEN9BAhnPeSZPgawrVFgtQomrDy9yJRdmrIz4wp5M1mFyTy/0ZWvimlAfUJ1o5nEmDIqFjgfOVLfrsQGJBAw89CIZDe40Ni0BF4l/Kv31wp85kG8nPLWx3kMSdrhcsZlVqGfWKI/1T2B2a4hourWpFGC3F/rBH1N/ktLqdu4btqPUvQ21i1R7JUBc+p1ny8K+fuSQUj2ZOd4zhSZqFhcZlvBXqIyzdDtUOuVBOy0HAmBoX8TUzmL+Fw0apR5hsBU0ORP7qTBN2nf9swlCEr+XW5H4FLXy0+07esmClvBTBNEJ6chns3IbPsGYwtUVt9U1kKQR8tdDStYvLA1OPxY+xstPXEH39XPtPnXBOjG4pqoqtZZbktIki2a6r8NFFYSm4IOBNo/vfBX+izteGmGE9pGnqwK9bYrvvsbYM3at72aSDJOApxxzMY9ai0abfxkdUU5lrh1K
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39850400004)(396003)(86362001)(6486002)(8676002)(6666004)(8936002)(36756003)(6512007)(478600001)(956004)(44832011)(2616005)(5660300002)(52116002)(38100700002)(1076003)(4744005)(38350700002)(2906002)(316002)(26005)(66476007)(6506007)(186003)(66556008)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?1+grRg+8wi+ANAaefj+bdI5Mq2re8fJC93ccWACZ4N4eQgyDTtUEoGZ9Khyx?=
 =?us-ascii?Q?8Vzrx5WAw6x7+ZUuuRU2XRgZos0DheCWRi6GzskxlL/vEDWnqyQX3NCQwCIv?=
 =?us-ascii?Q?cWRcRZTmo6H3bKT3wjoI7eo1/Y1IvlfcRa6reNrUAlqmSOLV3dK47GfQa9C7?=
 =?us-ascii?Q?IC4Abd92GC0RJRTXZ9b40bdP0ORJ7lDQEDuwZi7SwAk0eArEYlxyFj5RVgJt?=
 =?us-ascii?Q?2TibrXf9JKV4IZniSFomfYjU5RzVsGAhC9az9meho5s8p7+Z6so0OIAfxCQ/?=
 =?us-ascii?Q?/YsYEUbSmAMlb4zh5LBTqSrmdsxt9n+sUy4/eOdGN4TXu3IRMRx9/lZklbD3?=
 =?us-ascii?Q?icn1rKFhFlisbDIhzbeNidFvGCcEYM1MHKhG0skF48qdXT0z2exbHRG5pHty?=
 =?us-ascii?Q?gmYzKoHTswupXeDtzV3EcpV7mdnBkGh1flWD5HhGd34HQwxADuak9W1eirXe?=
 =?us-ascii?Q?fH6AX7JeKIp6eYnAM9qhimLheH1BvRjiyjyUmMrQYiugwJptlE/zAWfI+xI7?=
 =?us-ascii?Q?oujw56p3el1YfTmOCFzRtMva1i8QJr4l2wahAMQ+JySmK2BwDMmjnokdjrmr?=
 =?us-ascii?Q?ByzZf8GuFA6JfO5LccaFU4tJviKX6fll7UTxFqb7fSBJOBcRmya4dlwDSyIS?=
 =?us-ascii?Q?KkhcgR60bJ5UaajKX5S5FNMXYN6h037rYLKISiO0rhZEPdJzuURWTTNLA3TB?=
 =?us-ascii?Q?qHubTq185bJlpj5rTdvocqC+J0CEnU2Uccs4z+BHmLgU7kYB6+oK6Ctf2yxt?=
 =?us-ascii?Q?1FEhkUkhkbc/W5S+ZSK99r2bO7xeaNFs0tOvE1R+QKj5Q18OSV4l0sZ4HaTY?=
 =?us-ascii?Q?87gDICYluTXmZEpMdPrFiGjCqNM5V5oYO5gaLzNbjhxX8WBxl778YLrJQja7?=
 =?us-ascii?Q?Ox++2qi7u6phWFIhzKJH2/IxRzKL0S32m1ZUiJFVOKaUovLXJmR1GEe/qLJ+?=
 =?us-ascii?Q?DwFlXtE12aGd2rav2ZeoowmTz4XhsQoccWvHAiGNIlF7sMLnKMWUOU6BkjYL?=
 =?us-ascii?Q?MY1b1xD9OEL6tloDatZUW0PImSQWdvAA2Gpj5RzFeSAvNm1r37kVPEYC2ugp?=
 =?us-ascii?Q?cDSqR1cwUEh59HgstP7EaGjSlkBiJ/h7hpjSj5PCCEakeZ1zVOGIBU5QJus+?=
 =?us-ascii?Q?eEEz4hHUMLq/mATeLVlVNsG/jkvkHeKnLXqZqwmG8jJhxApZBwFmUGJa8xs/?=
 =?us-ascii?Q?u6YSJtcWyAF/YSsKxaAQ1IjL0bQy/p1XrEEdsOzXT57mTQ0sK2uyaIFVSjT9?=
 =?us-ascii?Q?3p5GEol4dAzC+AAGLFJT3k0FHcjj+m+/gQNzWrcDX1qRdukhXAhtBEv/kMCK?=
 =?us-ascii?Q?ED+UIJrK6lGdiSd+arnFKC8T?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 265133e0-e93d-4024-b175-08d957141291
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2021 06:49:57.4983
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l8Rno5zrbU+//+cLoB3TKP0yd1qc7LRew/NNYPlr2YvPYX2HE4/JYZLlfUdkvIABow/m3ptb1Z0m1XhNBze5FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1950
X-Proofpoint-GUID: 9_7h4kipnD6C4thtMIv6h0W1562US7JJ
X-Proofpoint-ORIG-GUID: 9_7h4kipnD6C4thtMIv6h0W1562US7JJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-04_02,2021-08-03_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 mlxscore=0 suspectscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 phishscore=0 mlxlogscore=953 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108040036
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Currently there is no default refpolicy provider and the user must
specify it in local.conf. Set the default refpolicy provider to
refpolicy-targeted in case the user doesn't set it.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index aeed565..673cc13 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -29,3 +29,5 @@ LAYERDEPENDS_selinux = " \
     core \
     meta-python \
 "
+
+PREFERRED_PROVIDER_virtual/refpolicy ??= "refpolicy-targeted"
-- 
2.25.1

