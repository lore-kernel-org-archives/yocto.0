Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-23.0 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MENTIONS_GIT_HOSTING,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D802CC433F5
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 09:08:39 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.5729.1632474518238554958
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 02:08:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=CfzesbXO;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=49012894dd=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 18O8s9fp026168;
	Fri, 24 Sep 2021 02:08:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=Q8ngaenJfgbVnDIGcI9QOfbJQhX4I93JPW3LhjoCXzw=;
 b=CfzesbXOS408APkk7YMf5TZdjLA5Gae4YR5JenZccniyCJAMkUqiWVH8APLCTexuMqn+
 m/96XrF6/mm1OtBAWwwSUXCwm/bv9x0mQXKBIjgU7xQ4v5G+O8r7Z8nk+j7HkGpFuV2Z
 c9Yj/IU4QBlT7NHKl22KCJA01fQ5o/msWua26mOwgUIkjbxIG/xzhkOHt4E/994aT7T2
 x6X5ezcMoDU+CJ6nKZO+/aivSGLDJDHNuyhxJEVkWClluPjXKUFnEoKKafxdcnLGw4ZI
 ODqlX3rd1v82mEw4aR7W+oeQT1XUrOVAQmzTR3cxNqRI4n44DZ2Wwmp7M42cIvRv+2mk eg==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2048.outbound.protection.outlook.com [104.47.66.48])
	by mx0a-0064b401.pphosted.com with ESMTP id 3b93fr8a6f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 24 Sep 2021 02:08:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/oQZZgZdWW4FJ6UWy7x8mZpqB/OsjIX6JwqdUc+Aj8Qh72KFxqUbQxYKDsqAEzjwX4fTsok0S0CzFAk+cFQSzeP6/kOIA5VGFCNJwExZ4ez4hQyJSnUAy1ik5TphIPjaKjS96I5Y2y+GniFOm2/rcFfp8Sch9BsvWs1aizJi7blHRO+pDoXz0kRs9jcsttcLQ/YQz6dCTwylQl5F72DhzlXXLWqFydnm/qVtOD4XES7RoABfZiZ7OpfXTe//JoROAktVTkYLBx2Z/pZ6LREs3pUGzxYBEoNUyb2DL+t/pcNhBZxC4MUncgsELbvF57GYYYnFtf7A15bHG4ZtRCSLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=Q8ngaenJfgbVnDIGcI9QOfbJQhX4I93JPW3LhjoCXzw=;
 b=kt5O6BMMiVAlQxoHYiqYtlB27c6VTkenoz8Mdx8iIGugA8+jfIfDHMWu90+0U9WO3yOprZ/OdhxlTpmQ7Uy9dEKbcbv23mapq++4vxbkPsSkyIhSsvfLFbT3PRH2McCT43tJzB3lp71FTqOAE86J7dv3iwJmdp8Ansrzwju7HvZvXrKC6PcOpENnQ5hh3SAlwamm0eJOdpyvOdxqYrn/PJh7wwDwspZjWirbOCQcNb1Ym8YGS0KEhQCv2Lh3+zbL5CtUqsAwqtkuebCMPX9DQBYjl1jiEpl532Wwk6Mr4+nMW9NVB3NXV/YtqOlq93cARU9+MXANceDV26Iw27y4fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4537.namprd11.prod.outlook.com (2603:10b6:303:5d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Fri, 24 Sep
 2021 09:08:32 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::3975:1563:a18e:2017]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::3975:1563:a18e:2017%9]) with mapi id 15.20.4544.018; Fri, 24 Sep 2021
 09:08:32 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH] libsepol: Security fix for CVE-2021-36086
Date: Fri, 24 Sep 2021 17:08:19 +0800
Message-Id: <20210924090819.315806-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK0PR01CA0056.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::20) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK0PR01CA0056.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15 via Frontend
 Transport; Fri, 24 Sep 2021 09:08:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: faf51057-1114-444f-caac-08d97f3ae204
X-MS-TrafficTypeDiagnostic: MW3PR11MB4537:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB4537B17E8DDE2D0C6B8837F8F9A49@MW3PR11MB4537.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:923;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	nAcC2axIGFDoViYdGDpuG7VgpeJhAFnU5c/3GdV+m7qxSlOBiWFlAOh/bdedXzxlNpVXxCe6wfWXjG1T145VpdRkZ4WQhEvy7gsM2sc2qceBGkTAX3kLKREFfV9hk4KJqQ3WsrDxuQAeVG/tl+PC0qEcs2MKtmDSjtFGF9UHnFTDNlcI4DS5SwGy31JOyPZaTyB3SpFbDkcxtlVq8fmB1SucdHzlM8ZjOThFH6MvYOQdEUv2g16AM4cmqvylk2hEtbHz3i/g5YDmmwWMZNQpV4KaCUr7CA7raxbvm27H6RFgizPH04de3pIlMqqlXCf4MEUIuqUAqCGSFxy0OUv/v+kBQnGxxz+ZaylUW4wDhI+m9FLbFqTpJCj2nsxpSxCGV4Zq1EnfOveEeykpnz2zT0NlKcT7F8GIUXuA0sNQYKrCNGl0pwDUsvDze4WP6Gs3DJDPpoqhKGvvpV9atBnAPdWSFKQy0DjU1AKaJSPnBuDhepoApW21rgPS0ZeaNZr9De/1MP+ff2f3RDZQJ1ArhgxWalcQpNQMuoKIiOXo29XW+B+s8noOAhfJRq/216AR5sR86ATdNWgRSfTpx4eF0t4l9F7bFW+z8+CSZ3f853LU7E+tPs+voy01dL9yJa+0IurL5IckZvcJDLW56TD8J6OdUvTvPGdx5bPMYZoG8FpnZ8Y1l6pdC8+QCqxQ+Wt4ZtFKwbfHh0FT+iP6MOxX0QIYs3IFnPED8nrYO6RDjUY9OsZGeIxXnQcm5tvEUNByvIySW4PJtOLUjqnqvuvLe1osEd4/zq3nk6Bra0m4BYt31rrP7V4xdf1/jmezoCf/7RDOuKkNoFy2zYT0WZKHlg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(52116002)(38350700002)(508600001)(6506007)(38100700002)(5660300002)(66476007)(83380400001)(66556008)(8936002)(316002)(1076003)(44832011)(15650500001)(66946007)(2906002)(86362001)(956004)(8676002)(6512007)(966005)(2616005)(6666004)(26005)(186003)(6486002)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?s3U1eXobO3cAfRj9zLrjveAArIP1JjiTTRtE3cEGc0dH+qOFBJ6pmyyUn6rE?=
 =?us-ascii?Q?8mAK7RehqC5vTSyEGwL13TxqgvoaHwabGZhResmczWsTxvNkATDva/1Glm86?=
 =?us-ascii?Q?uLKR02Jn1UtzS2sxpepXTVD14VdiSLzIkvD62Or+WG2IvylqbDUp+clb57ij?=
 =?us-ascii?Q?hqmoocv6W01znOYYjPJ8jkYGIqZW6WCT7uoThf8F7/P6a55MQ5AF8MLDjFGk?=
 =?us-ascii?Q?RVO612BdsUQW+S4F4Pn8zyaYSPwukKsZVU6IsDLM3JQ66JpWJn6G7JAcL63v?=
 =?us-ascii?Q?GToN0Kp4jDVOK9uXSYDjRQq9YqmD8j+Cc3yEQo08MdO/lKyQzs/1HUa8HAA0?=
 =?us-ascii?Q?U4TDx3BmUsxZ/xM89gL4qH2pLgXfbjFOaG+z0Di7vdjDMKrgH2yzEYDd7v2A?=
 =?us-ascii?Q?tmVUf//RclmVHJMBAiDgJnndwJH8h4DjaEHWH3LcycTPUnufr1qcQoxRuJ0p?=
 =?us-ascii?Q?UwK100JAnReHMd0JigYytNwzwYsSqn8GWyKPgzj2INcdWOIxllBjF3z1nmli?=
 =?us-ascii?Q?TmSAEZKf0VxuSpjb8wZY0JGN5sM3qe060GRPhhT9+kYPNIlFF2srj+m/vmnJ?=
 =?us-ascii?Q?jpyDffIIg7LHuV3ECJxQm70gCr6N8saUFlYjAp07pCxK1hZj6Zh7Rb0Xg+M5?=
 =?us-ascii?Q?1kGUTg0DEkOg53sQK0wb30Nl4Qt+9vhQf4r7FHTVBzitcVBVEUTHgdBoZh+s?=
 =?us-ascii?Q?N7sUaILWRAIwx2rgIld6NetVr3jUd986b2qV3bKh3zPRvhksmzgrFr52ws9o?=
 =?us-ascii?Q?bvCL4HRNVenhTCLtU4jIiZhb4eBJGUdieH0j8JY/Pd7uqBu8VC0TbEQoUMSE?=
 =?us-ascii?Q?GdXc8Ibqg9NlTYgC4nyFKWoYZyc6tCpCUEH4BkAIkR0HzHpwAAAbWhpgRt2K?=
 =?us-ascii?Q?BM776U6pQLjRXyKZxM5U2uRtS+hD0m2tOAn5r/GTUdVEwhAAZdrPZb+bfRGt?=
 =?us-ascii?Q?8s7fhgF6ybjVIdEURMatLH3sg0jM5XGZgz43Ktv0fnKURkGhry0pv2nkBLp2?=
 =?us-ascii?Q?kEfc64+VAZ6AWtv4iq4vU8gBpL3o4qXdFXyEn1tfsB1+qH/QjyLLkdqZsyg7?=
 =?us-ascii?Q?hv+oq7hP72px+MELS265RjpwieVzaBSyGhg718YiGnZHkl84DGxJJmbDditO?=
 =?us-ascii?Q?TrHIsufcXpT5+v4/BfpAya/9Rcu35j+30gi9gPF83Eeslzw2RCDhRuBS2qXO?=
 =?us-ascii?Q?Ij7Y+Vs/9dU2zStJ/OZ2B+/RAOx2+9chcOlLx80R8pTF3ulOU8aUOGCLI3kI?=
 =?us-ascii?Q?iS5xLZ2ziumqhiZWr1+LU3+YjgGWStxoqSJZVatLim1c8MPvddcZcuJUeryZ?=
 =?us-ascii?Q?ZGjCWwvAid+Y4zFmFLd1Zs18?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 faf51057-1114-444f-caac-08d97f3ae204
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2021 09:08:32.8123
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 wAz/8ubAoPZx1K8vmirmKTVmmiRRLvYVt4wcFbziJdCxDN771fpNIL5bYJl41Oky/7K3WtazcIVwgZFjAbEK8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4537
X-Proofpoint-ORIG-GUID: hY0fxKRT84aP9JO95zpnH6CH17nL8bRb
X-Proofpoint-GUID: hY0fxKRT84aP9JO95zpnH6CH17nL8bRb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-24_03,2021-09-23_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 phishscore=0 mlxlogscore=771 spamscore=0 clxscore=1011 lowpriorityscore=0
 mlxscore=0 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2109240055
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 09:08:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54839

CVE-2021-36086:
The CIL compiler in SELinux 3.2 has a use-after-free in cil_reset_classpermission
(called from cil_reset_classperms_set and cil_reset_classperms_list).

Reference:
https://nvd.nist.gov/vuln/detail/CVE-2021-36086

Patch from:
https://github.com/SELinuxProject/selinux/commit/c49a8ea09501ad66e799ea41b8154b6770fec2c8

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/libsepol/CVE-2021-36086.patch     | 46 +++++++++++++++++++
 recipes-security/selinux/libsepol_3.2.bb      |  3 +-
 2 files changed, 48 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/selinux/libsepol/CVE-2021-36086.patch

diff --git a/recipes-security/selinux/libsepol/CVE-2021-36086.patch b/recipes-security/selinux/libsepol/CVE-2021-36086.patch
new file mode 100644
index 0000000..7a2d616
--- /dev/null
+++ b/recipes-security/selinux/libsepol/CVE-2021-36086.patch
@@ -0,0 +1,46 @@
+From 49f9aa2a460fc95f04c99b44f4dd0d22e2f0e5ee Mon Sep 17 00:00:00 2001
+From: James Carter <jwcart2@gmail.com>
+Date: Thu, 8 Apr 2021 13:32:06 -0400
+Subject: [PATCH] libsepol/cil: cil_reset_classperms_set() should not reset
+ classpermission
+
+In struct cil_classperms_set, the set field is a pointer to a
+struct cil_classpermission which is looked up in the symbol table.
+Since the cil_classperms_set does not create the cil_classpermission,
+it should not reset it.
+
+Set the set field to NULL instead of resetting the classpermission
+that it points to.
+
+Signed-off-by: James Carter <jwcart2@gmail.com>
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/selinux/commit/c49a8ea09501ad66e799ea41b8154b6770fec2c8]
+
+CVE: CVE-2021-36086
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ cil/src/cil_reset_ast.c | 6 +++++-
+ 1 file changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/cil/src/cil_reset_ast.c b/cil/src/cil_reset_ast.c
+index 89f91e5..1d9ca70 100644
+--- a/cil/src/cil_reset_ast.c
++++ b/cil/src/cil_reset_ast.c
+@@ -59,7 +59,11 @@ static void cil_reset_classpermission(struct cil_classpermission *cp)
+ 
+ static void cil_reset_classperms_set(struct cil_classperms_set *cp_set)
+ {
+-	cil_reset_classpermission(cp_set->set);
++	if (cp_set == NULL) {
++		return;
++	}
++
++	cp_set->set = NULL;
+ }
+ 
+ static inline void cil_reset_classperms_list(struct cil_list *cp_list)
+-- 
+2.17.1
+
diff --git a/recipes-security/selinux/libsepol_3.2.bb b/recipes-security/selinux/libsepol_3.2.bb
index ef5de1e..192f1b3 100644
--- a/recipes-security/selinux/libsepol_3.2.bb
+++ b/recipes-security/selinux/libsepol_3.2.bb
@@ -10,7 +10,8 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 require selinux_common.inc
 
 SRC_URI += "file://CVE-2021-36084.patch \
-            file://CVE-2021-36085.patch "
+            file://CVE-2021-36085.patch \
+            file://CVE-2021-36086.patch "
 
 inherit lib_package
 
-- 
2.25.1


