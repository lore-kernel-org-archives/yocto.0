Return-Path: <Rongqing.Li@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB90E007B5
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 21:30:56 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s1B5Utnv003133
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 21:30:55 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Mon, 10 Feb 2014 21:30:55 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 11 Feb 2014 13:31:43 +0800
Message-ID: <5ba0d0921d238df5fb1ba73c8fd767f1310c4b84.1392096379.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1392096379.git.rongqing.li@windriver.com>
References: <cover.1392096379.git.rongqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] refpolicy: make proftpd be able to work
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
X-List-Received-Date: Tue, 11 Feb 2014 05:31:02 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 ...y-policy-ftp-make-proftpd-be-able-to-work.patch |   85 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 86 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-ftp-make-proftpd-be-able-to-work.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-ftp-make-proftpd-be-able-to-work.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-ftp-make-proftpd-be-able-to-work.patch
new file mode 100644
index 0000000..9521fcf
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-ftp-make-proftpd-be-able-to-work.patch
@@ -0,0 +1,85 @@
+ftp: make proftpd be able to work
+
+Upstream-Status: pending
+
+1. proftpd need not to access and communicate with avahi, so dontaudit them
+2. ftpd_t is transited to mls_systemhigh, the running created files under
+/var/run is in mls_systemlow, so put ftpd_t to write_all_levels  
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ policy/modules/contrib/avahi.if |   40 +++++++++++++++++++++++++++++++++++++++
+ policy/modules/contrib/ftp.te   |    6 ++++++
+ 2 files changed, 46 insertions(+)
+
+diff --git a/policy/modules/contrib/avahi.if b/policy/modules/contrib/avahi.if
+index aebe7cb..0e7a748 100644
+--- a/policy/modules/contrib/avahi.if
++++ b/policy/modules/contrib/avahi.if
+@@ -135,6 +135,46 @@ interface(`avahi_dontaudit_search_pid',`
+ 
+ ########################################
+ ## <summary>
++##	Do not audit attempts to rw 
++##	avahi var directories.
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain to not audit.
++##	</summary>
++## </param>
++#
++interface(`avahi_dontaudit_rw_var',`
++	gen_require(`
++		type avahi_var_run_t;
++	')
++
++	dontaudit $1 avahi_var_run_t:file rw_term_perms;
++')
++
++
++########################################
++## <summary>
++##	Do not audit attempts to connectto 
++##	avahi unix socket.
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain to not audit.
++##	</summary>
++## </param>
++#
++interface(`avahi_dontaudit_connectto',`
++	gen_require(`
++		type avahi_t;
++	')
++
++	dontaudit $1 avahi_t:unix_stream_socket connectto;
++')
++
++
++########################################
++## <summary>
+ ##	All of the rules required to
+ ##	administrate an avahi environment.
+ ## </summary>
+diff --git a/policy/modules/contrib/ftp.te b/policy/modules/contrib/ftp.te
+index 544c512..12492d2 100644
+--- a/policy/modules/contrib/ftp.te
++++ b/policy/modules/contrib/ftp.te
+@@ -144,6 +144,12 @@ role ftpdctl_roles types ftpdctl_t;
+ type ftpdctl_tmp_t;
+ files_tmp_file(ftpdctl_tmp_t)
+ 
++mls_file_write_all_levels(ftpd_t)
++
++avahi_dontaudit_connectto(ftpd_t)
++
++avahi_dontaudit_rw_var(ftpd_t)
++
+ type sftpd_t;
+ domain_type(sftpd_t)
+ role system_r types sftpd_t;
+-- 
+1.7.10.4
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 5d55030..422c974 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -53,6 +53,7 @@ SRC_URI += "file://poky-policy-fix-xconsole_device_t-as-a-dev_node.patch \
             file://hostname-do-not-audit-attempts-by-hostname-to-read-a.patch \
             file://sysnetwork-dhcpc-binds-socket-to-random-high-udp-por.patch \
             file://portmap-allow-portmap-to-create-socket.patch \
+            file://poky-policy-ftp-make-proftpd-be-able-to-work.patch \
            "
 
 # Backport from upstream
-- 
1.7.10.4


