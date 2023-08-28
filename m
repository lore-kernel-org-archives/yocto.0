Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDBFC83F11
	for <webhook@archiver.kernel.org>; Mon, 28 Aug 2023 02:59:46 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.6098.1693191584406725414
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Aug 2023 19:59:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=bKO26xXB;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=7604684171=kexin.hao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37S2Ti6p030604;
	Sun, 27 Aug 2023 19:59:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=M0NLUxndO5cfUzMYYa
	ikKpLzmD9VbgNYLbgvDVM4R/g=; b=bKO26xXB/Ur2muEs1d0SHZhkjpwg++59N/
	LuTNYAEoS2t95Pp3H0OBsvl8pbjtsBaPHBcoKvoncolQpClixg7n7cSep5KK0iKq
	k8bgNdG8G6wcGgTfrJSIpxaR0UHrFsGM0TiIMwrY5sqdNFi2eNL706jv3DYYkcdX
	5SHrfEbF2ikNqeIYjE0nPDRmsYzGqoVu0s1UiMKIMg7TTSZcXtOmkG/nAVCknAl3
	SCPx1CZTwWuYEeb1u1bBO3SQmcMk/4YC2s44H3/DfF4w5rlV06NQsf9V2rmGcyd1
	Iw8FKnFs547Dptr+7aM4U4HGSVM9SKeXtWb51EjwzAKThnLlZebw==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3sqgwfh0n1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 27 Aug 2023 19:59:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GJcTMLQ0YOBercWk0V7+y8M/uXj0alKM5FH+6xa2Fuguh2EkszCroRpfjWepYyBUZCmmkGnvCCn2zUcqVIkoeeCLdKddAj12j4CGQjA2DTveWAedy2i5nwgMvZH05XF1xMCsY9WSV/WbjRzIGvien7ZJS7tJE7OZaLz3JzoN4srqFteU9hMQ8Qb0XjDfUGA+Qh9LLRZqqaQuOQYHgejGkCIGhbXiqC1UdUmGqCkjz+mRJCrxyZIMjuUd5rE+2J8DavLjWJPfLtg+0lctoylKHkYgTZuLJDg5gEvPCQScMTLlEOLrpRAVVo/dzGJEt+Lz+jSyFqFbt78ty9QRpB7lWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M0NLUxndO5cfUzMYYaikKpLzmD9VbgNYLbgvDVM4R/g=;
 b=GMNLdRmKGEO6ePEqZGkOZcelIdjxqKXU+64Is3Y9Ae66LnN2zClaWY4Iuz2b8YwoXiWHHvyeh/BGjUl0NPGcLS2hf3/ONMEQdOkha1KmEhFQ1v1mdB1l7C9fPpnQw15ODVJpa+DOaHjc1qjn7clW2xiPmOtJWPjXk6iKAhRuVZ1JKTHpwfK1BZ/O4ThnR02NKc08ShkCCFEbo/cEh8QDDRgQnmNtcH1qHj0p2zHpyJU9yIhGRdQSkV+TCQgTy4KTZMIjVhEm03IOvDkDYlvJpZ2dAsGiTo88vJpf2bSk3nKumzM0Q2Z7pvvjl6MRCbkZKP/03nOuRGCkMSMXdyqySw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
 by PH7PR11MB7552.namprd11.prod.outlook.com (2603:10b6:510:26a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 02:59:36 +0000
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::9ca4:a1d6:ac29:4fbb]) by SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::9ca4:a1d6:ac29:4fbb%6]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 02:59:35 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][mickledore,kirkstone][PATCH] linux-yocto-rt: Add the bbappend for rt kernel
Date: Mon, 28 Aug 2023 10:59:14 +0800
Message-Id: <20230828025914.2903474-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0033.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::21) To SJ0PR11MB8270.namprd11.prod.outlook.com
 (2603:10b6:a03:479::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB8270:EE_|PH7PR11MB7552:EE_
X-MS-Office365-Filtering-Correlation-Id: 265a594c-7d55-44af-ef43-08dba772cf53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VZ67mNFK7O7pEXIBGwofi/rM5TXk5zLIkD0GodR/+8qpKhzwxfLZL165zQSmeV9tu8Xq7+TIm9ziDJEI1ulx17BhiNo8GJlPI0m7SCHM7ORahJGa2Tq0nVJv08adwZCt+wdAQkuec68rjldCTljvwb82DSvRReoyuLHJIShqXezrby5gwIVxcGxAs93ezQJThBlfNiZLwdJtighFzTI9SQV8Yy5r5fR6yPf5E90mK4xG6vLwHjoePjKbk+qQ70+yoackN9QIV+cbyNOxZAHMmu33/7OKCH9wd+OGgFdIysNfXW+83w2wTEzq+tBMNTi6aDAWDCBQS8HFKbr2mcuLVkfsf3ZnvCT20ZfVNGlFNauCaCi6DHavJ9c+FaFqAXzD65P3VMA0Nuxl/Gn8ZKE24vYKNpoIQkGd8PksF+IDfDVyB/b20d1lDgeGSLHlq/q8wUNv3DZu8GOHLNJARceP0vS2IVFgAwSmWfQ7aYXAxYrBTMQB6/p7v27NtrBQZqCI8RPj5OvjepVX2VyvGKSzEVthzM1IlFMKr3laIAPk6MgalanjO7JSJzi4xn9TnNM6s9DIvXiFQZysf9x0VbaJzi7nhMWFtgxuILCfb7+nI5+jJ3enU1/QfnHAHxXJdL0R
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB8270.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(396003)(346002)(366004)(39850400004)(1800799009)(451199024)(186009)(2616005)(26005)(1076003)(36756003)(86362001)(478600001)(83380400001)(8936002)(8676002)(6512007)(6486002)(52116002)(6506007)(6666004)(66476007)(66556008)(6916009)(316002)(66946007)(41300700001)(4326008)(15650500001)(4744005)(5660300002)(2906002)(38100700002)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?YFpVMp3OocUSQ3vujYYKhJvH4uHkr9FpCy9JNrO6bJj4J8qvoz7p8Lgw/2pl?=
 =?us-ascii?Q?WvUIYIVXl6aPf/shKkgFQSqZ22Yiidi9gX3OT5JNzqFMquSbHxzdKUyLmUR9?=
 =?us-ascii?Q?rWdoRSQtdOr2DOW/P/0JDAqmrIHsWa4DhTTsZVVe7vSj/5I5Ys3yLPr3DIjh?=
 =?us-ascii?Q?5lvuJRQ5lw/7QeHmzEsk5DuDX4fleLXxRS6/cJ65GjWudsDsr71ta8538MI7?=
 =?us-ascii?Q?/roBJMG1JE9TKFHbQp6yEK9obkT+QzdmRTea2rTJak4X83+fjyPIUoMV4CRN?=
 =?us-ascii?Q?mYA5zIv4p0mtYAxmSyJgHAG6ItiYR+FTZx4cKoiI3U9nXWUh7nLy024oTd/w?=
 =?us-ascii?Q?1I2Fh0OMFmf96LXsgq4WQJD9LetcEgBpD7DCVZ+PlCOogJ1YOKzD30YOPL53?=
 =?us-ascii?Q?bWTVDSVQ727ywPyftqNcJqRnxawMAUeUsrp2DzJd3rpbIDqlpkmWrcarYL8N?=
 =?us-ascii?Q?4aeNLl8S9cr0mTG5keUYovvfmse25IQyipWgUOp0fNvMDlMPQcI31gqQE7UQ?=
 =?us-ascii?Q?5ZjGtrLH0ej6oQMKQcT8CFkchpDRuqO4EehBslzcBqYnDZenoB5ZSHLUsXYR?=
 =?us-ascii?Q?BQeYAZA9BvdproOMED6wy+/5j93j44J53naf+tSIR4gzSrYTCClf02A/qD08?=
 =?us-ascii?Q?Yq57iU66tDNCuVKuL+lAupxebPBE2UKMq+WNjKar8FkywwGnNVx+sXr9CcIV?=
 =?us-ascii?Q?TA27IvlCtOpNOJxmHbeKFrng2SNYKD9EF8zIxM7X8KskirSAWIRRK/UU/H4E?=
 =?us-ascii?Q?vHAekNtCJlGxywgg8W9KI00/qB0dWVRirfjgj329Sqe6KgPcIq9LF8gr+GhK?=
 =?us-ascii?Q?l6NNeIHv85s/OE4/mYAy9+I31lmZT2GWt6x6Ae8n6Fa1A0oXYI+4LEYAsXnY?=
 =?us-ascii?Q?jozBWvrDHMk+IBb640PsPFRJriK6UtjoPGegsU+7rElRAQly2eBbpxcUmKpg?=
 =?us-ascii?Q?wcMH22jqBUBP7GMUpmT91Z8/t55psXeNDSKkaaKX0Sotlx8J4PoI8MlB2vA3?=
 =?us-ascii?Q?TFjx3uPY3waSFMLtcSRa9DVa3LcryvIcK0ngoF7yjW0AZvTPxaPZZ+8P5oDR?=
 =?us-ascii?Q?VZ1k50wbR5cQ3niaaHNvXjU+V0r0wAOKrB9nF6gdYYw09p2imhIYEwbR0Oh7?=
 =?us-ascii?Q?xX7IuZdA2aj8WZ1EqjOaveTz/JOLRrEv3I/PDRF7x9eyy1LeYCErq41KHh19?=
 =?us-ascii?Q?8bCg7MyuCHsb7VsQuJJqhrMgKVSV+tf/MoQR3/JE3j6bOBt9/4x0y4gPKnso?=
 =?us-ascii?Q?TfxCIqTNfiAvbA8OekhYt5z4iUiIGWBZoNQ8puS+XxDGcAFrlfoSDHM3qBp6?=
 =?us-ascii?Q?6n5YVlYKTYbGZSJ4WR2JSqCXT3CCr4vCJlkPk8tGR0vdpUY602TMRK4TdpRd?=
 =?us-ascii?Q?Sz4ThU9MGtKp7NpFYtE5E2VNjTf75pMCycxw+ndAk02ZvAKCf8rE2yJGtSnR?=
 =?us-ascii?Q?MuSEUxCvMwb6qeiHEJb/IQfSYavnAubdXimtc6joPUreizKkbTQ5ly5pllf2?=
 =?us-ascii?Q?DpJwc5nmswp+rKH91Bl5KpXwZZDRcH8knsV2hQL9mnFBQLGL861sD2p3zx5C?=
 =?us-ascii?Q?C4kR8AM3UvRXZ0P0k03dg4uwaBaxaVPhW3mkR4ZoqJrwBcTUgPmX24+ndzie?=
 =?us-ascii?Q?aw=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 265a594c-7d55-44af-ef43-08dba772cf53
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB8270.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2023 02:59:35.3481
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1ZG41eJCYi3JrWHUKq+QN0gz8eUPXR8lcBFc6/xQi/nJecUFtk6fKsB3c6RxLDR00vGTTZ4tXHmf1csY1UDKkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7552
X-Proofpoint-GUID: bK8VMBpj6_-Pwnlvc8gJ6_-vm2t03lMk
X-Proofpoint-ORIG-GUID: bK8VMBpj6_-Pwnlvc8gJ6_-vm2t03lMk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-27_22,2023-08-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxlogscore=551
 lowpriorityscore=0 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 impostorscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2308100000
 definitions=main-2308280026
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 02:59:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60897

So that the security features in this layer can be used on the
rt kernel.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
Hi Armin,

We also need this on the mickledore and kirkstone branches, so cherry-pick it
from master.

 recipes-kernel/linux/linux-yocto-rt_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-kernel/linux/linux-yocto-rt_%.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-rt_%.bbappend b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
new file mode 100644
index 000000000000..79dfeacf8bb0
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
@@ -0,0 +1 @@
+require ${@bb.utils.contains('DISTRO_FEATURES', 'security', 'linux-yocto_security.inc', '', d)}
-- 
2.39.2


