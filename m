Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D73BE00D32; Thu, 18 Apr 2019 23:10:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EFAFE00AC5
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2019 23:10:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x3J6AplZ024221
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2019 23:10:51 -0700 (PDT)
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Thu, 18 Apr 2019 23:10:50 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 19 Apr 2019 14:10:48 +0800
Message-ID: <1555654248-5791-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-selinux][PATCH] refpolicy: refresh patches
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Apr 2019 06:10:53 -0000
Content-Type: text/plain

Refrefsh 0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
and 0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch.
Remove the trailing line: \ No newline at end of file

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...y-minimum-audit-logging-getty-audit-related-.patch |  1 -
 ...y-minimum-systemd-mount-logging-authlogin-ad.patch | 19 ++++++++-----------
 ...y-minimum-audit-logging-getty-audit-related-.patch |  1 -
 ...y-minimum-systemd-mount-logging-authlogin-ad.patch | 19 ++++++++-----------
 4 files changed, 16 insertions(+), 24 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
index f92ddb8..10d2bcb 100644
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
@@ -62,7 +62,6 @@ index 63e92a8e..8ab46925 100644
 +allow auditd_t initrc_t:unix_dgram_socket sendto;
 +
 +allow klogd_t initrc_t:unix_dgram_socket sendto;
-\ No newline at end of file
 -- 
 2.19.1
 
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
index 98b6156..65ef55b 100644
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
@@ -33,13 +33,13 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
  policy/modules/system/authlogin.te | 2 ++
- policy/modules/system/logging.te   | 7 ++++++-
+ policy/modules/system/logging.te   | 5 +++++
  policy/modules/system/mount.te     | 3 +++
  policy/modules/system/systemd.te   | 5 +++++
- 4 files changed, 16 insertions(+), 1 deletion(-)
+ 4 files changed, 15 insertions(+)
 
 diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/authlogin.te
-index 345e07f3..39f860e0 100644
+index 345e07f..39f860e 100644
 --- a/policy/modules/system/authlogin.te
 +++ b/policy/modules/system/authlogin.te
 @@ -472,3 +472,5 @@ optional_policy(`
@@ -49,23 +49,20 @@ index 345e07f3..39f860e0 100644
 +
 +allow chkpwd_t proc_t:filesystem getattr;
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 8ab46925..520f7da6 100644
+index c9991ab..520f7da 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -627,4 +627,9 @@ allow auditd_t tmpfs_t:file { getattr setattr create open read append };
- allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
+@@ -628,3 +628,8 @@ allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
  allow auditd_t initrc_t:unix_dgram_socket sendto;
  
--allow klogd_t initrc_t:unix_dgram_socket sendto;
-\ No newline at end of file
-+allow klogd_t initrc_t:unix_dgram_socket sendto;
+ allow klogd_t initrc_t:unix_dgram_socket sendto;
 +
 +allow syslogd_t self:shm create;
 +allow syslogd_t self:sem { create read unix_write write };
 +allow syslogd_t self:shm { read unix_read unix_write write };
 +allow syslogd_t tmpfs_t:file { read write };
 diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
-index 3dcb8493..a87d0e82 100644
+index 3dcb849..a87d0e8 100644
 --- a/policy/modules/system/mount.te
 +++ b/policy/modules/system/mount.te
 @@ -231,3 +231,6 @@ optional_policy(`
@@ -76,7 +73,7 @@ index 3dcb8493..a87d0e82 100644
 +allow mount_t proc_t:filesystem getattr;
 +allow mount_t initrc_t:udp_socket { read write };
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index a6f09dfd..68b80de3 100644
+index a6f09df..68b80de 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
 @@ -993,6 +993,11 @@ allow systemd_tmpfiles_t systemd_journal_t:file { relabelfrom relabelto };
diff --git a/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch b/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
index 3cc5395..517782d 100644
--- a/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
+++ b/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
@@ -62,7 +62,6 @@ index e6221a02..4cc73327 100644
 +allow auditd_t initrc_t:unix_dgram_socket sendto;
 +
 +allow klogd_t initrc_t:unix_dgram_socket sendto;
-\ No newline at end of file
 -- 
 2.19.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch b/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
index 06b9192..5132cd8 100644
--- a/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
+++ b/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
@@ -33,13 +33,13 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
  policy/modules/system/authlogin.te | 2 ++
- policy/modules/system/logging.te   | 7 ++++++-
+ policy/modules/system/logging.te   | 5 +++++
  policy/modules/system/mount.te     | 3 +++
  policy/modules/system/systemd.te   | 5 +++++
- 4 files changed, 16 insertions(+), 1 deletion(-)
+ 4 files changed, 15 insertions(+)
 
 diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/authlogin.te
-index 28f74bac..dfa46612 100644
+index 28f74ba..dfa4661 100644
 --- a/policy/modules/system/authlogin.te
 +++ b/policy/modules/system/authlogin.te
 @@ -479,3 +479,5 @@ optional_policy(`
@@ -49,23 +49,20 @@ index 28f74bac..dfa46612 100644
 +
 +allow chkpwd_t proc_t:filesystem getattr;
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 4cc73327..98c2bd19 100644
+index 541f5c6..98c2bd1 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -627,4 +627,9 @@ allow auditd_t tmpfs_t:file { getattr setattr create open read append };
- allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
+@@ -628,3 +628,8 @@ allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
  allow auditd_t initrc_t:unix_dgram_socket sendto;
  
--allow klogd_t initrc_t:unix_dgram_socket sendto;
-\ No newline at end of file
-+allow klogd_t initrc_t:unix_dgram_socket sendto;
+ allow klogd_t initrc_t:unix_dgram_socket sendto;
 +
 +allow syslogd_t self:shm create;
 +allow syslogd_t self:sem { create read unix_write write };
 +allow syslogd_t self:shm { read unix_read unix_write write };
 +allow syslogd_t tmpfs_t:file { read write };
 diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
-index 3dcb8493..a87d0e82 100644
+index 3dcb849..a87d0e8 100644
 --- a/policy/modules/system/mount.te
 +++ b/policy/modules/system/mount.te
 @@ -231,3 +231,6 @@ optional_policy(`
@@ -76,7 +73,7 @@ index 3dcb8493..a87d0e82 100644
 +allow mount_t proc_t:filesystem getattr;
 +allow mount_t initrc_t:udp_socket { read write };
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index f6455f6f..b13337b9 100644
+index f6455f6..b13337b 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
 @@ -1011,6 +1011,11 @@ allow systemd_tmpfiles_t systemd_journal_t:file { relabelfrom relabelto };
-- 
2.7.4


