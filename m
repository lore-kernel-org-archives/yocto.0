Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.60])
 by mx.groups.io with SMTP id smtpd.web09.105.1615614663628254187
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:04 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=IDzKMHW0;
 spf=pass (domain: windriver.com, ip: 40.107.92.60, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mxBgNGN6zwEIe1XaW1IRsrSP5FEMTSE+nhMw6oNSmd2oMdiWDcCFqizP62HEh5cvlttC1jQJMvQCwYgVAKUkbHFfMSHz9mqVSsYVA2KdVXEcjL4AQ4v6Y9VtUGy0p0fdAcEtoiZom4lGzrpIKVylNTFaKZstd7v9T2sv0MEwR8ift+WiXT6TdAvvNNxbTddDyMevbXmQt88C0SZrD2Vb+NcXGL8ySpb0f9WA7q2W4u4pCc2D8ObJvRUqeo3DyDQ4p+kfsmYzQkYCAtCd0PkoHO/NpoidxeGbRSxNPHybU/QupNJVHh3iNYB4EpeRqvtUns6IAH5K6J1j39ehnfCV6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rd6wXqFlj6ugLqx9XOAtj4v7gYy4Y9F0WpPv4CwBXnI=;
 b=bU+ev4vAvxK8tS6ZSJeOHfONOXUQJ2nAHnP74m3NTWsbwASOaIeXCVgxHEuXw5j3c4dTgsHdaBVW3iTln5gWjSpfCWwkk4iRBCBdDScEfDWCxGL0c0DbbIv8EX8fJy1s+gW1bv+/yYg/QE5w5bE+HP+trfW0edqXzMUrdB+Atk+UL8+qr4R4+sB1Ie0aqkgOAJpHg76YzUXvWfb6h+RjlqbmPLEpwhrzf0MBHTtywL54sl6/ghe+pTW6C3VQ345kF7egq0556T69wXQYxq1qUcWc3ouUQXLcjRDWkUG0WJczeva+vYbelbdhhp3d/webRDDNXdj4LxD+P8J4QWoxjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rd6wXqFlj6ugLqx9XOAtj4v7gYy4Y9F0WpPv4CwBXnI=;
 b=IDzKMHW0zbE94MJYdEeWPjUX5jqHmZSgzma9BwqbIsOJmbouzqYDphw2l7I4FnF1+wpYmONtRsXCt0+u4QD/H904ezrB9RMjWVnY7mXPTldaFu5HjulSbCb6P2TIvtltXrg3dPuxYT7HQrIK5Wtkc/v6DTaomZvAYRXubWx+E74=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.29; Sat, 13 Mar
 2021 05:51:01 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:01 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 03/16] libselinux: update to 3.2
Date: Sat, 13 Mar 2021 13:50:31 +0800
Message-ID: <20210313055044.239776-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210313055044.239776-1-yi.zhao@windriver.com>
References: <20210313055044.239776-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:50:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 565072f7-f5af-49d0-e278-08d8e5e3fb3e
X-MS-TrafficTypeDiagnostic: MW3PR11MB4556:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB4556D699E95FA8825D0ACFC4F96E9@MW3PR11MB4556.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:15;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	++86xspISVBlwb8wvM4LuFnZFTwFiSaC26rT/nsn0EYYBpZv31c8UdY/qt7gAR3A/BqbKxQ8gJ5nrwdcrUp/2q0MxDoMVlBtKIeLXQstbFKTMggC4gmvBKU3qYaatPTNMgOc3iHPI3vjA1nyc8VDQXUqe6R5c7xisqxfob1I0C5SB2bHDHNpgy6ceHpQae8Je/DQ5GcXLnjPhsW0AH0HFk6IbC1V6DOtv0psXGdlXf409ZazPUVDSWLVqOTWvDZQImVeg1tf9JhJiEGLkZXa+DkmPDW3EkaVHBgipYiydC/oG4S0kQ5qNA5Lq6vPUtGFXelkKEQCMsp3MxUhbwiSDDemwQclEBrqPoV05L6nrRtka9vYiDfnk8SBLqmvaq6ZfqchJn7sfSov/IZdHMVG/my3GczpsSn3KANLHnyiyzIQ51VftHVLoSHL9Z+yo4zymIiIt80q7ixtYUhBpwTgOjUnnRMk7tVf56gga+Wz0YhufXMqhY9Ow05NxGgVU9iRNUFwZV8BwRoVi7If/MUJaQjYx9wrCuey476bysyFCG/7bvJ0fiLXOmDoCIykK/6aZxjtn89/VUP7hDOxJ7cN+ZPBrCOCg5S3ZwaUoE3zr8w=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(136003)(39850400004)(376002)(346002)(66476007)(6506007)(6512007)(15650500001)(36756003)(1076003)(8676002)(66556008)(66946007)(83380400001)(16526019)(86362001)(44832011)(316002)(6666004)(186003)(26005)(956004)(966005)(6486002)(5660300002)(2906002)(478600001)(52116002)(2616005)(8936002)(30864003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?LLh/QX5FXQ1d5Fgx6cyuLj1ChOzvIpwDGMYuAMDwHTKyKQxvkRSBgkHmnVxV?=
 =?us-ascii?Q?Htq+lSzTZY2rKtm8tHqQNI5wBZ/IOrVTVeguzORmqf0okJOKvDL/tfKtnsdi?=
 =?us-ascii?Q?YXNx1MIHT/RHV5A0DaiL0sOIEq80WNvK5tORQghIJSFzgrrR096o9uMfofG0?=
 =?us-ascii?Q?sv8T357F5ZJimdR8HBrEL9YINDjSJLzD22CmbL/SYiUMz3IQ3YQA+iYzth9s?=
 =?us-ascii?Q?pD4QnUE1r6rw77e/7MjNS9RwTtObpnq5qtZrzmaA4V1l163j46+zOGYMNjN/?=
 =?us-ascii?Q?f9lLoN62bGQz/gQNKaxI+02oDrCovbchqPrs+JGpHAFBbCsfozUEjzQlr2TX?=
 =?us-ascii?Q?meZnt+QkXRcwSb5v69I3ZcGsFxku6hrpV6vLcxkpyxKNemJyw4+P8azSSUPC?=
 =?us-ascii?Q?i72cKUAzgx1v+RpY2525wVBZhHDiuSomwGc3nURvlgU7YdlKChe48s21wm3O?=
 =?us-ascii?Q?el1wKzclQI4zKBIAuQJTECl0W3kKuu/q9b4bTJKYnllfo8TaFIUkeF592APb?=
 =?us-ascii?Q?pXk2ipnwBy1eocam63P9/yXi0EpMOkQ4tuoRWvupkabw1tK8t7bsrjKL+TAG?=
 =?us-ascii?Q?pxFD3nh6c4fB92+1mHvu14ZejsvNCMulcgOfs0UH928MmHVNhny/TUkSt0BV?=
 =?us-ascii?Q?EZV82MWVTZ34T1ssamOFK+HZ7H6C70gzLBQiOmvJ1JGeiIARK7S4L0aEHsAj?=
 =?us-ascii?Q?liRieZDscD94cyu102rtM3lZifWIMVIjZQYP1PUOu5YZUh5RXllYgnBrmncV?=
 =?us-ascii?Q?6nFJU1eo5+PUjvSkYGqsqRs8FrQb0fs0Iv0zitRijYxCyxsiQZjp06W74D7i?=
 =?us-ascii?Q?hi3OkUfBA+1ef2+HRnFiOuOG2zy6pPW9ibBSVRY56GMyodN5HKQ1odllXWY1?=
 =?us-ascii?Q?kKeA7uLzG4+3UZkEnQoA4LYWF88gOLn4E9+4o5+dQRI2NhIcQ2NizF1XT77c?=
 =?us-ascii?Q?9QJLek6gLkdqtRaq9RxGRo0I6scY4vhHpmQuJ/5eQw8IRP+W5AA5mCeKip4R?=
 =?us-ascii?Q?oV+WJAOcFdOQEpGACmaQEoNTdIcVTa8L1H/3vD38MDT21+/clnLnLsDfBlGc?=
 =?us-ascii?Q?z0cNi5Fclt+XsEKT1fXi1wHXESFIPoT3ImAosW5gW2Oeq4ZhL/OOiKZTMfiB?=
 =?us-ascii?Q?od5UFMH4SobH1htOoIX2is7rqWsHwZlloTqCZ18Dbna0ncqQ8BNe6NtRMjaT?=
 =?us-ascii?Q?8CO6nuNrn7NbhaOohqnVKXnzqy9Sy8az8Xcav2vr1pogV2ydJMniE/3vvS4R?=
 =?us-ascii?Q?mKu2/DF5qVvhhPWhc8Vcm2/0L0MgZRAM+N0TqZKDLGIO/+AtKwOkjt+it8t1?=
 =?us-ascii?Q?L8GPDZBFy3+eOKr0ZttgYbS4?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 565072f7-f5af-49d0-e278-08d8e5e3fb3e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:01.6090
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +4ERhI6OEAIsDV/az+KHw3/uujoaQnNSM6KOS1jBgemeTPbov0TSQqxvKxFdO99L9xyKnpqpWGVv/qfrj4eg2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

* Merge inc file into bb file.
* Drop obsolete patches:
  0001-libselinux-do-not-define-gettid-for-musl.patch
  libselinux-define-FD_CLOEXEC-as-necessary.patch
  libselinux-make-O_CLOEXEC-optional.patch
  libselinux-make-SOCK_CLOEXEC-optional.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...elinux-do-not-define-gettid-for-musl.patch | 47 ---------
 ...linux-define-FD_CLOEXEC-as-necessary.patch | 33 -------
 .../libselinux-make-O_CLOEXEC-optional.patch  | 99 -------------------
 ...ibselinux-make-SOCK_CLOEXEC-optional.patch | 38 -------
 recipes-security/selinux/libselinux_3.1.bb    | 17 ----
 .../{libselinux.inc =3D> libselinux_3.2.bb}     |  7 +-
 6 files changed, 6 insertions(+), 235 deletions(-)
 delete mode 100644 recipes-security/selinux/libselinux/0001-libselinux-do-=
not-define-gettid-for-musl.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-define-F=
D_CLOEXEC-as-necessary.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-make-O_C=
LOEXEC-optional.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-make-SOC=
K_CLOEXEC-optional.patch
 delete mode 100644 recipes-security/selinux/libselinux_3.1.bb
 rename recipes-security/selinux/{libselinux.inc =3D> libselinux_3.2.bb} (8=
4%)

diff --git a/recipes-security/selinux/libselinux/0001-libselinux-do-not-def=
ine-gettid-for-musl.patch b/recipes-security/selinux/libselinux/0001-libsel=
inux-do-not-define-gettid-for-musl.patch
deleted file mode 100644
index 5d6e409..0000000
--- a/recipes-security/selinux/libselinux/0001-libselinux-do-not-define-get=
tid-for-musl.patch
+++ /dev/null
@@ -1,47 +0,0 @@
-From 5f6f4a095bc82b29c3871d4d8a15d9c16cef39ef Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Wed, 6 Jan 2021 10:42:11 +0800
-Subject: [PATCH] libselinux: do not define gettid() for musl
-
-The musl has implemented gettid() function:
-http://git.musl-libc.org/cgit/musl/commit/?id=3Dd49cf07541bb54a5ac7aec1fee=
c8514db33db8ea
-
-Fixes:
-procattr.c:38:14: error: static declaration of 'gettid' follows non-static=
 declaration
-   38 | static pid_t gettid(void)
-      |              ^~~~~~
-In file included from procattr.c:2:
-/build/tmp/work/core2-32-poky-linux-musl/libselinux/3.1-r0/recipe-sysroot/=
usr/include/unistd.h:194:7:
-note: previous declaration of 'gettid' was here
-   194 | pid_t gettid(void);
-       |       ^~~~~~
-
-Upstream-Status: Pending
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- src/procattr.c | 8 +-------
- 1 file changed, 1 insertion(+), 7 deletions(-)
-
-diff --git a/src/procattr.c b/src/procattr.c
-index 926ee54..519e515 100644
---- a/src/procattr.c
-+++ b/src/procattr.c
-@@ -24,13 +24,7 @@ static __thread char destructor_initialized;
-=20
- /* Bionic and glibc >=3D 2.30 declare gettid() system call wrapper in uni=
std.h and
-  * has a definition for it */
--#ifdef __BIONIC__
--  #define OVERRIDE_GETTID 0
--#elif !defined(__GLIBC_PREREQ)
--  #define OVERRIDE_GETTID 1
--#elif !__GLIBC_PREREQ(2,30)
--  #define OVERRIDE_GETTID 1
--#else
-+#if !defined(__GLIBC_)
-   #define OVERRIDE_GETTID 0
- #endif
-=20
---=20
-2.17.1
-
diff --git a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEX=
EC-as-necessary.patch b/recipes-security/selinux/libselinux/libselinux-defi=
ne-FD_CLOEXEC-as-necessary.patch
deleted file mode 100644
index 25d4b24..0000000
--- a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-n=
ecessary.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From d0aaf391ab30b253aa22ef6547a039bcac840fc6 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe.macdonald@windriver.com>
-Date: Tue, 15 Oct 2013 10:14:41 -0400
-Subject: [PATCH] libselinux: define FD_CLOEXEC as necessary
-
-In truly old systems, even FD_CLOEXEC may not be defined.  Produce a
-warning and duplicate the #define for FD_CLOEXEC found in
-asm-generic/fcntl.h on more modern platforms.
-
-Upstream-Status: Inappropriate
-
-Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
-
----
- src/setrans_client.c | 5 +++++
- 1 file changed, 5 insertions(+)
-
-diff --git a/src/setrans_client.c b/src/setrans_client.c
-index fa188a8..a94f02c 100644
---- a/src/setrans_client.c
-+++ b/src/setrans_client.c
-@@ -39,6 +39,11 @@ static pthread_key_t destructor_key;
- static int destructor_key_initialized =3D 0;
- static __thread char destructor_initialized;
-=20
-+#ifndef FD_CLOEXEC
-+#warning FD_CLOEXEC undefined on this platform, this may leak file descri=
ptors
-+#define FD_CLOEXEC 1
-+#endif
-+
- /*
-  * setransd_open
-  *
diff --git a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-=
optional.patch b/recipes-security/selinux/libselinux/libselinux-make-O_CLOE=
XEC-optional.patch
deleted file mode 100644
index 1d6f3a7..0000000
--- a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optiona=
l.patch
+++ /dev/null
@@ -1,99 +0,0 @@
-From 802d224953294463fa9bc793e46f664ecfea057a Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe.macdonald@windriver.com>
-Date: Fri, 11 Oct 2013 09:56:25 -0400
-Subject: [PATCH] libselinux: make O_CLOEXEC optional
-
-Various commits in the selinux tree in the current release added O_CLOEXEC
-to open() calls in an attempt to address file descriptor leaks as
-described:
-
-   http://danwalsh.livejournal.com/53603.html
-
-However O_CLOEXEC isn't available on all platforms, so make it a
-compile-time option and generate a warning when it is not available.  The
-actual impact of leaking these file descriptors is minimal, though it does
-produce curious AVC Denied messages.
-
-Upstream-Status: Inappropriate [O_CLOEXEC has been in Linux since 2007 and=
 POSIX since 2008]
-
-Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-
----
- src/procattr.c  | 16 ++++++++++++++--
- src/sestatus.c  |  8 +++++++-
- src/stringrep.c |  8 +++++++-
- 3 files changed, 28 insertions(+), 4 deletions(-)
-
-diff --git a/src/procattr.c b/src/procattr.c
-index 48dd8af..8bf8432 100644
---- a/src/procattr.c
-+++ b/src/procattr.c
-@@ -79,7 +79,13 @@ static int openattr(pid_t pid, const char *attr, int fl=
ags)
- 		rc =3D asprintf(&path, "/proc/thread-self/attr/%s", attr);
- 		if (rc < 0)
- 			return -1;
--		fd =3D open(path, flags | O_CLOEXEC);
-+		fd =3D open(path, flags
-+#ifdef O_CLOEXEC
-+			  | O_CLOEXEC
-+#else
-+#warning O_CLOEXEC undefined on this platform, this may leak file descrip=
tors
-+#endif
-+			);
- 		if (fd >=3D 0 || errno !=3D ENOENT)
- 			goto out;
- 		free(path);
-@@ -92,7 +98,13 @@ static int openattr(pid_t pid, const char *attr, int fl=
ags)
- 	if (rc < 0)
- 		return -1;
-=20
--	fd =3D open(path, flags | O_CLOEXEC);
-+	fd =3D open(path, flags
-+#ifdef O_CLOEXEC
-+		  | O_CLOEXEC
-+#else
-+#warning O_CLOEXEC undefined on this platform, this may leak file descrip=
tors
-+#endif
-+		);
- out:
- 	free(path);
- 	return fd;
-diff --git a/src/sestatus.c b/src/sestatus.c
-index ed29dc5..0cb15b6 100644
---- a/src/sestatus.c
-+++ b/src/sestatus.c
-@@ -268,7 +268,13 @@ int selinux_status_open(int fallback)
- 		return -1;
-=20
- 	snprintf(path, sizeof(path), "%s/status", selinux_mnt);
--	fd =3D open(path, O_RDONLY | O_CLOEXEC);
-+	fd =3D open(path, O_RDONLY
-+#ifdef O_CLOEXEC
-+             | O_CLOEXEC
-+#else
-+#warning O_CLOEXEC undefined on this platform, this may leak file descrip=
tors
-+#endif
-+             );
- 	if (fd < 0)
- 		goto error;
-=20
-diff --git a/src/stringrep.c b/src/stringrep.c
-index 2d83f96..17e9232 100644
---- a/src/stringrep.c
-+++ b/src/stringrep.c
-@@ -105,7 +105,13 @@ static struct discover_class_node * discover_class(co=
nst char *s)
- 		struct stat m;
-=20
- 		snprintf(path, sizeof path, "%s/class/%s/perms/%s", selinux_mnt,s,dentr=
y->d_name);
--		fd =3D open(path, O_RDONLY | O_CLOEXEC);
-+		fd =3D open(path, O_RDONLY
-+#ifdef O_CLOEXEC
-+                | O_CLOEXEC
-+#else
-+#warning O_CLOEXEC undefined on this platform, this may leak file descrip=
tors
-+#endif
-+                );
- 		if (fd < 0)
- 			goto err4;
-=20
diff --git a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEX=
EC-optional.patch b/recipes-security/selinux/libselinux/libselinux-make-SOC=
K_CLOEXEC-optional.patch
deleted file mode 100644
index 77a9136..0000000
--- a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-opti=
onal.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From e630805d15a3b8d09330353f87a7e4a9fcc9998a Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe.macdonald@windriver.com>
-Date: Tue, 15 Oct 2013 10:07:43 -0400
-Subject: [PATCH] libselinux: make SOCK_CLOEXEC optional
-
-libselinux/src/setrans_client.c checks for the existence of SOCK_CLOEXEC
-before using it, however libselinux/src/avc_internal.c does not.  Since
-SOCK_CLOEXEC suffers the same problem as O_CLOEXEC on some older
-platforms, we need to ensure we protect the references it it in the same
-way.
-
-Upstream-Status: Inappropriate
-
-Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
-
----
- src/avc_internal.c | 8 +++++++-
- 1 file changed, 7 insertions(+), 1 deletion(-)
-
-diff --git a/src/avc_internal.c b/src/avc_internal.c
-index 49cecc9..148cc83 100644
---- a/src/avc_internal.c
-+++ b/src/avc_internal.c
-@@ -60,7 +60,13 @@ int avc_netlink_open(int blocking)
- 	int len, rc =3D 0;
- 	struct sockaddr_nl addr;
-=20
--	fd =3D socket(PF_NETLINK, SOCK_RAW | SOCK_CLOEXEC, NETLINK_SELINUX);
-+	fd =3D socket(PF_NETLINK, SOCK_RAW
-+#ifdef SOCK_CLOEXEC
-+               | SOCK_CLOEXEC
-+#else
-+#warning SOCK_CLOEXEC undefined on this platform, this may leak file desc=
riptors
-+#endif
-+               , NETLINK_SELINUX);
- 	if (fd < 0) {
- 		rc =3D fd;
- 		goto out;
diff --git a/recipes-security/selinux/libselinux_3.1.bb b/recipes-security/=
selinux/libselinux_3.1.bb
deleted file mode 100644
index 9d1cda5..0000000
--- a/recipes-security/selinux/libselinux_3.1.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a270d0d=
0"
-
-SRC_URI[md5sum] =3D "693680c021feb69a4b258b0370021461"
-SRC_URI[sha256sum] =3D "ea5dcbb4d859e3f999c26a13c630da2f16dff9462e3cc8cb7b=
458ac157d112e7"
-
-SRC_URI +=3D "\
-        file://libselinux-make-O_CLOEXEC-optional.patch \
-        file://libselinux-make-SOCK_CLOEXEC-optional.patch \
-        file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-        "
-
-SRC_URI_append_libc-musl =3D " \
-        file://0001-libselinux-do-not-define-gettid-for-musl.patch \
-        "
diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/sel=
inux/libselinux_3.2.bb
similarity index 84%
rename from recipes-security/selinux/libselinux.inc
rename to recipes-security/selinux/libselinux_3.2.bb
index fe8c087..5acd576 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux_3.2.bb
@@ -4,20 +4,25 @@ process and file security contexts and to obtain security=
 policy \
 decisions.  Required for any applications that use the SELinux API."
 SECTION =3D "base"
 LICENSE =3D "PD"
+LIC_FILES_CHKSUM =3D "file://${S}/LICENSE;md5=3D84b4d2c6ef954a2d4081e775a2=
70d0d0"
+
+require selinux_common.inc
=20
 inherit lib_package python3native
=20
 DEPENDS +=3D "libsepol libpcre"
 DEPENDS_append_libc-musl =3D " fts"
=20
+S =3D "${WORKDIR}/git/libselinux"
+
 def get_policyconfigarch(d):
     import re
     target =3D d.getVar('TARGET_ARCH')
     p =3D re.compile('i.86')
     target =3D p.sub('i386',target)
     return "ARCH=3D%s" % (target)
-EXTRA_OEMAKE +=3D "${@get_policyconfigarch(d)}"
=20
+EXTRA_OEMAKE +=3D "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE +=3D "LDFLAGS=3D'${LDFLAGS} -lpcre' LIBSEPOLA=3D'${STAGING_LI=
BDIR}/libsepol.a'"
 EXTRA_OEMAKE_append_libc-musl =3D " FTS_LDLIBS=3D-lfts"
=20
--=20
2.25.1

