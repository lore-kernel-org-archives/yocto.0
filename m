Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D31EE0049D
	for <yocto@yoctoproject.org>; Sat, 25 Aug 2012 23:13:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q7Q6DB0j025809
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sat, 25 Aug 2012 23:13:11 -0700 (PDT)
Received: from localhost.localdomain (128.224.163.124) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Sat, 25 Aug 2012 23:13:10 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sun, 26 Aug 2012 14:18:36 +0800
Message-ID: <ab4cc4d0fb71b34633c9b0503b1845785598127c.1345961757.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.11.2
In-Reply-To: <cover.1345961757.git.liezhi.yang@windriver.com>
References: <cover.1345961757.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] local.conf.sample.extended: update the sample for archiver.bbclass
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 26 Aug 2012 06:13:11 -0000
Content-Type: text/plain

Update archiver.bbclass' sample, make it easier to understand.

[YOCTO #2619]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended | 50 ++++++++++++++++--------------
 1 file changed, 27 insertions(+), 23 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 36f1294..de46911 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -182,32 +182,36 @@
 # when the disk space reduces 50M (or the amount of inode reduces 5k).
 #BB_DISKMON_WARNINTERVAL = "50M,5K"
 
-# Archiving source code configuration
-#
-# The following variables control which files to archive and the type to archive to generate.
-# There are three basic class defintions of common operations that might be desired and these
-# can be enabled by uncommenting one of the following lines:
-#
-# INHERIT += "archive-original-source"
-# INHERIT += "archive-patched-source"
-#INHERIT =+ "archive-configured-source"
-#
-# Type of archive:
-# SOURCE_ARCHIVE_PACKAGE_TYPE = 'srpm'
-#SOURCE_ARCHIVE_PACKAGE_TYPE ?= 'tar'
-#
-# Whether to include WORKDIR/temp, .bb and .inc files:
-# 'logs_with_scripts' include WORKDIR/temp directory and .bb and .inc files
-# 'logs' only include WORKDIR/temp
-# ARCHIVER_MODE[log_type] = "logs logs_with_scripts"
-# There are three basic class defintions of common operations 
-# that might be desired and these can be enabled by 
-# uncommenting five of the following lines:
-# ARCHIVER_MODE[filter] ?= "yes no"
-# Filter packages according to license
+# Archiving source code, configure what kind of sources will be archived
+# and the output format. The output files will be put in
+# ${DEPLOY_DIR}/sources/.
+#
+# You can add the following 3 lines to the conf file to get a quick
+# usage:
+#ARCHIVER_MODE ?= "original"
+#ARCHIVER_CLASS = "${@'archive-${ARCHIVER_MODE}-source' if ARCHIVER_MODE != 'none' else ''}"
+#INHERIT += "${ARCHIVER_CLASS}"
+#
+# Detailed configuration:
+# What kind of sources will be archived, the ARCHIVER_MODE could be:
+# original: the ${S} after do_unpack
+# patched : the ${S} after do_patch
+# configured: the ${S} after do_configure
 #ARCHIVER_MODE ?= "original"
+#
+# The output format type, tar or srpm, the default is "tar".
 #ARCHIVER_MODE[type] ?= "tar"
+#
+# Whether include the log file under ${T} and the recipe (.bb and .inc),
+# the default is "logs_with_scripts".
 #ARCHIVER_MODE[log_type] ?= "logs_with_scripts"
+#
+# license filter:
+# yes: Only the COPYLEFT_LICENSE_INCLUDE recipe will be archived
+# no: All kinds lof license will be archived
+# The default is "no"
 #ARCHIVER_MODE[filter] ?= "no"
+#
+# Put the following two lines in the conf file with intact.
 #ARCHIVER_CLASS = "${@'archive-${ARCHIVER_MODE}-source' if ARCHIVER_MODE != 'none' else ''}"
 #INHERIT += "${ARCHIVER_CLASS}"
-- 
1.7.11.2


