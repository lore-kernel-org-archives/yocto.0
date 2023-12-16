Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C830EC46CA2
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:10 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.12144.1702714922962734708
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=UT6PBtat;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG7pS4M009366;
	Sat, 16 Dec 2023 08:22:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=LBHDWXUw/6C54C7mcJdshX5qYJgyqRB2K7OBnZAgsD4=; b=
	UT6PBtatnMlR21e4d2Ny3dunSO2usaA0eXd/QptYskOhvWiemUZUMJ1aDF4a4+QW
	eaETBnZJRbiXxTfV+e7LlFlNI8k8zbceWDrb8TdYRfIjAt+M6+iVlTYW5kvxy5Bd
	DT9hmCB1cjTY0BKLAhAXWMBA5y8Ls9QyjsQBlBUYTOQ9kS4FuUMzlwAzvGGxXhqK
	yZ1vcDmECqLxbeIr5vGPrewk1anDaVrVensqC3d3o8t2QE+Gq3zu/ujI0UsikpV0
	rlFZ9IaL5Di811T1W80LV5WreP1dfQ55wthbvicPth80orYGoX/OyruN7SEZfGvu
	Zv82yKu/TJS7VTXj+Ifi0Q==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v113x87ft-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 08:22:01 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C63rISx+6uCLu/kkiLLr1x+OPsexBVhiCewyWGViqxRbsLCXBNRsCMfp0DSC0lQhXmo86lq/E9HqWKicoipWsuPH5M++fRJl43DhDYqs7WKmKCevRyevQ6DaCDjMq74FFjoEPMfuBsg1eJrBtc1gnKcS24419AQvdnQsHVDGj3AQUZAW+MkkMd7zL4o+uFF/lFxGMJKhQlnN0OJJpFCbDpnom6+mitBq8u9yVkWN4sCAudsH1Buw0vlgY8J3ogtOJwDoNyOoJHLhstIV/yOmwdp2S1T2x6UWtpzRZl/hzOBX6VkrshqZXbFdVtyOxX4nqLdwLk/yDCnuODSp1M9viA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LBHDWXUw/6C54C7mcJdshX5qYJgyqRB2K7OBnZAgsD4=;
 b=Nd5y0olW01ag1QqyIP3HBKuz0i+7KtzMIoBmRseiIdugW/d7p1CRlOW9mJc5s5gFtaaI726PNKDZbRyT1lz2GC+eDV89nFqMiXUv0RvQGM7KEkAeRdOja2bHjVksZyeV0Y3sQhjExV/h6e5iSZ7v9DtDwUwvPx/BrWZk0KY5bn7amFFBYBgVtdu3z1Gp293Z9llOjFiMSj3DmEn/XX7ft3z2v6Odn72dnuVEufOd3Nx4X2VsFcZvNRLn1NeCP4Z1S0ziKAAAFneywluhlumdFt1HngAaBKZ8pnXVUNLNlmqrZohSuYlJ3kS6U7pi0/bQFGtvmP6sPH9OwH3ds9r64w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:21:59 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:21:59 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 03/15] libselinux: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:30 +0800
Message-Id: <20231216082142.198501-3-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 73108199-7993-451a-0dbe-08dbfe1012bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4ApBUYxn2FXjj7D7n81AwJsVobp1naGiXJYBUvb8JuyIjCyJXd2yj2T9q99BH49QnDz26m406xJ4ZdNHjDPN3MUc3XJNEyjku930trtWN3Dhuw0p2d2vJrYXD9o18FxMcFyUQUJKK4ywbxx46EoO1IN1x2syXSlbVKtqUL2Hx/SxlzCs09d4jQDdMGz7gtDUym8JDB1KcEiVLgNOoeJquVNqQ5wWXTYivTCa3U43w8lPr6KfneVlJgMHxJzfbauF7UQR6aES67CYOpTePJr4Kptv8hHzOSzNW8bL645uXnyUHJZnIJbmekMYOdCuCaWwhxPM0maNT1ZUTUyxSeMUpLS/hJlhck6hjIrRXeD7Lvj0lIzkfyqlUCH2yrvduBOANrSwOyplrUVXhD5CL7tAiPXVkWZV8X5rLhJRDIVRxsLmG/yi+8kbvppMl8hsjFy8t61Nj16lQGCwcwqI6TFht6STwme7I/yLSQlcAUJkkpLigy0UceeRPfrwsNbS4mWWfRsEILaM2FJcXgS+fPBFr0tyUSVsu0eeDpe4LKxbA6e8ouOz2zbxbAXjstq5kZOUUVdzFJR3nYrnWEKEuVyKtt6V/zxOlL7R/1wWzNmzWL5EVkOVwXeFIXBMkgpNfRfS9M1LFFsjLK/lW+dAM8ymAQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(86362001)(30864003)(53546011)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(966005)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?PF0/7p3ypEunDScyWArGJ0jHdjngZBwHGCv6haLypTHhNkLOULaRWkqdnbMZ?=
 =?us-ascii?Q?4H8GAhJZe/nkpK2lQ0bBLWKQ0T6cjr/+wA5D7QBAs36m8JDeek1t82oWSAsX?=
 =?us-ascii?Q?LYQ7RF9/ICrgfNI6W1gNCjRoVVCZ9AQ+2MoZiy+euQqbyT/ZI8aNI2vk0fSb?=
 =?us-ascii?Q?aD8XSaKRZUl0itFNUItFoJX6hhIUS2v6l92rj4JG4x/MEoEKY6aqOhKijx/v?=
 =?us-ascii?Q?F6c12hpfJL7rm/u8uPTyaGcEkF2+PIepFR8GpYwHjYI4AhB55areTxj+ofi8?=
 =?us-ascii?Q?7VgH4eEA2LltYvgXiwu49u5F+IKH6+D6lQD+rhYnRInuCCHXrvJPTezLd4PS?=
 =?us-ascii?Q?qwm7FAd5DTh4BbI6ul3hKiEABVuXCKD5sLNYuyqEM2I2hWuiVL7EYadv3Cxj?=
 =?us-ascii?Q?1NXsCm6EcX6jUZ56el4iXu15F1OXLEaC/okDFkGjlLXkdVffWdkJlsikH93G?=
 =?us-ascii?Q?JwZgjdJbWGOsT1CFy3CnneIdpIz8E6g/qokTyUzBJKyKpHR+S8QxHphCEO5L?=
 =?us-ascii?Q?WOuJyRUO/yUYabld7+nCkciR7A/aSZok4w9ftfCi7iO3EvHumqO0LjV2/ViK?=
 =?us-ascii?Q?yD9patylAAp7TqVcOcq7QPnFiG2KUaWIAOl0jH5BYblxut0EoHZBVgT4EWFL?=
 =?us-ascii?Q?5lCyK3iX2F6zUNiQbo9+TUOTi+u6K+5M7RTh9rBle6xQb/PPUW8r3yHsd34w?=
 =?us-ascii?Q?DNLcMC+IkgjtjCmnw5ZvUcWNGgjstey7C39BJQ0wPHLN8MYpMFJM8gmUm/es?=
 =?us-ascii?Q?348R9FuvsxtUdvZFtqNuqMKvOvS5Q+85x9k5ueY4kp4Tj8JETGAsUVPW5QfX?=
 =?us-ascii?Q?KWC8CS2RVeh3eFdjzvrF+fkwhNo3+8e3IlqsjVxxF9eKYy0BllDwFGmrZ6q2?=
 =?us-ascii?Q?oZBTLfklJccHGgSJ0Y0bFNGUkv2okqUKkAH8wM2XLgXKo4lVBCvZMVcS230f?=
 =?us-ascii?Q?MqhqCtGHiOugBSGys2y7C3K4GLLrC8c7RWXnIErVTnpLIamTuZmKMsMHXhg4?=
 =?us-ascii?Q?jt1Qfnll9nNwvH9IEueN8uBNOHjVYkvSIEm5GyqmnROY18kxlUJZIn6WS7bu?=
 =?us-ascii?Q?EziRZp1PM72K1EEfl6JSnIfGmdyJ3CJXfrrLQse2tz5hiqvjaxYAaP3e7eYH?=
 =?us-ascii?Q?vpdNzqbcq+zukoby5C71zco7pE/wk1aEOxN6ANjvBOlGa4si+Yiqd9Lw2nXn?=
 =?us-ascii?Q?PYxQCaEg1gjBSoy2NdfePa22cBZtd1cabrz0Z3UEJE/0o9JPKuu7XjUZEFrK?=
 =?us-ascii?Q?V4ujIM2rJI2ksdB/GTivIbIxsECFsBRtYsBeXlOfE/WxR4q8RVXD/TAiZy6o?=
 =?us-ascii?Q?eycqeBeF4euMjSxNoqTtzT+1gwzlnJjPEgnnRV5TmPTjQ0kja+CAqihW7x6Q?=
 =?us-ascii?Q?ee2e1Qly4vt4IMyR+qMxp0G0rZ+38ah3jII+h8e7p/CRoa88v69F7vvfcZAA?=
 =?us-ascii?Q?mqDX/yvjp8qw3e/b9024CfW5Si4t/1MYFsULMXklN2Z6Cz6ocsQ20lPijh6r?=
 =?us-ascii?Q?w+oY2OWQY9AuIYzNXG32tXBS1t8MwwfAz4NblEKiAP8T3LTy2xIOZ+vqiRv8?=
 =?us-ascii?Q?hJCyIl+vyKphHO/z65aj4sKGjjTYRWACm8sSTYXp?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73108199-7993-451a-0dbe-08dbfe1012bb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:21:59.1941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JV3yEzppOHM5Rqla1UE039NM4Ir5orgj0wZDZTajTm5LzBATaS3e6dzPm5HuX2c55t92Rt3rQXxDVx6CVRfuFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: WYNS0ZN6SncLlxs5H45o84TJWFFCeyQR
X-Proofpoint-GUID: WYNS0ZN6SncLlxs5H45o84TJWFFCeyQR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 lowpriorityscore=0 mlxscore=0
 suspectscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61929

* Refresh patches.
* Merge libselinux and libselinux-python.
  The previous libselinux recipe was split into libselinux and
  libselinux-python due to loop dependency[1]. Now this error is gone,
  we can merge these two recipes into one again.

[1] https://git.yoctoproject.org/meta-selinux/commit/?id=7bb1507928f2e0f54ff8eac4135e15e821cdb1e2

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...hon-modules-install-path-for-multili.patch | 10 +++---
 ...T-and-rely-on-the-installed-file-nam.patch |  8 ++---
 ...re-drop-the-obsolete-LSF-transitiona.patch | 21 ++++++------
 recipes-security/selinux/libselinux_3.5.bb    | 33 -------------------
 ...elinux-python_3.5.bb => libselinux_3.6.bb} | 20 ++++++-----
 5 files changed, 32 insertions(+), 60 deletions(-)
 delete mode 100644 recipes-security/selinux/libselinux_3.5.bb
 rename recipes-security/selinux/{libselinux-python_3.5.bb => libselinux_3.6.bb} (83%)

diff --git a/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch b/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
index 1b9dfbb..b307b6f 100644
--- a/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
+++ b/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
@@ -1,4 +1,4 @@
-From 57a087de68d6f7fe955268ee36b523cbe7c0c6db Mon Sep 17 00:00:00 2001
+From dff260851ccecf9723a6ddfce0103e09f3ba4613 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 13 Apr 2020 12:44:23 +0800
 Subject: [PATCH] Makefile: fix python modules install path for multilib
@@ -11,15 +11,15 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index 36d5712..983f8af 100644
+index d3b981f..265f1be 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -187,7 +187,7 @@ install: all
+@@ -191,7 +191,7 @@ install: all
  	ln -sf --relative $(DESTDIR)$(SHLIBDIR)/$(LIBSO) $(DESTDIR)$(LIBDIR)/$(TARGET)
  
  install-pywrap: pywrap
--	$(PYTHON) -m pip install --prefix=$(PREFIX) `test -n "$(DESTDIR)" && echo --root $(DESTDIR) --ignore-installed --no-deps` $(PYTHON_SETUP_ARGS) .
-+	$(PYTHON) -m pip install --prefix=$(PREFIX) --root $(DESTDIR) --ignore-installed --no-deps $(PYTHON_SETUP_ARGS) .
+-	CFLAGS="$(CPPFLAGS) $(CFLAGS) $(SWIG_CFLAGS)" $(PYTHON) -m pip install --prefix=$(PREFIX) `test -n "$(DESTDIR)" && echo --root $(DESTDIR) --ignore-installed --no-deps` $(PYTHON_SETUP_ARGS) .
++	CFLAGS="$(CPPFLAGS) $(CFLAGS) $(SWIG_CFLAGS)" $(PYTHON) -m pip install --prefix=$(PREFIX) --root $(DESTDIR) --ignore-installed --no-deps $(PYTHON_SETUP_ARGS) .
  	install -m 644 $(SWIGPYOUT) $(DESTDIR)$(PYTHONLIBDIR)/selinux/__init__.py
  	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux$(PYCEXT) $(DESTDIR)$(PYTHONLIBDIR)/_selinux$(PYCEXT)
  
diff --git a/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch b/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
index cd5510d..7ebe64f 100644
--- a/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
+++ b/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
@@ -1,4 +1,4 @@
-From 1454521f2b9f2cbc3c40177aae9c260ec8966ae0 Mon Sep 17 00:00:00 2001
+From 303d8dfe53fcd02ea5818f976369cdb629bc1114 Mon Sep 17 00:00:00 2001
 From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
 Date: Fri, 25 Oct 2019 13:37:14 +0200
 Subject: [PATCH] Do not use PYCEXT, and rely on the installed file name
@@ -27,7 +27,7 @@ Signed-off-by: Changqing Li <changqing.li@windriver.com>
  1 file changed, 1 insertion(+), 2 deletions(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index 983f8af..3d777bb 100644
+index 265f1be..47e51d6 100644
 --- a/src/Makefile
 +++ b/src/Makefile
 @@ -15,7 +15,6 @@ INCLUDEDIR ?= $(PREFIX)/include
@@ -38,9 +38,9 @@ index 983f8af..3d777bb 100644
  RUBYINC ?= $(shell $(RUBY) -e 'puts "-I" + RbConfig::CONFIG["rubyarchhdrdir"] + " -I" + RbConfig::CONFIG["rubyhdrdir"]')
  RUBYLIBS ?= $(shell $(RUBY) -e 'puts "-L" + RbConfig::CONFIG["libdir"] + " -L" + RbConfig::CONFIG["archlibdir"] + " " + RbConfig::CONFIG["LIBRUBYARG_SHARED"]')
  RUBYINSTALL ?= $(shell $(RUBY) -e 'puts RbConfig::CONFIG["vendorarchdir"]')
-@@ -189,7 +188,7 @@ install: all
+@@ -193,7 +192,7 @@ install: all
  install-pywrap: pywrap
- 	$(PYTHON) -m pip install --prefix=$(PREFIX) --root $(DESTDIR) --ignore-installed --no-deps $(PYTHON_SETUP_ARGS) .
+ 	CFLAGS="$(CPPFLAGS) $(CFLAGS) $(SWIG_CFLAGS)" $(PYTHON) -m pip install --prefix=$(PREFIX) --root $(DESTDIR) --ignore-installed --no-deps $(PYTHON_SETUP_ARGS) .
  	install -m 644 $(SWIGPYOUT) $(DESTDIR)$(PYTHONLIBDIR)/selinux/__init__.py
 -	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux$(PYCEXT) $(DESTDIR)$(PYTHONLIBDIR)/_selinux$(PYCEXT)
 +	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux*.so $(DESTDIR)$(PYTHONLIBDIR)/
diff --git a/recipes-security/selinux/libselinux/0003-libselinux-restore-drop-the-obsolete-LSF-transitiona.patch b/recipes-security/selinux/libselinux/0003-libselinux-restore-drop-the-obsolete-LSF-transitiona.patch
index 5b37395..0cd8f20 100644
--- a/recipes-security/selinux/libselinux/0003-libselinux-restore-drop-the-obsolete-LSF-transitiona.patch
+++ b/recipes-security/selinux/libselinux/0003-libselinux-restore-drop-the-obsolete-LSF-transitiona.patch
@@ -1,4 +1,4 @@
-From a822176c6f181d1e6989900dfc58bbdab6d9065a Mon Sep 17 00:00:00 2001
+From 6c2af45ec8cff9b282d599dc098db0ca127bdc59 Mon Sep 17 00:00:00 2001
 From: Renato Caldas <renato@calgera.com>
 Date: Thu, 29 Jun 2023 13:59:11 +0100
 Subject: [PATCH] libselinux: restore: drop the obsolete LSF transitional API.
@@ -10,23 +10,23 @@ Upstream-Status: Submitted [https://github.com/SELinuxProject/selinux/pull/401]
 
 Signed-off-by: Renato Caldas <renato@calgera.com>
 ---
- libselinux/src/selinux_restorecon.c | 4 ++--
+ src/selinux_restorecon.c | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)
 
-diff --git a/libselinux/src/selinux_restorecon.c b/libselinux/src/selinux_restorecon.c
-index 7ef2d45d..2ff920b0 100644
+diff --git a/src/selinux_restorecon.c b/src/selinux_restorecon.c
+index 38f10f1..5b3d035 100644
 --- a/src/selinux_restorecon.c
 +++ b/src/selinux_restorecon.c
-@@ -437,7 +437,7 @@ static int filespec_add(ino_t ino, const char *con, const char *file,
+@@ -436,7 +436,7 @@ static int filespec_add(ino_t ino, const char *con, const char *file,
  	file_spec_t *prevfl, *fl;
  	uint32_t h;
  	int ret;
 -	struct stat64 sb;
 +	struct stat sb;
-
+ 
  	__pthread_mutex_lock(&fl_mutex);
-
-@@ -451,7 +451,7 @@ static int filespec_add(ino_t ino, const char *con, const char *file,
+ 
+@@ -450,7 +450,7 @@ static int filespec_add(ino_t ino, const char *con, const char *file,
  	for (prevfl = &fl_head[h], fl = fl_head[h].next; fl;
  	     prevfl = fl, fl = fl->next) {
  		if (ino == fl->ino) {
@@ -35,5 +35,6 @@ index 7ef2d45d..2ff920b0 100644
  			if (ret < 0 || sb.st_ino != ino) {
  				freecon(fl->con);
  				free(fl->file);
---
-2.41.0
+-- 
+2.25.1
+
diff --git a/recipes-security/selinux/libselinux_3.5.bb b/recipes-security/selinux/libselinux_3.5.bb
deleted file mode 100644
index 37383eb..0000000
--- a/recipes-security/selinux/libselinux_3.5.bb
+++ /dev/null
@@ -1,33 +0,0 @@
-SUMMARY = "SELinux library and simple utilities"
-DESCRIPTION = "libselinux provides an API for SELinux applications to get and set \
-process and file security contexts and to obtain security policy \
-decisions.  Required for any applications that use the SELinux API."
-SECTION = "base"
-LICENSE = "PD"
-LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
-
-require selinux_common.inc
-
-inherit lib_package pkgconfig
-
-FILESEXTRAPATHS:prepend := "${THISDIR}/libselinux:"
-SRC_URI += "\
-        file://0003-libselinux-restore-drop-the-obsolete-LSF-transitiona.patch \
-        "
-
-DEPENDS = "libsepol libpcre2"
-DEPENDS:append:libc-musl = " fts"
-
-S = "${WORKDIR}/git/libselinux"
-
-def get_policyconfigarch(d):
-    import re
-    target = d.getVar('TARGET_ARCH')
-    p = re.compile('i.86')
-    target = p.sub('i386',target)
-    return "ARCH=%s" % (target)
-
-EXTRA_OEMAKE = "${@get_policyconfigarch(d)}"
-EXTRA_OEMAKE:append:libc-musl = " FTS_LDLIBS=-lfts"
-
-BBCLASSEXTEND = "native"
diff --git a/recipes-security/selinux/libselinux-python_3.5.bb b/recipes-security/selinux/libselinux_3.6.bb
similarity index 83%
rename from recipes-security/selinux/libselinux-python_3.5.bb
rename to recipes-security/selinux/libselinux_3.6.bb
index b382be1..dab4965 100644
--- a/recipes-security/selinux/libselinux-python_3.5.bb
+++ b/recipes-security/selinux/libselinux_3.6.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
 require selinux_common.inc
 
-inherit python3targetconfig pkgconfig
+inherit lib_package pkgconfig python3targetconfig
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/libselinux:"
 SRC_URI += "\
@@ -22,8 +22,6 @@ S = "${WORKDIR}/git/libselinux"
 DEPENDS = "libsepol libpcre2 swig-native python3-setuptools-scm-native"
 DEPENDS:append:libc-musl = " fts"
 
-RDEPENDS:${PN} = "libselinux python3-core python3-shell"
-
 def get_policyconfigarch(d):
     import re
     target = d.getVar('TARGET_ARCH')
@@ -34,19 +32,17 @@ def get_policyconfigarch(d):
 EXTRA_OEMAKE = "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE:append:libc-musl = " FTS_LDLIBS=-lfts"
 
-FILES:${PN} = "${PYTHON_SITEPACKAGES_DIR}/*"
-INSANE_SKIP:${PN} = "dev-so"
-
-do_compile() {
+do_compile:append() {
     oe_runmake pywrap -j1 \
         PYLIBVER='python${PYTHON_BASEVERSION}' \
         PYINC='-I${STAGING_INCDIR}/${PYLIBVER}' \
         PYLIBS='-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
 }
 
-do_install() {
+do_install:append() {
     oe_runmake install-pywrap \
         DESTDIR=${D} \
+        PREFIX=${prefix}
         PYLIBVER='python${PYTHON_BASEVERSION}' \
         PYTHONLIBDIR='${PYTHON_SITEPACKAGES_DIR}'
 
@@ -54,3 +50,11 @@ do_install() {
     sed -i -e 's,${WORKDIR},,g' \
         ${D}${PYTHON_SITEPACKAGES_DIR}/selinux-${PV}.dist-info/direct_url.json
 }
+
+PACKAGES += "${PN}-python"
+RDEPENDS:${PN}-python = "python3-core python3-shell"
+
+FILES:${PN}-python = "${PYTHON_SITEPACKAGES_DIR}/*"
+INSANE_SKIP:${PN}-python = "dev-so"
+
+BBCLASSEXTEND = "native"
-- 
2.25.1


