Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA355C46CC5
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:10 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.11927.1702714924792284352
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=d4VvWqTl;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG813xZ018964;
	Sat, 16 Dec 2023 00:22:03 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=oOVoLKiT8bjy5s7VD1S3h2lZLcaSPBucR8DdV3bJO5s=; b=
	d4VvWqTlxsTnfjxe7IhiB9EIrAD4npM68Wur+SqJMvukOZGNKH3l6CYAVCX0jo8+
	88xq4P0Jav3ndVARqqk365dMTFQnV3j0hkCYloipI7YWLBoS5qxQehM6jeGSv/CV
	ezsl1YJYOPZNniPZlf0zGe5i9rvvhfAY14tYJmgv7nGlBCYladdbxwHtQ0vIMSwv
	yRgrZKe6c2HCUYPo/J4Z9OZpCS5v2IwmMXFOHdn2K8QUEZfjyru5l5hFu6Zu8vlb
	94rO35J68p5WHCJ7nEBdzPslHPXVbpzH5krvu2QJuGYhQxFdw/Crd1qblbBPbJpw
	2j4wPMwAJiK9OrXfUO59fw==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3uyr7dje30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 00:22:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQ7qeDxvjTkUTMeNE5wvBWKo8wdFvWQo8yuSFMh3pEvKXzEWkQCKtlEsYnR3z9e08uyoUXE21LeMB/TbBTCl7U2v9Gt9qOdbEttFRgeZJRCp1GrK34ycBlVjL7FDRDcT1jziste9szCoYdTxI4jt8HiUaavB+D33oMZOS2Dp6CGBmjnq9mMVJDo0zeFJg8b+Re6TZiNCwlMNtVM/rOdiqGA3Y2vW0t9LR7AdRh0X82cUbZ+OwSKHHfvGIN6K+tpUHKr/4MvK60MNA9WYaIXMeyQdm87pwNLQzlZynk9iYBJSQojV5RQvX+5gd88XstvnSel7X8x7D7l4aattV4lKsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oOVoLKiT8bjy5s7VD1S3h2lZLcaSPBucR8DdV3bJO5s=;
 b=SRUxpfeU+mjMgiSh/d8fseI49xAgnzT/K8EOHPBzgdj5f/nGMQvV1MVv72d+F7i7UFYrTeyx+vKBIxeCW6ByF4lejfmJuzDtOXq4CATwBjQVQdDsm8LTfOgYnwU17POPwz5eAyjLI9dntDPEAn7STWp30YIxjYJYT8nnv51rWUu4JBSTJbhVS0lagVTIjNXtczb8O5WAVUmen5v5tvG/T94DyQBjhrrJtZAxNUVeqpR3ZUHaCZiIdXxml9J/OWKNDEurXHD84bqrB2q1UQrcYze7U4je/15aEYBsB999D8VTGR7khWpFLjjG+czxGmtT9r5Ns/7Sgqk0l4ThhbUTJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:01 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:01 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 04/15] libsemanage: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:31 +0800
Message-Id: <20231216082142.198501-4-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 51d652d3-9a61-4f2c-b535-08dbfe101401
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/d73a2qqFDZWk26pU09n3xzhsEBY+kldYGqeU4z0eyYIG6lDKfcTdWWZr79Fk/EX7nMNxriLlzcUgk08fS1S+QIB6uZqxrzFVOqt8D4cqfUvjXId8iBNb8KFeKHk8mAZ8NG/DRbIbHyFvyDid7gz+kwUTAotBaZvQxUnV5NcaISNGXstM0czgeLjV94ySxKZS8htYnZ/AhVGfVCsT0vt7uTxWgpmYxSYh5da7bimNzc6Ga0/GAmBljH+vYXHEFvZwrgCSXSZyRO2iQehyCHfGRfosw6gPsxFpuaZzeSYob852uB9+2WQLtpNQvAgf0rDFK3kH9xJcHrYLR6ANNXjakQi2AMtqNrrnZZ6Vdpq5DeU/BtbEM69t/L+nv+/m0n5NbHgCUicK+4F6zscEIrbJcDNwtPr8bqaqQCVffJ1VMRRQjZStNfeMHTlt6UoxHDh1GOv/nt6ePwonH8kWatyBdTUBNpUtQqRu1agag3YirSnnC2wMP1MbjNbfUQEDT4hLcjDRqJBsqSt34bvcfWu3oIfV3jwf49Z/qQ0yIfcJM++pzDR450xQ/WTwDQnIzfPFDDto0RDG9lIafxhfRR+dd3u2jsEupoaeKCdXuBD3B8YieVKaKZa5yiXmAZCiLra
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(86362001)(53546011)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ifxTdslfR7FsA3rP66LKTNCYB9xD9oGhh/wcpd1jinuhLwOEPaP/Ce3CEGv7?=
 =?us-ascii?Q?CFvcd9ejfkTB7nsM3AXWEJwkfcH9i2qirZ+hCW6mvQeOeswKETs/jvv9yu6r?=
 =?us-ascii?Q?nsThGLuYflNwIbOlxZeRs44aaBIUh73xZvDQ41ZN67EE9lPjMtMVKzG1pd3I?=
 =?us-ascii?Q?g8raaaqeR5e2Gtn6aARLBFewp+b45g8LIYHJh92cl3ZfKNgeYHtcXsM4j/GL?=
 =?us-ascii?Q?JHJcsGNE7TJZguBuSdyA3ZF+k/esI3a3NZB0wFxRhMkOVTJtPNMPUmG9vw6G?=
 =?us-ascii?Q?mp3/d7x0h6FHOqrMoyAgk72zgmIh66fOX9n43wFJmUyVM1GsDph0HUx0dIFK?=
 =?us-ascii?Q?kHp+SrVWuWMwiqi+Pudl+p1XYN9+a21EYpxwNIN7JqhFVyIuMcLQqELOyzNf?=
 =?us-ascii?Q?pMh2nbu+17VPW25yGSnzrc+v/iG1PidRvboG1aiX67u/jUj/IcaS8Y7yEFln?=
 =?us-ascii?Q?nuDrEIx3PIhXZQwaiLcwevZnmI3jX89wzC5Flu3FBTTyKd1bzuFl+w8lsDzG?=
 =?us-ascii?Q?mB8NR4mwKWF5Y+IVqEmzTjaDzSb20KawseIZHGcclIdky/92eT3RltGWlUxP?=
 =?us-ascii?Q?NJR/N8wNku8ajx7ygxXTSjlUqF6bJsVDASM1z78wKd26tZmWIGvBVekAtISW?=
 =?us-ascii?Q?X9VDRPP1MxnDQfv3lj/BNqfSUciJCRd0611XyKyMV/HYpNcqusXQ2WGinmmI?=
 =?us-ascii?Q?z69cpRSoH30P7jdicIhTSzkdHJb48eusdQoBynrjfVSzkCc1yUyJ4SqKhBR4?=
 =?us-ascii?Q?L/YVtDJtzldrSM81MkZejmI/ULjK70XvnTVWnmduyonKR6L2mHyYrNF71eEf?=
 =?us-ascii?Q?eoAbyjVm/2F9MI3g5VCVMBTDqS/Cu4wmDgrFEJz2I8/ha/IlDo1/LIovZcqC?=
 =?us-ascii?Q?iSoRt74s9DyIT2Yd8Z/vZVjYhKej2FweVGG9WTFG93/0lVq5rGSXuqmn4716?=
 =?us-ascii?Q?tWRNPsjCp0fm08F3S0CX2pRx/3i+kcNoPvH42siea5Bw+KfCWmVFtrSQPy1q?=
 =?us-ascii?Q?p4FTKu/PbLIKagBVRbNx5DsdiKqgRH4D+xtyqUAsweCp8utvFSIGqV/lXLc4?=
 =?us-ascii?Q?5jHW12wGR4lqGMSzB77yJUMeQ400jikUwKMX3QRyBQfZ5YBVfOPD30P8ZcfW?=
 =?us-ascii?Q?YhVajxj2IR4ysRr+TZD13oFwRuIxR7qL2vLeaWqw0iKAgv2na6oIF8Hz+lnZ?=
 =?us-ascii?Q?vppIePTl2WjlzjRNQVGV+prlHuv235Z6xZRcBv9gP36IFws0SFqc0yoPoafu?=
 =?us-ascii?Q?Dj3S82pY8TSuf+8quIMXPxtA+0SfiXSDpk7Pyl74At/iez32EO2/ETfXwsq+?=
 =?us-ascii?Q?i44i2zRKyM2NepIbVn/YTSYtKszy/IbclA8Nz3DPA7icMoSdHvyzMHuTdRdR?=
 =?us-ascii?Q?+l+VzKqZbYuWA8c+TxLYl9GWo9Q387VcX9fZTH3FwfI1sm7WKiL6+tGEieYP?=
 =?us-ascii?Q?fyI18SX6zQshtW3Uhgm3HgPIiWKssWymBdr0xd5vVR0u8C4Ma4BFwp6dP+zo?=
 =?us-ascii?Q?qKT/t/XdgRjYG9pZE3fGjo9vk7SzN5fNXnYYFlAD+JCX2kVIarLMabKegvjM?=
 =?us-ascii?Q?mlu2kiptlOZGAShW4QyxlvqY8DYjWRplPyh1vS3u?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d652d3-9a61-4f2c-b535-08dbfe101401
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:01.3279
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x3GtX/KU+IDk/nZrjwVmQcipeD1JvEzQ/dbZkRK8WCUy2kyQxlke47mbjrzgNOW2Cn3/kPbhsWoSuiibUUYLIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: 3I9XtFyymcFnWaJEqmlp5rtXnKBhTP2a
X-Proofpoint-GUID: 3I9XtFyymcFnWaJEqmlp5rtXnKBhTP2a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 mlxscore=0 bulkscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61930

* Refresh patches

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...anage-Fix-execve-segfaults-on-Ubuntu.patch |  4 ++--
 ...anage-allow-to-disable-audit-support.patch | 22 +++++++++----------
 ...-disable-expand-check-on-policy-load.patch |  2 +-
 ...{libsemanage_3.5.bb => libsemanage_3.6.bb} |  0
 4 files changed, 14 insertions(+), 14 deletions(-)
 rename recipes-security/selinux/{libsemanage_3.5.bb => libsemanage_3.6.bb} (100%)

diff --git a/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch b/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
index 5a03d30..daaeb3b 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
@@ -1,4 +1,4 @@
-From 2111f86dce8defd9bebd9b43008339e3b5af0aa7 Mon Sep 17 00:00:00 2001
+From a91134e98ba4b3b6645d12bb68a07976b60f86c8 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 26 Mar 2012 15:15:16 +0800
 Subject: [PATCH] libsemanage: Fix execve segfaults on Ubuntu.
@@ -17,7 +17,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/semanage_store.c b/src/semanage_store.c
-index 14a0957..0a9200e 100644
+index 27c5d34..519f298 100644
 --- a/src/semanage_store.c
 +++ b/src/semanage_store.c
 @@ -1470,7 +1470,7 @@ static int semanage_exec_prog(semanage_handle_t * sh,
diff --git a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
index 19263d8..e9df8be 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
@@ -1,4 +1,4 @@
-From 5718384543ff06ad4032e90291f9e4398a2749c4 Mon Sep 17 00:00:00 2001
+From c96010440e7a2a87787a535fd0f9ccf26a2b4a5e Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 20 Jan 2014 03:53:48 -0500
 Subject: [PATCH] libsemanage: allow to disable audit support
@@ -13,10 +13,10 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  3 files changed, 31 insertions(+), 2 deletions(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index 71c2a1d..52f335e 100644
+index d525996..2f5e159 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -26,6 +26,14 @@ ifeq ($(DEBUG),1)
+@@ -27,6 +27,14 @@ ifeq ($(DEBUG),1)
  	export LDFLAGS ?= -g
  endif
  
@@ -31,17 +31,17 @@ index 71c2a1d..52f335e 100644
  LEX = flex
  LFLAGS = -s
  YACC = bison
-@@ -89,7 +97,7 @@ $(LIBA): $(OBJS)
+@@ -90,7 +98,7 @@ $(LIBA): $(OBJS)
  	$(RANLIB) $@
  
  $(LIBSO): $(LOBJS)
--	$(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol -laudit -lselinux -lbz2 -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
-+	$(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol $(LIBAUDIT) -lselinux -lbz2 -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
+-	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol -laudit -lselinux -lbz2 -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
++	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol $(LIBAUDIT) -lselinux -lbz2 -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
  	ln -sf $@ $(TARGET)
  
  $(LIBPC): $(LIBPC).in ../VERSION
 diff --git a/src/seusers_local.c b/src/seusers_local.c
-index 6508ec0..1b26956 100644
+index 795a33d..6539cdf 100644
 --- a/src/seusers_local.c
 +++ b/src/seusers_local.c
 @@ -8,7 +8,11 @@ typedef struct semanage_seuser record_t;
@@ -56,7 +56,7 @@ index 6508ec0..1b26956 100644
  #include <errno.h>
  #include "user_internal.h"
  #include "seuser_internal.h"
-@@ -55,6 +59,7 @@ static char *semanage_user_roles(semanage_handle_t * handle, const char *sename)
+@@ -56,6 +60,7 @@ static char *semanage_user_roles(semanage_handle_t * handle, const char *sename)
  	return roles;
  }
  
@@ -64,7 +64,7 @@ index 6508ec0..1b26956 100644
  static int semanage_seuser_audit(semanage_handle_t * handle,
  			  const semanage_seuser_t * seuser,
  			  const semanage_seuser_t * previous,
-@@ -119,6 +124,7 @@ err:
+@@ -120,6 +125,7 @@ err:
  	free(proles);
  	return rc;
  }
@@ -72,7 +72,7 @@ index 6508ec0..1b26956 100644
  
  int semanage_seuser_modify_local(semanage_handle_t * handle,
  				 const semanage_seuser_key_t * key,
-@@ -163,8 +169,11 @@ int semanage_seuser_modify_local(semanage_handle_t * handle,
+@@ -164,8 +170,11 @@ int semanage_seuser_modify_local(semanage_handle_t * handle,
  	(void) semanage_seuser_query(handle, key, &previous);
  	handle->msg_callback = callback;
  	rc = dbase_modify(handle, dconfig, key, new);
@@ -84,7 +84,7 @@ index 6508ec0..1b26956 100644
  err:
  	if (previous)
  		semanage_seuser_free(previous);
-@@ -180,8 +189,12 @@ int semanage_seuser_del_local(semanage_handle_t * handle,
+@@ -181,8 +190,12 @@ int semanage_seuser_del_local(semanage_handle_t * handle,
  	dbase_config_t *dconfig = semanage_seuser_dbase_local(handle);
  	rc = dbase_del(handle, dconfig, key);
  	semanage_seuser_query(handle, key, &seuser);
diff --git a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
index 6e0faeb..d880e1e 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
@@ -1,4 +1,4 @@
-From dd52bfb66d710473aeb75c5fe92d5cf0a66b637e Mon Sep 17 00:00:00 2001
+From 7af73c1684ce0e30ce0cd58b51708bde1e3a1984 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe@deserted.net>
 Date: Wed, 7 May 2014 11:36:27 -0400
 Subject: [PATCH] libsemanage: disable expand-check on policy load
diff --git a/recipes-security/selinux/libsemanage_3.5.bb b/recipes-security/selinux/libsemanage_3.6.bb
similarity index 100%
rename from recipes-security/selinux/libsemanage_3.5.bb
rename to recipes-security/selinux/libsemanage_3.6.bb
-- 
2.25.1


