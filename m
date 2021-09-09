Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.6899.1631193028111028489
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 06:10:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=B6jx6V8E;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=4886848d7d=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 189CeThM019926
	for <yocto@lists.yoctoproject.org>; Thu, 9 Sep 2021 06:10:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=vv46D2vOIKX6vUuwNUfDedO4bIOqZh69O0l0v0TW3KI=;
 b=B6jx6V8EPuyBxp3I0R/lXJrkcHw7O+SM8QzXF4Z08uWPJ07OwT/CoxVcbOT20pf0/2Nd
 5hCA3OUiDTRoYouAf5RIUxt0FhyCfe31UhTyL8M5mOB+i9H3qnihSvfIsed7HPYag2eS
 6VFadX2htuy8fGO/PvjgsHqLYteX1CI/0uUbVkVP4aD7sFWiYvusYwanSoOB4BLlWd/f
 3UrCI8n/gDpptLKGzDrSg1j5ESr2vLf3JCi3qDDnZNfsgH97AdZF4thumZcRZkHiImNY
 9xfBezYYGBbIvLm8JkIVGVa+jQpP+n9FdYsU1S331mlDvKA3IoTpNAQpxAnRWZqN6/Np Ug== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ay6sbrffy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 09 Sep 2021 06:10:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ur5caJsiK7tvadasxbjPHdLdiLirMJH2G0C2yc4NT5fgOgBkwlHW1wGy8KB/DOrdZO38g8xKctFvdTBJ8Z4IBj4oXS0MRV8MzAA4Q6NM0mu1rxmRX7k4utBFS1Fr1sk5AdH+9fi23LlcBThKmgt8WRWmDduGmwPTU6/f9WTw3fIAPYRcknIOK/y2KcctvZB6vAR9st5039GWqj/rcstxaiuYc96EkakFQ8+4/2utRigNzYzgi836hu955r9956s3vBsAnGcP5qoQWWRhuDD6Fu8aPBHUc0bXzHfmhaBZMMxtZpcWEbjHEWSOYtnQ5QM6vp5ELahnsqq6OHkK0i1FEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=vv46D2vOIKX6vUuwNUfDedO4bIOqZh69O0l0v0TW3KI=;
 b=UlxwpNOC6nsCFEszqcMp4h9+G5E97y07glj9WMyStZfxdfWRoaBx8YWJxgfEiPVBjDV4h5yeaCXsxcqXQuGDgyVLY+2Bu5vNI7KppmcvsRJbuELBFIc3NnTgzEgubUIZ0ibNOJrZ+CFhPZm9lSa7cy9MjpM7ZQSRnbMfJpUi/iHv9BfG5HwYZ1G3ECXrYl0ZHoW0giC3r4AdSC/S7pC7pDvCtOo0EAx78EaSEsBCNU5NFbFKJ56ASQ63jSHTHYa14weq4wQgYOtzh96Fcepd81XJbKuOcIGkoNJ6HLXepepU20wm9z76PHZYkI8l5GR6hgCrqkzDFkwbzS9eLNC7BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.22; Thu, 9 Sep
 2021 13:10:25 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1%4]) with mapi id 15.20.4478.025; Thu, 9 Sep 2021
 13:10:25 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] add prioritizeBuilders
Date: Thu,  9 Sep 2021 09:10:12 -0400
Message-Id: <20210909131012.1100416-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: MN2PR06CA0004.namprd06.prod.outlook.com
 (2603:10b6:208:23d::9) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from yow-tgamblin-lx3.corp.ad.wrs.com (2607:fea8:c29d:d7c0:fa88:8bc5:c0d2:27cc) by MN2PR06CA0004.namprd06.prod.outlook.com (2603:10b6:208:23d::9) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15 via Frontend Transport; Thu, 9 Sep 2021 13:10:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b731215b-4195-465a-07d4-08d973932ff7
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5134:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB5134539F23917EDD0351E8A79FD59@SJ0PR11MB5134.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	CkkORPGNNgQkD/wnKIiDqz7JzMM0+uAInzZby4Pj9mddg1E4rS1w4zAaWYv8y7/64Q+1OPoS/WicCCs5t86RRDBBUgVhcdGK9WCm/Ev5E9mMry0CpekIDJC2EzA2Osj0CXLJ9l1oL6ryknjenNW4NfjS3UD1P6SEkMWzs00Qf+1BPVxIxJ0cdXMYzAfkqILp++PIYLxAgMoSfsUm3NkoUNpzvx9RpkXIo8ZXVo3+Ix36TTGaMfpEztqpYBq7cn3TN8cw9F4/PnIz7dRmGVX4CMHm0PcDPZlSQdmVtnqbX/YGG5ve8KAH2nFm8PlJbHz+lGtBt26xEHxLKHok5ey4nrzeO03tmrjOnsyP5pzOl/aHopVL99cLszmpmrlE4bgOgla8j3wkIWcXiEZ76uQmbBQN9ZKByGvRtZyx65weUeylUQ81pq/RTj/uvF7qSt8aDK1qSntgmwRvgI+TTGdNmIVq+j0dbnHAgZj7euZ3vcpEei1/UKtHdrIRV47+7r9w9Da52g6Qvf7zDHJXpLx04hGdO8TM0lvc4jHyia5qz6ZrcsqXBgf5S9i3JZ7O4roswlNWotxauN+rLs5oYYZGjmnhTGNGyXOR1ILCBwFxjn+JKdRrEEAOwKM9n797D5jKZBG5VOd/L26hxTQFV9M8kYb13FHa2G8uTH66uyN57jUV/hDOfDe0wcuOt0mH91xk/CJWkfokX675gfGPj4QqARS6dwesqFOGjE5v61UFd40=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(15974865002)(36756003)(38100700002)(186003)(86362001)(6666004)(316002)(6512007)(66476007)(508600001)(66946007)(5660300002)(44832011)(66556008)(8936002)(8676002)(6486002)(1076003)(52116002)(2616005)(6506007)(2906002)(6916009)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?xpeg9ysybrPCQQaRQcOl3nv+yGJmhv90GtfQoejsfjEXViQbvpQvhfZ+LzQG?=
 =?us-ascii?Q?nQPwcpIHqwhHx8EUhgHqj+jwANQ5lAOkGk1c37lRK8UBvTzyebhktps1BSBB?=
 =?us-ascii?Q?mtP8rWnNYL3Si8HHixDDWX6OLu8XC7BmtoduFdwo6dhjPsVtbLmvbs3+f7NK?=
 =?us-ascii?Q?fzyIU065g58N7PMBKpRgLi7/sAoNdUuVhYsJi1nGbeNiTZvw10J24kNZG6EJ?=
 =?us-ascii?Q?wTPrOARP57LDDV4dlPQvXS2lP617uHldVPwSOJ+WEsLWNuzHs/LvpVyfi3J8?=
 =?us-ascii?Q?SeesxCF1jO3J+/zqd/7MZs2bB5WVEeb9vs0d60sOxCRygccSrYH38ZiyQ5ye?=
 =?us-ascii?Q?ZTVofCrJ0TaNCFHRA2FkGMiddP6U14EFDlGu+bo3pokg3ZUm8f5BZsRCDMfX?=
 =?us-ascii?Q?JkGxULtUBlbNvhCibvSwKJesr6t95t7b0y5diy7JuY/bNG+Ogenm7TLfMzWn?=
 =?us-ascii?Q?pspevjTwN/tq76jFgTWHvOUb4pBCb4altJAftIf6CINZ4U4Oi0KIYZVD7Uaz?=
 =?us-ascii?Q?ZPnk74FAX2bKUK4DtSJdaLToTlgRk7WI7dh+CRj+dRRgH5lUZpYKtyE3lpuj?=
 =?us-ascii?Q?xSs5SDxvza9xXKsFMhL5m5osJu2PzdBzN2JBn/EOCn4JkIIJajwpGagNmX0S?=
 =?us-ascii?Q?YT7AevbnIbNYIYDXRXVionJuxmINLhxd/QrelZB1YSMo7q3udBCtMHnobknY?=
 =?us-ascii?Q?lNSzsnIM/Hr34t1GLljSklykZ4Gtu5jGDonQCI1d3Ra5xWJc9DBKV3jhVLvr?=
 =?us-ascii?Q?tt22DCvuIOUTiUAb5s8XetH+N9ukJmrOBNhYP3g0k7ZwcXf5XnfyMjeCWVq0?=
 =?us-ascii?Q?w/VyAhb7ZN27iYCx9ZhLMOn5u9KJ75lx4X7Zll/RCET5wDBZ2Vm+MuG6w/g4?=
 =?us-ascii?Q?fvNNkbxR6OQuLqMUUFvr+2dBX2Hlg5U1dXTijEQMezSzEuvM70BEwtPqEGrl?=
 =?us-ascii?Q?N4rbTKOfRq+qqmkaxjE10p3OnPZy8FeDf5gDhnTQ+dLvanNpNzFw8TK9cmf3?=
 =?us-ascii?Q?KOIYOdKKGslTb0SDz9U99NbBZsLUkcsPM3xEi4OL+upenKDuajxK8vPo+LSN?=
 =?us-ascii?Q?agKm6z9iO6T8uFavuWyKSpv2jvb0tJnA9K1Zkn2XiuT40WMSCmdLiAKg6etk?=
 =?us-ascii?Q?Pk8PUZmVJh2dPUTuGJNymdSJOlLyGwkk6TqOCtbsr2xjoa+srStFafoFJabE?=
 =?us-ascii?Q?wt67+t+azmy8FVeTpNuakLJQcH7kJkqWg8IGczXMsFwhHQZ+9jFPiVpWa6EH?=
 =?us-ascii?Q?gdheGReoGD/v3fK6JFDCdAdbxu/yeO+14KTNvygITOsDDgTsrCGWhGcf1k6H?=
 =?us-ascii?Q?xWRWCDstZvCJsgwUdF6i23w5/6aytB1SKiBTBugQkq4Azf4v3kEP93YKJSth?=
 =?us-ascii?Q?sUfgGKXJ3wkykWezWHXSX4IXDG8R?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b731215b-4195-465a-07d4-08d973932ff7
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2021 13:10:25.3050
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wGwcyebpt7t5aWfXmTilp5lTe30Z2tNZnejGujqkBaMOiH1fu0gf4hhBDFLnqhpYxfmvUMgBjkwJjtM2t6yzwBjIrrRtLzr+iP1OGJRiZr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
X-Proofpoint-ORIG-GUID: e6YxuSk5IApDKjCcnRfA5EoSUHDY_2Tp
X-Proofpoint-GUID: e6YxuSk5IApDKjCcnRfA5EoSUHDY_2Tp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-09_04,2021-09-09_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 bulkscore=0 phishscore=0 priorityscore=1501 adultscore=0
 mlxscore=0 suspectscore=0 clxscore=1031 spamscore=0 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109090081
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This prioritizeBuilders function sorts builders by the length of their
associated worker lists, so that builders that can only be assigned to a
small number of workers are assigned to those workers before other
builds that don't have specific needs when resources are limited. An
example might be when a slot is available on an Ubuntu-based worker, and
"oe-selftest-ubuntu" and "genericx86-64" build requests exist in the
queue. Since oe-selftest-ubuntu requires an Ubuntu-based worker and
genericx86-64 does not, genericx86-64 will be assigned a higher value
(lower priority) so that oe-selftest-ubuntu is assigned to that worker
first.

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 builders.py | 13 +++++++++++++
 master.cfg  |  6 ++++++
 2 files changed, 19 insertions(+)

diff --git a/builders.py b/builders.py
index 53c5f0e..94fb561 100644
--- a/builders.py
+++ b/builders.py
@@ -135,6 +135,19 @@ for builder in config.subbuilders:
                                        workernames=workers, nextWorker=nextWorker, nextBuild=nextBuild,
                                        factory=f, env=extra_env))
 
+# prioritize assigning builders to available workers based on the length
+# of the worker lists they are associated with. Builders that have fewer
+# valid worker options should always be assigned first
+def prioritizeBuilders(buildmaster, builders):
+    # re-use the builder_to_workers list
+    builder_to_workers = config.builder_to_workers
+
+    # sort builders by the length of their worker lists. Since not all 
+    # builders are explicitly listed in builder_to_workers, make sure to
+    # default to the len() of the "default" value
+    builders.sort(key=lambda b: len(builder_to_workers.get(b.name)) if b.name in builder_to_workers.keys() else len(builder_to_workers.get("default")))
+    return builders
+
 def create_parent_builder_factory(buildername, waitname):
     factory = util.BuildFactory()
     # NOTE: Assumes that yocto-autobuilder repo has been cloned to home
diff --git a/master.cfg b/master.cfg
index a7c151f..4f7d74e 100644
--- a/master.cfg
+++ b/master.cfg
@@ -88,6 +88,12 @@ c['www'] = www.www
 # These items are specific to an individual AB deployment
 c['workers'] = workers.workers
 
+# This enables our prioritizeBuilders function from builders.py.
+# Builders such as buildperf-centos7, buildperf-ubuntu1604,
+# oe-selftest-*, and reproducible-* will be assigned (if possible)
+# before other builders since their possible worker lists are smaller
+c['prioritizeBuilders'] = builders.prioritizeBuilders
+
 c['title'] = "Yocto Autobuilder"
 c['titleURL'] = "https://autobuilder.yoctoproject.org/main/"
 # visible location for internal web server
-- 
2.31.1

