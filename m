Return-Path: <wenlin.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5C17C4167B
	for <webhook@archiver.kernel.org>; Thu, 30 Nov 2023 08:31:41 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.67978.1701333093998306400
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Nov 2023 00:31:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=h25/Pr3o;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=0698233ea9=wenlin.kang@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3AU5fJT0006780;
	Thu, 30 Nov 2023 08:31:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=tAp5jTZO2vXt9ZTSqk
	sQ246MO8mHVrBHL3FeBOkbzvY=; b=h25/Pr3o1JsUI7165/5990MX8fdgVSKTAL
	Y9h/s7HBsTsl9mMpID1PeWmPxLF1phvUSERU1VcUlJ2XYtFVoWuQWFs8n0xnY6fh
	77QvW5PwSFiiIPe+d56CGkwKbM8KvWA+IrMkEGHaVMbPiPPZb9a+lyL+CSDoq8da
	RSGrNf3uSL6utS2+xY1zx8fb+C4oV6OphiW6ccIa62oeaDsAyxs5xsVi7U7ekQfw
	8WwYBCLUVBd4NHRc6jqFp9SB1Loa703JQBgcy6TxtgdW0ZNEBQJzXcNMx/AYiwaI
	KKCWurPI9ZROHcy0Eg0hIlHL8TFTDBCLZzYSiGTYtmY6e6iKH6jg==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3uph1089ud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Nov 2023 08:31:32 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHm4QwSOMvuu5sK/cp+YdGmeelVCQyHaLwru8wxxEJDECMlve8rmR/fgdFkh+RTg9LkXP5CQoQHF4RKRz0ZVFrasDXPB4Qi4PTw3rw0CJimrEQlY6iiTiiwfK37QFsSuZ3tN3ovjGk00M/z0mz4v4lDnhmimaQXKI77Nq8uOWNrP6Rvb46KJFfaL86Hb0dFr+8lkVhcajR9LffeeznXtM132UhM9LYd0GwaWwItlwyd8YSn9Hl5iAgsf9dIdsc3eW97OiRBu5KdgJWQ23sN8qZHG8qEA3Lo5J121gP2l2gCfqpRt8UI06rkrOkQOebil6D84Zg6ATzsPQdFOSAWoNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tAp5jTZO2vXt9ZTSqksQ246MO8mHVrBHL3FeBOkbzvY=;
 b=AxMBxGqlPVcJGvkIT/aQKlqB3uV16GZTXi3lsq8enr7o22zgGtfTiOekqJukFTPBPz87RcgE36orR/mdgeWrjdlOPVvat+E+ha6hYKuW0JbBs2SfcKEfjX9aYBe/G3NzQ0uNrWgnJNZjNpfJncRfB3pGsOmx4dxDvA41gpSJIpddl0h1VyCE2KwXa7yocbg3q3r1ghfZ4yWzR5clN+hXo/EnnG9AOrn2Njq+aJy0fXgkaD/pzd0c8sPgF3gKOGcLrzf4fmbMmLor36+hGhUOWa8cc/pO2C0ssmIGjrgYhnUqXWs5Da4qtCDolFy/oV9CuMzQ8YwV0XC5KBxiZfq1Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB6325.namprd11.prod.outlook.com (2603:10b6:8:cf::11) by
 CYYPR11MB8307.namprd11.prod.outlook.com (2603:10b6:930:ba::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.24; Thu, 30 Nov 2023 08:31:29 +0000
Received: from DS0PR11MB6325.namprd11.prod.outlook.com
 ([fe80::2cd5:2aa3:c5d6:ee75]) by DS0PR11MB6325.namprd11.prod.outlook.com
 ([fe80::2cd5:2aa3:c5d6:ee75%7]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 08:31:29 +0000
From: Kang Wenlin <wenlin.kang@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw][kirkstone][PATCH] libxcrypt: fixed some build error for nativesdk with mingw
Date: Thu, 30 Nov 2023 00:31:22 -0800
Message-Id: <20231130083122.2970448-1-wenlin.kang@windriver.com>
X-Mailer: git-send-email 2.39.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0235.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::30) To DS0PR11MB6325.namprd11.prod.outlook.com
 (2603:10b6:8:cf::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6325:EE_|CYYPR11MB8307:EE_
X-MS-Office365-Filtering-Correlation-Id: c8ad24a7-e963-4461-cfce-08dbf17ebff0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	uL1S/xylWYvwLSbccHL5LZuquT0t5y7vEf1feVt0V4E1paep+zpy8Nap5K5xMFRcmpoXTDx1DVpQvpjjmATn+D6kqoW2OIruReO7u75B/mUIQC8VtY90koJ09c8Fa0OXmBKNdwYlKom+RLLBhcx+zrGjCSMEefMXjdogbQE5YnhGtf9C56XOUHm6r5+S0oI2B7mC+iGtXToYcPMXTxhefrhIh2NAKigRwnjad6jLS0u51eyKOP4RxCDKi6h0wjxtCHqw4dY/WlPGxFfSmeHLXS2jJn4HxQ3yaIF37ygGi+lhouqt6L8zjc2zQjgRZOSXMatZM3eK2G+/WjorRr5y3HU8sRBG/Im5r7YzXMQRtl0dSI6YaeR1OJcegfvyWMXJ9xP1P4YoiT+GHajuODD/n0OXQtlfdSGKUIAbUKjTex+lnEaQiMgUw+ThRKLKkXZMv3NhdAuLFgUI9mcnvdYS3GxR2m7vKwXLpWrJLIX9mFLta4yNNquPZGiJ/9imh+hUGRKPjzh6s0crjVF8bdzBBWoWVyEUM1XIDLAqUGak40ggRur2iGijOtIbrZkJncdWfKTg4QT9kvT7bI4MVBjtIXnyjXVGoZbLBRkZAlEgrHRpfU9+PhzskHD10hxZeP98GPTLf2E2tBGDsmZHyZ+mtQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB6325.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(366004)(136003)(396003)(346002)(376002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(1076003)(26005)(2616005)(6666004)(6506007)(6512007)(52116002)(83380400001)(5660300002)(41300700001)(2906002)(478600001)(6486002)(8676002)(8936002)(66476007)(66556008)(66946007)(4326008)(316002)(6916009)(86362001)(38100700002)(36756003)(38350700005)(202311291699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?B4R+lUcSv/JuyYLSrBF379lErhWqqdY33v2UPOL1TfAG2DF8sAG87xyC/k6a?=
 =?us-ascii?Q?msrKbF9YAgiAy8KTj2S5UF8iUuoNvrNP1v0TW/GQSG+pBUUbJxDi764mzf0H?=
 =?us-ascii?Q?8DR/pRFJZRiAVzxMMz+lbRM1x3OITfkNO4Za5eDI+C7R2C56AoelMk9A/yZ2?=
 =?us-ascii?Q?qgAjqWNNxte0myYayLqRn9n+U6miUKd8D9E/dl4lU1fvT83pZKyNS8XZ8Rei?=
 =?us-ascii?Q?zIV8PoT+kvwxduh3S9Kd4r69G/+mnapqScW824EgfP46Sw6J8kFKz5lxMbDh?=
 =?us-ascii?Q?U4qC4FmbT2H6KA2/bdik10JTK+RK4oI7Ek0nU+f5GmnXqxuE0E1AXeaCicur?=
 =?us-ascii?Q?4lL+lJp3+1QuOsp+39IT6me5BGbI0uzm43R5CW/0arkBKvaXUgnirq5LUMLT?=
 =?us-ascii?Q?CnEquP0pTCx/rAe6g8oh1eAG9kIYGDt/10kpwo/5/ueaapkTCIYpvLUU169N?=
 =?us-ascii?Q?y7tXPgYlSmTEyrJZgCtXaBg5h4L1XmsxLgPSajyGi6+vL/fJS73691MHuyjS?=
 =?us-ascii?Q?tSG04WovGqWJj/vD2nMcwKRPpiviQVxDS5Adj9Rta3zwqZuGPLnIdamk4c1O?=
 =?us-ascii?Q?gN77QCU5FvPyh2bTWlfWx4F6+YXRMI7l+65hGImcUA01y1lz7LMKGYN1cX/t?=
 =?us-ascii?Q?o4MbjoRv48evjny4BuUlqJS2oK6XgY0l7dSH9NrfObzcvSv9GHiTx9KPkP36?=
 =?us-ascii?Q?LYgvEOmEGLqNywwsZLR7fUA2MsbWaTiLhD6/xwcW43zGTKwoJ29b/r3/qPzV?=
 =?us-ascii?Q?vk5CFx8Kcmj7rfbLGMYkn2Zopd7AqCF0DyswCWFyldoQvHw0O51mIPvndP+9?=
 =?us-ascii?Q?K2kKPx0H1gyeh+bb8RiQjHl3MA9ygg+U58wh04ytFBdJOD9/oDieOq2PDc/N?=
 =?us-ascii?Q?91rYVo22X9F6AvgfpCdINPQeHt5SqLHwL7/Lr7kTuTEHxO4CzGPNoHO5Mb6K?=
 =?us-ascii?Q?mARyMVonESak6cHL3VrNrK8hjyWElF42JlolU7DU/LVsXuLK69p/xu3AfhFi?=
 =?us-ascii?Q?vTcIHyxWfBGFWO8jgSmb2KZo0fqCiMhlzPFX3ag/AsHeDyLQKymgwvDbL4op?=
 =?us-ascii?Q?2IwhYgFhXNCYFxckp5CoVQ0NbRL++CqtyJKE83niN9ZsVW2GzDzcnKJTHLB+?=
 =?us-ascii?Q?Lag9vFFuEkCNtnsdqAXl+xGw5GJ80iV+U6Fe5UqIy8eNaCtW3LPTETSzQaCH?=
 =?us-ascii?Q?iJnusUxZDbGzOxXaJgoZJaFiaBsUQdy3dUdGOyiur8B7mzgExkXp3pUWXPbD?=
 =?us-ascii?Q?xKJ8GTvJmafzA12ff8Aveo/HUFfU8uwgQS/o67F/EDdg16gUkOo+49a4VahM?=
 =?us-ascii?Q?qYl3SYWn2idOqMr5SE5qVraRsQWJdjpYoJ6I9SZmUowEEOpv0CeXZbzU7ErQ?=
 =?us-ascii?Q?0HlVhHiHWqXH+NZ8RpocEoLhTUVEXxG8+S2C5D/kD6zFeA1M/ujURBfRSv82?=
 =?us-ascii?Q?WnXuexxDxc6h8SEI8mfGX/KQSdzpJGoCi8ibv0On4l1bTicdTTFJo/5In0Y0?=
 =?us-ascii?Q?NhFArY9TbvclbAOUxZoWukTk+EPk4Xr5NjvtVlNi0PFwCJ7hr/HaPXcfARnS?=
 =?us-ascii?Q?oiVg/PqC3uMquLp50yy7I5Rll+yz8p34Zuc+ecLALONqbW2BBN6vItlsAh7Z?=
 =?us-ascii?Q?8w=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ad24a7-e963-4461-cfce-08dbf17ebff0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6325.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2023 08:31:29.2794
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jZwvb4WXeobTUxzzZXizaSNu3vTnmDIdp9Xk7wmI0ZsNEAmVOaR0vr5wqsvtT/QNGq+8LrcdUSAPnWO1amabX5+DXltsApEIBwqF4qBHLIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8307
X-Proofpoint-ORIG-GUID: PhFcYQLqtN6qJIs3RywZgulZUxxkpZOP
X-Proofpoint-GUID: PhFcYQLqtN6qJIs3RywZgulZUxxkpZOP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 mlxlogscore=999 malwarescore=0 priorityscore=1501 clxscore=1011
 suspectscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311060001 definitions=main-2311300062
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 08:31:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61775

From: Wenlin Kang <wenlin.kang@windriver.com>

Steps to reproduce
  1) add layer meta-mingw
  2) add line in local.conf
     SDKMACHINE = "x86_64-mingw32"
  3) bitbake nativesdk-libxcrypt

Fixed:
1. .symver error
  | {standard input}: Assembler messages:
  | {standard input}:4: Error: unknown pseudo-op: `.symver'

2. pedantic error
  | ../git/lib/crypt.c:316:24: error: ISO C does not allow extra ';' outside of a function [-Werror=pedantic]
  |   316 | SYMVER_crypt_gensalt_rn;
  |       |

3. conversion error
  | ../git/lib/util-get-random-bytes.c: In function '_crypt_get_random_bytes':
  | ../git/lib/util-get-random-bytes.c:140:42: error: conversion from 'size_t' {aka 'long long unsigned int'} to 'unsigned int' may change value [-Werror=conversion]
  |   140 |           ssize_t nread = read (fd, buf, buflen);

Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
---
 .../0001-Fix-for-compilation-on-Windows.patch | 37 +++++++++++++++
 ...dom-bytes.c-fixed-conversion-error-w.patch | 47 +++++++++++++++++++
 recipes-core/libxcrypt/libxcrypt_%.bbappend   |  7 +++
 3 files changed, 91 insertions(+)
 create mode 100644 recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Windows.patch
 create mode 100644 recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch
 create mode 100644 recipes-core/libxcrypt/libxcrypt_%.bbappend

diff --git a/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Windows.patch b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Windows.patch
new file mode 100644
index 0000000..5760ee0
--- /dev/null
+++ b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Windows.patch
@@ -0,0 +1,37 @@
+From a507b628a5a5d4e4f1cf0f0a9a72967470ee7624 Mon Sep 17 00:00:00 2001
+From: Brecht Sanders <brecht@sanders.org>
+Date: Fri, 3 Feb 2023 08:44:49 +0100
+Subject: [PATCH] Fix for compilation on Windows
+
+This fix allows the library to build on Windows (at least with MinGW-w64).
+
+`.symver` is only supported for ELF format but Windows uses COFF/PE.
+
+Workaround dummy define of `symver_set()`
+
+Upstream-Status: Backport [https://github.com/besser82/libxcrypt/commit/a507b628a5a5d4e4f1cf0f0a9a72967470ee7624]
+
+Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
+---
+ lib/crypt-port.h | 5 +++++
+ 1 file changed, 5 insertions(+)
+
+diff --git a/lib/crypt-port.h b/lib/crypt-port.h
+index f06ca24..a707939 100644
+--- a/lib/crypt-port.h
++++ b/lib/crypt-port.h
+@@ -201,6 +201,11 @@ extern size_t strcpy_or_abort (void *dst, size_t d_size, const void *src);
+   __asm__(".globl _" extstr);                           \
+   __asm__(".set _" extstr ", _" #intname)
+ 
++#elif defined _WIN32
++
++/* .symver is only supported for ELF format, Windows uses COFF/PE */
++# define symver_set(extstr, intname, version, mode)
++
+ #elif defined __GNUC__ && __GNUC__ >= 3
+ 
+ # define _strong_alias(name, aliasname) \
+-- 
+2.34.1
+
diff --git a/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch b/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch
new file mode 100644
index 0000000..3846f76
--- /dev/null
+++ b/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch
@@ -0,0 +1,47 @@
+From ff99091eb8a6b9e6edc567f6d2552183fbaacec3 Mon Sep 17 00:00:00 2001
+From: Wenlin Kang <wenlin.kang@windriver.com>
+Date: Mon, 6 Nov 2023 14:43:28 +0800
+Subject: [PATCH] lib/util-get-random-bytes.c: fixed conversion error with
+ mingw
+
+With x86_64-w64-mingw32-gcc. get below error:
+| ../git/lib/util-get-random-bytes.c: In function '_crypt_get_random_bytes':
+| ../git/lib/util-get-random-bytes.c:140:42: error: conversion from 'size_t' {aka 'long long unsigned int'} to 'unsigned int' may change value [-Werror=conversion]
+|   140 |           ssize_t nread = read (fd, buf, buflen);
+|       |                                          ^~~~~~
+
+In util-get-random-bytes.c, has get_random_bytes(void *buf, size_t buflen),
+but in mingw-w64-mingw-w64/mingw-w64-headers/crt/io.h, read() has "unsigned int"
+read(int _FileHandle,void *_DstBuf,unsigned int _MaxCharCount), and has:
+ #ifdef _WIN64
+   __MINGW_EXTENSION typedef unsigned __int64 size_t;
+ #else
+   typedef unsigned int size_t;
+ #endif /* _WIN64 */
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
+---
+ lib/util-get-random-bytes.c | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/lib/util-get-random-bytes.c b/lib/util-get-random-bytes.c
+index 79816db..68cd378 100644
+--- a/lib/util-get-random-bytes.c
++++ b/lib/util-get-random-bytes.c
+@@ -137,7 +137,11 @@ get_random_bytes(void *buf, size_t buflen)
+         dev_urandom_doesnt_work = true;
+       else
+         {
++#ifdef _WIN64
++          ssize_t nread = read (fd, buf, (unsigned int)buflen);
++#else
+           ssize_t nread = read (fd, buf, buflen);
++#endif
+           if (nread < 0 || (size_t)nread < buflen)
+             dev_urandom_doesnt_work = true;
+ 
+-- 
+2.25.1
+
diff --git a/recipes-core/libxcrypt/libxcrypt_%.bbappend b/recipes-core/libxcrypt/libxcrypt_%.bbappend
new file mode 100644
index 0000000..cb9c45e
--- /dev/null
+++ b/recipes-core/libxcrypt/libxcrypt_%.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
+
+SRC_URI:append:mingw32 = "file://0001-Fix-for-compilation-on-Windows.patch \
+                          file://0001-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch \
+"
+
+CFLAGS:append:class-nativesdk:mingw32 = " -Wno-pedantic"
-- 
2.39.0


