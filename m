Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7094.1608124125407497931
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:08:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=MrThW8mG;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690075.outbound.protection.outlook.com [40.107.69.75])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2240238C063A
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:08:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DkE62r8+YJBw2t0Nmszh+kdA+UhWKfHcemuUEnzbFXghVCImlx8u+Hp5QCwVFD4NimtAMeBbKVEUsqjhDw/mxZaFjCi/wc8E+YP4wMjm9zFuo2woF/D6a0/9L20ExoqzHDLUHxsofUd4tyRuLYuXSU+HbYPYxduOTeIUNphffPy16XGN8bDPHJ8eF/NhV6onw9QhPtzQeVeo0p4dbXvjIyh56RMCMldDqoKbYqj+AcjqEdrYU8p8cv6dUpMRPLccrQZ7x49vl0QexKrfQ1I1LKC2qYZljYtq84KkedrLrRy2FUqPS/OQ1+5hLtEDbAgo1qRgg/Q5ThTEG2v1tQffEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sEamQfHFX2gQtEuy4ZEcUKhUg/2//zMnwEgkvlXT+hI=;
 b=YLZwOU86OMjFGPh7TgxB8rb5Ad3L21rd/7M4eYOIifvi5NAC4i+GOqKR24Y5aIZNLZmMjcMWOHh35yhvL6/vcpjApVTRj8HEiPvUbc4GpoDvbqREw2jTAMwbGdGdyw6HQzjuLtcCDd0fVi80fvzANgi8+hvA7kE9TVepBLsaFtfKTd5eCR76tU9fcXR5zlgB76D8mR2C2dgobV59rokXq/GJ7SdEAdwlZOUy3P4YZ5MsJia246ucQI6CyE4EUPTqFrmipI9/bMNO0Hx1/6nEUUEISqy+1FaWoing6oZOg37U2SAOhVe9QxJqXqq32AWTPObpG/itmOWyGRl+GjcTGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sEamQfHFX2gQtEuy4ZEcUKhUg/2//zMnwEgkvlXT+hI=;
 b=MrThW8mGMSsW7wqK/rbJpRIYHt+FSiwBWqcSXsdiRVkQNmVDmp+fy/Qa72Yk+xn45PY+t44vvGcQgS01F+7997SpP2hJVsRZvf7z+t6GnvRWg0Y7DGUb1KcTwMoRWlLxyIrpedR8guO4ZURLHVKUd6GN5PlojXWhzOc06LllA8Q=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:08:44 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:08:44 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 2/25] bazel-native: 0.21.0 -> 3.1.0
Date: Wed, 16 Dec 2020 21:07:59 +0800
Message-Id: <20201216130822.28476-3-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:08:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5f9bb204-79c3-4402-38b9-08d8a1c3b777
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45777A14E5644A6CB13BC00F94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:274;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZTIDZ1E7aSR6XWbkdn6eenkXvHxeHk+AJnOlCngIOn+3fFjD98CAGfknfR6z8DdaeiXR5KXL9ugHE/L/7oJj7pmnbeZXW1U/CBKk+yCxz+L2kQKW8Jy1mVlRs91VcRcUiOYZAXBfnTFGtzrBHaaJnqPAYVALowC0f4garSHRyG5RSuOma7y8UEN6mZH0jrrgQs22Z/KhcySaiWT9x5I44bCyEQQmZ/p/AtT5cD+I2RA35YzNm9ccEIPVc4c+nUzt2AL2dToASIPHOeSIvqnf+Ql8qrtRao97jIEyD2zj6mz20qAlGGSutGzrFf8LbaOuh7HtWSZlgYztN4VzY3Xe5iYJYf3+lVWJCrvcw/q95JHTz0G8CiZsXCBlIXc1hyBRLT036pJmiA49y4iv1jBnLw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(30864003)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(966005)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?FT2sy66Ojv10iH8tblcYEPxlDYmGXJRfeEO2lL3xr1QlfIkfGpkFy1Qqb8Vx?=
 =?us-ascii?Q?S2VG7dtUrg2rCaxUt7vK4RTfTGl/UFOQmhbUlqaN8eG9Wvm/F5lDEmJS3PnG?=
 =?us-ascii?Q?+ECfj1gGL0WJ2WPVyPDIg7t5mrlbVkcAmH2mWragYDt/GKM5Ei93Kxx99TZ2?=
 =?us-ascii?Q?GeiUm7+up1mDt9V3XGM9MroRhP2QblLpka9cvhJzaetISrNq0ojrsu0imLIo?=
 =?us-ascii?Q?mHQ1EuMuvNvA9kSpBnfJulLSsNP0qgzIjQJKsRxMwg78AowQz9k15qmVMpAK?=
 =?us-ascii?Q?8gmepFtFjoOEQh5LLPdGouAfeKUXnfpxZYWTpPPrOKRIQifUD5gZX7X1l4KK?=
 =?us-ascii?Q?+HtBjrs+FJWpcMG3KJlBd5adyqPeQH/SySNxkaaVbqd/y7HTbt/3gJFkQF7j?=
 =?us-ascii?Q?1X37j6g6dyS3uT2d38KPmc/Qmk9ll5ZDjltdgcLEHHdOHqhYdsk4n+nVrGEX?=
 =?us-ascii?Q?YlRYy1uf5Zzu0QtFNSDGb0eTkvYOEJBQOT5fQxi+igtkKRAadfAc+J//ejF3?=
 =?us-ascii?Q?IkFrqDGTwWXdL7yVKY0sZ9lju6vNb35m/6OTAhFgvsQNpXZ/TS2+AeHLXdMo?=
 =?us-ascii?Q?KnsJNaWBbcQoDhSELblXlbC6VOH2LXJGc51mZ6u5CZTsA9K7x59N4rteQuTf?=
 =?us-ascii?Q?QscNxiZUSHb28k9xZmHzEPrsQVptm4rpLAEhjpFCszOnzXEvGM+rXUcgyVKE?=
 =?us-ascii?Q?tB31RCgaL9UjELkC7p+IEs81wogyAxoqt8UGT6F9hBHmPoUikkaehJkuHyKp?=
 =?us-ascii?Q?ztdzpQHzlGWUEvD2W8nyYfFWmnHYy1dWal3f5q0q8+LA3ZRk0vuGbhYQ9j5Y?=
 =?us-ascii?Q?DBvWQBbllCYTa7Os+eg6WaB9Svmvo/I6SikhaSGsm23hcST0M4x3SCBUO1eX?=
 =?us-ascii?Q?6gOlqR9Ck0JXjBdD9PTyOxs5xoseCxUBxPYie8roee0Mil43ub6wOsVO0MZD?=
 =?us-ascii?Q?mUD/7iiW0/JaJKfFPjwYbiNKas7jyDpc5x+pICNZ+FuzRRNJjIYE718y3Syn?=
 =?us-ascii?Q?yB8p?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:08:44.0884
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f9bb204-79c3-4402-38b9-08d8a1c3b777
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eo3yQ3tg/+0e7JHnJKpvXQcqCkrR7MSGqYnDRQ3/+8iGvVHrYIVRUsOQQOIzohUEX6LNtKBZ/jfooSo3kVq3gNyQ7+vaT9i0WcWmZ3qWZmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Rebase patches to 3.1.0:
- 0001-HttpDownloader-save-download-tarball-to-distdir.patch
- 0001-fix-unzip-command-not-found.patch
- 0001-python3.patch

Drop backport patch:
- 0001-Rename-gettid-functions.patch

Tweak options according to [1]
[1] https://docs.bazel.build/versions/master/install-compile-source.html#bootstrap-unix-bootstrap

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...native_0.21.0.bb => bazel-native_3.1.0.bb} |   7 +-
 ...der-save-download-tarball-to-distdir.patch | 119 ++++++++++--------
 .../files/0001-Rename-gettid-functions.patch  |  65 ----------
 .../0001-fix-unzip-command-not-found.patch    |  20 +--
 .../bazel/files/0001-python3.patch            |  32 ++---
 5 files changed, 95 insertions(+), 148 deletions(-)
 rename recipes-devtools/bazel/{bazel-native_0.21.0.bb => bazel-native_3.1.0.bb} (77%)
 delete mode 100644 recipes-devtools/bazel/files/0001-Rename-gettid-functions.patch

diff --git a/recipes-devtools/bazel/bazel-native_0.21.0.bb b/recipes-devtools/bazel/bazel-native_3.1.0.bb
similarity index 77%
rename from recipes-devtools/bazel/bazel-native_0.21.0.bb
rename to recipes-devtools/bazel/bazel-native_3.1.0.bb
index f1baa33..f3efde1 100644
--- a/recipes-devtools/bazel/bazel-native_0.21.0.bb
+++ b/recipes-devtools/bazel/bazel-native_3.1.0.bb
@@ -2,12 +2,11 @@ DESCRIPTION = "Bazel build and test tool"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
-SRC_URI[md5sum] = "8c8240b178a35c0f3c1bc03017550270"
-SRC_URI[sha256sum] = "6ccb831e683179e0cfb351cb11ea297b4db48f9eab987601c038aa0f83037db4"
+SRC_URI[md5sum] = "381ca27503c566ce5e489d1ba07d1d25"
+SRC_URI[sha256sum] = "d7f40d0cac95a06cea6cb5b7f7769085257caebc3ee84269dd9298da760d5615"
 
 SRC_URI = "https://github.com/bazelbuild/bazel/releases/download/${PV}/bazel-${PV}-dist.zip \
            file://0001-HttpDownloader-save-download-tarball-to-distdir.patch \
-           file://0001-Rename-gettid-functions.patch \
            file://0001-fix-unzip-command-not-found.patch \
            file://0001-python3.patch \
 "
@@ -30,7 +29,7 @@ do_compile () {
     export JAVA_HOME="${STAGING_LIBDIR_NATIVE}/jvm/openjdk-8-native"
     TMPDIR="${TOPDIR}/bazel" \
     VERBOSE=yes \
-    EXTRA_BAZEL_ARGS="--distdir=${TS_DL_DIR} --python_path=python3" \
+    EXTRA_BAZEL_ARGS="--host_javabase=@local_jdk//:jdk --python_path=python3" \
     ./compile.sh
 }
 
diff --git a/recipes-devtools/bazel/files/0001-HttpDownloader-save-download-tarball-to-distdir.patch b/recipes-devtools/bazel/files/0001-HttpDownloader-save-download-tarball-to-distdir.patch
index 605756a..cdc270d 100644
--- a/recipes-devtools/bazel/files/0001-HttpDownloader-save-download-tarball-to-distdir.patch
+++ b/recipes-devtools/bazel/files/0001-HttpDownloader-save-download-tarball-to-distdir.patch
@@ -1,6 +1,6 @@
-From e31a37bc9cb53de5085e885b190652f994209cf6 Mon Sep 17 00:00:00 2001
+From 7225fc4a62a06b654fe7d04a2446a594888a7b8c Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Tue, 23 Apr 2019 05:21:40 -0400
+Date: Tue, 8 Dec 2020 10:58:52 +0800
 Subject: [PATCH] HttpDownloader: save download tarball to distdir
 
 It is helpful for collecting tarball url which supports offline build.
@@ -9,62 +9,75 @@ Upstream-Status: Inappropriate [oe specific]
 
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
 ---
- .../repository/downloader/HttpDownloader.java      | 50 ++++++++++++++--------
- 1 file changed, 32 insertions(+), 18 deletions(-)
+ .../downloader/DownloadManager.java           | 62 ++++++++++++-------
+ 1 file changed, 38 insertions(+), 24 deletions(-)
 
-diff --git a/src/main/java/com/google/devtools/build/lib/bazel/repository/downloader/HttpDownloader.java b/src/main/java/com/google/devtools/build/lib/bazel/repository/downloader/HttpDownloader.java
-index 18d10d2..cf71ac4 100755
---- a/src/main/java/com/google/devtools/build/lib/bazel/repository/downloader/HttpDownloader.java
-+++ b/src/main/java/com/google/devtools/build/lib/bazel/repository/downloader/HttpDownloader.java
-@@ -204,26 +204,29 @@ public class HttpDownloader {
+diff --git a/src/main/java/com/google/devtools/build/lib/bazel/repository/downloader/DownloadManager.java b/src/main/java/com/google/devtools/build/lib/bazel/repository/downloader/DownloadManager.java
+index a89077e..ccaadb3 100755
+--- a/src/main/java/com/google/devtools/build/lib/bazel/repository/downloader/DownloadManager.java
++++ b/src/main/java/com/google/devtools/build/lib/bazel/repository/downloader/DownloadManager.java
+@@ -152,33 +152,36 @@ public class DownloadManager {
+         } else if (!dir.isDirectory()) {
            eventHandler.handle(Event.warn("distdir " + dir + " is not a directory"));
          } else {
-           boolean match = false;
--          Path candidate = dir.getRelative(destination.getBaseName());
--          try {
--            match = RepositoryCache.getChecksum(KeyType.SHA256, candidate).equals(sha256);
--          } catch (IOException e) {
--            // Not finding anything in a distdir is a normal case, so handle it absolutely
--            // quietly. In fact, it is not uncommon to specify a whole list of dist dirs,
--            // with the asumption that only one will contain an entry.
--          }
--          if (match) {
--            if (isCachingByProvidedSha256) {
--              try {
--                repositoryCache.put(sha256, candidate, KeyType.SHA256);
--              } catch (IOException e) {
--                eventHandler.handle(
--                    Event.warn("Failed to copy " + candidate + " to repository cache: " + e));
-+          String[] basenames = {destination.getBaseName(), destination.getBaseName()+"_"+sha256};
-+          for (String basename: basenames) {
-+            Path candidate = dir.getRelative(basename);
-+            try {
-+              match = RepositoryCache.getChecksum(KeyType.SHA256, candidate).equals(sha256);
-+            } catch (IOException e) {
-+              // Not finding anything in a distdir is a normal case, so handle it absolutely
-+              // quietly. In fact, it is not uncommon to specify a whole list of dist dirs,
-+              // with the asumption that only one will contain an entry.
-+            }
-+            if (match) {
-+              if (isCachingByProvidedSha256) {
-+                try {
-+                  repositoryCache.put(sha256, candidate, KeyType.SHA256);
-+                } catch (IOException e) {
-+                  eventHandler.handle(
-+                      Event.warn("Failed to copy " + candidate + " to repository cache: " + e));
-+                }
+-          for (String name : candidateFileNames) {
++          for (String candidateFileName : candidateFileNames) {
+             boolean match = false;
+-            Path candidate = dir.getRelative(name);
+-            try {
+-              eventHandler.post(
+-                  new CacheProgress(
+-                      mainUrl.toString(), "Checking " + cacheKeyType + " of " + candidate));
+-              match = RepositoryCache.getChecksum(cacheKeyType, candidate).equals(cacheKey);
+-            } catch (IOException e) {
+-              // Not finding anything in a distdir is a normal case, so handle it absolutely
+-              // quietly. In fact, it is common to specify a whole list of dist dirs,
+-              // with the assumption that only one will contain an entry.
+-            } finally {
+-              eventHandler.post(new CacheProgress(mainUrl.toString()));
+-            }
+-            if (match) {
+-              if (isCachingByProvidedChecksum) {
+-                try {
+-                  repositoryCache.put(cacheKey, candidate, cacheKeyType, canonicalId);
+-                } catch (IOException e) {
+-                  eventHandler.handle(
+-                      Event.warn("Failed to copy " + candidate + " to repository cache: " + e));
++            String[] names = {candidateFileName, candidateFileName+"_"+cacheKey};
++            for (String name: names) {
++              Path candidate = dir.getRelative(name);
++              try {
++                eventHandler.post(
++                    new CacheProgress(
++                        mainUrl.toString(), "Checking " + cacheKeyType + " of " + candidate));
++                match = RepositoryCache.getChecksum(cacheKeyType, candidate).equals(cacheKey);
++              } catch (IOException e) {
++                // Not finding anything in a distdir is a normal case, so handle it absolutely
++                // quietly. In fact, it is common to specify a whole list of dist dirs,
++                // with the assumption that only one will contain an entry.
++              } finally {
++                eventHandler.post(new CacheProgress(mainUrl.toString()));
++              }
++              if (match) {
++                if (isCachingByProvidedChecksum) {
++                  try {
++                    repositoryCache.put(cacheKey, candidate, cacheKeyType, canonicalId);
++                  } catch (IOException e) {
++                    eventHandler.handle(
++                        Event.warn("Failed to copy " + candidate + " to repository cache: " + e));
++                  }
+                 }
++                FileSystemUtils.createDirectoryAndParents(destination.getParentDirectory());
++                FileSystemUtils.copyFile(candidate, destination);
++                return destination;
                }
-+              FileSystemUtils.createDirectoryAndParents(destination.getParentDirectory());
-+              FileSystemUtils.copyFile(candidate, destination);
-+              return destination;
+-              FileSystemUtils.createDirectoryAndParents(destination.getParentDirectory());
+-              FileSystemUtils.copyFile(candidate, destination);
+-              return destination;
              }
--            FileSystemUtils.createDirectoryAndParents(destination.getParentDirectory());
--            FileSystemUtils.copyFile(candidate, destination);
--            return destination;
            }
          }
-       }
-@@ -264,6 +267,17 @@ public class HttpDownloader {
+@@ -200,6 +203,17 @@ public class DownloadManager {
        eventHandler.handle(Event.info("SHA256 (" + urls.get(0) + ") = " + newSha256));
      }
  
@@ -73,7 +86,7 @@ index 18d10d2..cf71ac4 100755
 +        FileSystemUtils.createDirectoryAndParents(dir);
 +
 +      if (dir.isDirectory()) {
-+        Path dl_mirror = dir.getRelative(destination.getBaseName()+"_"+sha256);
++        Path dl_mirror = dir.getRelative(destination.getBaseName()+"_"+checksum.get().toString());
 +        if (!dl_mirror.exists())
 +            FileSystemUtils.copyFile(destination, dl_mirror);
 +      }
@@ -83,5 +96,5 @@ index 18d10d2..cf71ac4 100755
    }
  
 -- 
-2.8.1
+2.18.2
 
diff --git a/recipes-devtools/bazel/files/0001-Rename-gettid-functions.patch b/recipes-devtools/bazel/files/0001-Rename-gettid-functions.patch
deleted file mode 100644
index ca37531..0000000
--- a/recipes-devtools/bazel/files/0001-Rename-gettid-functions.patch
+++ /dev/null
@@ -1,65 +0,0 @@
-From a0b885aeb95a7ae9e93aea303a1edde74f71edac Mon Sep 17 00:00:00 2001
-From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Fri, 3 Apr 2020 10:25:49 +0800
-Subject: [PATCH] Rename gettid() functions.
-
-glibc 2.30 will declare its own gettid; see
-https://sourceware.org/git/?p=glibc.git;a=commit;h=1d0fc213824eaa2a8f8c4385daaa698ee8fb7c92.
-Rename the grpc versions to avoid naming conflicts.
-
-Signed-off-by: Benjamin Peterson <benjamin@dropbox.com>
-Upstream-Status: Backport [https://github.com/grpc/grpc/commit/57586a1ca7f17b1916aed3dea4ff8de872dbf853]
-
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
----
- third_party/grpc/src/core/support/log_linux.c | 4 ++--
- third_party/grpc/src/core/support/log_posix.c | 4 ++--
- 2 files changed, 4 insertions(+), 4 deletions(-)
-
-diff --git a/third_party/grpc/src/core/support/log_linux.c b/third_party/grpc/src/core/support/log_linux.c
-index 93a0c1b..367c921 100755
---- a/third_party/grpc/src/core/support/log_linux.c
-+++ b/third_party/grpc/src/core/support/log_linux.c
-@@ -54,7 +54,7 @@
- #include <sys/syscall.h>
- #include <unistd.h>
- 
--static long gettid(void) { return syscall(__NR_gettid); }
-+static long sys_gettid(void) { return syscall(__NR_gettid); }
- 
- void gpr_log(const char *file, int line, gpr_log_severity severity,
-              const char *format, ...) {
-@@ -95,7 +95,7 @@ void gpr_default_log(gpr_log_func_args *args) {
- 
-   gpr_asprintf(&prefix, "%s%s.%09d %7tu %s:%d]",
-                gpr_log_severity_string(args->severity), time_buffer,
--               (int)(now.tv_nsec), gettid(), display_file, args->line);
-+               (int)(now.tv_nsec), sys_gettid(), display_file, args->line);
- 
-   fprintf(stderr, "%-60s %s\n", prefix, args->message);
-   gpr_free(prefix);
-diff --git a/third_party/grpc/src/core/support/log_posix.c b/third_party/grpc/src/core/support/log_posix.c
-index 3ff171f..f0420a7 100755
---- a/third_party/grpc/src/core/support/log_posix.c
-+++ b/third_party/grpc/src/core/support/log_posix.c
-@@ -45,7 +45,7 @@
- #include <time.h>
- #include <pthread.h>
- 
--static intptr_t gettid(void) { return (intptr_t)pthread_self(); }
-+static intptr_t sys_gettid(void) { return (intptr_t)pthread_self(); }
- 
- void gpr_log(const char *file, int line, gpr_log_severity severity,
-              const char *format, ...) {
-@@ -95,7 +95,7 @@ void gpr_default_log(gpr_log_func_args *args) {
- 
-   fprintf(stderr, "%s%s.%09d %7tu %s:%d] %s\n",
-           gpr_log_severity_string(args->severity), time_buffer,
--          (int)(now.tv_nsec), gettid(), display_file, args->line,
-+          (int)(now.tv_nsec), sys_gettid(), display_file, args->line,
-           args->message);
- }
- 
--- 
-2.17.1
-
diff --git a/recipes-devtools/bazel/files/0001-fix-unzip-command-not-found.patch b/recipes-devtools/bazel/files/0001-fix-unzip-command-not-found.patch
index 9fc7f03..eccc34a 100644
--- a/recipes-devtools/bazel/files/0001-fix-unzip-command-not-found.patch
+++ b/recipes-devtools/bazel/files/0001-fix-unzip-command-not-found.patch
@@ -1,6 +1,6 @@
-From e00e75dc8bc3c1153633e1ba7cb98a0a58658e86 Mon Sep 17 00:00:00 2001
+From 23e2aff67a03127572641c7286e306c2a20990e2 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Sat, 4 Apr 2020 12:48:01 +0800
+Date: Tue, 8 Dec 2020 11:05:13 +0800
 Subject: [PATCH] fix unzip: command not found
 
 If host does not provide unzip, build bazel will fail even though
@@ -18,18 +18,18 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/main/java/com/google/devtools/build/lib/bazel/rules/BazelRuleClassProvider.java b/src/main/java/com/google/devtools/build/lib/bazel/rules/BazelRuleClassProvider.java
-index fc4aad75..e1686732 100755
+index 16252df..e7cd609 100755
 --- a/src/main/java/com/google/devtools/build/lib/bazel/rules/BazelRuleClassProvider.java
 +++ b/src/main/java/com/google/devtools/build/lib/bazel/rules/BazelRuleClassProvider.java
-@@ -420,7 +420,7 @@ public class BazelRuleClassProvider {
-     // from the local machine. For now, this can be overridden with --action_env=PATH=<value>, so
-     // at least there's a workaround.
-     if (os != OS.WINDOWS) {
--      return "/bin:/usr/bin";
+@@ -469,7 +469,7 @@ public class BazelRuleClassProvider {
+       // Note that --action_env does not propagate to the host config, so it is not a viable
+       // workaround when a genrule is itself built in the host config (e.g. nested genrules). See
+       // #8536.
+-      return "/bin:/usr/bin:/usr/local/bin";
 +      return System.getenv("PATH");
      }
  
-     // Attempt to compute the MSYS root (the real Windows path of "/") from `sh`.
+     String newPath = "";
 -- 
-2.17.1
+2.18.2
 
diff --git a/recipes-devtools/bazel/files/0001-python3.patch b/recipes-devtools/bazel/files/0001-python3.patch
index 50eaaf4..93eee2d 100644
--- a/recipes-devtools/bazel/files/0001-python3.patch
+++ b/recipes-devtools/bazel/files/0001-python3.patch
@@ -1,6 +1,6 @@
-From f3dcad42a53e78efdb87adbc98121dc66b53ec5f Mon Sep 17 00:00:00 2001
+From e43263d6163f7ba1622b268e93635bf42493f758 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Sun, 5 Apr 2020 23:40:31 +0800
+Date: Tue, 8 Dec 2020 11:09:44 +0800
 Subject: [PATCH] set python3 interpreter
 
 Since many distrobution choose python3, and drop python2,
@@ -20,28 +20,28 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  2 files changed, 2 insertions(+), 2 deletions(-)
 
 diff --git a/src/main/java/com/google/devtools/build/lib/bazel/rules/python/BazelPythonSemantics.java b/src/main/java/com/google/devtools/build/lib/bazel/rules/python/BazelPythonSemantics.java
-index 0ff5d15..997cfc9 100755
+index 2c0ae4d..ae39cc9 100755
 --- a/src/main/java/com/google/devtools/build/lib/bazel/rules/python/BazelPythonSemantics.java
 +++ b/src/main/java/com/google/devtools/build/lib/bazel/rules/python/BazelPythonSemantics.java
-@@ -185,7 +185,7 @@ public class BazelPythonSemantics implements PythonSemantics {
-                 .addOutput(executable)
-                 .setShellCommand(
-                     shExecutable,
--                    "echo '#!/usr/bin/env python' | cat - "
-+                    "echo '#!/usr/bin/env python3' | cat - "
-                         + zipFile.getExecPathString()
-                         + " > "
-                         + executable.getExecPathString())
+@@ -237,7 +237,7 @@ public class BazelPythonSemantics implements PythonSemantics {
+         PathFragment shExecutable = ShToolchain.getPathOrError(ruleContext);
+         // TODO(#8685): Remove this special-case handling as part of making the proper shebang a
+         // property of the Python toolchain configuration.
+-        String pythonExecutableName = OS.getCurrent() == OS.OPENBSD ? "python3" : "python";
++        String pythonExecutableName = OS.getCurrent() == OS.OPENBSD ? "python3" : "python3";
+         ruleContext.registerAction(
+             new SpawnAction.Builder()
+                 .addInput(zipFile)
 diff --git a/src/main/java/com/google/devtools/build/lib/bazel/rules/python/python_stub_template.txt b/src/main/java/com/google/devtools/build/lib/bazel/rules/python/python_stub_template.txt
-index 129ce90..959e3a5 100755
+index 59c00e8..31d29a4 100755
 --- a/src/main/java/com/google/devtools/build/lib/bazel/rules/python/python_stub_template.txt
 +++ b/src/main/java/com/google/devtools/build/lib/bazel/rules/python/python_stub_template.txt
 @@ -1,4 +1,4 @@
 -#!/usr/bin/env python
 +#!/usr/bin/env python3
  
- import os
- import re
+ from __future__ import absolute_import
+ from __future__ import division
 -- 
-2.17.1
+2.18.2
 
-- 
2.21.0

