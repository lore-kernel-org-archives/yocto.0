Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3705.1609991043301718511
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:03 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=X+sG4lBS;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2085.outbound.protection.outlook.com [40.107.94.85])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3001E38C0528
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BTNy354AngOUXwg+bHe8PPKs4L8PUnLd0DfOcIJwFiQOBPm7CHAPnUaQC67my86T7G/7rPzbeCA+kd+yRwu4aXSGZYuUrRjaQEomTWEv/5BaE+RvYpdIdGYsFv/ddDNjKzZGwvIUDrLDFHfYa1SlVtBQ4q8oq0KxZgsOZE+uwdtE/ioeQTvC5PskFv88UYhPNlT+9BkJoE97OwBapkuf2Jf7m3UdyaC042UjrUEgCgkapoyBSJbLAQ/b8VXDPah2YoBY5VCKpvGd4fTF7sO3afydzVcFXpen0GimB3x+jZt6MyEfwovCdguT1b/ZcE1xFp9wy/7lxFSVEpiYk3lHdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+aIODKTLiE+Gy45EJ0+Vr86Mxe4x86FsChoLaikSVi4=;
 b=AzCqM5T73XgCS8X+mBvxeyOGdkH3+sfPx+W/GmARnsdh8pthG48Psh8VM7TkXhLeJNMC2MikQCn4uQgZNIKnNMCQ+oQmZTBCgM/iVKcWVC/R9J4iZIssiTTFi0rQ4Y96r9ZyLTxKB0IoEz86Ez4/tUJJl561AR0vveYr8IyzpKH49KiFeB3Zwzu/momUao3gInbUKCCToE0iKcRDAIcJGYHzI+tYHNHkAG0l93tNgSUkv+eTtn52Mr7MrWMfJPMCCxdIaLjjTThINWnzhO16gkx47Mhuk5q3pf4Ad9GoJWL+hAXodupSzLzrLUuXHxW2zBJ77gyu2zXamfrNOZkxkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+aIODKTLiE+Gy45EJ0+Vr86Mxe4x86FsChoLaikSVi4=;
 b=X+sG4lBShtDR5j4fGvO/zYrp4PGVelEf+nO0EqYNyhQLAl39vBvFuca0fPC7lU0tu33m8UjPp95MIN9mChomWQhy7frTwTQYYSCrduvLQkTR+VpH+aLklPMri80bhqv+d4Ktv/5yVcfDgVB9gawSUNEBAor23EXZym+Tl2wxRB8=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:44:01 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:01 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 02/17] audit: upgrade 2.8.5 -> 3.0
Date: Thu,  7 Jan 2021 11:43:30 +0800
Message-Id: <20210107034345.37200-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4b7f0d67-1284-43d3-3509-08d8b2be792d
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1584D2F4D8932D02FF07EBCDF9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:174;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	G94j3tIos2hqCOXqmFs/HIih/M7UNORQgmD9DfzhDDJzA24N4rMjwfTXNLqmiBvGT9kVClYLFmw8JtTCthTcKf/0toeTbYOZQS61ANmAm0olvvgIybxCdmJewzW9G2ut9j45nDudnThxKjc7qJ4aXHhBHAf0C9DXYCPjjI8yI1G7jIx6YANH4y3I5b9gU7TUyOQUCioqwSCV00t45me7GpsRD4djexXCPMn1/9WlIQ9wc31wB2it/O5PJC6v8vIrUOikvlWM48f+pGZ4z9rGPcBqRFJrPmC+fu1nc6bhqzn9Rbsgbo6U22JNM7GikXZhr+dj3mYi+R+d0KasQ6Mq1LoFkAJBXlX/NWvHg3lr7Qr7pqOgGqCkcZrgqp7QMqkrby7ZWFjx63VT/QssH+1Qjm/QybotsQ8rZfmxgUDwaydcXPdmTOXVqQtCiLUk9UVnJl7SWSeNqXL7dqB4B32gyFKNwsqLoEOSov9qi3nN913EUQh2FoEazUH0tA9YyxIAL+FcpfmudyzKJeLSGcE1Kg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(53546011)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(30864003)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005)(2004002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Mkukqx6JLts3+OFY/NLjUPfGacrtERSYtdRapWfvi5/frK97U/03Lj/VHVQe?=
 =?us-ascii?Q?FIr3l/M0SHEm/QgdoGe/BOhd54mBK79ZG8h7uld6TEQ4peeqbIu4e8aHOc1f?=
 =?us-ascii?Q?y19zz1RC+GLW1HGUMMqTQkuv+bOG4saTPRVUvIQ3CUJr3OScLKwxuFb++Mst?=
 =?us-ascii?Q?1XMQIWlO8VRcpJSuGFEuB7M7LX4QzyFkYWgP6CQLLlrIVbdP/w8/1OLOcH9g?=
 =?us-ascii?Q?OY/tOyy0lWvTyQWoJMg5PTiH2U4tSosOYEKTYcD+bvPtjq2RwSU8VoWk/9VM?=
 =?us-ascii?Q?1KRQ8EjsOLoaSMZeuL6PTzKG3pX3C3wXoKO/3sMfrpqDkGTzd4t9BTuyzKOf?=
 =?us-ascii?Q?Ptov6Y0KE9wExUKiONQNyS92mt+Ex1yZXGRCvlA0EMs9P1KgY9Zl8/2TqZvw?=
 =?us-ascii?Q?2VKouXcCwrIQL7c8slMShvUSM6PQhnBbzlsdNm2TQiPwx7xzbszaOWU3+vom?=
 =?us-ascii?Q?QNp7xoSwRAqD8MmmebcQtU4ORLzZMG9/hbRE8ezpIsl1Gum33jeWO+6Ngouy?=
 =?us-ascii?Q?HU1rI3xOiUznnyAES36fxlidv9rxJWaJi2KuTmOOV8XRGrCpYaAatz3YmYbb?=
 =?us-ascii?Q?xNQwea525gOvsKn4QwTuUqI3JikBtLlrflOi6NKF/QFbw5UTOEPRBie4eL+x?=
 =?us-ascii?Q?tB05sTjTa+sPJ+W4DmtSRphIQfelADhQdbHlX1SjIhMPhSnoSFX+7w5Y+owY?=
 =?us-ascii?Q?esdddpzqbVOEDV3Qc96vNJmR6+d2+tMZfTLkKsbs3YPnnwiK8Lj7I5C0wYIq?=
 =?us-ascii?Q?uhc/DCTi2xgweGqk9NA7ARtXckt43SpmiDBVkJgJ2asOUvB+ihq82FhQkzUX?=
 =?us-ascii?Q?WaFfNllx5tPnMDzQ9cHZevNpPYTLJPekDazxysEao2w7vuSpRg/02F8WjuPF?=
 =?us-ascii?Q?slUz5Pxy8VU7++ppfM5THHX03ekK9TTqXgRwZgu5X1GyO0BaCX2+tOGF8sQB?=
 =?us-ascii?Q?r1ttk6KGXCoHhnfHNWRgUts8PABOSwCPSQmx84uc1pvMIzXPIeIoLD4l61wZ?=
 =?us-ascii?Q?iX3S?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:01.9033
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b7f0d67-1284-43d3-3509-08d8b2be792d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FSLrWY5C+qMi4c3JWdXrHQw1IsDoGRh7hCS4ubnnNdmzaOfT7BgN9kp1O4GtHgiNxPUfQANkCWwMxVOtgEuPfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

* Drop backported patches:
  0001-Header-definitions-need-to-be-external-when-building.patch
  0001-lib-i386_table.h-add-new-syscall.patch
  Add-substitue-functions-for-strndupa-rawmemchr.patch

* Refresh patch:
  Fixed-swig-host-contamination-issue.patch

* Update auditd.service.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ns-need-to-be-external-when-building.patch |  28 ----
 ...001-lib-i386_table.h-add-new-syscall.patch |  42 ------
 ...tue-functions-for-strndupa-rawmemchr.patch | 133 ------------------
 .../Fixed-swig-host-contamination-issue.patch |  12 +-
 recipes-security/audit/audit/auditd.service   |  26 ++--
 .../audit/{audit_2.8.5.bb =3D> audit_3.0.bb}    |  28 ++--
 6 files changed, 35 insertions(+), 234 deletions(-)
 delete mode 100644 recipes-security/audit/audit/0001-Header-definitions-=
need-to-be-external-when-building.patch
 delete mode 100644 recipes-security/audit/audit/0001-lib-i386_table.h-ad=
d-new-syscall.patch
 delete mode 100644 recipes-security/audit/audit/Add-substitue-functions-=
for-strndupa-rawmemchr.patch
 rename recipes-security/audit/{audit_2.8.5.bb =3D> audit_3.0.bb} (80%)

diff --git a/recipes-security/audit/audit/0001-Header-definitions-need-to=
-be-external-when-building.patch b/recipes-security/audit/audit/0001-Head=
er-definitions-need-to-be-external-when-building.patch
deleted file mode 100644
index 65ea478..0000000
--- a/recipes-security/audit/audit/0001-Header-definitions-need-to-be-ext=
ernal-when-building.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From 017e6c6ab95df55f34e339d2139def83e5dada1f Mon Sep 17 00:00:00 2001
-From: Steve Grubb <sgrubb@redhat.com>
-Date: Fri, 10 Jan 2020 21:13:50 -0500
-Subject: [PATCH] Header definitions need to be external when building wi=
th
- -fno-common (which is default in GCC 10) - Tony Jones
-
-Upstream-Status: Backport
-Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
----
- src/ausearch-common.h | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/ausearch-common.h b/src/ausearch-common.h
-index 6669203664ec..3040547afe95 100644
---- a/src/ausearch-common.h
-+++ b/src/ausearch-common.h
-@@ -50,7 +50,7 @@ extern pid_t event_pid;
- extern int event_exact_match;
- extern uid_t event_uid, event_euid, event_loginuid;
- extern const char *event_tuid, *event_teuid, *event_tauid;
--slist *event_node_list;
-+extern slist *event_node_list;
- extern const char *event_comm;
- extern const char *event_filename;
- extern const char *event_hostname;
---=20
-2.17.1
-
diff --git a/recipes-security/audit/audit/0001-lib-i386_table.h-add-new-s=
yscall.patch b/recipes-security/audit/audit/0001-lib-i386_table.h-add-new=
-syscall.patch
deleted file mode 100644
index 6e1827c..0000000
--- a/recipes-security/audit/audit/0001-lib-i386_table.h-add-new-syscall.=
patch
+++ /dev/null
@@ -1,42 +0,0 @@
-From df878b92e01f4d1c3de7f7d8229cea6a431509eb Mon Sep 17 00:00:00 2001
-From: Mingli Yu <mingli.yu@windriver.com>
-Date: Wed, 19 Feb 2020 15:23:40 +0800
-Subject: [PATCH] lib/i386_table.h: add new syscall
-
-On 32bit system,
-After upgrade glibc to 2.31
- # strace -o /tmp/test.log date -s 09:16:45
- # tail -f /tmp/test.log
- close(3)                                =3D 0
- stat64("/etc/localtime", {st_mode=3DS_IFREG|0644, st_size=3D114, ...}) =
=3D 0
- clock_settime64(CLOCK_REALTIME, {tv_sec=3D1582103805, tv_nsec=3D0}) =3D=
 0
- fstat64(1, {st_mode=3DS_IFCHR|0600, st_rdev=3Dmakedev(0x4, 0x40), ...})=
 =3D 0
- ioctl(1, TCGETS, {B115200 opost isig icanon echo ...}) =3D 0
- write(1, "Wed Feb 19 09:16:45 UTC 2020\n", 29) =3D 29
- close(1)                                =3D 0
- close(2)                                =3D 0
- exit_group(0)                           =3D ?
- +++ exited with 0 +++
-
-It means the clock_settime64 syscall is used, so
-add the syscall.
-
-Upstream-Status: Submitted [https://github.com/linux-audit/audit-userspa=
ce/pull/116]
-
-Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
----
- lib/i386_table.h | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/lib/i386_table.h b/lib/i386_table.h
-index 1a64c88..65fd4d9 100644
---- a/lib/i386_table.h
-+++ b/lib/i386_table.h
-@@ -405,3 +405,4 @@ _S(383, "statx")
- _S(384, "arch_prctl")
- _S(385, "io_pgetevents")
- _S(386, "rseq")
-+_S(404, "clock_settime64")
---=20
-2.7.4
-
diff --git a/recipes-security/audit/audit/Add-substitue-functions-for-str=
ndupa-rawmemchr.patch b/recipes-security/audit/audit/Add-substitue-functi=
ons-for-strndupa-rawmemchr.patch
deleted file mode 100644
index bb6c61e..0000000
--- a/recipes-security/audit/audit/Add-substitue-functions-for-strndupa-r=
awmemchr.patch
+++ /dev/null
@@ -1,133 +0,0 @@
-From bdcdc3dff4469aac88e718bd15958d5ed4b9392a Mon Sep 17 00:00:00 2001
-From: Steve Grubb <sgrubb@redhat.com>
-Date: Tue, 26 Feb 2019 18:33:33 -0500
-Subject: [PATCH] Add substitue functions for strndupa & rawmemchr
-
-Upstream-Status: Backport
-[https://github.com/linux-audit/audit-userspace/commit/d579a08bb1cde71f9=
39c13ac6b2261052ae9f77e]
----
- auparse/auparse.c   | 12 +++++++++++-
- auparse/interpret.c |  9 ++++++++-
- configure.ac        | 14 +++++++++++++-
- src/ausearch-lol.c  | 12 +++++++++++-
- 4 files changed, 43 insertions(+), 4 deletions(-)
-
-diff --git a/auparse/auparse.c b/auparse/auparse.c
-index 650db02..2e1c737 100644
---- a/auparse/auparse.c
-+++ b/auparse/auparse.c
-@@ -1,5 +1,5 @@
- /* auparse.c --
-- * Copyright 2006-08,2012-17 Red Hat Inc., Durham, North Carolina.
-+ * Copyright 2006-08,2012-19 Red Hat Inc., Durham, North Carolina.
-  * All Rights Reserved.
-  *
-  * This library is free software; you can redistribute it and/or
-@@ -1118,6 +1118,16 @@ static int str2event(char *s, au_event_t *e)
- 	return 0;
- }
-=20
-+#ifndef HAVE_STRNDUPA
-+static inline char *strndupa(const char *old, size_t n)
-+{
-+	size_t len =3D strnlen(old, n);
-+	char *tmp =3D alloca(len + 1);
-+	tmp[len] =3D 0;
-+	return memcpy(tmp, old, len);
-+}
-+#endif
-+
- /* Returns 0 on success and 1 on error */
- static int extract_timestamp(const char *b, au_event_t *e)
- {
-diff --git a/auparse/interpret.c b/auparse/interpret.c
-index 51c4a5e..67b7b77 100644
---- a/auparse/interpret.c
-+++ b/auparse/interpret.c
-@@ -853,6 +853,13 @@ err_out:
- 		return print_escaped(id->val);
- }
-=20
-+// rawmemchr is faster. Let's use it if we have it.
-+#ifdef HAVE_RAWMEMCHR
-+#define STRCHR rawmemchr
-+#else
-+#define STRCHR strchr
-+#endif
-+
- static const char *print_proctitle(const char *val)
- {
- 	char *out =3D (char *)print_escaped(val);
-@@ -863,7 +870,7 @@ static const char *print_proctitle(const char *val)
- 		// Proctitle has arguments separated by NUL bytes
- 		// We need to write over the NUL bytes with a space
- 		// so that we can see the arguments
--		while ((ptr  =3D rawmemchr(ptr, '\0'))) {
-+		while ((ptr  =3D STRCHR(ptr, '\0'))) {
- 			if (ptr >=3D end)
- 				break;
- 			*ptr =3D ' ';
-diff --git a/configure.ac b/configure.ac
-index 54bdbf1..aef07fb 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -1,7 +1,7 @@
- dnl
- define([AC_INIT_NOTICE],
- [### Generated automatically using autoconf version] AC_ACVERSION [
--### Copyright 2005-18 Steve Grubb <sgrubb@redhat.com>
-+### Copyright 2005-19 Steve Grubb <sgrubb@redhat.com>
- ###
- ### Permission is hereby granted, free of charge, to any person obtaini=
ng a
- ### copy of this software and associated documentation files (the "Soft=
ware"),
-@@ -72,6 +72,18 @@ dnl; posix_fallocate is used in audisp-remote
- AC_CHECK_FUNCS([posix_fallocate])
- dnl; signalfd is needed for libev
- AC_CHECK_FUNC([signalfd], [], [ AC_MSG_ERROR([The signalfd system call =
is necessary for auditd]) ])
-+dnl; check if rawmemchr is available
-+AC_CHECK_FUNCS([rawmemchr])
-+dnl; check if strndupa is available
-+AC_LINK_IFELSE(
-+  [AC_LANG_SOURCE(
-+    [[
-+      #define _GNU_SOURCE
-+      #include <string.h>
-+      int main() { (void) strndupa("test", 10); return 0; }]])],
-+ [AC_DEFINE(HAVE_STRNDUPA, 1, [Let us know if we have it or not])],
-+ []
-+)
-=20
- ALLWARNS=3D""
- ALLDEBUG=3D"-g"
-diff --git a/src/ausearch-lol.c b/src/ausearch-lol.c
-index 5d17a72..758c33e 100644
---- a/src/ausearch-lol.c
-+++ b/src/ausearch-lol.c
-@@ -1,6 +1,6 @@
- /*
- * ausearch-lol.c - linked list of linked lists library
--* Copyright (c) 2008,2010,2014,2016 Red Hat Inc., Durham, North Carolin=
a.
-+* Copyright (c) 2008,2010,2014,2016,2019 Red Hat Inc., Durham, North Ca=
rolina.
- * All Rights Reserved.=20
- *
- * This software may be freely redistributed and/or modified under the
-@@ -152,6 +152,16 @@ static int compare_event_time(event *e1, event *e2)
- 	return 0;
- }
-=20
-+#ifndef HAVE_STRNDUPA
-+static inline char *strndupa(const char *old, size_t n)
-+{
-+	size_t len =3D strnlen(old, n);
-+	char *tmp =3D alloca(len + 1);
-+	tmp[len] =3D 0;
-+	return memcpy(tmp, old, len);
-+}
-+#endif
-+
- /*
-  * This function will look at the line and pick out pieces of it.
-  */
---=20
-2.7.4
-
diff --git a/recipes-security/audit/audit/Fixed-swig-host-contamination-i=
ssue.patch b/recipes-security/audit/audit/Fixed-swig-host-contamination-i=
ssue.patch
index 7c26995..740bcb5 100644
--- a/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.pa=
tch
+++ b/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.pa=
tch
@@ -1,4 +1,4 @@
-From a07271f1cce82122610b622bcea4a8a37528f321 Mon Sep 17 00:00:00 2001
+From 3d13f92c1bb293523670ba01aea7e655b00a6709 Mon Sep 17 00:00:00 2001
 From: Li xin <lixin.fnst@cn.fujitsu.com>
 Date: Sun, 19 Jul 2015 02:42:58 +0900
 Subject: [PATCH] audit: Fixed swig host contamination issue
@@ -19,7 +19,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  2 files changed, 3 insertions(+), 2 deletions(-)
=20
 diff --git a/bindings/swig/python3/Makefile.am b/bindings/swig/python3/M=
akefile.am
-index 9938418..fa46aac 100644
+index dd9d934..61b486d 100644
 --- a/bindings/swig/python3/Makefile.am
 +++ b/bindings/swig/python3/Makefile.am
 @@ -22,6 +22,7 @@
@@ -30,7 +30,7 @@ index 9938418..fa46aac 100644
  LIBS =3D $(top_builddir)/lib/libaudit.la
  SWIG_FLAGS =3D -python -py3 -modern
  SWIG_INCLUDES =3D -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3_I=
NCLUDES)
-@@ -37,7 +38,7 @@ _audit_la_DEPENDENCIES =3D${top_srcdir}/lib/libaudit.h=
 ${top_builddir}/lib/libaudi
+@@ -36,7 +37,7 @@ _audit_la_DEPENDENCIES =3D${top_srcdir}/lib/libaudit.h=
 ${top_builddir}/lib/libaudi
  _audit_la_LIBADD =3D ${top_builddir}/lib/libaudit.la
  nodist__audit_la_SOURCES  =3D audit_wrap.c
  audit.py audit_wrap.c: ${srcdir}/../src/auditswig.i=20
@@ -40,7 +40,7 @@ index 9938418..fa46aac 100644
  CLEANFILES =3D audit.py* audit_wrap.c *~
 =20
 diff --git a/bindings/swig/src/auditswig.i b/bindings/swig/src/auditswig=
.i
-index 7ebb373..424fb68 100644
+index 21aafca..dd0f62c 100644
 --- a/bindings/swig/src/auditswig.i
 +++ b/bindings/swig/src/auditswig.i
 @@ -39,7 +39,7 @@ signed
@@ -50,8 +50,8 @@ index 7ebb373..424fb68 100644
 -%include "/usr/include/linux/audit.h"
 +%include "linux/audit.h"
  #define __extension__ /*nothing*/
- #include <stdint.h>
+ %include <stdint.i>
  %include "../lib/libaudit.h"
 --=20
-2.7.4
+2.17.1
=20
diff --git a/recipes-security/audit/audit/auditd.service b/recipes-securi=
ty/audit/audit/auditd.service
index ebc0798..06c63f0 100644
--- a/recipes-security/audit/audit/auditd.service
+++ b/recipes-security/audit/audit/auditd.service
@@ -1,20 +1,28 @@
 [Unit]
 Description=3DSecurity Auditing Service
 DefaultDependencies=3Dno
-After=3Dlocal-fs.target
-Conflicts=3Dshutdown.target
+After=3Dlocal-fs.target systemd-tmpfiles-setup.service
 Before=3Dsysinit.target shutdown.target
-After=3Dsystemd-tmpfiles-setup.service
+Conflicts=3Dshutdown.target
+ConditionKernelCommandLine=3D!audit=3D0
=20
 [Service]
-ExecStart=3D/sbin/auditd -n
-## To use augenrules, copy this file to /etc/systemd/system/auditd.servi=
ce
-## and uncomment the next line and delete/comment out the auditctl line.
-## Then copy existing rules to /etc/audit/rules.d/
-## Not doing this last step can cause loss of existing rules
+Type=3Dforking
+PIDFile=3D/run/auditd.pid
+ExecStart=3D/sbin/auditd
+## To use augenrules, uncomment the next line and comment/delete the aud=
itctl line.
+## NOTE: augenrules expect any rules to be added to /etc/audit/rules.d/
 #ExecStartPost=3D-/sbin/augenrules --load
 ExecStartPost=3D-/sbin/auditctl -R /etc/audit/audit.rules
-ExecReload=3D/bin/kill -HUP $MAINPID
+# By default we don't clear the rules on exit.
+# To enable this, uncomment the next line.
+#ExecStopPost=3D/sbin/auditctl -R /etc/audit/audit-stop.rules
+
+### Security Settings ###
+MemoryDenyWriteExecute=3Dtrue
+LockPersonality=3Dtrue
+ProtectControlGroups=3Dtrue
+ProtectKernelModules=3Dtrue
=20
 [Install]
 WantedBy=3Dmulti-user.target
diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/aud=
it/audit_3.0.bb
similarity index 80%
rename from recipes-security/audit/audit_2.8.5.bb
rename to recipes-security/audit/audit_3.0.bb
index e2e0352..b7170c7 100644
--- a/recipes-security/audit/audit_2.8.5.bb
+++ b/recipes-security/audit/audit_3.0.bb
@@ -7,18 +7,15 @@ SECTION =3D "base"
 LICENSE =3D "GPLv2+ & LGPLv2+"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae=
19f"
=20
-SRC_URI =3D "git://github.com/linux-audit/${BPN}-userspace.git;branch=3D=
2.8_maintenance \
-           file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
+SRC_URI =3D "git://github.com/linux-audit/${BPN}-userspace.git;branch=3D=
master \
            file://Fixed-swig-host-contamination-issue.patch \
-           file://0001-lib-i386_table.h-add-new-syscall.patch \
-           file://0001-Header-definitions-need-to-be-external-when-build=
ing.patch \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
 "
=20
 S =3D "${WORKDIR}/git"
-SRCREV =3D "5fae55c1ad15b3cefe6890eba7311af163e9133c"
+SRCREV =3D "ea8dbab9e0fb3fb2507ac5b8dc792ef32a97c87e"
=20
 inherit autotools python3native update-rc.d systemd
=20
@@ -29,10 +26,9 @@ INITSCRIPT_PARAMS =3D "defaults"
 SYSTEMD_PACKAGES =3D "auditd"
 SYSTEMD_SERVICE_auditd =3D "auditd.service"
=20
-DEPENDS +=3D "python3 tcp-wrappers libcap-ng linux-libc-headers swig-nat=
ive"
+DEPENDS =3D "python3 tcp-wrappers libcap-ng linux-libc-headers swig-nati=
ve"
=20
-EXTRA_OECONF +=3D "--without-prelude \
-        --with-libwrap \
+EXTRA_OECONF =3D " --with-libwrap \
         --enable-gssapi-krb5=3Dno \
         --with-libcap-ng=3Dyes \
         --with-python3=3Dyes \
@@ -45,7 +41,7 @@ EXTRA_OECONF +=3D "--without-prelude \
         --with-aarch64=3Dyes \
         "
=20
-EXTRA_OEMAKE +=3D "PYLIBVER=3D'python${PYTHON_BASEVERSION}' \
+EXTRA_OEMAKE =3D "PYLIBVER=3D'python${PYTHON_BASEVERSION}' \
 	PYINC=3D'${STAGING_INCDIR}/$(PYLIBVER)' \
 	pyexecdir=3D${libdir}/python${PYTHON_BASEVERSION}/site-packages \
 	STDINC=3D'${STAGING_INCDIR}' \
@@ -62,7 +58,7 @@ PACKAGES =3D+ "audispd-plugins"
 PACKAGES +=3D "auditd ${PN}-python"
=20
 FILES_${PN} =3D "${sysconfdir}/libaudit.conf ${base_libdir}/libaudit.so.=
1* ${base_libdir}/libauparse.so.*"
-FILES_auditd +=3D "${bindir}/* ${base_sbindir}/* ${sysconfdir}/*"
+FILES_auditd +=3D "${bindir}/* ${base_sbindir}/* ${sysconfdir}/* ${datad=
ir}/audit/*"
 FILES_audispd-plugins +=3D "${sysconfdir}/audisp/audisp-remote.conf \
 	${sysconfdir}/audisp/plugins.d/au-remote.conf \
 	${sbindir}/audisp-remote ${localstatedir}/spool/audit \
@@ -70,8 +66,8 @@ FILES_audispd-plugins +=3D "${sysconfdir}/audisp/audisp=
-remote.conf \
 FILES_${PN}-dbg +=3D "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
 FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}"
=20
-CONFFILES_auditd +=3D "${sysconfdir}/audit/audit.rules"
-RDEPENDS_auditd +=3D "bash"
+CONFFILES_auditd =3D "${sysconfdir}/audit/audit.rules"
+RDEPENDS_auditd =3D "bash"
=20
 do_install_append() {
 	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.a
@@ -87,14 +83,14 @@ do_install_append() {
 	rm -rf ${D}/etc/rc.d
=20
 	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', =
d)}; then
+		# install systemd unit files
+		install -d ${D}${systemd_unitdir}/system
+		install -m 0644 ${WORKDIR}/auditd.service ${D}${systemd_unitdir}/syste=
m
+
 		install -d ${D}${sysconfdir}/tmpfiles.d/
 		install -m 0644 ${WORKDIR}/audit-volatile.conf ${D}${sysconfdir}/tmpfi=
les.d/
 	fi
=20
-	# install systemd unit files
-	install -d ${D}${systemd_unitdir}/system
-	install -m 0644 ${WORKDIR}/auditd.service ${D}${systemd_unitdir}/system
-
 	# audit-2.5 doesn't install any rules by default, so we do that here
 	mkdir -p ${D}/etc/audit ${D}/etc/audit/rules.d
 	cp ${S}/rules/10-base-config.rules ${D}/etc/audit/rules.d/audit.rules
--=20
2.25.1

