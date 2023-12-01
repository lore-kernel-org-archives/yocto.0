Return-Path: <hongxu.jia@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CFB5C4167B
	for <webhook@archiver.kernel.org>; Fri,  1 Dec 2023 01:42:03 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.12978.1701394917701411594
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Nov 2023 17:41:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=n2Sjyezd;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=0699f26075=hongxu.jia@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3B11fi0o020548;
	Thu, 30 Nov 2023 17:41:54 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=+RtgcOAkL3Uug1GR84
	9nsD5q5qAbaPkm1JmZNplvfvs=; b=n2Sjyezd5YwTFA0J2ft5UwdWaxz/J5vqqE
	VjeHIvUZFFX1ZCE5ibyGe1SSSPbNBC2AXuppcfNBvgLLpPkAa7/ncOxu9fH1gIoq
	I4WQOBrLIRbdtuulV9JYlU1fjw4Kr5nBAR0rO72yCEZH48padLHl1a1Bzfg+1+MM
	EN6EosZv61spTaGeXonaga/9mU7mIJHFxjNeIQVaO2UJo+ypffXQQkcFl6W7u+Tw
	PqeaNEv+mLZ9/kWAyAVtXL1gBBPYpHBfL/64i5RMakdcIUnFOvG6+UrlGbXMnrQV
	+bmZKBoQ7iMqWGPjRdDCeVtWoCeXCYwr9T00lMz7Fyc/Am3/xoYg==
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02lp2040.outbound.protection.outlook.com [104.47.51.40])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3uph6dh910-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Nov 2023 17:41:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQvMDf8XY20e7QrP1X++7RpYxv9TBmZghuXBbcY6BODEZo8RqALDriYuQ4SJ7ThRYIRE4xHNMaQeICa4eIEuL0KhMrFB1ApuP2hUNBVwzAJ6h+eczEXd6AEqIwuXXOzQAfYw/44ksR9Yj7zlviQGjc9+LeAyMq420LkwDoyCyPE4xSyB8+CISCE5EJgzHCDa+haMGE9Ru+vteg14aAPQ/HZ/w5UgiQrRNjp3He08xoLWLACGKoAMshkzJ+t3bVowN0OKNXSt/OM+lhfpUAM+sTWCjJ6fJYFMSsvulePrthP//F3ZSrhwl5C1e6PREghrPQpF26Ru/3Uz84D31o2FIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+RtgcOAkL3Uug1GR849nsD5q5qAbaPkm1JmZNplvfvs=;
 b=er6RTp6fGBB012slIZHFgircSCLKTzMBjfY0luNuMmxzRF2SU9XJ5lQtwlHCjHThhhbzSdRxtT+s6K9DEsJACFzKW85uAMj4hG3ZOuIkvAFTO6zt9Hy/tcNkfZgBjHOZDwDMIfxopgFTzzU+eBNiYwSo/tZ7FfhUMFubLLwA4nHUtD/amwZU1qA20PNR3JPqllJj/thR/OahZmeWUGQL8Lq9CMWpswDCXKuMS09GFeV4ufXKXTish+y7T/srYGTKLBqnKyOuemnRN7vu8H9SNaoOD7MbZS2sjQQzuvni933gWC6S1BhnIZiKIMMJDD8SK4VbviNPh4N8dYkbZKQHBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from MW3PR11MB4633.namprd11.prod.outlook.com (2603:10b6:303:5b::9)
 by CY5PR11MB6258.namprd11.prod.outlook.com (2603:10b6:930:25::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.28; Fri, 1 Dec
 2023 01:41:51 +0000
Received: from MW3PR11MB4633.namprd11.prod.outlook.com
 ([fe80::d154:edc4:260:f6e3]) by MW3PR11MB4633.namprd11.prod.outlook.com
 ([fe80::d154:edc4:260:f6e3%3]) with mapi id 15.20.7046.024; Fri, 1 Dec 2023
 01:41:51 +0000
From: Hongxu Jia <hongxu.jia@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw][PATCH] mingw-libgnurx: fix file conflicting of dev package
Date: Fri,  1 Dec 2023 09:41:41 +0800
Message-Id: <20231201014141.2165454-1-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.27.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYCP286CA0309.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:38b::10) To MW3PR11MB4633.namprd11.prod.outlook.com
 (2603:10b6:303:5b::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4633:EE_|CY5PR11MB6258:EE_
X-MS-Office365-Filtering-Correlation-Id: 1eb7e83a-6b39-4cf9-a50a-08dbf20eb0bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zWzN56WU3D07ow+tntW75pXHguiCKyKUvEeYIrqsnXt6waAjV2jMmTqJcgpanS2ghcN/SKMVQip9RZNwRxnDJuemTzlW+u0tTmHeoMvN5H7b95YYJuKsYZQSTDVcLei8SIVibe+x75fAZhU4TnUgw0iP3khIJ2x68LbwSk5NXxPGE73c5zMXMZY9TQCLz2aBQwZlZAhbK9r3h4BMigzSV5sg4yQma87UCfwj8ntkj3aFf8h954ScgowB6CIVq67ENojTPm7uN+GW9m64tpyCJkzP4AC3xwvN+aQiF1Co2pU8KZJjZeodYVRxuGVlTV4BBX3p3L2g5XCtaJvexBZjzzaGjkG2gU2kKL7X+0C+glQLwtTzYKXj9dNCQm7zhvZUNXQPpBkqaWEJY5+qua+gt+DOor6S2e5XAaRdCic39Gy+aQyTF5JA4d1guCqvyB8tL9pyhWhqqEXEPR3d9Ry33NU2cB9VJq3OfMoDSugrR0o/nGCVo3J+ulpJK6h00SXMAN0tPU7eb8RE1S5xvncjr5NTW7NnJDawL51g5gTamsqx4OfR0ZFvWJ7z9WF/0gLwamA2ILw2wKiRRCwWX0Jsp+FMAUoQ1QBqyLMQjtUxIzw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR11MB4633.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(346002)(396003)(136003)(366004)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(38100700002)(41300700001)(1076003)(38350700005)(36756003)(86362001)(44832011)(83380400001)(5660300002)(2616005)(26005)(6506007)(52116002)(2906002)(4326008)(8676002)(8936002)(6666004)(6512007)(6486002)(66946007)(66476007)(316002)(66556008)(6916009)(478600001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?rdEciKOIT14cGYhNoDVJnfU2ogA1t0ShQeYwShrGOZ58QMVFxp1LvEPfnHRB?=
 =?us-ascii?Q?dM4n6mdgdb7OMKfmBzPtbBRB69YRufflEpjUdv6TBO/tyTH+DoLvYw8dFK0J?=
 =?us-ascii?Q?/7bWj8y2/S3Dh4FQNwPrAaG3bGMMG6NX6YmixdfIGf6xYfFr0+PGDqHR5MqJ?=
 =?us-ascii?Q?PTNW8YNve+ZXKnlQZeA7eVRxwUroh77ejzaIhMFyteUFayspye3dZ5eguAJS?=
 =?us-ascii?Q?6anPYRJG+RDApKoIrxoIe/oSO+v37WkhPfCpGiX/KpfYU90defqCptBnehbL?=
 =?us-ascii?Q?7p1Bkpk050quCfshlLesxK5lMt+r8p+A/YAexvYBxPnSEhRVWDg1A946i58d?=
 =?us-ascii?Q?jElLc4XTDKDgtIFQl1bm5iv8vyqcfz2ZSY6K4k8wfAqViHhRaafb8Fb5dcxk?=
 =?us-ascii?Q?QfX2D8DdzeCiZ+v5ib6akCx04IoNYiiB/HYurFvcBN15wH0MmqJT7f11N8gK?=
 =?us-ascii?Q?ue4v07/ALEJElsUZPG7Z7ExdFkCv5N2Y4m8gxCAlBTIs33qF8AXis0M1ocM5?=
 =?us-ascii?Q?6ui4A05VLXov4k4YqtUpeNkVhJhJ/cAM/Y5WM/9HOOxmHRhyDurmfmuWLJNf?=
 =?us-ascii?Q?0QXZnxpQ8MARwYQ3RHEfVyj8hFtOTwtdym8faIbqe4i28OcOxrool+QJBQsn?=
 =?us-ascii?Q?Yz60xoEDSvszjrUstEyzaHbFtP+ZE+lcIWviTx4G32NtZNk1AVX0v3OwnXx6?=
 =?us-ascii?Q?ceHEAxqXJUj1jkBL4UTiTCnHoVmpO4fgoHLLMeVGAS3CPfF4gh48TddkQhW+?=
 =?us-ascii?Q?nM7NjmRy7dXtwzK44BthBfb5ADztR0LMTPusFdosv4S1CTJd9RMTslbaUoi2?=
 =?us-ascii?Q?Utu9hNKqsvymBT6SenMKb2oz5XuqxDuHqwQUP4eOQfF6mf8WhzfXf2nEVFXh?=
 =?us-ascii?Q?QE9q9mHXnhU9+QUETF39Y1A1t3aB4i4aOiKE/ftVSbKVfx643kmQ8T9r+gi2?=
 =?us-ascii?Q?216e+fVPsx+YV/ZXp+Wq8lPg2nOnP7qVW9BaRFJFQOVuT9Jp4xTp/AD1MXpM?=
 =?us-ascii?Q?RvlMwTlO7ly1dAymKQe02cQY3JKhrg9o59j/qRWts42ZyR3fmsvBKcLnCKr4?=
 =?us-ascii?Q?ytoMr6G+Q47OdX1t0Ooo5qbCzakh00mrdbf+NyEleZynQqwR8gaBwNZ61EL0?=
 =?us-ascii?Q?Hmk206cGf10DlV2de5XbiNUivf1AmMMncQNRLcLMpZ0w8RWYu3gtjiPlm4Jz?=
 =?us-ascii?Q?dv+kbZfiqaBazjFtyefXRS9jAUSW6eSBJfdEEnTHB+SEo4vIO6dGB/z24J5b?=
 =?us-ascii?Q?qOVvgvHAs0ufOzvr5tZ/WmFJLYyGXOfNjl0r8iiv9SbTOZYhQoe28vPhuYcu?=
 =?us-ascii?Q?vRjwkfG7oukG5ByDBwYRxUDhucbrUJHaNTwqE3nsDIjfacH64ewnoQM0IHPO?=
 =?us-ascii?Q?194wWOE17RR6dhmP9y86PpzyyV7svFwwQw+Lc7CR+5MVSU6BsgNCy0TqPrBH?=
 =?us-ascii?Q?bn9yfk+a8lEayNYOOimT7D3wk91aqkZb1skW9+RXz3hnP++Kdc6Cw7bPCxZH?=
 =?us-ascii?Q?fnPHFWwSAbw0n1ie7NS618nJv4n+zGcBSoj+4UwcgESGn6JGz62wkOR2xUmX?=
 =?us-ascii?Q?DQNU8xiX63IDQMF2I8Mw3AlUmBSAdC5HGVMPwpFe1L9c2NZys8yYoQ0aIjyh?=
 =?us-ascii?Q?QQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eb7e83a-6b39-4cf9-a50a-08dbf20eb0bf
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4633.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 01:41:51.3515
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: olDiOPwpbEenedwCbBCQMHsqw0bVHXDTxkZIE+jJCyp9+ZW4b+DZuFkgCYw0ZncL3n8JaUqqfsMqd42uMJRaG0a7K/eNbDGHCaeZ+GxGhLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6258
X-Proofpoint-GUID: yVzqhIboGdyPjFtNspLZpwdEFoqCqB7U
X-Proofpoint-ORIG-GUID: yVzqhIboGdyPjFtNspLZpwdEFoqCqB7U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 bulkscore=0 clxscore=1011
 malwarescore=0 spamscore=0 suspectscore=0 phishscore=0 mlxscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311060001 definitions=main-2312010009
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Dec 2023 01:42:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61783

1. Both of glibc and mingw-libgnurx's dev package provides
/usr/include/regex.h, and mingw-libgnurx-dev depends on
glibc-dev. So install mingw-libgnurx-dev failed

  root@x86-64:~# rpm -qlp libc6-dev-2.37-r1.0.x86_64.rpm | grep regex.h
  /usr/include/regex.h

  root@x86-64:~# rpm -qlp libgnurx-dev-2.5.1-r0.0.x86_64.rpm |grep regex.h
  /usr/include/regex.h

  root@x86-64:~# rpm-ostree install mingw-libgnurx-dev
  rpm-ostree install: error: Checkout libgnurx-dev-2.5.1-r0.8.x86_64: Hardlinking 0e/39f3fcd99b0db7455336559927b51bb413067abd030785662c3ff9aefa4c22.file to regex.h: File exists

Move /usr/include/regex.h of mingw-libgnurx-dev to /usr/include/mingw-libgnurx/regex.h

2. Due to autotool is used, drop 0001-Honor-DESTDIR-variable-during-install.patch
to modify Makefile.in

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...onor-DESTDIR-variable-during-install.patch | 39 -------------------
 .../0002-Add-autotool-files.patch             |  2 +-
 .../mingw-libgnurx/mingw-libgnurx_2.5.1.bb    |  1 -
 3 files changed, 1 insertion(+), 41 deletions(-)
 delete mode 100644 recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch

diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch b/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
deleted file mode 100644
index ea8d9ed..0000000
--- a/recipes-support/mingw-libgnurx/mingw-libgnurx/0001-Honor-DESTDIR-variable-during-install.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From a9b7e07a8ba9c390d9774daae769748a09d409ce Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sat, 1 May 2021 14:41:21 -0700
-Subject: [PATCH] Honor DESTDIR variable during install
-
-Upstream-Status: Pending
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- Makefile.in | 14 +++++++-------
- 1 file changed, 7 insertions(+), 7 deletions(-)
-
-diff --git a/Makefile.in b/Makefile.in
-index 6397bf1..8395d2f 100644
---- a/Makefile.in
-+++ b/Makefile.in
-@@ -78,16 +78,16 @@ gnurx.lib: libgnurx-$(DLLVERSION).dll
- install: install-dll @install_dev@
- 
- install-dll:
--	mkdir -p ${bindir}
--	cp -p $(BINDIST_FILES) ${bindir}
-+	mkdir -p $(DESTDIR)${bindir}
-+	cp -p $(BINDIST_FILES) $(DESTDIR)${bindir}
- 
- install-dev:
--	mkdir -p ${includedir} ${libdir}
--	cp -p ${srcdir}/regex.h ${includedir}
--	cp -p $(DEVDIST_FILES) ${libdir}
-+	mkdir -p ${includedir} $(DESTDIR)${libdir}
-+	cp -p ${srcdir}/regex.h $(DESTDIR)${includedir}
-+	cp -p $(DEVDIST_FILES) $(DESTDIR)${libdir}
- 	for s in 3 7; do \
--	  mkdir -p ${mandir}/man$$s; \
--	  gzip -c ${srcdir}/regex.$$s > ${mandir}/man$$s/regex.$$s.gz; \
-+	  mkdir -p $(DESTDIR)${mandir}/man$$s; \
-+	  gzip -c ${srcdir}/regex.$$s > $(DESTDIR)${mandir}/man$$s/regex.$$s.gz; \
- 	done
- 
- dist:	 bindist devdist srcdist
diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch b/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
index 1365f24..0194a06 100644
--- a/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
+++ b/recipes-support/mingw-libgnurx/mingw-libgnurx/0002-Add-autotool-files.patch
@@ -22,7 +22,7 @@ index 0000000..be0a797
 +lib_LTLIBRARIES = libgnurx.la
 + 
 +libgnurx_la_SOURCES = regex.c
-+libgnurx_la_includedir = $(includedir)
++libgnurx_la_includedir = $(includedir)/mingw-libgnurx
 +libgnurx_la_include_HEADERS = regex.h
 +libgnurx_la_CFLAGS = -I$(top_srcdir)
 +libgnurx_la_LDFLAGS = -no-undefined -version-info 0:0:0 -export-dynamic
diff --git a/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
index 4547298..436660e 100644
--- a/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
+++ b/recipes-support/mingw-libgnurx/mingw-libgnurx_2.5.1.bb
@@ -4,7 +4,6 @@ LICENSE = "LGPL-2.1-only"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=bbb461211a33b134d42ed5ee802b37ff"
 
 SRC_URI = "http://download.sourceforge.net/mingw/Other/UserContributed/regex/mingw-regex-${PV}/mingw-libgnurx-${PV}-src.tar.gz \
-           file://0001-Honor-DESTDIR-variable-during-install.patch \
            file://0002-Add-autotool-files.patch \
            "
 SRC_URI[sha256sum] = "7147b7f806ec3d007843b38e19f42a5b7c65894a57ffc297a76b0dcd5f675d76"
-- 
2.27.0


