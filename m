Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43806E00AE6
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:07:57 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2P17u6f006789
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:07:56 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Mon, 24 Mar 2014 18:07:56 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>, <Joe.MacDonald@windriver.com>
Date: Mon, 24 Mar 2014 21:07:48 -0400
Message-ID: <3bb1e5b71e9adf2bbffc4c6c73a2469d0a49f7cb.1395709062.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1395709062.git.wenzong.fan@windriver.com>
References: <cover.1395709062.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/4] refpolicy: add rules for /var/log symlink on poky
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
X-List-Received-Date: Tue, 25 Mar 2014 01:07:57 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |   30 ++++++++++++++++++++
 ...rules-for-var-log-symlink-audisp_remote_t.patch |   29 +++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    2 ++
 3 files changed, 61 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-syslogd_t-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-syslogd_t-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-syslogd_t-symlink.patch
new file mode 100644
index 0000000..aa9734a
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-syslogd_t-symlink.patch
@@ -0,0 +1,30 @@
+Subject: [PATCH] add rules for the symlink of /var/log - syslogd_t
+
+We have added rules for the symlink of /var/log in logging.if,
+while syslogd_t uses /var/log but does not use the
+interfaces in logging.if. So still need add a individual rule for
+syslogd_t.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/logging.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 2ad9ea5..70427d8 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -384,6 +384,8 @@ rw_fifo_files_pattern(syslogd_t, var_log_t, var_log_t)
+ # Allow access for syslog-ng
+ allow syslogd_t var_log_t:dir { create setattr };
+ 
++allow syslogd_t var_log_t:lnk_file read_lnk_file_perms;
++
+ # manage temporary files
+ manage_dirs_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
+ manage_files_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
new file mode 100644
index 0000000..cbf0f7d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
@@ -0,0 +1,29 @@
+Subject: [PATCH] add rules for the symlink of /var/log - audisp_remote_t
+
+We have added rules for the symlink of /var/log in logging.if,
+while audisp_remote_t uses /var/log but does not use the
+interfaces in logging.if. So still need add a individual rule for
+audisp_remote_t.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/logging.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 8426a49..2ad9ea5 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -262,6 +262,7 @@ allow audisp_remote_t self:capability { setuid setpcap };
+ allow audisp_remote_t self:process { getcap setcap };
+ allow audisp_remote_t self:tcp_socket create_socket_perms;
+ allow audisp_remote_t var_log_t:dir search_dir_perms;
++allow audisp_remote_t var_log_t:lnk_file read_lnk_file_perms;
+ 
+ manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
+ manage_files_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 08ed04c..c3c7732 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -37,6 +37,8 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
 SRC_URI += "file://poky-policy-add-syslogd_t-to-trusted-object.patch \
             file://poky-policy-add-rules-for-var-log-symlink.patch \
             file://poky-policy-add-rules-for-var-log-symlink-apache.patch \
+            file://poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch \
+            file://poky-policy-add-rules-for-syslogd_t-symlink.patch \
             file://poky-policy-add-rules-for-var-cache-symlink.patch \
             file://poky-policy-add-rules-for-tmp-symlink.patch \
             file://poky-policy-add-rules-for-bsdpty_device_t.patch \
-- 
1.7.9.5


