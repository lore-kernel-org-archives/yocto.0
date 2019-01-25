Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE8C4E00C58; Thu, 24 Jan 2019 23:41:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	NUMERIC_HTTP_ADDR, RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	*  1.2 NUMERIC_HTTP_ADDR URI: Uses a numeric IP address in URL
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01AB6E00BE8
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 23:40:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0P7dtgu006569
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 24 Jan 2019 23:40:06 -0800
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Thu, 24 Jan 2019 23:39:45 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <yocto@yoctoproject.org>
Date: Fri, 25 Jan 2019 15:39:40 +0800
Message-ID: <1548401981-18083-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 1/2] refpolicy: upgrade 2.20170204 -> 2.20180701
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
X-List-Received-Date: Fri, 25 Jan 2019 07:41:00 -0000
Content-Type: text/plain

* Update SRC_URI

* Rebase patches

* Remove the following patches since the issues had been fixed upstream:
    poky-fc-update-alternatives_sysklogd.patch
    poky-fc-mta.patch
    poky-fc-netutils.patch
    poky-fc-nscd.patch
    poky-fc-udevd.patch
    poky-fc-ftpwho-dir.patch
    poky-fc-corecommands.patch

* Add the following patches to fix file contexts and other issues:
    poky-fc-e2fsprogs.patch
    poky-fc-nologin.patch
    poky-fc-fix-real-path_brctl.patch
    poky-fc-openldap.patch
    poky-fc-kerberos.patch
    poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch
    poky-policy-kernel_t-mls-trusted-for-setting-process.patch
    0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../refpolicy-2.20170204/poky-fc-clock.patch       |  20 --
 .../poky-fc-corecommands.patch                     |  24 ---
 .../poky-fc-fix-real-path_login.patch              |  37 ----
 .../poky-fc-fix-real-path_resolv.conf.patch        |  24 ---
 .../poky-fc-fix-real-path_shadow.patch             |  34 ----
 .../refpolicy-2.20170204/poky-fc-fstools.patch     |  75 -------
 .../refpolicy-2.20170204/poky-fc-ftpwho-dir.patch  |  27 ---
 .../refpolicy-2.20170204/poky-fc-iptables.patch    |  24 ---
 .../refpolicy-2.20170204/poky-fc-mta.patch         |  27 ---
 .../refpolicy-2.20170204/poky-fc-netutils.patch    |  24 ---
 .../refpolicy-2.20170204/poky-fc-nscd.patch        |  25 ---
 .../refpolicy-2.20170204/poky-fc-su.patch          |  20 --
 .../refpolicy-2.20170204/poky-fc-sysnetwork.patch  |  48 -----
 .../refpolicy-2.20170204/poky-fc-udevd.patch       |  38 ----
 .../poky-fc-update-alternatives_bash.patch         |  24 ---
 .../poky-fc-update-alternatives_hostname.patch     |  21 --
 .../poky-fc-update-alternatives_sysklogd.patch     |  62 ------
 .../poky-fc-update-alternatives_sysvinit.patch     |  57 ------
 ...poky-policy-add-rules-for-var-log-symlink.patch | 185 -----------------
 ...-policy-allow-nfsd-to-exec-shell-commands.patch |  60 ------
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  37 ----
 .../refpolicy-2.20180701/poky-fc-clock.patch       |  25 +++
 .../poky-fc-dmesg.patch                            |  15 +-
 .../refpolicy-2.20180701/poky-fc-e2fsprogs.patch   |  47 +++++
 .../poky-fc-fix-bind.patch                         |  21 +-
 .../poky-fc-fix-real-path_brctl.patch              |  25 +++
 .../poky-fc-fix-real-path_login.patch              |  29 +++
 .../poky-fc-fix-real-path_resolv.conf.patch        |  29 +++
 .../poky-fc-fix-real-path_shadow.patch             |  49 +++++
 .../poky-fc-fix-real-path_su.patch                 |  17 +-
 .../refpolicy-2.20180701/poky-fc-fstools.patch     |  65 ++++++
 .../refpolicy-2.20180701/poky-fc-kerberos.patch    |  51 +++++
 .../refpolicy-2.20180701/poky-fc-nologin.patch     |  30 +++
 .../refpolicy-2.20180701/poky-fc-openldap.patch    |  41 ++++
 .../poky-fc-rpm.patch                              |  19 +-
 .../poky-fc-screen.patch                           |  21 +-
 .../poky-fc-ssh.patch                              |  18 +-
 .../poky-fc-subs_dist.patch                        |  18 +-
 .../refpolicy-2.20180701/poky-fc-sysnetwork.patch  |  38 ++++
 .../poky-fc-update-alternatives_bash.patch         |  27 +++
 .../poky-fc-update-alternatives_hostname.patch     |  25 +++
 .../poky-fc-update-alternatives_sysvinit.patch     |  53 +++++
 ...poky-policy-add-rules-for-bsdpty_device_t.patch |  59 ++----
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  18 +-
 .../poky-policy-add-rules-for-tmp-symlink.patch    |  69 ++-----
 ...ky-policy-add-rules-for-var-cache-symlink.patch |  17 +-
 ...licy-add-rules-for-var-log-symlink-apache.patch |  25 +--
 ...rules-for-var-log-symlink-audisp_remote_t.patch |  14 +-
 ...poky-policy-add-rules-for-var-log-symlink.patch | 106 ++++++++++
 ...ky-policy-add-syslogd_t-to-trusted-object.patch |   2 +-
 ...-policy-allow-nfsd-to-exec-shell-commands.patch |  29 +++
 ...-policy-allow-setfiles_t-to-read-symlinks.patch |  19 +-
 .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |  15 +-
 .../poky-policy-don-t-audit-tty_device_t.patch     |  17 +-
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  24 +++
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 125 +++---------
 ...poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch |  93 +++++----
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |  21 +-
 ...ky-policy-fix-seutils-manage-config-files.patch |   2 +-
 ...ky-policy-ftp-add-ftpd_t-to-mlsfilewrite.patch} |  23 ++-
 ...-kernel_t-mls-trusted-for-lowering-file-l.patch |  74 +++++++
 ...-kernel_t-mls-trusted-for-setting-process.patch |  43 ++++
 .../poky-policy-update-for-systemd.patch}          |  21 +-
 ...s_2.20170204.bb => refpolicy-mcs_2.20180701.bb} |   0
 ...inimum-systemd-unconfined-lib-add-systemd.patch |  45 +++--
 ...inimum-audit-logging-getty-audit-related-.patch |  19 +-
 ...inimum-systemd-mount-logging-authlogin-ad.patch |  42 ++--
 ...inimum-locallogin-add-allow-rules-for-typ.patch |  10 +-
 ...inimum-init-fix-reboot-with-systemd-as-in.patch |  12 +-
 ...inimum-systemd-mount-enable-requiried-ref.patch |  18 +-
 ...inimum-systemd-fix-for-login-journal-serv.patch |  35 ++--
 ...inimum-systemd-fix-for-systemd-tmp-files-.patch |  28 ++-
 ...-refpolicy-minimum-systemd-fix-for-syslog.patch |  14 +-
 ...inimum-systemd-make-fstools_write_log-opt.patch |  36 ++++
 ...20170204.bb => refpolicy-minimum_2.20180701.bb} |  20 +-
 ...s_2.20170204.bb => refpolicy-mls_2.20180701.bb} |   0
 ...0170204.bb => refpolicy-standard_2.20180701.bb} |   0
 ...olicy-fix-optional-issue-on-sysadm-module.patch |  28 +--
 ...ptional-issue-on-sysadm-module_2.20170204.patch |  72 -------
 ...move-duplicate-type_transition_2.20170204.patch |  46 -----
 .../refpolicy-unconfined_u-default-user.patch      |  71 +++----
 ...licy-unconfined_u-default-user_2.20170204.patch | 222 ---------------------
 .../refpolicy/refpolicy-targeted_2.20170204.bb     |  29 ---
 .../refpolicy/refpolicy-targeted_2.20180701.bb     |  21 ++
 ...icy_2.20170204.inc => refpolicy_2.20180701.inc} |  25 +--
 recipes-security/refpolicy/refpolicy_common.inc    |   4 +-
 86 files changed, 1347 insertions(+), 1822 deletions(-)
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-clock.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-corecommands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_login.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_resolv.conf.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fstools.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-iptables.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-mta.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-netutils.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-su.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-sysnetwork.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-udevd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_bash.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_hostname.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysvinit.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-clock.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-fc-dmesg.patch (53%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-e2fsprogs.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-fc-fix-bind.patch (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_brctl.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_login.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_resolv.conf.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_shadow.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-fc-fix-real-path_su.patch (63%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fstools.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-kerberos.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-nologin.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-openldap.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-fc-rpm.patch (50%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-fc-screen.patch (50%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-fc-ssh.patch (56%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-fc-subs_dist.patch (63%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-sysnetwork.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_bash.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_hostname.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_sysvinit.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-add-rules-for-bsdpty_device_t.patch (67%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-add-rules-for-syslogd_t-symlink.patch (62%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-add-rules-for-tmp-symlink.patch (54%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-add-rules-for-var-cache-symlink.patch (71%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-add-rules-for-var-log-symlink-apache.patch (52%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch (73%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-add-syslogd_t-to-trusted-object.patch (94%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-nfsd-to-exec-shell-commands.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-allow-setfiles_t-to-read-symlinks.patch (65%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-allow-sysadm-to-run-rpcinfo.patch (80%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-don-t-audit-tty_device_t.patch (68%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-fix-new-SELINUXMNT-in-sys.patch (52%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch (57%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-fix-setfiles-statvfs-get-file-count.patch (65%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180701}/poky-policy-fix-seutils-manage-config-files.patch (95%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/ftp-add-ftpd_t-to-mlsfilewrite.patch => refpolicy-2.20180701/poky-policy-ftp-add-ftpd_t-to-mlsfilewrite.patch} (78%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-kernel_t-mls-trusted-for-setting-process.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/refpolicy-update-for_systemd.patch => refpolicy-2.20180701/poky-policy-update-for-systemd.patch} (65%)
 rename recipes-security/refpolicy/{refpolicy-mcs_2.20170204.bb => refpolicy-mcs_2.20180701.bb} (100%)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch
 rename recipes-security/refpolicy/{refpolicy-minimum_2.20170204.bb => refpolicy-minimum_2.20180701.bb} (78%)
 rename recipes-security/refpolicy/{refpolicy-mls_2.20170204.bb => refpolicy-mls_2.20180701.bb} (100%)
 rename recipes-security/refpolicy/{refpolicy-standard_2.20170204.bb => refpolicy-standard_2.20180701.bb} (100%)
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module_2.20170204.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition_2.20170204.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user_2.20170204.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20170204.bb
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20180701.bb
 rename recipes-security/refpolicy/{refpolicy_2.20170204.inc => refpolicy_2.20180701.inc} (71%)

diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-clock.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-clock.patch
deleted file mode 100644
index b2102af..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-clock.patch
+++ /dev/null
@@ -1,20 +0,0 @@
-Subject: [PATCH] refpolicy: fix real path for clock
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/clock.fc | 1 +
- 1 file changed, 1 insertion(+)
-
---- a/policy/modules/system/clock.fc
-+++ b/policy/modules/system/clock.fc
-@@ -1,6 +1,7 @@
- 
- /etc/adjtime		--	gen_context(system_u:object_r:adjtime_t,s0)
- 
- /sbin/hwclock		--	gen_context(system_u:object_r:hwclock_exec_t,s0)
-+/sbin/hwclock\.util-linux	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
- 
- /usr/sbin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-corecommands.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-corecommands.patch
deleted file mode 100644
index 3739059..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-corecommands.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Subject: [PATCH] refpolicy: fix real path for corecommands
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/kernel/corecommands.fc | 1 +
- 1 file changed, 1 insertion(+)
-
---- a/policy/modules/kernel/corecommands.fc
-+++ b/policy/modules/kernel/corecommands.fc
-@@ -154,10 +154,11 @@ ifdef(`distro_gentoo',`
- /sbin				-d	gen_context(system_u:object_r:bin_t,s0)
- /sbin/.*				gen_context(system_u:object_r:bin_t,s0)
- /sbin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
- /sbin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
- /sbin/nologin			--	gen_context(system_u:object_r:shell_exec_t,s0)
-+/usr/sbin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
- 
- #
- # /opt
- #
- /opt/(.*/)?bin(/.*)?			gen_context(system_u:object_r:bin_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_login.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_login.patch
deleted file mode 100644
index dfb7544..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_login.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-Subject: [PATCH] fix real path for login commands.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/authlogin.fc |    7 ++++---
- 1 files changed, 4 insertions(+), 3 deletions(-)
-
---- a/policy/modules/system/authlogin.fc
-+++ b/policy/modules/system/authlogin.fc
-@@ -1,19 +1,21 @@
- 
- /bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
-+/bin/login\.shadow	--	gen_context(system_u:object_r:login_exec_t,s0)
-+/bin/login\.tinylogin	--	gen_context(system_u:object_r:login_exec_t,s0)
- 
- /etc/\.pwd\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
- /etc/group\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
- /etc/gshadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
- /etc/passwd\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
- /etc/shadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
- 
- /sbin/pam_console_apply	 --	gen_context(system_u:object_r:pam_console_exec_t,s0)
- /sbin/pam_timestamp_check --	gen_context(system_u:object_r:pam_exec_t,s0)
--/sbin/unix_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
--/sbin/unix_update	--	gen_context(system_u:object_r:updpwd_exec_t,s0)
--/sbin/unix_verify	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
-+/sbin/unix_chkpwd		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
-+/sbin/unix_update		--	gen_context(system_u:object_r:updpwd_exec_t,s0)
-+/sbin/unix_verify		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
- ifdef(`distro_suse', `
- /sbin/unix2_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
- ')
- 
- /usr/bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_resolv.conf.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_resolv.conf.patch
deleted file mode 100644
index b90b744..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_resolv.conf.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Subject: [PATCH] fix real path for resolv.conf
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/sysnetwork.fc |    1 +
- 1 files changed, 1 insertions(+), 0 deletions(-)
-
---- a/policy/modules/system/sysnetwork.fc
-+++ b/policy/modules/system/sysnetwork.fc
-@@ -23,10 +23,11 @@ ifdef(`distro_debian',`
- /etc/ethers		--	gen_context(system_u:object_r:net_conf_t,s0)
- /etc/hosts		--	gen_context(system_u:object_r:net_conf_t,s0)
- /etc/hosts\.deny.*	--	gen_context(system_u:object_r:net_conf_t,s0)
- /etc/denyhosts.*	--	gen_context(system_u:object_r:net_conf_t,s0)
- /etc/resolv\.conf.*	--	gen_context(system_u:object_r:net_conf_t,s0)
-+/var/run/resolv\.conf.*	--	gen_context(system_u:object_r:net_conf_t,s0)
- /etc/yp\.conf.*		--	gen_context(system_u:object_r:net_conf_t,s0)
- 
- /etc/dhcp3(/.*)?		gen_context(system_u:object_r:dhcp_etc_t,s0)
- /etc/dhcp3?/dhclient.*		gen_context(system_u:object_r:dhcp_etc_t,s0)
- 
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_shadow.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_shadow.patch
deleted file mode 100644
index 9819c1d..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_shadow.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-Subject: [PATCH] fix real path for shadow commands.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/admin/usermanage.fc |    6 ++++++
- 1 file changed, 6 insertions(+)
-
---- a/policy/modules/admin/usermanage.fc
-+++ b/policy/modules/admin/usermanage.fc
-@@ -6,15 +6,21 @@ ifdef(`distro_debian',`
- /etc/cron\.daily/cracklib-runtime -- gen_context(system_u:object_r:crack_exec_t,s0)
- ')
- 
- /usr/bin/chage		--	gen_context(system_u:object_r:passwd_exec_t,s0)
- /usr/bin/chfn		--	gen_context(system_u:object_r:chfn_exec_t,s0)
-+/usr/bin/chfn\.shadow	--	gen_context(system_u:object_r:chfn_exec_t,s0)
- /usr/bin/chsh		--	gen_context(system_u:object_r:chfn_exec_t,s0)
-+/usr/bin/chsh\.shadow	--	gen_context(system_u:object_r:chfn_exec_t,s0)
- /usr/bin/gpasswd	--	gen_context(system_u:object_r:groupadd_exec_t,s0)
- /usr/bin/passwd		--	gen_context(system_u:object_r:passwd_exec_t,s0)
-+/usr/bin/passwd\.shadow	--	gen_context(system_u:object_r:passwd_exec_t,s0)
-+/usr/bin/passwd\.tinylogin	--	gen_context(system_u:object_r:passwd_exec_t,s0)
- /usr/bin/vigr		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
-+/sbin/vigr\.shadow	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
- /usr/bin/vipw		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
-+/sbin/vipw\.shadow	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
- 
- /usr/lib/cracklib_dict.* --	gen_context(system_u:object_r:crack_db_t,s0)
- 
- /usr/sbin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
- /usr/sbin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fstools.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fstools.patch
deleted file mode 100644
index 66bef0f..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fstools.patch
+++ /dev/null
@@ -1,75 +0,0 @@
-From b420621f7bacdb803bfd104686e9b1785d7a6309 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Mon, 27 Jan 2014 03:54:01 -0500
-Subject: [PATCH] refpolicy: fix real path for fstools
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
----
- policy/modules/system/fstools.fc |    9 +++++++++
- 1 file changed, 9 insertions(+)
-
---- a/policy/modules/system/fstools.fc
-+++ b/policy/modules/system/fstools.fc
-@@ -1,19 +1,23 @@
- /sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/blkid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/blkid/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/blockdev		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/blockdev/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/cfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/dosfsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/dump		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/dumpe2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/e2fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/e4fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/e2label		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/fdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/fdisk/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/hdparm/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/install-mbr	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/lsraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/make_reiser4	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -22,20 +26,22 @@
- /sbin/mke4fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/mkfs.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/mkreiserfs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/mkswap		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/mkswap/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/partx		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/raidautorun	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/raidstart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/reiserfs(ck|tune)	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/resize.*fs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/swapoff/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/zdb		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/zhack		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /sbin/zinject		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -83,10 +89,11 @@
- /usr/sbin/parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/partx			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/raidautorun		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/raidstart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/raw		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/reiserfs(ck|tune)	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/resize.*fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/smartctl		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch
deleted file mode 100644
index d58de6a..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-fix ftpwho install dir
-
-Upstream-Status: Pending
-
-ftpwho is installed into /usr/bin/, not /usr/sbin, so fix it
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/contrib/ftp.fc |    2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
---- a/policy/modules/contrib/ftp.fc
-+++ b/policy/modules/contrib/ftp.fc
-@@ -10,11 +10,11 @@
- /usr/kerberos/sbin/ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
- 
- /usr/lib/systemd/system/proftpd.*\.service -- gen_context(system_u:object_r:ftpd_unit_t,s0)
- /usr/lib/systemd/system/vsftpd.*\.service -- gen_context(system_u:object_r:ftpd_unit_t,s0)
- 
--/usr/sbin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
-+/usr/bin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
- /usr/sbin/in\.ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
- /usr/sbin/muddleftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
- /usr/sbin/proftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
- /usr/sbin/vsftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
- 
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-iptables.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-iptables.patch
deleted file mode 100644
index 9e1196a..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-iptables.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Subject: [PATCH] refpolicy: fix real path for iptables
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/iptables.fc | 1 +
- 1 file changed, 1 insertion(+)
-
---- a/policy/modules/system/iptables.fc
-+++ b/policy/modules/system/iptables.fc
-@@ -14,10 +14,11 @@
- /sbin/ipvsadm			--	gen_context(system_u:object_r:iptables_exec_t,s0)
- /sbin/ipvsadm-restore		--	gen_context(system_u:object_r:iptables_exec_t,s0)
- /sbin/ipvsadm-save		--	gen_context(system_u:object_r:iptables_exec_t,s0)
- /sbin/nft			--	gen_context(system_u:object_r:iptables_exec_t,s0)
- /sbin/xtables-multi		--	gen_context(system_u:object_r:iptables_exec_t,s0)
-+/usr/sbin/xtables-multi		--	gen_context(system_u:object_r:iptables_exec_t,s0)
- 
- /usr/lib/systemd/system/[^/]*arptables.* -- gen_context(system_u:object_r:iptables_unit_t,s0)
- /usr/lib/systemd/system/[^/]*ebtables.*	 -- gen_context(system_u:object_r:iptables_unit_t,s0)
- /usr/lib/systemd/system/[^/]*ip6tables.* -- gen_context(system_u:object_r:iptables_unit_t,s0)
- /usr/lib/systemd/system/[^/]*iptables.*	-- gen_context(system_u:object_r:iptables_unit_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-mta.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-mta.patch
deleted file mode 100644
index 5d2b0cf..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-mta.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From c0bb2996db4f55f3987967bacfb99805fc45d027 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 19:21:55 +0800
-Subject: [PATCH] refpolicy: fix real path for mta
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/contrib/mta.fc |    1 +
- 1 file changed, 1 insertion(+)
-
---- a/policy/modules/contrib/mta.fc
-+++ b/policy/modules/contrib/mta.fc
-@@ -20,10 +20,11 @@ HOME_DIR/\.maildir(/.*)?	gen_context(sys
- /usr/lib/courier/bin/sendmail	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
- 
- /usr/sbin/rmail	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
- /usr/sbin/sendmail\.postfix	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
- /usr/sbin/sendmail(\.sendmail)?	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
-+/usr/sbin/msmtp	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
- /usr/sbin/ssmtp	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
- 
- /var/mail(/.*)?	gen_context(system_u:object_r:mail_spool_t,s0)
- 
- /var/qmail/bin/sendmail	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-netutils.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-netutils.patch
deleted file mode 100644
index b41e6e4..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-netutils.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Subject: [PATCH] refpolicy: fix real path for netutils
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/admin/netutils.fc | 1 +
- 1 file changed, 1 insertion(+)
-
---- a/policy/modules/admin/netutils.fc
-+++ b/policy/modules/admin/netutils.fc
-@@ -1,10 +1,11 @@
- /bin/ping.* 		--	gen_context(system_u:object_r:ping_exec_t,s0)
- /bin/tracepath.*		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
- /bin/traceroute.*	--	gen_context(system_u:object_r:traceroute_exec_t,s0)
- 
- /sbin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
-+/bin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
- 
- /usr/bin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
- /usr/bin/lft		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
- /usr/bin/nmap		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
- /usr/bin/ping.* 	--	gen_context(system_u:object_r:ping_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch
deleted file mode 100644
index 0adf7c2..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From 642fab321a5f1f40495b4ca07f1fca4145024986 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 19:25:36 +0800
-Subject: [PATCH] refpolicy: fix real path for nscd
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/contrib/nscd.fc |    1 +
- 1 file changed, 1 insertion(+)
-
---- a/policy/modules/contrib/nscd.fc
-+++ b/policy/modules/contrib/nscd.fc
-@@ -1,8 +1,9 @@
- /etc/rc\.d/init\.d/nscd	--	gen_context(system_u:object_r:nscd_initrc_exec_t,s0)
- 
- /usr/sbin/nscd	--	gen_context(system_u:object_r:nscd_exec_t,s0)
-+/usr/bin/nscd	--	gen_context(system_u:object_r:nscd_exec_t,s0)
- 
- /var/cache/nscd(/.*)?	gen_context(system_u:object_r:nscd_var_run_t,s0)
- 
- /var/db/nscd(/.*)?	gen_context(system_u:object_r:nscd_var_run_t,s0)
- 
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-su.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-su.patch
deleted file mode 100644
index e3d156e..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-su.patch
+++ /dev/null
@@ -1,20 +0,0 @@
-Subject: [PATCH] refpolicy: fix real path for su
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/admin/su.fc | 1 +
- 1 file changed, 1 insertion(+)
-
---- a/policy/modules/admin/su.fc
-+++ b/policy/modules/admin/su.fc
-@@ -1,6 +1,7 @@
- 
- /bin/su			--	gen_context(system_u:object_r:su_exec_t,s0)
-+/usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
- 
- /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
- /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
- /usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-sysnetwork.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-sysnetwork.patch
deleted file mode 100644
index fa369ca..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-sysnetwork.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-From 56ec3e527f2a03d217d5f07ebb708e6e26fa26ff Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Tue, 9 Jun 2015 21:22:52 +0530
-Subject: [PATCH] refpolicy: fix real path for sysnetwork
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/sysnetwork.fc |    4 ++++
- 1 file changed, 4 insertions(+)
-
---- a/policy/modules/system/sysnetwork.fc
-+++ b/policy/modules/system/sysnetwork.fc
-@@ -2,10 +2,11 @@
- #
- # /bin
- #
- /bin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /bin/ip			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/sbin/ip\.iproute2 --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
- 
- #
- # /dev
- #
- ifdef(`distro_debian',`
-@@ -43,17 +44,19 @@ ifdef(`distro_redhat',`
- /sbin/dhclient.*	--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
- /sbin/dhcdbd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
- /sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
- /sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/sbin/ifconfig\.net-tools  --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/ip		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/ipx_configure	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/ipx_interface	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/ipx_internal_net	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/iw		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/iwconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/mii-tool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/sbin/mii-tool\.net-tools  --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/pump		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
- /sbin/tc		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- 
- #
- # /usr
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-udevd.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-udevd.patch
deleted file mode 100644
index 8e2cb1b..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-udevd.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From 025bd3c77d3eeb0e316413bf7e6353f1ccd7f6b2 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Sat, 25 Jan 2014 23:40:05 -0500
-Subject: [PATCH] refpolicy: fix real path for udevd/udevadm
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
----
- policy/modules/system/udev.fc |    2 ++
- 1 file changed, 2 insertions(+)
-
---- a/policy/modules/system/udev.fc
-+++ b/policy/modules/system/udev.fc
-@@ -8,10 +8,11 @@
- 
- /etc/udev/rules.d(/.*)? gen_context(system_u:object_r:udev_rules_t,s0)
- /etc/udev/scripts/.+ --	gen_context(system_u:object_r:udev_helper_exec_t,s0)
- 
- /lib/udev/udev-acl --	gen_context(system_u:object_r:udev_exec_t,s0)
-+/lib/udev/udevd    --	gen_context(system_u:object_r:udev_exec_t,s0)
- 
- ifdef(`distro_debian',`
- /bin/udevadm	--	gen_context(system_u:object_r:udev_exec_t,s0)
- /lib/udev/create_static_nodes -- gen_context(system_u:object_r:udev_exec_t,s0)
- ')
-@@ -26,10 +27,11 @@ ifdef(`distro_debian',`
- ifdef(`distro_redhat',`
- /sbin/start_udev --	gen_context(system_u:object_r:udev_exec_t,s0)
- ')
- 
- /usr/bin/udevinfo --	gen_context(system_u:object_r:udev_exec_t,s0)
-+/usr/bin/udevadm  --	gen_context(system_u:object_r:udev_exec_t,s0)
- 
- /usr/sbin/udev		--	gen_context(system_u:object_r:udev_exec_t,s0)
- /usr/sbin/udevadm	--	gen_context(system_u:object_r:udev_exec_t,s0)
- /usr/sbin/udevd		--	gen_context(system_u:object_r:udev_exec_t,s0)
- /usr/sbin/udevsend	--	gen_context(system_u:object_r:udev_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_bash.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_bash.patch
deleted file mode 100644
index e0fdba1..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_bash.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-From 845518a6f196e6e8c49ba38791c85e17276920e1 Mon Sep 17 00:00:00 2001
-From: Mark Hatle <mark.hatle@windriver.com>
-Date: Thu, 14 Sep 2017 15:02:23 -0500
-Subject: [PATCH 3/4] fix update-alternatives for hostname
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
----
- policy/modules/system/corecommands.fc |    1 +
- 1 file changed, 1 insertion(+)
-
-Index: refpolicy/policy/modules/kernel/corecommands.fc
-===================================================================
---- refpolicy.orig/policy/modules/kernel/corecommands.fc
-+++ refpolicy/policy/modules/kernel/corecommands.fc
-@@ -6,6 +6,7 @@
- /bin/d?ash			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/bash2			--	gen_context(system_u:object_r:shell_exec_t,s0)
-+/bin/bash\.bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/fish			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/ksh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_hostname.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_hostname.patch
deleted file mode 100644
index 038cb1f..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_hostname.patch
+++ /dev/null
@@ -1,21 +0,0 @@
-From 845518a6f196e6e8c49ba38791c85e17276920e1 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 3/4] fix update-alternatives for hostname
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/hostname.fc |    1 +
- 1 file changed, 1 insertion(+)
-
---- a/policy/modules/system/hostname.fc
-+++ b/policy/modules/system/hostname.fc
-@@ -1,4 +1,5 @@
- 
- /bin/hostname		--	gen_context(system_u:object_r:hostname_exec_t,s0)
-+/bin/hostname\.net-tools	--	gen_context(system_u:object_r:hostname_exec_t,s0)
- 
- /usr/bin/hostname	--	gen_context(system_u:object_r:hostname_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
deleted file mode 100644
index e9a0464..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
+++ /dev/null
@@ -1,62 +0,0 @@
-From 4964fa5593349916d8f5c69edb0b16f611586098 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:39:41 +0800
-Subject: [PATCH 2/4] fix update-alternatives for sysklogd
-
-/etc/syslog.conf is a symlink to /etc/syslog.conf.sysklogd, so a allow rule
-for syslogd_t to read syslog_conf_t lnk_file is needed.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/logging.fc |    3 +++
- policy/modules/system/logging.te |    2 ++
- 2 files changed, 5 insertions(+)
-
---- a/policy/modules/system/logging.fc
-+++ b/policy/modules/system/logging.fc
-@@ -1,9 +1,10 @@
- /dev/log		-s	gen_context(system_u:object_r:devlog_t,mls_systemhigh)
- 
- /etc/rsyslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
- /etc/syslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
-+/etc/syslog.conf\.sysklogd	gen_context(system_u:object_r:syslog_conf_t,s0)
- /etc/audit(/.*)?		gen_context(system_u:object_r:auditd_etc_t,mls_systemhigh)
- /etc/rc\.d/init\.d/auditd --	gen_context(system_u:object_r:auditd_initrc_exec_t,s0)
- /etc/rc\.d/init\.d/rsyslog --	gen_context(system_u:object_r:syslogd_initrc_exec_t,s0)
- 
- /usr/bin/audispd	--	gen_context(system_u:object_r:audisp_exec_t,s0)
-@@ -27,14 +28,16 @@
- /usr/sbin/audispd	--	gen_context(system_u:object_r:audisp_exec_t,s0)
- /usr/sbin/audisp-remote	--	gen_context(system_u:object_r:audisp_remote_exec_t,s0)
- /usr/sbin/auditctl	--	gen_context(system_u:object_r:auditctl_exec_t,s0)
- /usr/sbin/auditd	--	gen_context(system_u:object_r:auditd_exec_t,s0)
- /usr/sbin/klogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
-+/usr/sbin/klogd\.sysklogd	--	gen_context(system_u:object_r:klogd_exec_t,s0)
- /usr/sbin/metalog	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
- /usr/sbin/minilogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
- /usr/sbin/rklogd	--	gen_context(system_u:object_r:klogd_exec_t,s0)
- /usr/sbin/rsyslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
-+/usr/sbin/syslogd\.sysklogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
- /usr/sbin/syslog-ng	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
- /usr/sbin/syslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
- 
- /var/lib/misc/syslog-ng.persist-? -- gen_context(system_u:object_r:syslogd_var_lib_t,s0)
- /var/lib/syslog-ng(/.*)? 	gen_context(system_u:object_r:syslogd_var_lib_t,s0)
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -390,10 +390,12 @@ allow syslogd_t self:unix_dgram_socket s
- allow syslogd_t self:fifo_file rw_fifo_file_perms;
- allow syslogd_t self:udp_socket create_socket_perms;
- allow syslogd_t self:tcp_socket create_stream_socket_perms;
- 
- allow syslogd_t syslog_conf_t:file read_file_perms;
-+allow syslogd_t syslog_conf_t:lnk_file read_file_perms;
-+allow syslogd_t syslog_conf_t:dir list_dir_perms;
- 
- # Create and bind to /dev/log or /var/run/log.
- allow syslogd_t devlog_t:sock_file manage_sock_file_perms;
- files_pid_filetrans(syslogd_t, devlog_t, sock_file)
- init_pid_filetrans(syslogd_t, devlog_t, sock_file, "dev-log")
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysvinit.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysvinit.patch
deleted file mode 100644
index d8c1642..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysvinit.patch
+++ /dev/null
@@ -1,57 +0,0 @@
-From 22cd030a8118faae37c0835eb7875e482efe5dc1 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 1/4] fix update-alternatives for sysvinit
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/contrib/shutdown.fc    |    1 +
- policy/modules/kernel/corecommands.fc |    1 +
- policy/modules/system/init.fc         |    1 +
- 3 files changed, 3 insertions(+)
-
---- a/policy/modules/contrib/shutdown.fc
-+++ b/policy/modules/contrib/shutdown.fc
-@@ -1,10 +1,11 @@
- /etc/nologin	--	gen_context(system_u:object_r:shutdown_etc_t,s0)
- 
- /lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
- 
- /sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
-+/sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
- 
- /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
- 
- /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
- 
---- a/policy/modules/kernel/corecommands.fc
-+++ b/policy/modules/kernel/corecommands.fc
-@@ -8,10 +8,11 @@
- /bin/bash2			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/fish			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/ksh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/mountpoint			--	gen_context(system_u:object_r:bin_t,s0)
-+/bin/mountpoint\.sysvinit	--	gen_context(system_u:object_r:bin_t,s0)
- /bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/tcsh			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/yash			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /bin/zsh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
- 
---- a/policy/modules/system/init.fc
-+++ b/policy/modules/system/init.fc
-@@ -30,10 +30,11 @@ ifdef(`distro_gentoo', `
- 
- #
- # /sbin
- #
- /sbin/init(ng)?		--	gen_context(system_u:object_r:init_exec_t,s0)
-+/sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
- # because nowadays, /sbin/init is often a symlink to /sbin/upstart
- /sbin/upstart		--	gen_context(system_u:object_r:init_exec_t,s0)
- 
- ifdef(`distro_gentoo', `
- /sbin/rc		--	gen_context(system_u:object_r:rc_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink.patch
deleted file mode 100644
index a7161d5..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink.patch
+++ /dev/null
@@ -1,185 +0,0 @@
-From 03cb6534f75812f3a33ac768fe83861e0805b0e0 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 2/6] add rules for the symlink of /var/log
-
-/var/log is a symlink in poky, so we need allow rules for files to read
-lnk_file while doing search/list/delete/rw.. in /var/log/ directory.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/logging.fc |    1 +
- policy/modules/system/logging.if |   14 +++++++++++++-
- policy/modules/system/logging.te |    1 +
- 3 files changed, 15 insertions(+), 1 deletion(-)
-
---- a/policy/modules/system/logging.fc
-+++ b/policy/modules/system/logging.fc
-@@ -49,10 +49,11 @@ ifdef(`distro_suse', `
- 
- /var/axfrdns/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
- /var/dnscache/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
- 
- /var/log		-d	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
-+/var/log		-l	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
- /var/log/.*			gen_context(system_u:object_r:var_log_t,s0)
- /var/log/boot\.log	--	gen_context(system_u:object_r:var_log_t,mls_systemhigh)
- /var/log/messages[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
- /var/log/secure[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
- /var/log/maillog[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
---- a/policy/modules/system/logging.if
-+++ b/policy/modules/system/logging.if
-@@ -134,16 +134,17 @@ interface(`logging_set_audit_parameters'
- ## </param>
- ## <rolecap/>
- #
- interface(`logging_read_audit_log',`
- 	gen_require(`
--		type auditd_log_t;
-+		type auditd_log_t, var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	read_files_pattern($1, auditd_log_t, auditd_log_t)
- 	allow $1 auditd_log_t:dir list_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
- ## <summary>
- ##	Execute auditctl in the auditctl domain.
-@@ -665,10 +666,11 @@ interface(`logging_search_logs',`
- 		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	allow $1 var_log_t:dir search_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- ')
- 
- #######################################
- ## <summary>
- ##	Do not audit attempts to search the var log directory.
-@@ -702,10 +704,11 @@ interface(`logging_list_logs',`
- 		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	allow $1 var_log_t:dir list_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- ')
- 
- #######################################
- ## <summary>
- ##	Read and write the generic log directory (/var/log).
-@@ -721,10 +724,11 @@ interface(`logging_rw_generic_log_dirs',
- 		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	allow $1 var_log_t:dir rw_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- ')
- 
- #######################################
- ## <summary>
- ##	Search through all log dirs.
-@@ -832,14 +836,16 @@ interface(`logging_append_all_logs',`
- ## <rolecap/>
- #
- interface(`logging_read_all_logs',`
- 	gen_require(`
- 		attribute logfile;
-+		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	allow $1 logfile:dir list_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- 	read_files_pattern($1, logfile, logfile)
- ')
- 
- ########################################
- ## <summary>
-@@ -854,14 +860,16 @@ interface(`logging_read_all_logs',`
- # cjp: not sure why this is needed.  This was added
- # because of logrotate.
- interface(`logging_exec_all_logs',`
- 	gen_require(`
- 		attribute logfile;
-+		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	allow $1 logfile:dir list_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- 	can_exec($1, logfile)
- ')
- 
- ########################################
- ## <summary>
-@@ -919,10 +927,11 @@ interface(`logging_read_generic_logs',`
- 		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	allow $1 var_log_t:dir list_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- 	read_files_pattern($1, var_log_t, var_log_t)
- ')
- 
- ########################################
- ## <summary>
-@@ -939,10 +948,11 @@ interface(`logging_write_generic_logs',`
- 		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	allow $1 var_log_t:dir list_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- 	write_files_pattern($1, var_log_t, var_log_t)
- ')
- 
- ########################################
- ## <summary>
-@@ -977,10 +987,11 @@ interface(`logging_rw_generic_logs',`
- 		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	allow $1 var_log_t:dir list_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- 	rw_files_pattern($1, var_log_t, var_log_t)
- ')
- 
- ########################################
- ## <summary>
-@@ -999,10 +1010,11 @@ interface(`logging_manage_generic_logs',
- 		type var_log_t;
- 	')
- 
- 	files_search_var($1)
- 	manage_files_pattern($1, var_log_t, var_log_t)
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
- ## <summary>
- ##	All of the rules required to administrate
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -151,10 +151,11 @@ allow auditd_t auditd_etc_t:file read_fi
- 
- manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
- allow auditd_t auditd_log_t:dir setattr;
- manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
- allow auditd_t var_log_t:dir search_dir_perms;
-+allow auditd_t var_log_t:lnk_file read_lnk_file_perms;
- 
- manage_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
- manage_sock_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
- files_pid_filetrans(auditd_t, auditd_var_run_t, { file sock_file })
- 
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-nfsd-to-exec-shell-commands.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-nfsd-to-exec-shell-commands.patch
deleted file mode 100644
index ca2796f..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-nfsd-to-exec-shell-commands.patch
+++ /dev/null
@@ -1,60 +0,0 @@
-From 22cd030a8118faae37c0835eb7875e482efe5dc1 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH] allow nfsd to exec shell commands.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/contrib/rpc.te   |    2 +-
- policy/modules/kernel/kernel.if |   18 ++++++++++++++++++
- 2 files changed, 19 insertions(+), 1 deletions(-)
-
---- a/policy/modules/contrib/rpc.te
-+++ b/policy/modules/contrib/rpc.te
-@@ -222,11 +222,11 @@ allow nfsd_t { nfsd_rw_t nfsd_ro_t }:dir
- 
- kernel_read_network_state(nfsd_t)
- kernel_dontaudit_getattr_core_if(nfsd_t)
- kernel_setsched(nfsd_t)
- kernel_request_load_module(nfsd_t)
--# kernel_mounton_proc(nfsd_t)
-+kernel_mounton_proc(nfsd_t)
- 
- corenet_sendrecv_nfs_server_packets(nfsd_t)
- corenet_tcp_bind_nfs_port(nfsd_t)
- corenet_udp_bind_nfs_port(nfsd_t)
- 
---- a/policy/modules/kernel/kernel.if
-+++ b/policy/modules/kernel/kernel.if
-@@ -844,10 +844,28 @@ interface(`kernel_unmount_proc',`
- 	allow $1 proc_t:filesystem unmount;
- ')
- 
- ########################################
- ## <summary>
-+##	Mounton a proc filesystem.
-+## </summary>
-+## <param name="domain">
-+##	<summary>
-+##	Domain allowed access.
-+##	</summary>
-+## </param>
-+#
-+interface(`kernel_mounton_proc',`
-+	gen_require(`
-+		type proc_t;
-+	')
-+
-+	allow $1 proc_t:dir mounton;
-+')
-+
-+########################################
-+## <summary>
- ##	Get the attributes of the proc filesystem.
- ## </summary>
- ## <param name="domain">
- ##	<summary>
- ##	Domain allowed access.
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-dmesg-to-use-dev-kmsg.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
deleted file mode 100644
index 8443e31..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 2f5981f2244289a1cc79748e9ffdaaea168b1df2 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Fri, 23 Aug 2013 16:36:09 +0800
-Subject: [PATCH] fix dmesg to use /dev/kmsg as default input
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/admin/dmesg.if |    1 +
- policy/modules/admin/dmesg.te |    2 ++
- 2 files changed, 3 insertions(+)
-
---- a/policy/modules/admin/dmesg.if
-+++ b/policy/modules/admin/dmesg.if
-@@ -35,6 +35,7 @@ interface(`dmesg_exec',`
- 		type dmesg_exec_t;
- 	')
- 
- 	corecmd_search_bin($1)
- 	can_exec($1, dmesg_exec_t)
-+	dev_read_kmsg($1)
- ')
---- a/policy/modules/admin/dmesg.te
-+++ b/policy/modules/admin/dmesg.te
-@@ -28,10 +28,12 @@ kernel_read_proc_symlinks(dmesg_t)
- # for when /usr is not mounted:
- kernel_dontaudit_search_unlabeled(dmesg_t)
- 
- dev_read_sysfs(dmesg_t)
- 
-+dev_read_kmsg(dmesg_t)
-+
- fs_search_auto_mountpoints(dmesg_t)
- 
- term_dontaudit_use_console(dmesg_t)
- 
- domain_use_interactive_fds(dmesg_t)
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-clock.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-clock.patch
new file mode 100644
index 0000000..2079672
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-clock.patch
@@ -0,0 +1,25 @@
+From a6446fd76086e438c8cf41a52a34b636a1b1ac62 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Tue, 20 Nov 2018 09:24:56 +0800
+Subject: [PATCH] refpolicy: fix real path for clock
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/system/clock.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/clock.fc b/policy/modules/system/clock.fc
+index 3019658..1394858 100644
+--- a/policy/modules/system/clock.fc
++++ b/policy/modules/system/clock.fc
+@@ -3,3 +3,4 @@
+ /usr/bin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
+ 
+ /usr/sbin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
++/usr/sbin/hwclock\.util-linux	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-dmesg.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-dmesg.patch
similarity index 53%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-dmesg.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-dmesg.patch
index 2a567da..0fd24b2 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-dmesg.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-dmesg.patch
@@ -1,3 +1,6 @@
+From cf9daff3a92f92d93264a73645ef3d2b8a656c72 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Tue, 20 Nov 2018 09:28:19 +0800
 Subject: [PATCH] refpolicy: fix real path for dmesg
 
 Upstream-Status: Inappropriate [configuration]
@@ -8,11 +11,13 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  policy/modules/admin/dmesg.fc | 1 +
  1 file changed, 1 insertion(+)
 
+diff --git a/policy/modules/admin/dmesg.fc b/policy/modules/admin/dmesg.fc
+index e52fdfc..526b92e 100644
 --- a/policy/modules/admin/dmesg.fc
 +++ b/policy/modules/admin/dmesg.fc
-@@ -1,4 +1,5 @@
- 
- /bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
-+/bin/dmesg\.util-linux	--		gen_context(system_u:object_r:dmesg_exec_t,s0)
- 
+@@ -1 +1,2 @@
  /usr/bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
++/usr/bin/dmesg\.util-linux		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-e2fsprogs.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-e2fsprogs.patch
new file mode 100644
index 0000000..4308c43
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-e2fsprogs.patch
@@ -0,0 +1,47 @@
+From 23fb0b3a097a592e6dd6c5da1ebb6d6829a7457a Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 17 Sep 2018 08:34:05 +0800
+Subject: [PATCH] refpolicy: fix path for e2fsprgs
+
+The mke2fs and tune2fs commands are switched to use update-alternatives
+in oe-core commit 81dc858a24cc5b5dc547356eb22f00dde9801b6f. We need to
+add policy for mke2fs.* and tune2fs.*. Also add path for e2mmpstatus.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/fstools.fc | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
+index bae4b1f..3b975d9 100644
+--- a/policy/modules/system/fstools.fc
++++ b/policy/modules/system/fstools.fc
+@@ -69,6 +69,7 @@
+ /usr/sbin/e2fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/e4fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/e2label		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/e2mmpstatus		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/efibootmgr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/fatsort		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/fdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -85,6 +86,7 @@
+ /usr/sbin/make_reiser4		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mkdosfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mke2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/mke2fs.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mke4fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mkfs.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -106,6 +108,7 @@
+ /usr/sbin/swapoff\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/tune2fs.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/zdb			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/zhack			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/zinject		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-bind.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-bind.patch
similarity index 66%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-bind.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-bind.patch
index 3218c88..6f619e3 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-bind.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-bind.patch
@@ -1,6 +1,6 @@
-From e438a9466a615db3f63421157d5ee3bd6d055403 Mon Sep 17 00:00:00 2001
+From 861a762813b3028f2a43d7297f7fb18b9717c28c Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 19:09:11 +0800
+Date: Tue, 20 Nov 2018 09:22:16 +0800
 Subject: [PATCH] refpolicy: fix real path for bind.
 
 Upstream-Status: Inappropriate [configuration]
@@ -8,21 +8,24 @@ Upstream-Status: Inappropriate [configuration]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/contrib/bind.fc |    2 ++
+ policy/modules/services/bind.fc | 2 ++
  1 file changed, 2 insertions(+)
 
---- a/policy/modules/contrib/bind.fc
-+++ b/policy/modules/contrib/bind.fc
-@@ -1,10 +1,12 @@
+diff --git a/policy/modules/services/bind.fc b/policy/modules/services/bind.fc
+index b4879dc..0dc76a6 100644
+--- a/policy/modules/services/bind.fc
++++ b/policy/modules/services/bind.fc
+@@ -1,8 +1,10 @@
  /etc/rc\.d/init\.d/named	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
 +/etc/rc\.d/init\.d/bind	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
  /etc/rc\.d/init\.d/unbound	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
  
  /etc/bind(/.*)?	gen_context(system_u:object_r:named_zone_t,s0)
  /etc/bind/named\.conf.*	--	gen_context(system_u:object_r:named_conf_t,s0)
-+/etc/bind/rndc\.conf    --      gen_context(system_u:object_r:named_conf_t,s0)
++/etc/bind/rndc\.conf	--	gen_context(system_u:object_r:named_conf_t,s0)
  /etc/bind/rndc\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
  /etc/dnssec-trigger/dnssec_trigger_server\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
  /etc/named\.rfc1912\.zones	--	gen_context(system_u:object_r:named_conf_t,s0)
- /etc/named\.root\.hints	--	gen_context(system_u:object_r:named_conf_t,s0)
- /etc/named\.conf	--	gen_context(system_u:object_r:named_conf_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_brctl.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_brctl.patch
new file mode 100644
index 0000000..dc57bff
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_brctl.patch
@@ -0,0 +1,25 @@
+From 74c7ca4a02e65f72774477d79a0f6a8229201b6d Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Mon, 17 Feb 2014 02:30:30 -0500
+Subject: [PATCH] fix real path for brctl
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/brctl.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/admin/brctl.fc b/policy/modules/admin/brctl.fc
+index ed472f0..2a852b0 100644
+--- a/policy/modules/admin/brctl.fc
++++ b/policy/modules/admin/brctl.fc
+@@ -1,3 +1,4 @@
+ /usr/bin/brctl	--	gen_context(system_u:object_r:brctl_exec_t,s0)
+ 
+ /usr/sbin/brctl	--	gen_context(system_u:object_r:brctl_exec_t,s0)
++/usr/sbin/brctl\.bridge-utils	--	gen_context(system_u:object_r:brctl_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_login.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_login.patch
new file mode 100644
index 0000000..41907f5
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_login.patch
@@ -0,0 +1,29 @@
+From 6f8ab1d8161865d1bd6b0f02f1a96bf27d674288 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Tue, 20 Nov 2018 09:06:09 +0800
+Subject: [PATCH] fix real path for login commands.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/system/authlogin.fc | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/authlogin.fc b/policy/modules/system/authlogin.fc
+index e22945c..22d8b0f 100644
+--- a/policy/modules/system/authlogin.fc
++++ b/policy/modules/system/authlogin.fc
+@@ -5,6 +5,8 @@
+ /etc/shadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
+ 
+ /usr/bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
++/usr/bin/login\.shadow		--	gen_context(system_u:object_r:login_exec_t,s0)
++/usr/bin/login\.tinylogin		--	gen_context(system_u:object_r:login_exec_t,s0)
+ /usr/bin/pam_console_apply	--	gen_context(system_u:object_r:pam_console_exec_t,s0)
+ /usr/bin/pam_timestamp_check	--	gen_context(system_u:object_r:pam_exec_t,s0)
+ /usr/bin/unix_chkpwd		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_resolv.conf.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_resolv.conf.patch
new file mode 100644
index 0000000..9fab7f9
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_resolv.conf.patch
@@ -0,0 +1,29 @@
+From 3497e93b182a510d4601c8127d5bec46322027de Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Tue, 20 Nov 2018 09:01:51 +0800
+Subject: [PATCH] fix real path for resolv.conf
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/system/sysnetwork.fc | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
+index cd52893..231679b 100644
+--- a/policy/modules/system/sysnetwork.fc
++++ b/policy/modules/system/sysnetwork.fc
+@@ -78,6 +78,8 @@ ifdef(`distro_redhat',`
+ /var/lib/dhclient(/.*)?		gen_context(system_u:object_r:dhcpc_state_t,s0)
+ /var/lib/wifiroamd(/.*)?	gen_context(system_u:object_r:dhcpc_state_t,s0)
+ 
++/var/run/resolv\.conf.*	--	gen_context(system_u:object_r:net_conf_t,s0)
++
+ /run/dhclient.*	--	gen_context(system_u:object_r:dhcpc_var_run_t,s0)
+ /run/dhcpcd(/.*)?		gen_context(system_u:object_r:dhcpc_var_run_t,s0)
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_shadow.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_shadow.patch
new file mode 100644
index 0000000..60ee62b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_shadow.patch
@@ -0,0 +1,49 @@
+From f17d77f2658084b0ef7c8ff920960d50ee044d35 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Tue, 20 Nov 2018 09:16:40 +0800
+Subject: [PATCH] fix real path for shadow commands.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/admin/usermanage.fc | 6 ++++++
+ 1 file changed, 6 insertions(+)
+
+diff --git a/policy/modules/admin/usermanage.fc b/policy/modules/admin/usermanage.fc
+index 620eefc..5ae5230 100644
+--- a/policy/modules/admin/usermanage.fc
++++ b/policy/modules/admin/usermanage.fc
+@@ -4,7 +4,9 @@ ifdef(`distro_debian',`
+ 
+ /usr/bin/chage		--	gen_context(system_u:object_r:passwd_exec_t,s0)
+ /usr/bin/chfn		--	gen_context(system_u:object_r:chfn_exec_t,s0)
++/usr/bin/chfn\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
+ /usr/bin/chsh		--	gen_context(system_u:object_r:chfn_exec_t,s0)
++/usr/bin/chsh\.shadow		--	gen_context(system_u:object_r:chfn_exec_t,s0)
+ /usr/bin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
+ /usr/bin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
+ /usr/bin/gpasswd	--	gen_context(system_u:object_r:groupadd_exec_t,s0)
+@@ -14,6 +16,8 @@ ifdef(`distro_debian',`
+ /usr/bin/grpconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/bin/grpunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/bin/passwd		--	gen_context(system_u:object_r:passwd_exec_t,s0)
++/usr/bin/passwd\.shadow		--	gen_context(system_u:object_r:passwd_exec_t,s0)
++/usr/bin/passwd\.tinylogin		--	gen_context(system_u:object_r:passwd_exec_t,s0)
+ /usr/bin/pwconv		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/bin/pwunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/bin/useradd	--	gen_context(system_u:object_r:useradd_exec_t,s0)
+@@ -38,7 +42,9 @@ ifdef(`distro_debian',`
+ /usr/sbin/userdel	--	gen_context(system_u:object_r:useradd_exec_t,s0)
+ /usr/sbin/usermod	--	gen_context(system_u:object_r:useradd_exec_t,s0)
+ /usr/sbin/vigr		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
++/usr/sbin/vigr\.shadow		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/sbin/vipw		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
++/usr/sbin/vipw\.shadow		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ 
+ /usr/share/cracklib(/.*)?	gen_context(system_u:object_r:crack_db_t,s0)
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_su.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_su.patch
similarity index 63%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_su.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_su.patch
index b8597f9..6c9db69 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_su.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fix-real-path_su.patch
@@ -1,4 +1,4 @@
-From 4affa5e9797f5d51597c9b8e0f2503883c766699 Mon Sep 17 00:00:00 2001
+From 04e62de8818ea835a8a2ae567ee650372e9cf80d Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 13 Feb 2014 00:33:07 -0500
 Subject: [PATCH] fix real path for su.shadow command
@@ -8,15 +8,18 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/admin/su.fc |    2 ++
- 1 file changed, 2 insertions(+)
+ policy/modules/admin/su.fc | 1 +
+ 1 file changed, 1 insertion(+)
 
+diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
+index 3375c96..12502e1 100644
 --- a/policy/modules/admin/su.fc
 +++ b/policy/modules/admin/su.fc
-@@ -2,5 +2,6 @@
- /bin/su			--	gen_context(system_u:object_r:su_exec_t,s0)
- 
+@@ -1,3 +1,4 @@
  /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
  /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
  /usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
-+/bin/su.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
++/usr/bin/su\.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fstools.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fstools.patch
new file mode 100644
index 0000000..d94a7ae
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-fstools.patch
@@ -0,0 +1,65 @@
+From 1c84082f3081db369a889243542eb3ddd34062e5 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Mon, 27 Jan 2014 03:54:01 -0500
+Subject: [PATCH] refpolicy: fix real path for fstools
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/system/fstools.fc | 7 +++++++
+ 1 file changed, 7 insertions(+)
+
+diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
+index d4219a1..bae4b1f 100644
+--- a/policy/modules/system/fstools.fc
++++ b/policy/modules/system/fstools.fc
+@@ -57,7 +57,9 @@
+ /usr/sbin/addpart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/blkid			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/blkid\.util-linux			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/blockdev		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/blockdev\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/cfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/clubufflush		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/delpart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -70,10 +72,12 @@
+ /usr/sbin/efibootmgr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/fatsort		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/fdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/fdisk\.util-linux			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/gdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/hdparm\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/install-mbr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -86,17 +90,20 @@
+ /usr/sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mkreiserfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mkswap		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/mkswap\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/partx			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/raidautorun		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/raidstart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/raw		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/reiserfs(ck|tune)	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/resize.*fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/smartctl		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/swapoff\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/zdb			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-kerberos.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-kerberos.patch
new file mode 100644
index 0000000..735ca7e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-kerberos.patch
@@ -0,0 +1,51 @@
+From b33a9c8f8862b8e1c864f0137dd20f71cc7458a1 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 24 Jan 2019 08:36:11 +0800
+Subject: [PATCH] refpolicy: fix real path for kerberos
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/kerberos.fc | 9 +++++++++
+ 1 file changed, 9 insertions(+)
+
+diff --git a/policy/modules/services/kerberos.fc b/policy/modules/services/kerberos.fc
+index df21fcc..6e20e36 100644
+--- a/policy/modules/services/kerberos.fc
++++ b/policy/modules/services/kerberos.fc
+@@ -12,6 +12,8 @@ HOME_DIR/\.k5login	--	gen_context(system_u:object_r:krb5_home_t,s0)
+ /etc/rc\.d/init\.d/kprop	--	gen_context(system_u:object_r:kerberos_initrc_exec_t,s0)
+ /etc/rc\.d/init\.d/krb524d	--	gen_context(system_u:object_r:kerberos_initrc_exec_t,s0)
+ /etc/rc\.d/init\.d/krb5kdc	--	gen_context(system_u:object_r:kerberos_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/krb5-admin-server	--	gen_context(system_u:object_r:kerberos_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/krb5-kdc	--	gen_context(system_u:object_r:kerberos_initrc_exec_t,s0)
+ 
+ /usr/bin/krb5kdc	--	gen_context(system_u:object_r:krb5kdc_exec_t,s0)
+ /usr/bin/kadmind	--	gen_context(system_u:object_r:kadmind_exec_t,s0)
+@@ -26,6 +28,8 @@ HOME_DIR/\.k5login	--	gen_context(system_u:object_r:krb5_home_t,s0)
+ 
+ /usr/sbin/krb5kdc	--	gen_context(system_u:object_r:krb5kdc_exec_t,s0)
+ /usr/sbin/kadmind	--	gen_context(system_u:object_r:kadmind_exec_t,s0)
++/usr/sbin/kadmin\.local	--	gen_context(system_u:object_r:kadmind_exec_t,s0)
++/usr/sbin/kpropd	--	gen_context(system_u:object_r:kpropd_exec_t,s0)
+ 
+ /usr/local/var/krb5kdc(/.*)?	gen_context(system_u:object_r:krb5kdc_conf_t,s0)
+ /usr/local/var/krb5kdc/principal.*	gen_context(system_u:object_r:krb5kdc_principal_t,s0)
+@@ -40,6 +44,11 @@ HOME_DIR/\.k5login	--	gen_context(system_u:object_r:krb5_home_t,s0)
+ /var/kerberos/krb5kdc/kadm5\.keytab	--	gen_context(system_u:object_r:krb5_keytab_t,s0)
+ /var/kerberos/krb5kdc/principal.*	gen_context(system_u:object_r:krb5kdc_principal_t,s0)
+ /var/kerberos/krb5kdc/principal.*\.ok	--	gen_context(system_u:object_r:krb5kdc_lock_t,s0)
++/var/krb5kdc(/.*)?	gen_context(system_u:object_r:krb5kdc_conf_t,s0)
++/var/krb5kdc/from_master.*	gen_context(system_u:object_r:krb5kdc_lock_t,s0)
++/var/krb5kdc/kadm5\.keytab	--	gen_context(system_u:object_r:krb5_keytab_t,s0)
++/var/krb5kdc/principal.*	gen_context(system_u:object_r:krb5kdc_principal_t,s0)
++/var/krb5kdc/principal.*\.ok	--	gen_context(system_u:object_r:krb5kdc_lock_t,s0)
+ 
+ /var/log/krb5kdc\.log.*	--	gen_context(system_u:object_r:krb5kdc_log_t,s0)
+ /var/log/kadmin\.log.*	--	gen_context(system_u:object_r:kadmind_log_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-nologin.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-nologin.patch
new file mode 100644
index 0000000..65cc05e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-nologin.patch
@@ -0,0 +1,30 @@
+From 9b8efad5ba564e1a398dded018cc97aae906d7c3 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Wed, 23 Jan 2019 13:36:18 +0800
+Subject: [PATCH] refpolicy: fix real path for nologin
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/kernel/corecommands.fc | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
+index 6db214f..95ff21c 100644
+--- a/policy/modules/kernel/corecommands.fc
++++ b/policy/modules/kernel/corecommands.fc
+@@ -278,6 +278,8 @@ ifdef(`distro_gentoo',`
+ /usr/sbin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
+ /usr/sbin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
+ /usr/sbin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
++/usr/sbin/nologin\.shadow		--	gen_context(system_u:object_r:shell_exec_t,s0)
++/usr/sbin/nologin\.util-linux		--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/sbin/scponlyc		--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/sbin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/sbin/smrsh			--	gen_context(system_u:object_r:shell_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-openldap.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-openldap.patch
new file mode 100644
index 0000000..be157b6
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-openldap.patch
@@ -0,0 +1,41 @@
+From be94fb19bfb5249baf3cf78e65aa540d0b9cd9ae Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 24 Jan 2019 08:28:10 +0800
+Subject: [PATCH] refpolicy: fix openldap file contexts
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/ldap.fc | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/policy/modules/services/ldap.fc b/policy/modules/services/ldap.fc
+index 174f4d7..a84f99c 100644
+--- a/policy/modules/services/ldap.fc
++++ b/policy/modules/services/ldap.fc
+@@ -1,8 +1,10 @@
+ /etc/ldap/slapd\.conf	--	gen_context(system_u:object_r:slapd_etc_t,s0)
+ /etc/openldap/certs(/.*)?	gen_context(system_u:object_r:slapd_cert_t,s0)
+ /etc/openldap/slapd\.d(/.*)?	gen_context(system_u:object_r:slapd_db_t,s0)
++/etc/openldap/slapd\.conf	--	gen_context(system_u:object_r:slapd_etc_t,s0)
+ 
+ /etc/rc\.d/init\.d/ldap	--	gen_context(system_u:object_r:slapd_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/openldap	--	gen_context(system_u:object_r:slapd_initrc_exec_t,s0)
+ 
+ /usr/bin/slapd	--	gen_context(system_u:object_r:slapd_exec_t,s0)
+ 
+@@ -14,6 +16,8 @@
+ 
+ /var/lib/ldap(/.*)?	gen_context(system_u:object_r:slapd_db_t,s0)
+ /var/lib/ldap/replog(/.*)?	gen_context(system_u:object_r:slapd_replog_t,s0)
++/var/openldap-data(/.*)?	gen_context(system_u:object_r:slapd_db_t,s0)
++/var/openldap-data/replog(/.*)?	gen_context(system_u:object_r:slapd_replog_t,s0)
+ 
+ /var/lib/openldap-data(/.*)?	gen_context(system_u:object_r:slapd_db_t,s0)
+ /var/lib/openldap-ldbm(/.*)?	gen_context(system_u:object_r:slapd_db_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-rpm.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-rpm.patch
similarity index 50%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-rpm.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-rpm.patch
index 9de7532..0084e82 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-rpm.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-rpm.patch
@@ -1,4 +1,4 @@
-From 3ecbd842d51a8e70b3403e857a24203285d4983b Mon Sep 17 00:00:00 2001
+From eb4e0d93cc55e8c1eec08c85e5c36eaddbd5e240 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 27 Jan 2014 01:13:06 -0500
 Subject: [PATCH] refpolicy: fix real path for cpio
@@ -8,16 +8,19 @@ Upstream-Status: Inappropriate [configuration]
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/contrib/rpm.fc |    1 +
+ policy/modules/admin/rpm.fc | 1 +
  1 file changed, 1 insertion(+)
 
---- a/policy/modules/contrib/rpm.fc
-+++ b/policy/modules/contrib/rpm.fc
-@@ -61,6 +61,7 @@ ifdef(`distro_redhat',`
- /run/yum.*	--	gen_context(system_u:object_r:rpm_var_run_t,s0)
- /run/PackageKit(/.*)?	gen_context(system_u:object_r:rpm_var_run_t,s0)
+diff --git a/policy/modules/admin/rpm.fc b/policy/modules/admin/rpm.fc
+index 9faf3c4..8bcd71f 100644
+--- a/policy/modules/admin/rpm.fc
++++ b/policy/modules/admin/rpm.fc
+@@ -69,4 +69,5 @@ ifdef(`distro_redhat',`
  
  ifdef(`enable_mls',`
  /usr/sbin/cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
-+/bin/cpio.cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
++/usr/bin/cpio\.cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
  ')
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-screen.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-screen.patch
similarity index 50%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-screen.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-screen.patch
index 8ea210e..e2e6aa2 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-screen.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-screen.patch
@@ -1,6 +1,6 @@
-From 3615e2d67f402a37ae7333e62b54f1d9d0a3bfd1 Mon Sep 17 00:00:00 2001
+From 1c2c92535f72e9a9ee5d27e0941b0a31da06f756 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 19:27:19 +0800
+Date: Tue, 20 Nov 2018 09:38:57 +0800
 Subject: [PATCH] refpolicy: fix real path for screen
 
 Upstream-Status: Inappropriate [configuration]
@@ -8,16 +8,19 @@ Upstream-Status: Inappropriate [configuration]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/contrib/screen.fc |    1 +
+ policy/modules/apps/screen.fc | 1 +
  1 file changed, 1 insertion(+)
 
---- a/policy/modules/contrib/screen.fc
-+++ b/policy/modules/contrib/screen.fc
-@@ -4,6 +4,7 @@ HOME_DIR/\.tmux\.conf	--	gen_context(sys
- 
- /run/screen(/.*)?		gen_context(system_u:object_r:screen_runtime_t,s0)
+diff --git a/policy/modules/apps/screen.fc b/policy/modules/apps/screen.fc
+index 7196c59..cada994 100644
+--- a/policy/modules/apps/screen.fc
++++ b/policy/modules/apps/screen.fc
+@@ -6,4 +6,5 @@ HOME_DIR/\.tmux\.conf	--	gen_context(system_u:object_r:screen_home_t,s0)
  /run/tmux(/.*)?			gen_context(system_u:object_r:screen_runtime_t,s0)
  
  /usr/bin/screen		--	gen_context(system_u:object_r:screen_exec_t,s0)
-+/usr/bin/screen-.*	--	gen_context(system_u:object_r:screen_exec_t,s0)
++/usr/bin/screen-.*		--	gen_context(system_u:object_r:screen_exec_t,s0)
  /usr/bin/tmux		--	gen_context(system_u:object_r:screen_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ssh.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-ssh.patch
similarity index 56%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ssh.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-ssh.patch
index a01e2eb..9f5453d 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ssh.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-ssh.patch
@@ -1,3 +1,6 @@
+From 6dcb4b3b326c0cdbfb20cea637c69b28e52937d2 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Tue, 20 Nov 2018 09:51:47 +0800
 Subject: [PATCH] refpolicy: fix real path for ssh
 
 Upstream-Status: Inappropriate [configuration]
@@ -8,17 +11,18 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  policy/modules/services/ssh.fc | 1 +
  1 file changed, 1 insertion(+)
 
+diff --git a/policy/modules/services/ssh.fc b/policy/modules/services/ssh.fc
+index 4ac3e73..fb14b17 100644
 --- a/policy/modules/services/ssh.fc
 +++ b/policy/modules/services/ssh.fc
-@@ -2,10 +2,11 @@ HOME_DIR/\.ssh(/.*)?			gen_context(syste
- 
- /etc/ssh/primes			--	gen_context(system_u:object_r:sshd_key_t,s0)
+@@ -4,6 +4,7 @@ HOME_DIR/\.ssh(/.*)?			gen_context(system_u:object_r:ssh_home_t,s0)
  /etc/ssh/ssh_host.*_key		--	gen_context(system_u:object_r:sshd_key_t,s0)
  
  /usr/bin/ssh			--	gen_context(system_u:object_r:ssh_exec_t,s0)
-+/usr/bin/ssh\.openssh		--	gen_context(system_u:object_r:ssh_exec_t,s0)
++/usr/bin/ssh\.openssh			--	gen_context(system_u:object_r:ssh_exec_t,s0)
  /usr/bin/ssh-agent		--	gen_context(system_u:object_r:ssh_agent_exec_t,s0)
  /usr/bin/ssh-keygen		--	gen_context(system_u:object_r:ssh_keygen_exec_t,s0)
- 
- /usr/lib/openssh/ssh-keysign	--	gen_context(system_u:object_r:ssh_keysign_exec_t,s0)
- /usr/lib/ssh/ssh-keysign	--	gen_context(system_u:object_r:ssh_keysign_exec_t,s0)
+ /usr/bin/sshd			--	gen_context(system_u:object_r:sshd_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-subs_dist.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-subs_dist.patch
similarity index 63%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-subs_dist.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-subs_dist.patch
index c5fdc51..3f9ddcf 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-subs_dist.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-subs_dist.patch
@@ -1,6 +1,9 @@
+From f1bad149221729293bf93b80c8ff6feb5f1df3e3 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Mon, 19 Nov 2018 16:14:15 +0800
 Subject: [PATCH] fix file_contexts.subs_dist for poky
 
-This file is used for Linux distros to define specific pathes 
+This file is used for Linux distros to define specific pathes
 mapping to the pathes in file_contexts.
 
 Upstream-Status: Inappropriate [only for Poky]
@@ -8,14 +11,14 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- config/file_contexts.subs_dist |   10 ++++++++++
- 1 file changed, 10 insertions(+)
+ config/file_contexts.subs_dist | 12 ++++++++++++
+ 1 file changed, 12 insertions(+)
 
+diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
+index ed4a562..998baf9 100644
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -21,5 +21,17 @@
- 
- # backward compatibility
+@@ -28,3 +28,15 @@
  # not for refpolicy intern, but for /var/run using applications,
  # like systemd tmpfiles or systemd socket configurations
  /var/run /run
@@ -31,3 +34,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 +/usr/lib/busybox/bin /bin
 +/usr/lib/busybox/sbin /sbin
 +/usr/lib/busybox/usr /usr
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-sysnetwork.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-sysnetwork.patch
new file mode 100644
index 0000000..b675727
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-sysnetwork.patch
@@ -0,0 +1,38 @@
+From 0cbb43f5a0b2c9a5cf3616e31cef22145446c0f2 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Tue, 9 Jun 2015 21:22:52 +0530
+Subject: [PATCH] refpolicy: fix real path for sysnetwork
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/system/sysnetwork.fc | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
+index 231679b..5fd7d06 100644
+--- a/policy/modules/system/sysnetwork.fc
++++ b/policy/modules/system/sysnetwork.fc
+@@ -58,13 +58,16 @@ ifdef(`distro_redhat',`
+ /usr/sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
+ /usr/sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/sbin/ifconfig\.net-tools		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/sbin/ip			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/sbin/ip\.iproute2			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/sbin/ipx_configure		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/sbin/ipx_interface		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/sbin/ipx_internal_net	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/sbin/iw			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/sbin/iwconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/sbin/mii-tool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/sbin/mii-tool\.net-tools		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/sbin/pump			--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
+ /usr/sbin/tc			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_bash.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_bash.patch
new file mode 100644
index 0000000..f7b2f4c
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_bash.patch
@@ -0,0 +1,27 @@
+From b229097f08765cfac318dac75b5111bd89ca723d Mon Sep 17 00:00:00 2001
+From: Mark Hatle <mark.hatle@windriver.com>
+Date: Thu, 14 Sep 2017 15:02:23 -0500
+Subject: [PATCH] fix update-alternatives for bash
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+---
+ policy/modules/kernel/corecommands.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
+index 2425154..6db214f 100644
+--- a/policy/modules/kernel/corecommands.fc
++++ b/policy/modules/kernel/corecommands.fc
+@@ -140,6 +140,7 @@ ifdef(`distro_gentoo',`
+ /usr/bin(/.*)?				gen_context(system_u:object_r:bin_t,s0)
+ /usr/bin/d?ash			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/bin/bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
++/usr/bin/bash\.bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/bin/bash2			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/bin/fish			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/bin/git-shell		--	gen_context(system_u:object_r:shell_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_hostname.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_hostname.patch
new file mode 100644
index 0000000..288de7e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_hostname.patch
@@ -0,0 +1,25 @@
+From 3d957c5a05d0f20ffbae23d95dedf0d5c071a32d Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH] fix update-alternatives for hostname
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/hostname.fc | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/hostname.fc b/policy/modules/system/hostname.fc
+index 83ddeb5..cf523bc 100644
+--- a/policy/modules/system/hostname.fc
++++ b/policy/modules/system/hostname.fc
+@@ -1 +1,3 @@
+ /usr/bin/hostname	--	gen_context(system_u:object_r:hostname_exec_t,s0)
++/usr/bin/hostname\.net-tools	--	gen_context(system_u:object_r:hostname_exec_t,s0)
++/usr/bin/hostname\.coreutils	--	gen_context(system_u:object_r:hostname_exec_t,s0)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_sysvinit.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_sysvinit.patch
new file mode 100644
index 0000000..10d5384
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-fc-update-alternatives_sysvinit.patch
@@ -0,0 +1,53 @@
+From 09926f390c36c8c07909b1aa908bd8d4eccff3f7 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH] fix update-alternatives for sysvinit
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/admin/shutdown.fc      | 1 +
+ policy/modules/kernel/corecommands.fc | 1 +
+ policy/modules/system/init.fc         | 1 +
+ 3 files changed, 3 insertions(+)
+
+diff --git a/policy/modules/admin/shutdown.fc b/policy/modules/admin/shutdown.fc
+index 03a2230..2ba049f 100644
+--- a/policy/modules/admin/shutdown.fc
++++ b/policy/modules/admin/shutdown.fc
+@@ -5,5 +5,6 @@
+ /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
+ /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
++/usr/sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
+ /run/shutdown\.pid	--	gen_context(system_u:object_r:shutdown_var_run_t,s0)
+diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
+index 9a37160..2425154 100644
+--- a/policy/modules/kernel/corecommands.fc
++++ b/policy/modules/kernel/corecommands.fc
+@@ -148,6 +148,7 @@ ifdef(`distro_gentoo',`
+ /usr/bin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
+ /usr/bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/bin/mountpoint		--	gen_context(system_u:object_r:bin_t,s0)
++/usr/bin/mountpoint\.sysvinit		--	gen_context(system_u:object_r:bin_t,s0)
+ /usr/bin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/bin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
+diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
+index 11a6ce9..3c063b1 100644
+--- a/policy/modules/system/init.fc
++++ b/policy/modules/system/init.fc
+@@ -40,6 +40,7 @@ ifdef(`distro_gentoo',`
+ /usr/libexec/dcc/stop-.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
+ 
+ /usr/sbin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
++/usr/sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
+ /usr/sbin/open_init_pty	--	gen_context(system_u:object_r:initrc_exec_t,s0)
+ /usr/sbin/upstart	--	gen_context(system_u:object_r:init_exec_t,s0)
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-bsdpty_device_t.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-bsdpty_device_t.patch
similarity index 67%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-bsdpty_device_t.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-bsdpty_device_t.patch
index 7be7147..0dfe484 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-bsdpty_device_t.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-bsdpty_device_t.patch
@@ -1,21 +1,21 @@
-From c0b65c327b9354ee5c403cbde428e762ce3f327e Mon Sep 17 00:00:00 2001
+From 6a9b891cb86a604783bff1e3628c3756dfd94f09 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 5/6] add rules for bsdpty_device_t to complete pty devices.
+Subject: [PATCH] add rules for bsdpty_device_t to complete pty devices.
 
 Upstream-Status: Pending
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/kernel/terminal.if |   16 ++++++++++++++++
+ policy/modules/kernel/terminal.if | 16 ++++++++++++++++
  1 file changed, 16 insertions(+)
 
+diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
+index 6130884..a84787e 100644
 --- a/policy/modules/kernel/terminal.if
 +++ b/policy/modules/kernel/terminal.if
-@@ -585,13 +585,15 @@ interface(`term_getattr_generic_ptys',`
- ## </param>
- #
+@@ -623,9 +623,11 @@ interface(`term_getattr_generic_ptys',`
  interface(`term_dontaudit_getattr_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -27,11 +27,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  ########################################
  ## <summary>
- ##	ioctl of generic pty devices.
- ## </summary>
-@@ -603,15 +605,17 @@ interface(`term_dontaudit_getattr_generi
- #
- # cjp: added for ppp
+@@ -641,11 +643,13 @@ interface(`term_dontaudit_getattr_generic_ptys',`
  interface(`term_ioctl_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -45,11 +41,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Allow setting the attributes of
-@@ -625,13 +629,15 @@ interface(`term_ioctl_generic_ptys',`
- #
- # dwalsh: added for rhgb
+@@ -663,9 +667,11 @@ interface(`term_ioctl_generic_ptys',`
  interface(`term_setattr_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -61,11 +53,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Dontaudit setting the attributes of
-@@ -645,13 +651,15 @@ interface(`term_setattr_generic_ptys',`
- #
- # dwalsh: added for rhgb
+@@ -683,9 +689,11 @@ interface(`term_setattr_generic_ptys',`
  interface(`term_dontaudit_setattr_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -77,11 +65,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Read and write the generic pty
-@@ -665,15 +673,17 @@ interface(`term_dontaudit_setattr_generi
- ## </param>
- #
+@@ -703,11 +711,13 @@ interface(`term_dontaudit_setattr_generic_ptys',`
  interface(`term_use_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -95,11 +79,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Dot not audit attempts to read and
-@@ -687,13 +697,15 @@ interface(`term_use_generic_ptys',`
- ## </param>
- #
+@@ -725,9 +735,11 @@ interface(`term_use_generic_ptys',`
  interface(`term_dontaudit_use_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -111,11 +91,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  #######################################
- ## <summary>
- ##	Set the attributes of the tty device
-@@ -705,14 +717,16 @@ interface(`term_dontaudit_use_generic_pt
- ## </param>
- #
+@@ -743,10 +755,12 @@ interface(`term_dontaudit_use_generic_ptys',`
  interface(`term_setattr_controlling_term',`
  	gen_require(`
  		type devtty_t;
@@ -128,11 +104,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Read and write the controlling
-@@ -725,14 +739,16 @@ interface(`term_setattr_controlling_term
- ## </param>
- #
+@@ -763,10 +777,12 @@ interface(`term_setattr_controlling_term',`
  interface(`term_use_controlling_term',`
  	gen_require(`
  		type devtty_t;
@@ -145,5 +117,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  #######################################
- ## <summary>
- ##	Get the attributes of the pty multiplexor (/dev/ptmx).
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-syslogd_t-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-syslogd_t-symlink.patch
similarity index 62%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-syslogd_t-symlink.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-syslogd_t-symlink.patch
index e90aab5..db07cc9 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-syslogd_t-symlink.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-syslogd_t-symlink.patch
@@ -1,3 +1,6 @@
+From 3c68c934c0ef3427774dc5a6e56a0411e3a4d44f Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Mon, 21 Jan 2019 14:22:05 +0800
 Subject: [PATCH] add rules for the symlink of /var/log - syslogd_t
 
 We have added rules for the symlink of /var/log in logging.if,
@@ -13,18 +16,19 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  policy/modules/system/logging.te | 2 ++
  1 file changed, 2 insertions(+)
 
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 62af682..2f489f2 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -404,10 +404,12 @@ rw_fifo_files_pattern(syslogd_t, var_log
- files_search_spool(syslogd_t)
- 
+@@ -415,6 +415,8 @@ files_search_spool(syslogd_t)
  # Allow access for syslog-ng
  allow syslogd_t var_log_t:dir { create setattr };
  
 +allow syslogd_t var_log_t:lnk_file read_lnk_file_perms;
 +
- # manage temporary files
- manage_dirs_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
- manage_files_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
- files_tmp_filetrans(syslogd_t, syslogd_tmp_t, { dir file })
+ # for systemd but can not be conditional
+ files_pid_filetrans(syslogd_t, syslogd_tmp_t, dir, "log")
  
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-tmp-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-tmp-symlink.patch
similarity index 54%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-tmp-symlink.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-tmp-symlink.patch
index 07ebf58..3edcbda 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-tmp-symlink.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-tmp-symlink.patch
@@ -1,4 +1,4 @@
-From 22cd030a8118faae37c0835eb7875e482efe5dc1 Mon Sep 17 00:00:00 2001
+From e8afe57991469893a04c4065e9e2ce7a52e7babe Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] add rules for the symlink of /tmp
@@ -11,15 +11,15 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/kernel/files.fc |    1 +
- policy/modules/kernel/files.if |    8 ++++++++
- 2 files changed, 9 insertions(+), 0 deletions(-)
+ policy/modules/kernel/files.fc | 1 +
+ policy/modules/kernel/files.if | 8 ++++++++
+ 2 files changed, 9 insertions(+)
 
+diff --git a/policy/modules/kernel/files.fc b/policy/modules/kernel/files.fc
+index c3496c2..05b1734 100644
 --- a/policy/modules/kernel/files.fc
 +++ b/policy/modules/kernel/files.fc
-@@ -191,10 +191,11 @@ ifdef(`distro_debian',`
- 
- #
+@@ -176,6 +176,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
  # /tmp
  #
  /tmp			-d	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
@@ -27,13 +27,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  /tmp/.*				<<none>>
  /tmp/\.journal			<<none>>
  
- /tmp/lost\+found	-d	gen_context(system_u:object_r:lost_found_t,mls_systemhigh)
- /tmp/lost\+found/.*		<<none>>
+diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
+index e9bc8dd..6aa2ca5 100644
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -4471,10 +4471,11 @@ interface(`files_search_tmp',`
- 	gen_require(`
- 		type tmp_t;
+@@ -4331,6 +4331,7 @@ interface(`files_search_tmp',`
  	')
  
  	allow $1 tmp_t:dir search_dir_perms;
@@ -41,11 +39,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Do not audit attempts to search the tmp directory (/tmp).
-@@ -4507,10 +4508,11 @@ interface(`files_list_tmp',`
- 	gen_require(`
- 		type tmp_t;
+@@ -4367,6 +4368,7 @@ interface(`files_list_tmp',`
  	')
  
  	allow $1 tmp_t:dir list_dir_perms;
@@ -53,11 +47,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Do not audit listing of the tmp directory (/tmp).
-@@ -4543,10 +4545,11 @@ interface(`files_delete_tmp_dir_entry',`
- 	gen_require(`
- 		type tmp_t;
+@@ -4403,6 +4405,7 @@ interface(`files_delete_tmp_dir_entry',`
  	')
  
  	allow $1 tmp_t:dir del_entry_dir_perms;
@@ -65,11 +55,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Read files in the tmp directory (/tmp).
-@@ -4561,10 +4564,11 @@ interface(`files_read_generic_tmp_files'
- 	gen_require(`
- 		type tmp_t;
+@@ -4421,6 +4424,7 @@ interface(`files_read_generic_tmp_files',`
  	')
  
  	read_files_pattern($1, tmp_t, tmp_t)
@@ -77,11 +63,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Manage temporary directories in /tmp.
-@@ -4579,10 +4583,11 @@ interface(`files_manage_generic_tmp_dirs
- 	gen_require(`
- 		type tmp_t;
+@@ -4439,6 +4443,7 @@ interface(`files_manage_generic_tmp_dirs',`
  	')
  
  	manage_dirs_pattern($1, tmp_t, tmp_t)
@@ -89,11 +71,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Manage temporary files and directories in /tmp.
-@@ -4597,10 +4602,11 @@ interface(`files_manage_generic_tmp_file
- 	gen_require(`
- 		type tmp_t;
+@@ -4457,6 +4462,7 @@ interface(`files_manage_generic_tmp_files',`
  	')
  
  	manage_files_pattern($1, tmp_t, tmp_t)
@@ -101,11 +79,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Read symbolic links in the tmp directory (/tmp).
-@@ -4633,10 +4639,11 @@ interface(`files_rw_generic_tmp_sockets'
- 	gen_require(`
- 		type tmp_t;
+@@ -4493,6 +4499,7 @@ interface(`files_rw_generic_tmp_sockets',`
  	')
  
  	rw_sock_files_pattern($1, tmp_t, tmp_t)
@@ -113,11 +87,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Mount filesystems in the tmp directory (/tmp)
-@@ -4840,10 +4847,11 @@ interface(`files_tmp_filetrans',`
- 	gen_require(`
- 		type tmp_t;
+@@ -4700,6 +4707,7 @@ interface(`files_tmp_filetrans',`
  	')
  
  	filetrans_pattern($1, tmp_t, $2, $3, $4)
@@ -125,5 +95,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Delete the contents of /tmp.
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-cache-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-cache-symlink.patch
similarity index 71%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-cache-symlink.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-cache-symlink.patch
index b828b7a..57c02b5 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-cache-symlink.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-cache-symlink.patch
@@ -1,7 +1,7 @@
-From bad816bc752369a6c1bf40231c505d21d95cab08 Mon Sep 17 00:00:00 2001
+From e1d68e907e68c49b18295e8167c40dfc7cd58ea0 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 11:20:00 +0800
-Subject: [PATCH 4/6] add rules for the subdir symlinks in /var/
+Subject: [PATCH] add rules for the subdir symlinks in /var/
 
 Except /var/log,/var/run,/var/lock, there still other subdir symlinks in
 /var for poky, so we need allow rules for all domains to read these
@@ -13,14 +13,14 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/kernel/domain.te |    3 +++
+ policy/modules/kernel/domain.te | 3 +++
  1 file changed, 3 insertions(+)
 
+diff --git a/policy/modules/kernel/domain.te b/policy/modules/kernel/domain.te
+index e44e344..09ad808 100644
 --- a/policy/modules/kernel/domain.te
 +++ b/policy/modules/kernel/domain.te
-@@ -108,10 +108,13 @@ dev_rw_zero(domain)
- term_use_controlling_term(domain)
- 
+@@ -110,6 +110,9 @@ term_use_controlling_term(domain)
  # list the root directory
  files_list_root(domain)
  
@@ -30,5 +30,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ifdef(`hide_broken_symptoms',`
  	# This check is in the general socket
  	# listen code, before protocol-specific
- 	# listen function is called, so bad calls
- 	# to listen on UDP sockets should be silenced
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink-apache.patch
similarity index 52%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink-apache.patch
index fb912b5..6e04d09 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink-apache.patch
@@ -1,7 +1,7 @@
-From ed2b0a00e2fb78056041b03c7e198e8f5adaf939 Mon Sep 17 00:00:00 2001
+From 191154b085205528e3de6bdf156c6f6827f93ea9 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 19:36:44 +0800
-Subject: [PATCH 3/6] add rules for the symlink of /var/log - apache2
+Subject: [PATCH] add rules for the symlink of /var/log - apache2
 
 We have added rules for the symlink of /var/log in logging.if,
 while apache.te uses /var/log but does not use the interfaces in
@@ -12,20 +12,21 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/contrib/apache.te |    1 +
+ policy/modules/services/apache.te | 1 +
  1 file changed, 1 insertion(+)
 
---- a/policy/modules/contrib/apache.te
-+++ b/policy/modules/contrib/apache.te
-@@ -407,10 +407,11 @@ allow httpd_t httpd_lock_t:file manage_f
- files_lock_filetrans(httpd_t, httpd_lock_t, { file dir })
- 
- manage_dirs_pattern(httpd_t, httpd_log_t, httpd_log_t)
- manage_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+diff --git a/policy/modules/services/apache.te b/policy/modules/services/apache.te
+index d1fbeb1..d24f183 100644
+--- a/policy/modules/services/apache.te
++++ b/policy/modules/services/apache.te
+@@ -412,6 +412,7 @@ create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ read_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ setattr_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
  read_lnk_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
 +read_lnk_files_pattern(httpd_t, var_log_t, var_log_t)
  logging_log_filetrans(httpd_t, httpd_log_t, file)
  
  allow httpd_t httpd_modules_t:dir list_dir_perms;
- mmap_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
- read_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
similarity index 73%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
index 2e8e1f2..279cf28 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
@@ -1,3 +1,6 @@
+From 8920c23b0b92eb5176e9e13f9a379d4f520452d3 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Mon, 21 Jan 2019 14:10:00 +0800
 Subject: [PATCH] add rules for the symlink of /var/log - audisp_remote_t
 
 We have added rules for the symlink of /var/log in logging.if,
@@ -13,11 +16,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  policy/modules/system/logging.te | 1 +
  1 file changed, 1 insertion(+)
 
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index d8d57f6..62af682 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -278,10 +278,11 @@ optional_policy(`
- 
- allow audisp_remote_t self:capability { setuid setpcap };
+@@ -287,6 +287,7 @@ allow audisp_remote_t self:capability { setpcap setuid };
  allow audisp_remote_t self:process { getcap setcap };
  allow audisp_remote_t self:tcp_socket create_socket_perms;
  allow audisp_remote_t var_log_t:dir search_dir_perms;
@@ -25,5 +28,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  
  manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
  manage_files_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
- files_spool_filetrans(audisp_remote_t, audit_spool_t, { dir file })
- 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink.patch
new file mode 100644
index 0000000..fa14424
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-rules-for-var-log-symlink.patch
@@ -0,0 +1,106 @@
+From 7c8b5358d38f20d6166d46b88eeadf5b9b03632c Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH] add rules for the symlink of /var/log
+
+/var/log is a symlink in poky, so we need allow rules for files to read
+lnk_file while doing search/list/delete/rw.. in /var/log/ directory.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/system/logging.fc | 1 +
+ policy/modules/system/logging.if | 9 ++++++++-
+ policy/modules/system/logging.te | 1 +
+ 3 files changed, 10 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
+index c579c2d..36c3b8d 100644
+--- a/policy/modules/system/logging.fc
++++ b/policy/modules/system/logging.fc
+@@ -50,6 +50,7 @@ ifdef(`distro_suse', `
+ /var/dnscache/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
+ 
+ /var/log		-d	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
++/var/log		-l	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
+ /var/log/.*			gen_context(system_u:object_r:var_log_t,s0)
+ /var/log/dmesg		--	gen_context(system_u:object_r:var_log_t,s0)
+ /var/log/syslog		--	gen_context(system_u:object_r:var_log_t,s0)
+diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
+index 3c843fd..b714bf8 100644
+--- a/policy/modules/system/logging.if
++++ b/policy/modules/system/logging.if
+@@ -136,12 +136,13 @@ interface(`logging_set_audit_parameters',`
+ #
+ interface(`logging_read_audit_log',`
+ 	gen_require(`
+-		type auditd_log_t;
++		type auditd_log_t, var_log_t;
+ 	')
+ 
+ 	files_search_var($1)
+ 	read_files_pattern($1, auditd_log_t, auditd_log_t)
+ 	allow $1 auditd_log_t:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ 
+ 	dontaudit $1 auditd_log_t:file map;
+ ')
+@@ -945,10 +946,12 @@ interface(`logging_append_all_inherited_logs',`
+ interface(`logging_read_all_logs',`
+ 	gen_require(`
+ 		attribute logfile;
++		type var_log_t;
+ 	')
+ 
+ 	files_search_var($1)
+ 	allow $1 logfile:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ 	read_files_pattern($1, logfile, logfile)
+ ')
+ 
+@@ -967,10 +970,12 @@ interface(`logging_read_all_logs',`
+ interface(`logging_exec_all_logs',`
+ 	gen_require(`
+ 		attribute logfile;
++		type var_log_t;
+ 	')
+ 
+ 	files_search_var($1)
+ 	allow $1 logfile:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ 	can_exec($1, logfile)
+ ')
+ 
+@@ -1072,6 +1077,7 @@ interface(`logging_read_generic_logs',`
+ 
+ 	files_search_var($1)
+ 	allow $1 var_log_t:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ 	read_files_pattern($1, var_log_t, var_log_t)
+ ')
+ 
+@@ -1173,6 +1179,7 @@ interface(`logging_manage_generic_logs',`
+ 
+ 	files_search_var($1)
+ 	manage_files_pattern($1, var_log_t, var_log_t)
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 4964c5b..d8d57f6 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -159,6 +159,7 @@ manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
+ allow auditd_t auditd_log_t:dir setattr;
+ manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
+ allow auditd_t var_log_t:dir search_dir_perms;
++allow auditd_t var_log_t:lnk_file read_lnk_file_perms;
+ 
+ manage_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
+ manage_sock_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-syslogd_t-to-trusted-object.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-syslogd_t-to-trusted-object.patch
similarity index 94%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-syslogd_t-to-trusted-object.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-syslogd_t-to-trusted-object.patch
index dc623d3..11ca8ee 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-syslogd_t-to-trusted-object.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-add-syslogd_t-to-trusted-object.patch
@@ -1,7 +1,7 @@
 From 27e62a5d9ab9993760369ccdad83673e9148cbb2 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 1/6] Add the syslogd_t to trusted object
+Subject: [PATCH] Add the syslogd_t to trusted object
 
 We add the syslogd_t to trusted object, because other process need
 to have the right to connectto/sendto /dev/log.
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-nfsd-to-exec-shell-commands.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-nfsd-to-exec-shell-commands.patch
new file mode 100644
index 0000000..46f7d03
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-nfsd-to-exec-shell-commands.patch
@@ -0,0 +1,29 @@
+From 2595bbaba5e0c2738c84fd685a8311d8a5179afa Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH] allow nfsd to exec shell commands.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/services/rpc.te | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
+index 47fa2fd..d420923 100644
+--- a/policy/modules/services/rpc.te
++++ b/policy/modules/services/rpc.te
+@@ -227,7 +227,7 @@ kernel_read_network_state(nfsd_t)
+ kernel_dontaudit_getattr_core_if(nfsd_t)
+ kernel_setsched(nfsd_t)
+ kernel_request_load_module(nfsd_t)
+-# kernel_mounton_proc(nfsd_t)
++kernel_mounton_proc(nfsd_t)
+ 
+ corenet_sendrecv_nfs_server_packets(nfsd_t)
+ corenet_tcp_bind_nfs_port(nfsd_t)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-setfiles_t-to-read-symlinks.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-setfiles_t-to-read-symlinks.patch
similarity index 65%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-setfiles_t-to-read-symlinks.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-setfiles_t-to-read-symlinks.patch
index d28bde0..c6c6b37 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-setfiles_t-to-read-symlinks.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-setfiles_t-to-read-symlinks.patch
@@ -1,4 +1,4 @@
-From 87b6daf87a07350a58c1724db8fc0a99b849818a Mon Sep 17 00:00:00 2001
+From d9fb16c5499198c3bbe8266eda10496761972d70 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fix setfiles_t to read symlinks
@@ -9,14 +9,14 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/system/selinuxutil.te |    3 +++
+ policy/modules/system/selinuxutil.te | 3 +++
  1 file changed, 3 insertions(+)
 
+diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
+index d67226a..84ea85f 100644
 --- a/policy/modules/system/selinuxutil.te
 +++ b/policy/modules/system/selinuxutil.te
-@@ -553,10 +553,13 @@ files_read_etc_files(setfiles_t)
- files_list_all(setfiles_t)
- files_relabel_all_files(setfiles_t)
+@@ -598,6 +598,9 @@ files_relabel_all_files(setfiles_t)
  files_read_usr_symlinks(setfiles_t)
  files_dontaudit_read_all_symlinks(setfiles_t)
  
@@ -24,7 +24,8 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 +files_read_all_symlinks(setfiles_t)
 +
  fs_getattr_all_xattr_fs(setfiles_t)
- fs_list_all(setfiles_t)
- fs_search_auto_mountpoints(setfiles_t)
- fs_relabelfrom_noxattr_fs(setfiles_t)
- 
+ fs_getattr_nfs(setfiles_t)
+ fs_getattr_pstore_dirs(setfiles_t)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-sysadm-to-run-rpcinfo.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-sysadm-to-run-rpcinfo.patch
similarity index 80%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-sysadm-to-run-rpcinfo.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-sysadm-to-run-rpcinfo.patch
index a1fda13..fb8a745 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-sysadm-to-run-rpcinfo.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-allow-sysadm-to-run-rpcinfo.patch
@@ -1,4 +1,4 @@
-From 7005533d61770fed5a3312aa9dfd1c18dae88c16 Mon Sep 17 00:00:00 2001
+From cb4037a1d9c88009fe01d97531e4187d9502fdaa Mon Sep 17 00:00:00 2001
 From: Roy Li <rongqing.li@windriver.com>
 Date: Sat, 15 Feb 2014 09:45:00 +0800
 Subject: [PATCH] allow sysadm to run rpcinfo
@@ -11,14 +11,14 @@ type=SYSCALL msg=audit(1392427946.976:264): arch=c000003e syscall=42 success=no
 Signed-off-by: Roy Li <rongqing.li@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/roles/sysadm.te |    4 ++++
+ policy/modules/roles/sysadm.te | 4 ++++
  1 file changed, 4 insertions(+)
 
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index 93ee729..b18c065 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -1169,10 +1169,14 @@ optional_policy(`
- 	virt_admin(sysadm_t, sysadm_r)
- 	virt_stream_connect(sysadm_t)
+@@ -1194,6 +1194,10 @@ optional_policy(`
  ')
  
  optional_policy(`
@@ -29,5 +29,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	vmware_role(sysadm_r, sysadm_t)
  ')
  
- optional_policy(`
- 	vnstatd_admin(sysadm_t, sysadm_r)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-don-t-audit-tty_device_t.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-don-t-audit-tty_device_t.patch
similarity index 68%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-don-t-audit-tty_device_t.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-don-t-audit-tty_device_t.patch
index 346872a..0754069 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-don-t-audit-tty_device_t.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-don-t-audit-tty_device_t.patch
@@ -1,7 +1,7 @@
-From 29a0d287880f8f83cf4337a3db7c8b94c0c36e1d Mon Sep 17 00:00:00 2001
+From 874a6a0899cd51929e32bc02dd3aee2fe931a22c Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 6/6] don't audit tty_device_t in term_dontaudit_use_console.
+Subject: [PATCH] don't audit tty_device_t in term_dontaudit_use_console.
 
 We should also not audit terminal to rw tty_device_t and fds in
 term_dontaudit_use_console.
@@ -11,14 +11,14 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/kernel/terminal.if |    3 +++
+ policy/modules/kernel/terminal.if | 3 +++
  1 file changed, 3 insertions(+)
 
+diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
+index a84787e..cf66da2 100644
 --- a/policy/modules/kernel/terminal.if
 +++ b/policy/modules/kernel/terminal.if
-@@ -297,13 +297,16 @@ interface(`term_use_console',`
- ## </param>
- #
+@@ -335,9 +335,12 @@ interface(`term_use_console',`
  interface(`term_dontaudit_use_console',`
  	gen_require(`
  		type console_device_t;
@@ -31,5 +31,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
- ## <summary>
- ##	Set the attributes of the console
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-dmesg-to-use-dev-kmsg.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
new file mode 100644
index 0000000..ad414f0
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
@@ -0,0 +1,24 @@
+From 16ac0f130d3927626166b06628c926911de7a8a6 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Fri, 23 Aug 2013 16:36:09 +0800
+Subject: [PATCH] fix dmesg to use /dev/kmsg as default input
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/admin/dmesg.if | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/admin/dmesg.if b/policy/modules/admin/dmesg.if
+index e1973c7..739a4bc 100644
+--- a/policy/modules/admin/dmesg.if
++++ b/policy/modules/admin/dmesg.if
+@@ -37,4 +37,5 @@ interface(`dmesg_exec',`
+ 
+ 	corecmd_search_bin($1)
+ 	can_exec($1, dmesg_exec_t)
++	dev_read_kmsg($1)
+ ')
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-new-SELINUXMNT-in-sys.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-new-SELINUXMNT-in-sys.patch
similarity index 52%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-new-SELINUXMNT-in-sys.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-new-SELINUXMNT-in-sys.patch
index 58903ce..adf40ef 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-new-SELINUXMNT-in-sys.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-new-SELINUXMNT-in-sys.patch
@@ -1,4 +1,4 @@
-From 0bd1187768c79ccf7d0563fa8e2bc01494fef167 Mon Sep 17 00:00:00 2001
+From 6468648ba8704b6f4b4532ae9635642c97f1af42 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fix for new SELINUXMNT in /sys
@@ -11,14 +11,14 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/kernel/selinux.if |   34 ++++++++++++++++++++++++++++++++--
- 1 file changed, 32 insertions(+), 2 deletions(-)
+ policy/modules/kernel/selinux.if | 32 ++++++++++++++++++++++++++++++++
+ 1 file changed, 32 insertions(+)
 
+diff --git a/policy/modules/kernel/selinux.if b/policy/modules/kernel/selinux.if
+index 8123b25..89f833e 100644
 --- a/policy/modules/kernel/selinux.if
 +++ b/policy/modules/kernel/selinux.if
-@@ -56,10 +56,14 @@ interface(`selinux_labeled_boolean',`
- interface(`selinux_get_fs_mount',`
- 	gen_require(`
+@@ -58,6 +58,10 @@ interface(`selinux_get_fs_mount',`
  		type security_t;
  	')
  
@@ -29,11 +29,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	# starting in libselinux 2.0.5, init_selinuxmnt() will
  	# attempt to short circuit by checking if SELINUXMNT
  	# (/selinux) is already a selinuxfs
- 	allow $1 security_t:filesystem getattr;
- 
-@@ -86,10 +90,11 @@ interface(`selinux_get_fs_mount',`
- interface(`selinux_dontaudit_get_fs_mount',`
- 	gen_require(`
+@@ -88,6 +92,7 @@ interface(`selinux_dontaudit_get_fs_mount',`
  		type security_t;
  	')
  
@@ -41,11 +37,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	# starting in libselinux 2.0.5, init_selinuxmnt() will
  	# attempt to short circuit by checking if SELINUXMNT
  	# (/selinux) is already a selinuxfs
- 	dontaudit $1 security_t:filesystem getattr;
- 
-@@ -115,10 +120,12 @@ interface(`selinux_dontaudit_get_fs_moun
- interface(`selinux_mount_fs',`
- 	gen_require(`
+@@ -117,6 +122,8 @@ interface(`selinux_mount_fs',`
  		type security_t;
  	')
  
@@ -54,11 +46,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	allow $1 security_t:filesystem mount;
  ')
  
- ########################################
- ## <summary>
-@@ -134,10 +141,12 @@ interface(`selinux_mount_fs',`
- interface(`selinux_remount_fs',`
- 	gen_require(`
+@@ -136,6 +143,8 @@ interface(`selinux_remount_fs',`
  		type security_t;
  	')
  
@@ -67,11 +55,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	allow $1 security_t:filesystem remount;
  ')
  
- ########################################
- ## <summary>
-@@ -152,10 +161,12 @@ interface(`selinux_remount_fs',`
- interface(`selinux_unmount_fs',`
- 	gen_require(`
+@@ -154,6 +163,8 @@ interface(`selinux_unmount_fs',`
  		type security_t;
  	')
  
@@ -80,11 +64,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	allow $1 security_t:filesystem unmount;
  ')
  
- ########################################
- ## <summary>
-@@ -170,10 +181,12 @@ interface(`selinux_unmount_fs',`
- interface(`selinux_getattr_fs',`
- 	gen_require(`
+@@ -172,6 +183,8 @@ interface(`selinux_getattr_fs',`
  		type security_t;
  	')
  
@@ -93,11 +73,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	allow $1 security_t:filesystem getattr;
  
  	dev_getattr_sysfs($1)
- 	dev_search_sysfs($1)
- ')
-@@ -192,10 +205,11 @@ interface(`selinux_getattr_fs',`
- interface(`selinux_dontaudit_getattr_fs',`
- 	gen_require(`
+@@ -194,6 +207,7 @@ interface(`selinux_dontaudit_getattr_fs',`
  		type security_t;
  	')
  
@@ -105,11 +81,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dontaudit $1 security_t:filesystem getattr;
  
  	dev_dontaudit_getattr_sysfs($1)
- 	dev_dontaudit_search_sysfs($1)
- ')
-@@ -214,10 +228,11 @@ interface(`selinux_dontaudit_getattr_fs'
- interface(`selinux_dontaudit_getattr_dir',`
- 	gen_require(`
+@@ -216,6 +230,7 @@ interface(`selinux_dontaudit_getattr_dir',`
  		type security_t;
  	')
  
@@ -117,11 +89,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dontaudit $1 security_t:dir getattr;
  ')
  
- ########################################
- ## <summary>
-@@ -232,10 +247,11 @@ interface(`selinux_dontaudit_getattr_dir
- interface(`selinux_search_fs',`
- 	gen_require(`
+@@ -234,6 +249,7 @@ interface(`selinux_search_fs',`
  		type security_t;
  	')
  
@@ -129,11 +97,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir search_dir_perms;
  ')
- 
- ########################################
-@@ -251,10 +267,11 @@ interface(`selinux_search_fs',`
- interface(`selinux_dontaudit_search_fs',`
- 	gen_require(`
+@@ -253,6 +269,7 @@ interface(`selinux_dontaudit_search_fs',`
  		type security_t;
  	')
  
@@ -141,11 +105,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dontaudit $1 security_t:dir search_dir_perms;
  ')
  
- ########################################
- ## <summary>
-@@ -270,10 +287,11 @@ interface(`selinux_dontaudit_search_fs',
- interface(`selinux_dontaudit_read_fs',`
- 	gen_require(`
+@@ -272,6 +289,7 @@ interface(`selinux_dontaudit_read_fs',`
  		type security_t;
  	')
  
@@ -153,11 +113,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dontaudit $1 security_t:dir search_dir_perms;
  	dontaudit $1 security_t:file read_file_perms;
  ')
- 
- ########################################
-@@ -291,10 +309,11 @@ interface(`selinux_dontaudit_read_fs',`
- interface(`selinux_get_enforce_mode',`
- 	gen_require(`
+@@ -293,6 +311,7 @@ interface(`selinux_get_enforce_mode',`
  		type security_t;
  	')
  
@@ -165,11 +121,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file read_file_perms;
- ')
- 
-@@ -359,10 +378,11 @@ interface(`selinux_load_policy',`
- interface(`selinux_read_policy',`
- 	gen_require(`
+@@ -361,6 +380,7 @@ interface(`selinux_read_policy',`
  		type security_t;
  	')
  
@@ -177,11 +129,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file read_file_perms;
- 	allow $1 security_t:security read_policy;
- ')
-@@ -424,10 +444,11 @@ interface(`selinux_set_boolean',`
- interface(`selinux_set_generic_booleans',`
- 	gen_require(`
+@@ -394,6 +414,7 @@ interface(`selinux_set_generic_booleans',`
  		type security_t;
  	')
  
@@ -189,11 +137,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  
  	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file rw_file_perms;
- 
-@@ -461,10 +482,11 @@ interface(`selinux_set_all_booleans',`
- 		type security_t, secure_mode_policyload_t;
- 		attribute boolean_type;
+@@ -431,6 +452,7 @@ interface(`selinux_set_all_booleans',`
  		bool secure_mode_policyload;
  	')
  
@@ -201,11 +145,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  
  	allow $1 security_t:dir list_dir_perms;
- 	allow $1 { boolean_type -secure_mode_policyload_t }:file rw_file_perms;
- 	allow $1 secure_mode_policyload_t:file read_file_perms;
-@@ -520,10 +542,11 @@ interface(`selinux_set_parameters',`
- interface(`selinux_validate_context',`
- 	gen_require(`
+@@ -490,6 +512,7 @@ interface(`selinux_validate_context',`
  		type security_t;
  	')
  
@@ -213,11 +153,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file rw_file_perms;
- 	allow $1 security_t:security check_context;
- ')
-@@ -542,10 +565,11 @@ interface(`selinux_validate_context',`
- interface(`selinux_dontaudit_validate_context',`
- 	gen_require(`
+@@ -512,6 +535,7 @@ interface(`selinux_dontaudit_validate_context',`
  		type security_t;
  	')
  
@@ -225,11 +161,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dontaudit $1 security_t:dir list_dir_perms;
  	dontaudit $1 security_t:file rw_file_perms;
  	dontaudit $1 security_t:security check_context;
- ')
- 
-@@ -563,10 +587,11 @@ interface(`selinux_dontaudit_validate_co
- interface(`selinux_compute_access_vector',`
- 	gen_require(`
+@@ -533,6 +557,7 @@ interface(`selinux_compute_access_vector',`
  		type security_t;
  	')
  
@@ -237,11 +169,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file rw_file_perms;
- 	allow $1 security_t:security compute_av;
- ')
-@@ -658,10 +683,17 @@ interface(`selinux_compute_relabel_conte
- interface(`selinux_compute_user_contexts',`
- 	gen_require(`
+@@ -628,6 +653,13 @@ interface(`selinux_compute_user_contexts',`
  		type security_t;
  	')
  
@@ -255,5 +183,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file rw_file_perms;
- 	allow $1 security_t:security compute_user;
- ')
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
similarity index 57%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
index 883daf8..aaebe58 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
@@ -1,4 +1,4 @@
-From 054a2d81a42bc127d29a916c64b43ad5a7c97f21 Mon Sep 17 00:00:00 2001
+From 9969acad07da1e119812b77d8060bcdc75fd0832 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 12:01:53 +0800
 Subject: [PATCH] fix policy for nfsserver to mount nfsd_fs_t.
@@ -8,51 +8,17 @@ Upstream-Status: Pending
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/contrib/rpc.te       |    5 +++++
- policy/modules/contrib/rpcbind.te   |    5 +++++
- policy/modules/kernel/filesystem.te |    1 +
- policy/modules/kernel/kernel.te     |    2 ++
+ policy/modules/kernel/filesystem.te | 1 +
+ policy/modules/kernel/kernel.te     | 2 ++
+ policy/modules/services/rpc.te      | 5 +++++
+ policy/modules/services/rpcbind.te  | 5 +++++
  4 files changed, 13 insertions(+)
 
---- a/policy/modules/contrib/rpcbind.te
-+++ b/policy/modules/contrib/rpcbind.te
-@@ -71,8 +71,13 @@ auth_use_nsswitch(rpcbind_t)
- 
- logging_send_syslog_msg(rpcbind_t)
- 
- miscfiles_read_localization(rpcbind_t)
- 
-+# nfsd_t would not be allowed to send unix_stream_socket to rpcbind_t,
-+# because the are running in different level. So add rules to allow this.
-+mls_socket_read_all_levels(rpcbind_t)
-+mls_socket_write_all_levels(rpcbind_t)
-+
- ifdef(`distro_debian',`
- 	term_dontaudit_use_unallocated_ttys(rpcbind_t)
- ')
---- a/policy/modules/contrib/rpc.te
-+++ b/policy/modules/contrib/rpc.te
-@@ -275,10 +275,15 @@ tunable_policy(`nfs_export_all_ro',`
- 	files_read_non_auth_files(nfsd_t)
- ')
- 
- optional_policy(`
- 	mount_exec(nfsd_t)
-+	# Should domtrans to mount_t while mounting nfsd_fs_t.
-+	mount_domtrans(nfsd_t)
-+	# nfsd_t need to chdir to /var/lib/nfs and read files.
-+	files_list_var(nfsd_t)
-+	rpc_read_nfs_state_data(nfsd_t)
- ')
- 
- ########################################
- #
- # GSSD local policy
+diff --git a/policy/modules/kernel/filesystem.te b/policy/modules/kernel/filesystem.te
+index 1e962d7..e767b0b 100644
 --- a/policy/modules/kernel/filesystem.te
 +++ b/policy/modules/kernel/filesystem.te
-@@ -127,10 +127,11 @@ fs_noxattr_type(mvfs_t)
- allow mvfs_t self:filesystem associate;
- genfscon mvfs / gen_context(system_u:object_r:mvfs_t,s0)
+@@ -129,6 +129,7 @@ genfscon mvfs / gen_context(system_u:object_r:mvfs_t,s0)
  
  type nfsd_fs_t;
  fs_type(nfsd_fs_t)
@@ -60,13 +26,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  genfscon nfsd / gen_context(system_u:object_r:nfsd_fs_t,s0)
  
  type nsfs_t;
- fs_type(nsfs_t)
- genfscon nsfs / gen_context(system_u:object_r:nsfs_t,s0)
+diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
+index e8073f9..e127728 100644
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -324,10 +324,12 @@ mcs_process_set_categories(kernel_t)
- 
- mls_process_read_all_levels(kernel_t)
+@@ -332,6 +332,8 @@ mls_process_read_all_levels(kernel_t)
  mls_process_write_all_levels(kernel_t)
  mls_file_write_all_levels(kernel_t)
  mls_file_read_all_levels(kernel_t)
@@ -75,5 +39,38 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  
  ifdef(`distro_redhat',`
  	# Bugzilla 222337
- 	fs_rw_tmpfs_chr_files(kernel_t)
+diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
+index d420923..a2327b4 100644
+--- a/policy/modules/services/rpc.te
++++ b/policy/modules/services/rpc.te
+@@ -280,6 +280,11 @@ tunable_policy(`nfs_export_all_ro',`
+ 
+ optional_policy(`
+ 	mount_exec(nfsd_t)
++	# Should domtrans to mount_t while mounting nfsd_fs_t.
++	mount_domtrans(nfsd_t)
++	# nfsd_t need to chdir to /var/lib/nfs and read files.
++	files_list_var(nfsd_t)
++	rpc_read_nfs_state_data(nfsd_t)
  ')
+ 
+ ########################################
+diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/rpcbind.te
+index 5914af9..2055c11 100644
+--- a/policy/modules/services/rpcbind.te
++++ b/policy/modules/services/rpcbind.te
+@@ -75,6 +75,11 @@ logging_send_syslog_msg(rpcbind_t)
+ 
+ miscfiles_read_localization(rpcbind_t)
+ 
++# nfsd_t would not be allowed to send unix_stream_socket to rpcbind_t,
++# because the are running in different level. So add rules to allow this.
++mls_socket_read_all_levels(rpcbind_t)
++mls_socket_write_all_levels(rpcbind_t)
++
+ ifdef(`distro_debian',`
+ 	term_dontaudit_use_unallocated_ttys(rpcbind_t)
+ ')
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-setfiles-statvfs-get-file-count.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-setfiles-statvfs-get-file-count.patch
similarity index 65%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-setfiles-statvfs-get-file-count.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-setfiles-statvfs-get-file-count.patch
index 1cfd80b..2d5496e 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-setfiles-statvfs-get-file-count.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-setfiles-statvfs-get-file-count.patch
@@ -1,4 +1,4 @@
-From f4e034d6996c5b1f88a9262828dac2ad6ee09b7b Mon Sep 17 00:00:00 2001
+From e9da8e4e979631181a2c7cf8da9884ce571a668c Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 14:38:53 +0800
 Subject: [PATCH] fix setfiles statvfs to get file count
@@ -12,21 +12,22 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/system/selinuxutil.te |    2 +-
+ policy/modules/system/selinuxutil.te | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
+diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
+index 84ea85f..947fb54 100644
 --- a/policy/modules/system/selinuxutil.te
 +++ b/policy/modules/system/selinuxutil.te
-@@ -556,11 +556,11 @@ files_read_usr_symlinks(setfiles_t)
- files_dontaudit_read_all_symlinks(setfiles_t)
- 
+@@ -601,7 +601,7 @@ files_dontaudit_read_all_symlinks(setfiles_t)
  # needs to be able to read symlinks to make restorecon on symlink working
  files_read_all_symlinks(setfiles_t)
  
 -fs_getattr_all_xattr_fs(setfiles_t)
 +fs_getattr_all_fs(setfiles_t)
- fs_list_all(setfiles_t)
- fs_search_auto_mountpoints(setfiles_t)
- fs_relabelfrom_noxattr_fs(setfiles_t)
- 
- mls_file_read_all_levels(setfiles_t)
+ fs_getattr_nfs(setfiles_t)
+ fs_getattr_pstore_dirs(setfiles_t)
+ fs_getattr_pstorefs(setfiles_t)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-seutils-manage-config-files.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-seutils-manage-config-files.patch
similarity index 95%
rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-seutils-manage-config-files.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-seutils-manage-config-files.patch
index fba7759..574752f 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-seutils-manage-config-files.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-fix-seutils-manage-config-files.patch
@@ -1,7 +1,7 @@
 From be8e015aec19553d3753af132861d24da9ed0265 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 2/2] refpolicy: fix selinux utils to manage config files
+Subject: [PATCH] refpolicy: fix selinux utils to manage config files
 
 Upstream-Status: Pending
 
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/ftp-add-ftpd_t-to-mlsfilewrite.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-ftp-add-ftpd_t-to-mlsfilewrite.patch
similarity index 78%
rename from recipes-security/refpolicy/refpolicy-2.20170204/ftp-add-ftpd_t-to-mlsfilewrite.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-ftp-add-ftpd_t-to-mlsfilewrite.patch
index 85c40a4..97c030d 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/ftp-add-ftpd_t-to-mlsfilewrite.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-ftp-add-ftpd_t-to-mlsfilewrite.patch
@@ -1,4 +1,4 @@
-From e4e95b723d31c7b678a05cd81a96b10185978b4e Mon Sep 17 00:00:00 2001
+From 5571446cf62d6445088c8237cf779881cd1c66b7 Mon Sep 17 00:00:00 2001
 From: Roy Li <rongqing.li@windriver.com>
 Date: Mon, 10 Feb 2014 18:10:12 +0800
 Subject: [PATCH] ftp: add ftpd_t to mls_file_write_all_levels
@@ -12,21 +12,21 @@ type=AVC msg=audit(1392347709.621:15): avc:  denied  { write } for  pid=545 comm
 type=AVC msg=audit(1392347709.621:15): avc:  denied  { add_name } for  pid=545 comm="proftpd" name="proftpd.delay" scontext=system_u:system_r:ftpd_t:s15:c0.c1023 tcontext=system_u:object_r:var_run_t:s0-s15:c0.c1023 tclass=dir
 type=SYSCALL msg=audit(1392347709.621:15): arch=c000003e syscall=2 success=yes exit=3 a0=471910 a1=42 a2=1b6 a3=8 items=0 ppid=539 pid=545 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 ses=4294967295 tty=(none) comm="proftpd" exe="/usr/sbin/proftpd" subj=system_u:system_r:ftpd_t:s15:c0.c1023 key=(null)
 
-root@localhost:~# sesearch --allow -s ftpd_t -t var_run_t|grep dir|grep add_name 
-   allow ftpd_t var_run_t : dir { ioctl read write getattr lock add_name remove_name search open } ; 
+root@localhost:~# sesearch --allow -s ftpd_t -t var_run_t|grep dir|grep add_name
+   allow ftpd_t var_run_t : dir { ioctl read write getattr lock add_name remove_name search open } ;
 root@localhost:~#
 
 Signed-off-by: Roy Li <rongqing.li@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/contrib/ftp.te |    2 ++
+ policy/modules/services/ftp.te | 2 ++
  1 file changed, 2 insertions(+)
 
---- a/policy/modules/contrib/ftp.te
-+++ b/policy/modules/contrib/ftp.te
-@@ -148,10 +148,12 @@ init_system_domain(ftpdctl_t, ftpdctl_ex
- role ftpdctl_roles types ftpdctl_t;
- 
+diff --git a/policy/modules/services/ftp.te b/policy/modules/services/ftp.te
+index 29bc077..d582cf8 100644
+--- a/policy/modules/services/ftp.te
++++ b/policy/modules/services/ftp.te
+@@ -150,6 +150,8 @@ role ftpdctl_roles types ftpdctl_t;
  type ftpdctl_tmp_t;
  files_tmp_file(ftpdctl_tmp_t)
  
@@ -35,5 +35,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  type sftpd_t;
  domain_type(sftpd_t)
  role system_r types sftpd_t;
- 
- type xferlog_t;
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch
new file mode 100644
index 0000000..a3b4803
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch
@@ -0,0 +1,74 @@
+From 04643644acfa30eaa0a2f7902ea48cf79f571f6d Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Fri, 13 Oct 2017 07:20:40 +0000
+Subject: [PATCH] poky-policy: kernel_t mls trusted for lowering file level
+
+The boot process hangs with the error while using MLS policy:
+
+  [!!!!!!] Failed to mount API filesystems, freezing.
+  [    4.085349] systemd[1]: Freezing execution.
+
+Make kernel_t mls trusted for lowering the level of files to fix below
+avc denials and remove the hang issue.
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:device_t:s15:c0.c1023 \
+  newcontext=system_u:object_r:device_t:s0 \
+  taskcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=dir
+  systemd[1]: Unable to fix SELinux security context of /dev: Operation not permitted
+
+  avc: denied { create } for pid=1 comm="systemd" name="shm" \
+  scontext=system_u:system_r:kernel_t:s15:c0.c1023 \
+  tcontext=system_u:object_r:tmpfs_t:s0 tclass=dir permissive=0
+  systemd[1]: Failed to mount tmpfs at /dev/shm: No such file or directory
+
+  avc: denied { create } for pid=1 comm="systemd" name="pts" \
+  scontext=system_u:system_r:kernel_t:s15:c0.c1023 \
+  tcontext=system_u:object_r:devpts_t:s0-s15:c0.c1023 tclass=dir permissive=0
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:unlabeled_t:s0 \
+  newcontext=system_u:object_r:var_run_t:s0-s15:c0.c1023 \
+  taskcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=dir
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:tmpfs_t:s15:c0.c1023 \
+  newcontext=system_u:object_r:var_run_t:s0-s15:c0.c1023 \
+  taskcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=dir
+  systemd[1]: Unable to fix SELinux security context of /run: Operation not permitted
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:tmpfs_t:s15:c0.c1023 \
+  newcontext=system_u:object_r:cgroup_t:s0 \
+  taskcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=dir
+  systemd[1]: Unable to fix SELinux security context of /sys/fs/cgroup: Operation not permitted
+
+  avc: denied { create } for pid=1 comm="systemd" name="pstore" \
+  scontext=system_u:system_r:kernel_t:s15:c0.c1023 \
+  tcontext=system_u:object_r:pstore_t:s0 tclass=dir permissive=0
+
+Reference: https://bugzilla.redhat.com/show_bug.cgi?id=667370
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/kernel/kernel.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
+index 4794f29..363381c 100644
+--- a/policy/modules/kernel/kernel.te
++++ b/policy/modules/kernel/kernel.te
+@@ -328,6 +328,8 @@ mls_file_write_all_levels(kernel_t)
+ mls_file_read_all_levels(kernel_t)
+ mls_socket_write_all_levels(kernel_t)
+ mls_fd_use_all_levels(kernel_t)
++# https://bugzilla.redhat.com/show_bug.cgi?id=667370
++mls_file_downgrade(kernel_t)
+ 
+ ifdef(`distro_redhat',`
+ 	# Bugzilla 222337
+-- 
+2.13.3
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-kernel_t-mls-trusted-for-setting-process.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-kernel_t-mls-trusted-for-setting-process.patch
new file mode 100644
index 0000000..530b30d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-kernel_t-mls-trusted-for-setting-process.patch
@@ -0,0 +1,43 @@
+From 5a47be14ff03ae0d959908ad39b429787670d40e Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Fri, 13 Oct 2017 08:16:18 +0000
+Subject: [PATCH] poky-policy: kernel_t mls trusted for setting process level
+
+Because of selinux-init.service always checks the label of init
+process to determine if the system needs to be re-labeled and re-
+booted, a failed transition will cause the target falls into loop
+of re-label & re-boot.
+
+Make kernel_t MLS trusted for setting the level of processes it
+executes to fix below avc denial and remove the error:
+
+  avc: denied { dyntransition } for  pid=1 comm="systemd" \
+  scontext=system_u:system_r:kernel_t:s15:c0.c1023 \
+  tcontext=system_u:system_r:init_t:s0-s15:c0.c1023 \
+  tclass=process permissive=0
+
+  systemd[1]: Failed to transition into init label \
+  'system_u:system_r:init_t:s0-s15:c0.c1023', ignoring.
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/kernel/kernel.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
+index 363381c..8105b91 100644
+--- a/policy/modules/kernel/kernel.te
++++ b/policy/modules/kernel/kernel.te
+@@ -328,6 +328,7 @@ mls_file_write_all_levels(kernel_t)
+ mls_file_read_all_levels(kernel_t)
+ mls_socket_write_all_levels(kernel_t)
+ mls_fd_use_all_levels(kernel_t)
++mls_process_set_level(kernel_t)
+ # https://bugzilla.redhat.com/show_bug.cgi?id=667370
+ mls_file_downgrade(kernel_t)
+ 
+-- 
+2.13.3
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/refpolicy-update-for_systemd.patch b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-update-for-systemd.patch
similarity index 65%
rename from recipes-security/refpolicy/refpolicy-2.20170204/refpolicy-update-for_systemd.patch
rename to recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-update-for-systemd.patch
index 41b9c2b..b5e9eb9 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/refpolicy-update-for_systemd.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20180701/poky-policy-update-for-systemd.patch
@@ -1,4 +1,4 @@
-From 07553727dca51631c93bca482442da8d0c50ac94 Mon Sep 17 00:00:00 2001
+From 718e7a6012d74f840831aee715507bbb79204569 Mon Sep 17 00:00:00 2001
 From: Shrikant Bobade <shrikant_bobade@mentor.com>
 Date: Fri, 12 Jun 2015 19:37:52 +0530
 Subject: [PATCH] refpolicy: update for systemd related allow rules
@@ -8,20 +8,25 @@ It provide, the systemd support related allow rules
 Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/system/init.te |    5 +++++
+ policy/modules/system/init.te | 5 +++++
  1 file changed, 5 insertions(+)
 
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index a72b31d..ae64669 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -1105,5 +1105,10 @@ optional_policy(`
- ')
- 
- optional_policy(`
+@@ -1345,6 +1345,11 @@ optional_policy(`
  	zebra_read_config(initrc_t)
  ')
-+
+ 
 +# systemd related allow rules
 +allow kernel_t init_t:process dyntransition;
 +allow devpts_t device_t:filesystem associate;
 +allow init_t self:capability2 block_suspend;
-\ No newline at end of file
++
+ ########################################
+ #
+ # Rules applied to all daemons
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-mcs_2.20170204.bb b/recipes-security/refpolicy/refpolicy-mcs_2.20180701.bb
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-mcs_2.20170204.bb
rename to recipes-security/refpolicy/refpolicy-mcs_2.20180701.bb
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch b/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
index b5ca0f8..a6c4d2d 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
@@ -1,7 +1,7 @@
-From 17507a42ce91376b00069ff22b43786894910ed6 Mon Sep 17 00:00:00 2001
+From 1fa89549b037ab812ea7425ade121c77c7b776be Mon Sep 17 00:00:00 2001
 From: Shrikant Bobade <shrikant_bobade@mentor.com>
 Date: Fri, 26 Aug 2016 17:51:32 +0530
-Subject: [PATCH 1/9] refpolicy-minimum: systemd:unconfined:lib: add systemd
+Subject: [PATCH] refpolicy-minimum: systemd:unconfined:lib: add systemd
  services allow rules
 
 systemd allow rules for systemd service file operations: start, stop, restart
@@ -25,17 +25,17 @@ Upstream-Status: Pending
 
 Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 ---
- policy/modules/system/init.te       |  6 +++++-
+ policy/modules/system/init.te       |  4 ++++
  policy/modules/system/libraries.te  |  3 +++
- policy/modules/system/systemd.if    | 40 +++++++++++++++++++++++++++++++++++++
+ policy/modules/system/systemd.if    | 39 +++++++++++++++++++++++++++++++++++++
  policy/modules/system/unconfined.te |  6 ++++++
- 4 files changed, 54 insertions(+), 1 deletion(-)
+ 4 files changed, 52 insertions(+)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index d710fb0..f9d7114 100644
+index 771e1d6..1c92465 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -1114,3 +1114,7 @@ optional_policy(`
+@@ -1351,6 +1351,10 @@ optional_policy(`
  allow kernel_t init_t:process dyntransition;
  allow devpts_t device_t:filesystem associate;
  allow init_t self:capability2 block_suspend;
@@ -43,11 +43,14 @@ index d710fb0..f9d7114 100644
 +
 +allow initrc_t init_t:system { start status };
 +allow initrc_t init_var_run_t:service { start status };
+ 
+ ########################################
+ #
 diff --git a/policy/modules/system/libraries.te b/policy/modules/system/libraries.te
-index 0f5cd56..df98fe9 100644
+index 422b0ea..80b0c9a 100644
 --- a/policy/modules/system/libraries.te
 +++ b/policy/modules/system/libraries.te
-@@ -144,3 +144,6 @@ optional_policy(`
+@@ -145,3 +145,6 @@ optional_policy(`
  optional_policy(`
  	unconfined_domain(ldconfig_t)
  ')
@@ -55,17 +58,13 @@ index 0f5cd56..df98fe9 100644
 +# systemd: init domain to start lib domain service
 +systemd_service_lib_function(lib_t)
 diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 3cd6670..822c03d 100644
+index 3468508..49d85a8 100644
 --- a/policy/modules/system/systemd.if
 +++ b/policy/modules/system/systemd.if
-@@ -171,3 +171,43 @@ interface(`systemd_start_power_units',`
+@@ -601,6 +601,45 @@ interface(`systemd_start_power_units',`
  
- 	allow $1 power_unit_t:service start;
- ')
-+
-+
-+########################################
-+## <summary>
+ ########################################
+ ## <summary>
 +## Allow specified domain to start stop reset systemd service
 +## </summary>
 +## <param name="domain">
@@ -102,11 +101,17 @@ index 3cd6670..822c03d 100644
 +	allow initrc_t $1:service start;
 +
 +')
++
++########################################
++## <summary>
+ ##	Make the specified type usable for
+ ##	systemd tmpfiles config files.
+ ## </summary>
 diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
-index 99cab31..87a1b03 100644
+index 4d37b36..e93912b 100644
 --- a/policy/modules/system/unconfined.te
 +++ b/policy/modules/system/unconfined.te
-@@ -220,3 +220,9 @@ unconfined_domain_noaudit(unconfined_execmem_t)
+@@ -237,3 +237,9 @@ unconfined_domain_noaudit(unconfined_execmem_t)
  optional_policy(`
  	unconfined_dbus_chat(unconfined_execmem_t)
  ')
@@ -117,5 +122,5 @@ index 99cab31..87a1b03 100644
 +
 +allow unconfined_t init_t:system reload;
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch b/recipes-security/refpolicy/refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch
index 23bc397..2d2f96e 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch
@@ -1,8 +1,8 @@
-From edbc234baecfbf5b8e2dbadc976750071d5e7f7f Mon Sep 17 00:00:00 2001
+From 4cab3d3edda145b1430281ab7f96108f9fcf859a Mon Sep 17 00:00:00 2001
 From: Shrikant Bobade <shrikant_bobade@mentor.com>
 Date: Fri, 26 Aug 2016 17:51:44 +0530
-Subject: [PATCH 2/9] refpolicy-minimum: audit: logging: getty: audit related
- allow rules
+Subject: [PATCH] refpolicy-minimum: audit: logging: getty: audit related allow
+ rules
 
 add allow rules for audit.log file & resolve dependent avc denials.
 
@@ -28,10 +28,10 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
  2 files changed, 11 insertions(+)
 
 diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.te
-index f6743ea..84eaf77 100644
+index 6d3c428..423db0c 100644
 --- a/policy/modules/system/getty.te
 +++ b/policy/modules/system/getty.te
-@@ -139,3 +139,6 @@ optional_policy(`
+@@ -129,3 +129,6 @@ optional_policy(`
  optional_policy(`
  	udev_read_db(getty_t)
  ')
@@ -39,10 +39,10 @@ index f6743ea..84eaf77 100644
 +allow getty_t tmpfs_t:dir search;
 +allow getty_t tmpfs_t:file { open write lock };
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 9b18aad..fdf86ef 100644
+index 2f489f2..ee21fbf 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -238,6 +238,7 @@ allow audisp_t self:unix_stream_socket create_stream_socket_perms;
+@@ -247,6 +247,7 @@ allow audisp_t self:unix_stream_socket create_stream_socket_perms;
  allow audisp_t self:unix_dgram_socket create_socket_perms;
  
  allow audisp_t auditd_t:unix_stream_socket rw_socket_perms;
@@ -50,7 +50,7 @@ index 9b18aad..fdf86ef 100644
  
  manage_sock_files_pattern(audisp_t, audisp_var_run_t, audisp_var_run_t)
  files_pid_filetrans(audisp_t, audisp_var_run_t, sock_file)
-@@ -569,3 +570,10 @@ optional_policy(`
+@@ -615,3 +616,10 @@ optional_policy(`
  	# log to the xconsole
  	xserver_rw_console(syslogd_t)
  ')
@@ -61,7 +61,6 @@ index 9b18aad..fdf86ef 100644
 +allow auditd_t initrc_t:unix_dgram_socket sendto;
 +
 +allow klogd_t initrc_t:unix_dgram_socket sendto;
-\ No newline at end of file
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch b/recipes-security/refpolicy/refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
index 35a8e1b..85cc2bd 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
@@ -1,8 +1,8 @@
-From edae03ea521a501a2b3229383609f1aec85575c1 Mon Sep 17 00:00:00 2001
+From 85b977b29c001fdd93c2441284d866d2a40f22dd Mon Sep 17 00:00:00 2001
 From: Shrikant Bobade <shrikant_bobade@mentor.com>
 Date: Fri, 26 Aug 2016 17:53:37 +0530
-Subject: [PATCH 3/9] refpolicy-minimum: systemd: mount: logging: authlogin:
- add allow rules
+Subject: [PATCH] refpolicy-minimum: systemd: mount: logging: authlogin: add
+ allow rules
 
 add allow rules for avc denails for systemd, mount, logging & authlogin
 modules.
@@ -32,42 +32,39 @@ Upstream-Status: Pending
 Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 ---
  policy/modules/system/authlogin.te | 2 ++
- policy/modules/system/logging.te   | 7 ++++++-
+ policy/modules/system/logging.te   | 5 +++++
  policy/modules/system/mount.te     | 3 +++
- policy/modules/system/systemd.te   | 6 ++++++
- 4 files changed, 17 insertions(+), 1 deletion(-)
+ policy/modules/system/systemd.te   | 5 +++++
+ 4 files changed, 15 insertions(+)
 
 diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/authlogin.te
-index f80dfcb..5fab54a 100644
+index 06bbba0..696d57c 100644
 --- a/policy/modules/system/authlogin.te
 +++ b/policy/modules/system/authlogin.te
-@@ -464,3 +464,5 @@ optional_policy(`
+@@ -472,3 +472,5 @@ optional_policy(`
  	samba_read_var_files(nsswitch_domain)
  	samba_dontaudit_write_var_files(nsswitch_domain)
  ')
 +
 +allow chkpwd_t proc_t:filesystem getattr;
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index fdf86ef..107db03 100644
+index ee21fbf..1b7b4f4 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -576,4 +576,9 @@ allow auditd_t tmpfs_t:file { getattr setattr create open read append };
- allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
+@@ -623,3 +623,8 @@ allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
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
-index 1c2fc33..b699309 100644
+index 3dcb849..a87d0e8 100644
 --- a/policy/modules/system/mount.te
 +++ b/policy/modules/system/mount.te
-@@ -229,3 +229,6 @@ optional_policy(`
+@@ -231,3 +231,6 @@ optional_policy(`
  	files_etc_filetrans_etc_runtime(unconfined_mount_t, file)
  	unconfined_domain(unconfined_mount_t)
  ')
@@ -75,19 +72,18 @@ index 1c2fc33..b699309 100644
 +allow mount_t proc_t:filesystem getattr;
 +allow mount_t initrc_t:udp_socket { read write };
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index fdb9fef..734d455 100644
+index 2a65862..4a55853 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -262,3 +262,9 @@ tunable_policy(`systemd_tmpfiles_manage_all',`
- 	files_relabel_non_security_dirs(systemd_tmpfiles_t)
- 	files_relabel_non_security_files(systemd_tmpfiles_t)
- ')
-+
+@@ -1052,3 +1052,8 @@ files_var_filetrans(systemd_update_done_t, systemd_update_run_t, file, ".updated
+ 
+ kernel_read_system_state(systemd_update_done_t)
+ 
 +allow systemd_tmpfiles_t init_t:dir search;
 +allow systemd_tmpfiles_t proc_t:filesystem getattr;
 +allow systemd_tmpfiles_t init_t:file read;
 +allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
 +allow systemd_tmpfiles_t self:capability net_admin;
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch b/recipes-security/refpolicy/refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
index 3623215..db9501b 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
@@ -1,7 +1,7 @@
-From 0e99f9e7c6d69d5f784fe7352c9507791d8cbef9 Mon Sep 17 00:00:00 2001
+From bed06073cc66fbe98a16122bbaaf851abd19d3ee Mon Sep 17 00:00:00 2001
 From: Shrikant Bobade <shrikant_bobade@mentor.com>
 Date: Fri, 26 Aug 2016 17:53:46 +0530
-Subject: [PATCH 4/9] refpolicy-minimum: locallogin: add allow rules for type
+Subject: [PATCH] refpolicy-minimum: locallogin: add allow rules for type
  local_login_t
 
 add allow rules for locallogin module avc denials.
@@ -31,10 +31,10 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
  1 file changed, 10 insertions(+)
 
 diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
-index 53923f8..09ec33f 100644
+index bbd9534..258a75e 100644
 --- a/policy/modules/system/locallogin.te
 +++ b/policy/modules/system/locallogin.te
-@@ -274,3 +274,13 @@ optional_policy(`
+@@ -286,3 +286,13 @@ optional_policy(`
  optional_policy(`
  	nscd_use(sulogin_t)
  ')
@@ -49,5 +49,5 @@ index 53923f8..09ec33f 100644
 +allow local_login_t tmpfs_t:dir { add_name write search};
 +allow local_login_t tmpfs_t:file { create open read write lock };
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch b/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
index c88f2b2..29a3145 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
@@ -1,7 +1,7 @@
-From 07b7eb45458de8a6781019a927c66aabe736e03a Mon Sep 17 00:00:00 2001
+From 430d30e0b9c661b9704369bdcdad58d57558ace3 Mon Sep 17 00:00:00 2001
 From: Shrikant Bobade <shrikant_bobade@mentor.com>
 Date: Fri, 26 Aug 2016 17:53:53 +0530
-Subject: [PATCH 5/9] refpolicy-minimum: init: fix reboot with systemd as init
+Subject: [PATCH] refpolicy-minimum: init: fix reboot with systemd as init
  manager.
 
 add allow rule to fix avc denial during system reboot.
@@ -21,16 +21,18 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index f9d7114..19a7a20 100644
+index 1c92465..4d9dac3 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -1103,5 +1103,5 @@ allow devpts_t device_t:filesystem associate;
+@@ -1353,7 +1353,7 @@ allow devpts_t device_t:filesystem associate;
  allow init_t self:capability2 block_suspend;
  allow init_t self:capability2 audit_read;
  
 -allow initrc_t init_t:system { start status };
 +allow initrc_t init_t:system { start status reboot };
  allow initrc_t init_var_run_t:service { start status };
+ 
+ ########################################
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch b/recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch
index bf7b980..bf02ab0 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch
@@ -1,4 +1,8 @@
-refpolicy-minimum: systemd: mount: enable required refpolicy booleans
+From fdf63a86782b9bcccf106d077cc5304ce1768003 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Thu, 24 Jan 2019 14:13:17 +0800
+Subject: [PATCH] refpolicy-minimum: systemd: mount: enable required refpolicy
+ booleans
 
 enable required refpolicy booleans for these modules
 
@@ -27,10 +31,15 @@ _t:s0 tcontext=system_u:object_r:sysctl_t:s0 tclass=dir permissive=0
 Upstream-Status: Pending
 
 Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/booleans.conf | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
 
+diff --git a/policy/booleans.conf b/policy/booleans.conf
+index ec67a4c..eb49d7f 100644
 --- a/policy/booleans.conf
 +++ b/policy/booleans.conf
-@@ -1156,12 +1156,12 @@ racoon_read_shadow = false
+@@ -1677,12 +1677,12 @@ racoon_read_shadow = false
  #
  # Allow the mount command to mount any directory or file.
  # 
@@ -44,4 +53,7 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 +systemd_tmpfiles_manage_all = true
  
  #
- # Allow users to connect to mysql
+ # Allow systemd-nspawn to create a labelled namespace with the same types
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch b/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
index 2dd90fe..3ccec3d 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
@@ -1,8 +1,7 @@
-From 5a1cef9e4a9472982f6c68190f3aa20c73c8de1e Mon Sep 17 00:00:00 2001
+From a9ccbfbb7132a5d33b64b48c5d57ea6f10ac160b Mon Sep 17 00:00:00 2001
 From: Shrikant Bobade <shrikant_bobade@mentor.com>
 Date: Fri, 26 Aug 2016 17:54:09 +0530
-Subject: [PATCH 7/9] refpolicy-minimum: systemd: fix for login & journal
- service
+Subject: [PATCH] refpolicy-minimum: systemd: fix for login & journal service
 
 1. fix for systemd services: login & journal wile using refpolicy-minimum and
 systemd as init manager.
@@ -39,27 +38,30 @@ Upstream-Status: Pending
 
 Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 ---
- policy/modules/system/init.te       | 5 +++++
+ policy/modules/system/init.te       | 2 ++
  policy/modules/system/locallogin.te | 3 +++
  policy/modules/system/systemd.if    | 6 ++++--
  policy/modules/system/systemd.te    | 3 ++-
- 4 files changed, 14 insertions(+), 3 deletions(-)
+ 4 files changed, 11 insertions(+), 3 deletions(-)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 19a7a20..cefa59d 100644
+index 4d9dac3..9c82506 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -1105,3 +1105,5 @@ allow init_t self:capability2 audit_read;
- 
+@@ -1356,6 +1356,8 @@ allow init_t self:capability2 audit_read;
  allow initrc_t init_t:system { start status reboot };
  allow initrc_t init_var_run_t:service { start status };
-+
+ 
 +allow initrc_t init_var_run_t:service stop;
++
+ ########################################
+ #
+ # Rules applied to all daemons
 diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
-index 09ec33f..be25c82 100644
+index 258a75e..cda862d 100644
 --- a/policy/modules/system/locallogin.te
 +++ b/policy/modules/system/locallogin.te
-@@ -284,3 +284,6 @@ allow local_login_t var_run_t:file { open read write lock};
+@@ -296,3 +296,6 @@ allow local_login_t var_run_t:file { open read write lock};
  allow local_login_t var_run_t:sock_file write;
  allow local_login_t tmpfs_t:dir { add_name write search};
  allow local_login_t tmpfs_t:file { create open read write lock };
@@ -67,10 +69,10 @@ index 09ec33f..be25c82 100644
 +allow local_login_t initrc_t:dbus send_msg;
 +allow initrc_t local_login_t:dbus send_msg;
 diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 822c03d..8723527 100644
+index 49d85a8..677d053 100644
 --- a/policy/modules/system/systemd.if
 +++ b/policy/modules/system/systemd.if
-@@ -205,9 +205,11 @@ interface(`systemd_service_file_operations',`
+@@ -631,10 +631,12 @@ interface(`systemd_service_file_operations',`
  #
  interface(`systemd_service_lib_function',`
           gen_require(`
@@ -84,11 +86,12 @@ index 822c03d..8723527 100644
 +	allow initrc_t $1:file execmod;
  
  ')
+ 
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 70ccb0e..22021eb 100644
+index 4a55853..2420c78 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -265,6 +265,7 @@ tunable_policy(`systemd_tmpfiles_manage_all',`
+@@ -1054,6 +1054,7 @@ kernel_read_system_state(systemd_update_done_t)
  
  allow systemd_tmpfiles_t init_t:dir search;
  allow systemd_tmpfiles_t proc_t:filesystem getattr;
@@ -98,5 +101,5 @@ index 70ccb0e..22021eb 100644
 +
 +allow systemd_tmpfiles_t init_t:file { open getattr read };
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch b/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
index a7338e1..ab4812d 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
@@ -1,7 +1,7 @@
-From ec96260a28f9aae44afc8eec0e089bf95a36b557 Mon Sep 17 00:00:00 2001
+From 73586a1978495beb46f1a095e31c5daf424f13e4 Mon Sep 17 00:00:00 2001
 From: Shrikant Bobade <shrikant_bobade@mentor.com>
 Date: Fri, 26 Aug 2016 17:54:17 +0530
-Subject: [PATCH 8/9] refpolicy-minimum: systemd: fix for systemd tmp-files
+Subject: [PATCH] refpolicy-minimum: systemd: fix for systemd tmp-files
  services
 
 fix for systemd tmp files setup service while using refpolicy-minimum and
@@ -33,15 +33,15 @@ Upstream-Status: Pending
 Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 ---
  policy/modules/kernel/files.if   | 19 +++++++++++++++++++
- policy/modules/kernel/kernel.if  | 23 +++++++++++++++++++++++
+ policy/modules/kernel/kernel.if  | 21 +++++++++++++++++++++
  policy/modules/system/systemd.te |  3 +++
- 3 files changed, 45 insertions(+)
+ 3 files changed, 43 insertions(+)
 
 diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index 1cedea2..4ea7d55 100644
+index 6aa2ca5..4e28440 100644
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -6729,3 +6729,22 @@ interface(`files_unconfined',`
+@@ -7057,3 +7057,22 @@ interface(`files_unconfined',`
  
  	typeattribute $1 files_unconfined_type;
  ')
@@ -65,14 +65,13 @@ index 1cedea2..4ea7d55 100644
 +	allow $1 tmp_t:lnk_file getattr;
 +')
 diff --git a/policy/modules/kernel/kernel.if b/policy/modules/kernel/kernel.if
-index f1130d1..4604441 100644
+index 843b26e..35a78fa 100644
 --- a/policy/modules/kernel/kernel.if
 +++ b/policy/modules/kernel/kernel.if
-@@ -3323,3 +3323,26 @@ interface(`kernel_unconfined',`
- 	typeattribute $1 kern_unconfined;
- 	kernel_load_module($1)
+@@ -3566,3 +3566,24 @@ interface(`kernel_ib_manage_subnet_unlabeled_endports',`
+ 	allow $1 unlabeled_t:infiniband_endport manage_subnet;
  ')
-+
+ 
 +########################################
 +## <summary>
 +##	systemd tmp files access to kernel sysctl domain
@@ -94,12 +93,11 @@ index f1130d1..4604441 100644
 +        allow $1 sysctl_kernel_t:file { open read };
 +
 +')
-+
 diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 22021eb..8813664 100644
+index 2420c78..22fcb22 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -269,3 +269,6 @@ allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
+@@ -1058,3 +1058,6 @@ allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
  allow systemd_tmpfiles_t self:capability net_admin;
  
  allow systemd_tmpfiles_t init_t:file { open getattr read };
@@ -107,5 +105,5 @@ index 22021eb..8813664 100644
 +systemd_service_allow_kernel_domain_access_to_sysctl_kernel_t(systemd_tmpfiles_t)
 +systemd_service_allow_kernel_files_domain_to_tmp_t(systemd_tmpfiles_t)
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0009-refpolicy-minimum-systemd-fix-for-syslog.patch b/recipes-security/refpolicy/refpolicy-minimum/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
index b01947d..c67ad59 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
@@ -1,7 +1,7 @@
-From 9476fb0aad7caa725014e72cd009b78389ba66d5 Mon Sep 17 00:00:00 2001
+From 7e5d84b2151596086c5a4211c2027f4a40c17efa Mon Sep 17 00:00:00 2001
 From: Shrikant Bobade <shrikant_bobade@mentor.com>
 Date: Fri, 26 Aug 2016 17:54:29 +0530
-Subject: [PATCH 9/9] refpolicy-minimum: systemd: fix for syslog
+Subject: [PATCH] refpolicy-minimum: systemd: fix for syslog
 
 syslog & getty related allow rules required to fix the syslog mixup with
 boot log, while using systemd as init manager.
@@ -45,19 +45,19 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
  2 files changed, 3 insertions(+), 1 deletion(-)
 
 diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.te
-index 84eaf77..2e53daf 100644
+index 423db0c..9ab0395 100644
 --- a/policy/modules/system/getty.te
 +++ b/policy/modules/system/getty.te
-@@ -142,3 +142,4 @@ optional_policy(`
+@@ -132,3 +132,4 @@ optional_policy(`
  
  allow getty_t tmpfs_t:dir search;
  allow getty_t tmpfs_t:file { open write lock };
 +allow getty_t initrc_t:unix_dgram_socket sendto;
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 107db03..95de86d 100644
+index 1b7b4f4..b02fc69 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -581,4 +581,5 @@ allow klogd_t initrc_t:unix_dgram_socket sendto;
+@@ -627,4 +627,5 @@ allow klogd_t initrc_t:unix_dgram_socket sendto;
  allow syslogd_t self:shm create;
  allow syslogd_t self:sem { create read unix_write write };
  allow syslogd_t self:shm { read unix_read unix_write write };
@@ -65,5 +65,5 @@ index 107db03..95de86d 100644
 +allow syslogd_t tmpfs_t:file { read write create getattr append open };
 +allow syslogd_t tmpfs_t:dir { search write add_name };
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch b/recipes-security/refpolicy/refpolicy-minimum/0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch
new file mode 100644
index 0000000..3cca1ce
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch
@@ -0,0 +1,36 @@
+From 11923f75788e0edca20fc8d1b11d9dce72df8b0b Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Fri, 27 Apr 2018 02:22:36 +0000
+Subject: [PATCH] refpolicy-minimum: systemd: make fstools_write_log optional
+
+The 'fstools_write_log' is provided by module 'fstools' which is not
+included in minimum policy type.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/system/init.te | 7 ++++---
+ 1 file changed, 4 insertions(+), 3 deletions(-)
+
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index 9c82506..31602b0 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -980,9 +980,10 @@ ifdef(`init_systemd',`
+ 	files_create_pid_dirs(initrc_t)
+ 	files_setattr_pid_dirs(initrc_t)
+ 
+-	# for logsave in strict configuration
+-	fstools_write_log(initrc_t)
+-
++	optional_policy(`
++		# for logsave in strict configuration
++		fstools_write_log(initrc_t)
++	')
+ 	selinux_set_enforce_mode(initrc_t)
+ 
+ 	init_get_all_units_status(initrc_t)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20170204.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20180701.bb
similarity index 78%
rename from recipes-security/refpolicy/refpolicy-minimum_2.20170204.bb
rename to recipes-security/refpolicy/refpolicy-minimum_2.20180701.bb
index da6626e..53b224d 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20170204.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20180701.bb
@@ -70,15 +70,15 @@ prepare_policy_store () {
 
 SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', ' ${SYSTEMD_REFPOLICY_PATCHES}', '', d)}"
 
-
 SYSTEMD_REFPOLICY_PATCHES = " \
         file://0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch \
-	file://0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch \
-	file://0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch \
-	file://0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch \
-	file://0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch \
-	file://0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch \
-	file://0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch \
-	file://0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch \
-	file://0009-refpolicy-minimum-systemd-fix-for-syslog.patch \
-	"
+        file://0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch \
+        file://0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch \
+        file://0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch \
+        file://0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch \
+        file://0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch \
+        file://0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch \
+        file://0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch \
+        file://0009-refpolicy-minimum-systemd-fix-for-syslog.patch \
+        file://0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch \
+        "
diff --git a/recipes-security/refpolicy/refpolicy-mls_2.20170204.bb b/recipes-security/refpolicy/refpolicy-mls_2.20180701.bb
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-mls_2.20170204.bb
rename to recipes-security/refpolicy/refpolicy-mls_2.20180701.bb
diff --git a/recipes-security/refpolicy/refpolicy-standard_2.20170204.bb b/recipes-security/refpolicy/refpolicy-standard_2.20180701.bb
similarity index 100%
rename from recipes-security/refpolicy/refpolicy-standard_2.20170204.bb
rename to recipes-security/refpolicy/refpolicy-standard_2.20180701.bb
diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
index b33e84b..6601be4 100644
--- a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
+++ b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
@@ -1,3 +1,6 @@
+From 1f95842b58998b566c0b186cefa645e0160d4aa6 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 24 Jan 2019 11:06:14 +0800
 Subject: [PATCH] refpolicy: fix optional issue on sysadm module
 
 init and locallogin modules have a depend for sysadm module because
@@ -7,21 +10,21 @@ calls optionally by optional_policy.
 
 So, we could make the minimum policy without sysadm module.
 
-Upstream-Status: pending
+Upstream-Status: Pending
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/system/init.te       | 14 ++++++++------
+ policy/modules/system/init.te       | 16 +++++++++-------
  policy/modules/system/locallogin.te |  4 +++-
- 2 files changed, 11 insertions(+), 7 deletions(-)
+ 2 files changed, 12 insertions(+), 8 deletions(-)
 
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index ae64669..771e1d6 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -344,17 +344,19 @@ ifdef(`init_systemd',`
- 
- 	optional_policy(`
+@@ -443,13 +443,15 @@ ifdef(`init_systemd',`
  		modutils_domtrans(init_t)
  	')
  ',`
@@ -44,13 +47,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  		')
  	')
  ')
- 
- ifdef(`distro_debian',`
+diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
+index 4dd20ea..bbd9534 100644
 --- a/policy/modules/system/locallogin.te
 +++ b/policy/modules/system/locallogin.te
-@@ -260,11 +260,13 @@ seutil_read_default_contexts(sulogin_t)
- userdom_use_unpriv_users_fds(sulogin_t)
- 
+@@ -264,7 +264,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
  userdom_search_user_home_dirs(sulogin_t)
  userdom_use_user_ptys(sulogin_t)
  
@@ -61,5 +62,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  
  # by default, sulogin does not use pam...
  # sulogin_pam might need to be defined otherwise
- ifdef(`sulogin_pam', `
- 	selinux_get_fs_mount(sulogin_t)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module_2.20170204.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module_2.20170204.patch
deleted file mode 100644
index 3a8a95e..0000000
--- a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module_2.20170204.patch
+++ /dev/null
@@ -1,72 +0,0 @@
-Subject: [PATCH] refpolicy: fix optional issue on sysadm module
-
-init and locallogin modules have a depend for sysadm module because
-they have called sysadm interfaces(sysadm_shell_domtrans). Since
-sysadm is not a core module, we could make the sysadm_shell_domtrans
-calls optionally by optional_policy.
-
-So, we could make the minimum policy without sysadm module.
-
-Upstream-Status: pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/init.te       | 14 ++++++++------
- policy/modules/system/locallogin.te |  4 +++-
- 2 files changed, 11 insertions(+), 7 deletions(-)
-
---- a/policy/modules/system/init.te
-+++ b/policy/modules/system/init.te
-@@ -300,16 +300,18 @@ ifdef(`init_systemd',`
- 
- 	optional_policy(`
- 		modutils_domtrans_insmod(init_t)
- 	')
- ',`
--	tunable_policy(`init_upstart',`
--		corecmd_shell_domtrans(init_t, initrc_t)
--	',`
--		# Run the shell in the sysadm role for single-user mode.
--		# causes problems with upstart
--		sysadm_shell_domtrans(init_t)
-+	optional_policy(`
-+		tunable_policy(`init_upstart',`
-+			corecmd_shell_domtrans(init_t, initrc_t)
-+		',`
-+			# Run the shell in the sysadm role for single-user mode.
-+			# causes problems with upstart
-+			sysadm_shell_domtrans(init_t)
-+		')
- 	')
- ')
- 
- ifdef(`distro_debian',`
- 	fs_tmpfs_filetrans(init_t, initctl_t, fifo_file, "initctl")
-@@ -1109,6 +1111,6 @@ optional_policy(`
- ')
- 
- # systemd related allow rules
- allow kernel_t init_t:process dyntransition;
- allow devpts_t device_t:filesystem associate;
--allow init_t self:capability2 block_suspend;
-\ No newline at end of file
-+allow init_t self:capability2 block_suspend;
---- a/policy/modules/system/locallogin.te
-+++ b/policy/modules/system/locallogin.te
-@@ -244,11 +244,13 @@ seutil_read_default_contexts(sulogin_t)
- userdom_use_unpriv_users_fds(sulogin_t)
- 
- userdom_search_user_home_dirs(sulogin_t)
- userdom_use_user_ptys(sulogin_t)
- 
--sysadm_shell_domtrans(sulogin_t)
-+optional_policy(`
-+	sysadm_shell_domtrans(sulogin_t)
-+')
- 
- # suse and debian do not use pam with sulogin...
- ifdef(`distro_suse', `define(`sulogin_no_pam')')
- ifdef(`distro_debian', `define(`sulogin_no_pam')')
- 
diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition_2.20170204.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition_2.20170204.patch
deleted file mode 100644
index 1dc9911..0000000
--- a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition_2.20170204.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From e1693b640f889818091c976a90041ea6a843fafd Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Wed, 17 Feb 2016 08:35:51 -0500
-Subject: [PATCH] remove duplicate type_transition
-
-Remove duplicate type rules from init_t to init_script_file_type,
-they have been included by systemd policies. This also fixes the
-errors while installing modules for refpolicy-targeted if systemd
-support is enabled:
-
-| Conflicting type rules
-| Binary policy creation failed at line 327 of \
-  .../tmp/work/qemux86-poky-linux/refpolicy-targeted/git-r0/image\
-  /var/lib/selinux/targeted/tmp/modules/100/init/cil
-| Failed to generate binary
-| semodule:  Failed!
-
-Upstream-Status: Inappropriate
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/init.if | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
---- a/policy/modules/system/init.if
-+++ b/policy/modules/system/init.if
-@@ -1268,16 +1268,16 @@ interface(`init_spec_domtrans_script',`
- ##	</summary>
- ## </param>
- #
- interface(`init_domtrans_script',`
- 	gen_require(`
--		type initrc_t;
-+		type initrc_t, initrc_exec_t;
- 		attribute init_script_file_type;
- 	')
- 
- 	files_list_etc($1)
--	domtrans_pattern($1, init_script_file_type, initrc_t)
-+	domtrans_pattern($1, initrc_exec_t, initrc_t)
- 
- 	ifdef(`enable_mcs',`
- 		range_transition $1 init_script_file_type:process s0;
- 	')
- 
diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
index 29d3e2d..bb51f14 100644
--- a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
+++ b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
@@ -1,3 +1,6 @@
+From 3b358535ef01bf67d8696980d67ab5b34e2a0600 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 24 Jan 2019 11:09:07 +0800
 Subject: [PATCH] refpolicy: make unconfined_u the default selinux user
 
 For targeted policy type, we define unconfined_u as the default selinux
@@ -13,13 +16,15 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- config/appconfig-mcs/seusers        |  4 ++--
+ config/appconfig-mcs/seusers        |  5 ++--
  policy/modules/roles/sysadm.te      |  1 +
  policy/modules/system/init.if       | 47 ++++++++++++++++++++++++++++++-------
  policy/modules/system/unconfined.te |  7 ++++++
  policy/users                        | 16 +++++--------
- 5 files changed, 55 insertions(+), 20 deletions(-)
+ 5 files changed, 56 insertions(+), 20 deletions(-)
 
+diff --git a/config/appconfig-mcs/seusers b/config/appconfig-mcs/seusers
+index ce614b4..d707475 100644
 --- a/config/appconfig-mcs/seusers
 +++ b/config/appconfig-mcs/seusers
 @@ -1,2 +1,3 @@
@@ -28,11 +33,11 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 +root:unconfined_u:s0-mcs_systemhigh
 +__default__:unconfined_u:s0
 +
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index b18c065..a3deac4 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -37,10 +37,11 @@ ubac_process_exempt(sysadm_t)
- ubac_file_exempt(sysadm_t)
- ubac_fd_exempt(sysadm_t)
+@@ -42,6 +42,7 @@ ubac_fd_exempt(sysadm_t)
  
  init_exec(sysadm_t)
  init_admin(sysadm_t)
@@ -40,13 +45,11 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  
  selinux_read_policy(sysadm_t)
  
- # Add/remove user home directories
- userdom_manage_user_home_dirs(sysadm_t)
+diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
+index bd5fe20..744ad98 100644
 --- a/policy/modules/system/init.if
 +++ b/policy/modules/system/init.if
-@@ -1394,30 +1394,31 @@ interface(`init_script_file_entry_type',
- ##	</summary>
- ## </param>
+@@ -1463,11 +1463,12 @@ interface(`init_script_file_entry_type',`
  #
  interface(`init_spec_domtrans_script',`
  	gen_require(`
@@ -61,10 +64,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  
  	ifdef(`distro_gentoo',`
  		gen_require(`
- 			type rc_exec_t;
- 		')
- 
- 		domtrans_pattern($1, rc_exec_t, initrc_t)
+@@ -1478,11 +1479,11 @@ interface(`init_spec_domtrans_script',`
  	')
  
  	ifdef(`enable_mcs',`
@@ -78,11 +78,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  	')
  ')
  
- ########################################
- ## <summary>
-@@ -1429,22 +1430,23 @@ interface(`init_spec_domtrans_script',`
- ##	</summary>
- ## </param>
+@@ -1498,18 +1499,19 @@ interface(`init_spec_domtrans_script',`
  #
  interface(`init_domtrans_script',`
  	gen_require(`
@@ -106,11 +102,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  	')
  ')
  
- ########################################
- ## <summary>
-@@ -2972,5 +2974,34 @@ interface(`init_admin',`
- 	init_stop_all_units($1)
- 	init_stop_generic_units($1)
+@@ -3027,3 +3029,32 @@ interface(`init_admin',`
  	init_stop_system($1)
  	init_telinit($1)
  ')
@@ -143,11 +135,11 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 +	role_transition $1 init_script_file_type system_r;
 +')
 +
+diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
+index 469a952..4d37b36 100644
 --- a/policy/modules/system/unconfined.te
 +++ b/policy/modules/system/unconfined.te
-@@ -18,10 +18,15 @@ init_system_domain(unconfined_t, unconfi
- 
- type unconfined_execmem_t;
+@@ -20,6 +20,11 @@ type unconfined_execmem_t;
  type unconfined_execmem_exec_t;
  init_system_domain(unconfined_execmem_t, unconfined_execmem_exec_t)
  role unconfined_r types unconfined_execmem_t;
@@ -159,11 +151,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  
  ########################################
  #
- # Local policy
- #
-@@ -48,10 +53,12 @@ unconfined_domain(unconfined_t)
- userdom_user_home_dir_filetrans_user_home_content(unconfined_t, { dir file lnk_file fifo_file sock_file })
- 
+@@ -50,6 +55,8 @@ userdom_user_home_dir_filetrans_user_home_content(unconfined_t, { dir file lnk_f
  ifdef(`direct_sysadm_daemon',`
          optional_policy(`
                  init_run_daemon(unconfined_t, unconfined_r)
@@ -172,13 +160,11 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
          ')
  ',`
          ifdef(`distro_gentoo',`
-                 seutil_run_runinit(unconfined_t, unconfined_r)
-                 seutil_init_script_run_runinit(unconfined_t, unconfined_r)
+diff --git a/policy/users b/policy/users
+index ca20375..ac1ca6c 100644
 --- a/policy/users
 +++ b/policy/users
-@@ -13,37 +13,33 @@
- # system_u is the user identity for system processes and objects.
- # There should be no corresponding Unix user identity for system,
+@@ -15,7 +15,7 @@
  # and a user process should never be assigned the system user
  # identity.
  #
@@ -187,9 +173,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  
  #
  # user_u is a generic user identity for Linux users who have no
- # SELinux user identity defined.  The modified daemons will use
- # this user identity in the security context if there is no matching
- # SELinux user identity for a Linux user.  If you do not want to
+@@ -25,14 +25,14 @@ gen_user(system_u,, system_r, s0, s0 - mls_systemhigh, mcs_allcats)
  # permit any access to such users, then remove this entry.
  #
  gen_user(user_u, user, user_r, s0, s0)
@@ -208,9 +192,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  ')
  
  #
- # The following users correspond to Unix identities.
- # These identities are typically assigned as the user attribute
- # when login starts the user shell.  Users with access to the sysadm_r
+@@ -42,8 +42,4 @@ ifdef(`direct_sysadm_daemon',`
  # role should use the staff_r role instead of the user_r role when
  # not in the sysadm_r.
  #
@@ -220,3 +202,6 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 -	gen_user(root, sysadm, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
 -')
 +gen_user(root, user, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r') unconfined_r system_r, s0, s0 - mls_systemhigh, mcs_allcats)
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user_2.20170204.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user_2.20170204.patch
deleted file mode 100644
index f28ab74..0000000
--- a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user_2.20170204.patch
+++ /dev/null
@@ -1,222 +0,0 @@
-Subject: [PATCH] refpolicy: make unconfined_u the default selinux user
-
-For targeted policy type, we define unconfined_u as the default selinux
-user for root and normal users, so users could login in and run most
-commands and services on unconfined domains.
-
-Also add rules for users to run init scripts directly, instead of via
-run_init.
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
----
- config/appconfig-mcs/seusers        |  4 ++--
- policy/modules/roles/sysadm.te      |  1 +
- policy/modules/system/init.if       | 47 ++++++++++++++++++++++++++++++-------
- policy/modules/system/unconfined.te |  7 ++++++
- policy/users                        | 16 +++++--------
- 5 files changed, 55 insertions(+), 20 deletions(-)
-
---- a/config/appconfig-mcs/seusers
-+++ b/config/appconfig-mcs/seusers
-@@ -1,2 +1,3 @@
--root:root:s0-mcs_systemhigh
--__default__:user_u:s0
-+root:unconfined_u:s0-mcs_systemhigh
-+__default__:unconfined_u:s0
-+
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -41,10 +41,11 @@ init_reload(sysadm_t)
- init_reboot_system(sysadm_t)
- init_shutdown_system(sysadm_t)
- init_start_generic_units(sysadm_t)
- init_stop_generic_units(sysadm_t)
- init_reload_generic_units(sysadm_t)
-+init_script_role_transition(sysadm_r)
- 
- # Add/remove user home directories
- userdom_manage_user_home_dirs(sysadm_t)
- userdom_home_filetrans_user_home_dir(sysadm_t)
- 
---- a/policy/modules/system/init.if
-+++ b/policy/modules/system/init.if
-@@ -1232,30 +1232,31 @@ interface(`init_script_file_entry_type',
- ##	</summary>
- ## </param>
- #
- interface(`init_spec_domtrans_script',`
- 	gen_require(`
--		type initrc_t, initrc_exec_t;
-+		type initrc_t;
-+		attribute init_script_file_type;
- 	')
- 
- 	files_list_etc($1)
--	spec_domtrans_pattern($1, initrc_exec_t, initrc_t)
-+	spec_domtrans_pattern($1, init_script_file_type, initrc_t)
- 
- 	ifdef(`distro_gentoo',`
- 		gen_require(`
- 			type rc_exec_t;
- 		')
- 
- 		domtrans_pattern($1, rc_exec_t, initrc_t)
- 	')
- 
- 	ifdef(`enable_mcs',`
--		range_transition $1 initrc_exec_t:process s0;
-+		range_transition $1 init_script_file_type:process s0;
- 	')
- 
- 	ifdef(`enable_mls',`
--		range_transition $1 initrc_exec_t:process s0 - mls_systemhigh;
-+		range_transition $1 init_script_file_type:process s0 - mls_systemhigh;
- 	')
- ')
- 
- ########################################
- ## <summary>
-@@ -1267,22 +1268,23 @@ interface(`init_spec_domtrans_script',`
- ##	</summary>
- ## </param>
- #
- interface(`init_domtrans_script',`
- 	gen_require(`
--		type initrc_t, initrc_exec_t;
-+		type initrc_t;
-+		attribute init_script_file_type;
- 	')
- 
- 	files_list_etc($1)
--	domtrans_pattern($1, initrc_exec_t, initrc_t)
-+	domtrans_pattern($1, init_script_file_type, initrc_t)
- 
- 	ifdef(`enable_mcs',`
--		range_transition $1 initrc_exec_t:process s0;
-+		range_transition $1 init_script_file_type:process s0;
- 	')
- 
- 	ifdef(`enable_mls',`
--		range_transition $1 initrc_exec_t:process s0 - mls_systemhigh;
-+		range_transition $1 init_script_file_type:process s0 - mls_systemhigh;
- 	')
- ')
- 
- ########################################
- ## <summary>
-@@ -2502,5 +2504,34 @@ interface(`init_reload_all_units',`
- 		class service reload;
- 	')
- 
- 	allow $1 systemdunit:service reload;
- ')
-+
-+########################################
-+## <summary>
-+##	Transition to system_r when execute an init script
-+## </summary>
-+## <desc>
-+##	<p>
-+##	Execute a init script in a specified role
-+##	</p>
-+##	<p>
-+##	No interprocess communication (signals, pipes,
-+##	etc.) is provided by this interface since
-+##	the domains are not owned by this module.
-+##	</p>
-+## </desc>
-+## <param name="source_role">
-+##	<summary>
-+##	Role to transition from.
-+##	</summary>
-+## </param>
-+#
-+interface(`init_script_role_transition',`
-+	gen_require(`
-+		attribute init_script_file_type;
-+	')
-+
-+	role_transition $1 init_script_file_type system_r;
-+')
-+
---- a/policy/modules/system/unconfined.te
-+++ b/policy/modules/system/unconfined.te
-@@ -18,10 +18,15 @@ init_system_domain(unconfined_t, unconfi
- 
- type unconfined_execmem_t;
- type unconfined_execmem_exec_t;
- init_system_domain(unconfined_execmem_t, unconfined_execmem_exec_t)
- role unconfined_r types unconfined_execmem_t;
-+role unconfined_r types unconfined_t;
-+role system_r types unconfined_t;
-+role_transition system_r unconfined_exec_t unconfined_r;
-+allow system_r unconfined_r;
-+allow unconfined_r system_r;
- 
- ########################################
- #
- # Local policy
- #
-@@ -48,10 +53,12 @@ unconfined_domain(unconfined_t)
- userdom_user_home_dir_filetrans_user_home_content(unconfined_t, { dir file lnk_file fifo_file sock_file })
- 
- ifdef(`direct_sysadm_daemon',`
-         optional_policy(`
-                 init_run_daemon(unconfined_t, unconfined_r)
-+                init_domtrans_script(unconfined_t)
-+                init_script_role_transition(unconfined_r)
-         ')
- ',`
-         ifdef(`distro_gentoo',`
-                 seutil_run_runinit(unconfined_t, unconfined_r)
-                 seutil_init_script_run_runinit(unconfined_t, unconfined_r)
---- a/policy/users
-+++ b/policy/users
-@@ -13,37 +13,33 @@
- # system_u is the user identity for system processes and objects.
- # There should be no corresponding Unix user identity for system,
- # and a user process should never be assigned the system user
- # identity.
- #
--gen_user(system_u,, system_r, s0, s0 - mls_systemhigh, mcs_allcats)
-+gen_user(system_u,, system_r unconfined_r, s0, s0 - mls_systemhigh, mcs_allcats)
- 
- #
- # user_u is a generic user identity for Linux users who have no
- # SELinux user identity defined.  The modified daemons will use
- # this user identity in the security context if there is no matching
- # SELinux user identity for a Linux user.  If you do not want to
- # permit any access to such users, then remove this entry.
- #
- gen_user(user_u, user, user_r, s0, s0)
--gen_user(staff_u, staff, staff_r sysadm_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
--gen_user(sysadm_u, sysadm, sysadm_r, s0, s0 - mls_systemhigh, mcs_allcats)
-+gen_user(staff_u, user, staff_r sysadm_r ifdef(`enable_mls',`secadm_r auditadm_r') unconfined_r, s0, s0 - mls_systemhigh, mcs_allcats)
-+gen_user(sysadm_u, user, sysadm_r, s0, s0 - mls_systemhigh, mcs_allcats)
- 
- # Until order dependence is fixed for users:
- ifdef(`direct_sysadm_daemon',`
--        gen_user(unconfined_u, unconfined, unconfined_r system_r, s0, s0 - mls_systemhigh, mcs_allcats)
-+        gen_user(unconfined_u, user, unconfined_r system_r, s0, s0 - mls_systemhigh, mcs_allcats)
- ',`
--        gen_user(unconfined_u, unconfined, unconfined_r, s0, s0 - mls_systemhigh, mcs_allcats)
-+        gen_user(unconfined_u, user, unconfined_r, s0, s0 - mls_systemhigh, mcs_allcats)
- ')
- 
- #
- # The following users correspond to Unix identities.
- # These identities are typically assigned as the user attribute
- # when login starts the user shell.  Users with access to the sysadm_r
- # role should use the staff_r role instead of the user_r role when
- # not in the sysadm_r.
- #
--ifdef(`direct_sysadm_daemon',`
--	gen_user(root, sysadm, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r') system_r, s0, s0 - mls_systemhigh, mcs_allcats)
--',`
--	gen_user(root, sysadm, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
--')
-+gen_user(root, user, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r') unconfined_r system_r, s0, s0 - mls_systemhigh, mcs_allcats)
diff --git a/recipes-security/refpolicy/refpolicy-targeted_2.20170204.bb b/recipes-security/refpolicy/refpolicy-targeted_2.20170204.bb
deleted file mode 100644
index 4705c46..0000000
--- a/recipes-security/refpolicy/refpolicy-targeted_2.20170204.bb
+++ /dev/null
@@ -1,29 +0,0 @@
-SUMMARY = "SELinux targeted policy"
-DESCRIPTION = "\
-This is the targeted variant of the SELinux reference policy.  Most service \
-domains are locked down. Users and admins will login in with unconfined_t \
-domain, so they have the same access to the system as if SELinux was not \
-enabled. \
-"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-${PV}:"
-
-POLICY_NAME = "targeted"
-POLICY_TYPE = "mcs"
-POLICY_MLS_SENS = "0"
-
-include refpolicy_${PV}.inc
-
-SRC_URI += "${@bb.utils.contains('${PV}', '2.20170805', '${PATCH_2.20170805}', '${PATCH_2.20170204}', d)}"
-
-PATCH_2.20170805 = " \
-            file://refpolicy-fix-optional-issue-on-sysadm-module.patch \
-            file://refpolicy-unconfined_u-default-user.patch \
-            ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://refpolicy-remove-duplicate-type_transition.patch', '', d)} \
-           "
-
-PATCH_2.20170204 = " \
-            file://refpolicy-fix-optional-issue-on-sysadm-module_2.20170204.patch \
-            file://refpolicy-unconfined_u-default-user_2.20170204.patch \
-            ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://refpolicy-remove-duplicate-type_transition_2.20170204.patch', '', d)} \
-           "
diff --git a/recipes-security/refpolicy/refpolicy-targeted_2.20180701.bb b/recipes-security/refpolicy/refpolicy-targeted_2.20180701.bb
new file mode 100644
index 0000000..e80aa56
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-targeted_2.20180701.bb
@@ -0,0 +1,21 @@
+SUMMARY = "SELinux targeted policy"
+DESCRIPTION = "\
+This is the targeted variant of the SELinux reference policy.  Most service \
+domains are locked down. Users and admins will login in with unconfined_t \
+domain, so they have the same access to the system as if SELinux was not \
+enabled. \
+"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-${PV}:"
+
+POLICY_NAME = "targeted"
+POLICY_TYPE = "mcs"
+POLICY_MLS_SENS = "0"
+
+include refpolicy_${PV}.inc
+
+SRC_URI += " \
+           file://refpolicy-fix-optional-issue-on-sysadm-module.patch \
+           file://refpolicy-unconfined_u-default-user.patch \
+           ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://refpolicy-remove-duplicate-type_transition.patch', '', d)} \
+          "
diff --git a/recipes-security/refpolicy/refpolicy_2.20170204.inc b/recipes-security/refpolicy/refpolicy_2.20180701.inc
similarity index 71%
rename from recipes-security/refpolicy/refpolicy_2.20170204.inc
rename to recipes-security/refpolicy/refpolicy_2.20180701.inc
index 8b72cbd..7abecf5 100644
--- a/recipes-security/refpolicy/refpolicy_2.20170204.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20180701.inc
@@ -1,13 +1,12 @@
-SRC_URI = "https://raw.githubusercontent.com/wiki/TresysTechnology/refpolicy/files/refpolicy-${PV}.tar.bz2;"
-SRC_URI[md5sum] = "76a7a455289c9216ee0fbb8de71c9799"
-SRC_URI[sha256sum] = "5e4daee61d89dfdc8c7bf369f81c99845931e337916dc6401e301c5de57ea336"
+SRC_URI = "https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE_2_20180701/refpolicy-${PV}.tar.bz2"
+SRC_URI[md5sum] = "61e1c261e6698b6401d2f31129976bcd"
+SRC_URI[sha256sum] = "dca99ee829b41f216474170c0e38aae99b01a0406a841bdc7347b49aa24f6c7d"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20170204:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20180701:"
 
 # Fix file contexts for Poky
 SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-update-alternatives_sysvinit.patch \
-            file://poky-fc-update-alternatives_sysklogd.patch \
             file://poky-fc-update-alternatives_hostname.patch \
             file://poky-fc-update-alternatives_bash.patch \
             file://poky-fc-fix-real-path_resolv.conf.patch \
@@ -17,17 +16,16 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-clock.patch \
             file://poky-fc-dmesg.patch \
             file://poky-fc-fstools.patch \
-            file://poky-fc-mta.patch \
-            file://poky-fc-netutils.patch \
-            file://poky-fc-nscd.patch \
             file://poky-fc-screen.patch \
             file://poky-fc-ssh.patch \
             file://poky-fc-sysnetwork.patch \
-            file://poky-fc-udevd.patch \
             file://poky-fc-rpm.patch \
-            file://poky-fc-ftpwho-dir.patch \
             file://poky-fc-fix-real-path_su.patch \
-            file://refpolicy-update-for_systemd.patch \
+            file://poky-fc-e2fsprogs.patch \
+            file://poky-fc-nologin.patch \
+            file://poky-fc-fix-real-path_brctl.patch \
+            file://poky-fc-openldap.patch \
+            file://poky-fc-kerberos.patch \
            "
 
 # Specific policy for Poky
@@ -45,6 +43,7 @@ SRC_URI += "file://poky-policy-add-syslogd_t-to-trusted-object.patch \
             file://poky-policy-allow-setfiles_t-to-read-symlinks.patch \
             file://poky-policy-fix-new-SELINUXMNT-in-sys.patch \
             file://poky-policy-allow-sysadm-to-run-rpcinfo.patch \
+            file://poky-policy-update-for-systemd.patch \
            "
 
 # Other policy fixes 
@@ -52,7 +51,9 @@ SRC_URI += " \
             file://poky-policy-fix-seutils-manage-config-files.patch \
             file://poky-policy-fix-setfiles-statvfs-get-file-count.patch \
             file://poky-policy-fix-dmesg-to-use-dev-kmsg.patch \
-            file://ftp-add-ftpd_t-to-mlsfilewrite.patch \
+            file://poky-policy-ftp-add-ftpd_t-to-mlsfilewrite.patch \
+            file://poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch \
+            file://poky-policy-kernel_t-mls-trusted-for-setting-process.patch \
            "
 
 include refpolicy_common.inc
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 2ce02ac..c5ed64c 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -1,5 +1,3 @@
-DEFAULT_ENFORCING ??= "enforcing"
-
 SECTION = "base"
 LICENSE = "GPLv2"
 
@@ -16,6 +14,8 @@ SRC_URI += "file://customizable_types \
 
 S = "${WORKDIR}/refpolicy"
 
+DEFAULT_ENFORCING ??= "enforcing"
+
 CONFFILES_${PN} += "${sysconfdir}/selinux/config"
 FILES_${PN} += " \
 	${sysconfdir}/selinux/${POLICY_NAME}/ \
-- 
2.7.4


