Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72652E00E89; Tue, 10 Jul 2018 19:35:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,NUMERIC_HTTP_ADDR,
	RCVD_IN_DNSWL_MED,URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	*  1.2 NUMERIC_HTTP_ADDR URI: Uses a numeric IP address in URL
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47BDCE00720
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 19:34:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w6B2Ys22027377
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Jul 2018 19:34:54 -0700 (PDT)
Received: from [128.224.162.137] (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Tue, 10 Jul 2018 19:34:53 -0700
To: <wenzong.fan@windriver.com>
References: <1524821429-2233-1-git-send-email-wenzong.fan@windriver.com>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <3ae9a927-8a68-a862-6de7-38fba45a87f8@windriver.com>
Date: Wed, 11 Jul 2018 10:34:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <1524821429-2233-1-git-send-email-wenzong.fan@windriver.com>
X-Originating-IP: [128.224.162.137]
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] refpolicy: Update to 20180114 release
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
X-List-Received-Date: Wed, 11 Jul 2018 02:35:01 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Ping


//Yi


在 2018年04月27日 17:30, wenzong.fan@windriver.com 写道:
> From: Wenzong Fan <wenzong.fan@windriver.com>
>
> Remove patches that included by upstream:
> - poky-fc-nscd.patch
> - poky-fc-ftpwho-dir.patch
> - refpolicy-update-for_systemd.patch
> - 0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
>
> Rebase patches:
> - poky-fc-clock.patch
> - poky-fc-dmesg.patch
> - poky-fc-fix-real-path_login.patch
> - poky-fc-fix-real-path_shadow.patch
> - poky-fc-fix-real-path_su.patch
> - poky-fc-fstools.patch
> - poky-fc-netutils.patch
> - poky-fc-ssh.patch
> - poky-fc-sysnetwork.patch
> - poky-fc-udevd.patch
> - poky-fc-update-alternatives_bash.patch
> - poky-fc-update-alternatives_hostname.patch
> - poky-fc-update-alternatives_sysklogd.patch
> - poky-fc-update-alternatives_sysvinit.patch
> - poky-policy-add-rules-for-syslogd_t-symlink.patch
> - poky-policy-add-rules-for-var-log-symlink-apache.patch
> - poky-policy-add-rules-for-var-log-symlink.patch
> - poky-policy-allow-nfsd-to-exec-shell-commands.patch
> - poky-policy-allow-setfiles_t-to-read-symlinks.patch
> - poky-policy-fix-dmesg-to-use-dev-kmsg.patch
> - poky-policy-fix-setfiles-statvfs-get-file-count.patch
> - 0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
> - 0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
> - 0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
>
> Add a new patch for minimum:
> - 0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch
>
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>   .../refpolicy-2.20170204/poky-fc-ftpwho-dir.patch  |  27 -----
>   .../refpolicy-2.20170204/poky-fc-nscd.patch        |  25 -----
>   .../refpolicy-update-for_systemd.patch             |  27 -----
>   .../ftp-add-ftpd_t-to-mlsfilewrite.patch           |   0
>   .../poky-fc-clock.patch                            |  20 ++--
>   .../poky-fc-corecommands.patch                     |   0
>   .../poky-fc-dmesg.patch                            |  13 ++-
>   .../poky-fc-fix-bind.patch                         |   0
>   .../poky-fc-fix-real-path_login.patch              |  47 ++++----
>   .../poky-fc-fix-real-path_resolv.conf.patch        |   0
>   .../poky-fc-fix-real-path_shadow.patch             |  36 ++++--
>   .../poky-fc-fix-real-path_su.patch                 |  15 ++-
>   .../poky-fc-fstools.patch                          |  79 ++++---------
>   .../poky-fc-iptables.patch                         |   0
>   .../poky-fc-mta.patch                              |   0
>   .../poky-fc-netutils.patch                         |  28 ++---
>   .../poky-fc-rpm.patch                              |   0
>   .../poky-fc-screen.patch                           |   0
>   .../poky-fc-ssh.patch                              |  16 +--
>   .../poky-fc-su.patch                               |   0
>   .../poky-fc-subs_dist.patch                        |   0
>   .../poky-fc-sysnetwork.patch                       |  43 +++-----
>   .../poky-fc-udevd.patch                            |  35 ++----
>   .../poky-fc-update-alternatives_bash.patch         |  30 ++---
>   .../poky-fc-update-alternatives_hostname.patch     |  15 ++-
>   .../poky-fc-update-alternatives_sysklogd.patch     |  51 +++++----
>   .../poky-fc-update-alternatives_sysvinit.patch     |  68 ++++++------
>   ...poky-policy-add-rules-for-bsdpty_device_t.patch |   0
>   ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  16 +--
>   .../poky-policy-add-rules-for-tmp-symlink.patch    |   0
>   ...ky-policy-add-rules-for-var-cache-symlink.patch |   0
>   ...licy-add-rules-for-var-log-symlink-apache.patch |  16 +--
>   ...rules-for-var-log-symlink-audisp_remote_t.patch |   0
>   ...poky-policy-add-rules-for-var-log-symlink.patch | 122 ++++-----------------
>   ...ky-policy-add-syslogd_t-to-trusted-object.patch |   0
>   ...-policy-allow-nfsd-to-exec-shell-commands.patch |  35 +-----
>   ...-policy-allow-setfiles_t-to-read-symlinks.patch |  18 +--
>   .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |   0
>   .../poky-policy-don-t-audit-tty_device_t.patch     |   0
>   .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  30 ++---
>   .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    |   0
>   ...poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch |   0
>   ...olicy-fix-setfiles-statvfs-get-file-count.patch |  20 ++--
>   ...ky-policy-fix-seutils-manage-config-files.patch |   0
>   ...s_2.20170204.bb => refpolicy-mcs_2.20180114.bb} |   0
>   ...inimum-systemd-unconfined-lib-add-systemd.patch |  35 ++----
>   ...inimum-init-fix-reboot-with-systemd-as-in.patch |  36 ------
>   ...inimum-systemd-fix-for-login-journal-serv.patch |  47 +++++---
>   ...inimum-systemd-fix-for-systemd-tmp-files-.patch |  56 +++++-----
>   ...inimum-systemd-make-fstools_write_log-opt.patch |  36 ++++++
>   ...20170204.bb => refpolicy-minimum_2.20180114.bb} |   2 +-
>   ...s_2.20170204.bb => refpolicy-mls_2.20180114.bb} |   0
>   ...0170204.bb => refpolicy-standard_2.20180114.bb} |   0
>   ...0170204.bb => refpolicy-targeted_2.20180114.bb} |   0
>   ...icy_2.20170204.inc => refpolicy_2.20180114.inc} |   9 +-
>   55 files changed, 413 insertions(+), 640 deletions(-)
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/refpolicy-update-for_systemd.patch
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/ftp-add-ftpd_t-to-mlsfilewrite.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-clock.patch (46%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-corecommands.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-dmesg.patch (60%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-fix-bind.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-fix-real-path_login.patch (21%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-fix-real-path_resolv.conf.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-fix-real-path_shadow.patch (38%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-fix-real-path_su.patch (70%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-fstools.patch (22%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-iptables.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-mta.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-netutils.patch (29%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-rpm.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-screen.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-ssh.patch (61%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-su.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-subs_dist.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-sysnetwork.patch (39%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-udevd.patch (26%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-update-alternatives_bash.patch (30%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-update-alternatives_hostname.patch (73%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-update-alternatives_sysklogd.patch (47%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-fc-update-alternatives_sysvinit.patch (30%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-add-rules-for-bsdpty_device_t.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-add-rules-for-syslogd_t-symlink.patch (68%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-add-rules-for-tmp-symlink.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-add-rules-for-var-cache-symlink.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-add-rules-for-var-log-symlink-apache.patch (70%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-add-rules-for-var-log-symlink.patch (47%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-add-syslogd_t-to-trusted-object.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-allow-nfsd-to-exec-shell-commands.patch (52%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-allow-setfiles_t-to-read-symlinks.patch (68%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-allow-sysadm-to-run-rpcinfo.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-don-t-audit-tty_device_t.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-fix-dmesg-to-use-dev-kmsg.patch (46%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-fix-new-SELINUXMNT-in-sys.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-fix-setfiles-statvfs-get-file-count.patch (67%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204 => refpolicy-2.20180114}/poky-policy-fix-seutils-manage-config-files.patch (100%)
>   rename recipes-security/refpolicy/{refpolicy-mcs_2.20170204.bb => refpolicy-mcs_2.20180114.bb} (100%)
>   delete mode 100644 recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch
>   rename recipes-security/refpolicy/{refpolicy-minimum_2.20170204.bb => refpolicy-minimum_2.20180114.bb} (97%)
>   rename recipes-security/refpolicy/{refpolicy-mls_2.20170204.bb => refpolicy-mls_2.20180114.bb} (100%)
>   rename recipes-security/refpolicy/{refpolicy-standard_2.20170204.bb => refpolicy-standard_2.20180114.bb} (100%)
>   rename recipes-security/refpolicy/{refpolicy-targeted_2.20170204.bb => refpolicy-targeted_2.20180114.bb} (100%)
>   rename recipes-security/refpolicy/{refpolicy_2.20170204.inc => refpolicy_2.20180114.inc} (87%)
>
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch
> deleted file mode 100644
> index d58de6a..0000000
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -fix ftpwho install dir
> -
> -Upstream-Status: Pending
> -
> -ftpwho is installed into /usr/bin/, not /usr/sbin, so fix it
> -
> -Signed-off-by: Roy Li <rongqing.li@windriver.com>
> -Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> ----
> - policy/modules/contrib/ftp.fc |    2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> ---- a/policy/modules/contrib/ftp.fc
> -+++ b/policy/modules/contrib/ftp.fc
> -@@ -10,11 +10,11 @@
> - /usr/kerberos/sbin/ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> -
> - /usr/lib/systemd/system/proftpd.*\.service -- gen_context(system_u:object_r:ftpd_unit_t,s0)
> - /usr/lib/systemd/system/vsftpd.*\.service -- gen_context(system_u:object_r:ftpd_unit_t,s0)
> -
> --/usr/sbin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> -+/usr/bin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> - /usr/sbin/in\.ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> - /usr/sbin/muddleftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> - /usr/sbin/proftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> - /usr/sbin/vsftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
> -
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch
> deleted file mode 100644
> index 0adf7c2..0000000
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -From 642fab321a5f1f40495b4ca07f1fca4145024986 Mon Sep 17 00:00:00 2001
> -From: Xin Ouyang <Xin.Ouyang@windriver.com>
> -Date: Thu, 22 Aug 2013 19:25:36 +0800
> -Subject: [PATCH] refpolicy: fix real path for nscd
> -
> -Upstream-Status: Inappropriate [configuration]
> -
> -Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
> -Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> ----
> - policy/modules/contrib/nscd.fc |    1 +
> - 1 file changed, 1 insertion(+)
> -
> ---- a/policy/modules/contrib/nscd.fc
> -+++ b/policy/modules/contrib/nscd.fc
> -@@ -1,8 +1,9 @@
> - /etc/rc\.d/init\.d/nscd	--	gen_context(system_u:object_r:nscd_initrc_exec_t,s0)
> -
> - /usr/sbin/nscd	--	gen_context(system_u:object_r:nscd_exec_t,s0)
> -+/usr/bin/nscd	--	gen_context(system_u:object_r:nscd_exec_t,s0)
> -
> - /var/cache/nscd(/.*)?	gen_context(system_u:object_r:nscd_var_run_t,s0)
> -
> - /var/db/nscd(/.*)?	gen_context(system_u:object_r:nscd_var_run_t,s0)
> -
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/refpolicy-update-for_systemd.patch b/recipes-security/refpolicy/refpolicy-2.20170204/refpolicy-update-for_systemd.patch
> deleted file mode 100644
> index 41b9c2b..0000000
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/refpolicy-update-for_systemd.patch
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -From 07553727dca51631c93bca482442da8d0c50ac94 Mon Sep 17 00:00:00 2001
> -From: Shrikant Bobade <shrikant_bobade@mentor.com>
> -Date: Fri, 12 Jun 2015 19:37:52 +0530
> -Subject: [PATCH] refpolicy: update for systemd related allow rules
> -
> -It provide, the systemd support related allow rules
> -
> -Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> -Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> ----
> - policy/modules/system/init.te |    5 +++++
> - 1 file changed, 5 insertions(+)
> -
> ---- a/policy/modules/system/init.te
> -+++ b/policy/modules/system/init.te
> -@@ -1105,5 +1105,10 @@ optional_policy(`
> - ')
> -
> - optional_policy(`
> - 	zebra_read_config(initrc_t)
> - ')
> -+
> -+# systemd related allow rules
> -+allow kernel_t init_t:process dyntransition;
> -+allow devpts_t device_t:filesystem associate;
> -+allow init_t self:capability2 block_suspend;
> -\ No newline at end of file
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/ftp-add-ftpd_t-to-mlsfilewrite.patch b/recipes-security/refpolicy/refpolicy-2.20180114/ftp-add-ftpd_t-to-mlsfilewrite.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/ftp-add-ftpd_t-to-mlsfilewrite.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/ftp-add-ftpd_t-to-mlsfilewrite.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-clock.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-clock.patch
> similarity index 46%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-clock.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-clock.patch
> index b2102af..06ac33a 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-clock.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-clock.patch
> @@ -4,17 +4,21 @@ Upstream-Status: Inappropriate [configuration]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/clock.fc | 1 +
> - 1 file changed, 1 insertion(+)
> + policy/modules/system/clock.fc | 2 ++
> + 1 file changed, 2 insertions(+)
>   
> +diff --git a/policy/modules/system/clock.fc b/policy/modules/system/clock.fc
> +index 3019658..996de7d 100644
>   --- a/policy/modules/system/clock.fc
>   +++ b/policy/modules/system/clock.fc
> -@@ -1,6 +1,7 @@
> -
> - /etc/adjtime		--	gen_context(system_u:object_r:adjtime_t,s0)
> -
> - /sbin/hwclock		--	gen_context(system_u:object_r:hwclock_exec_t,s0)
> -+/sbin/hwclock\.util-linux	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
> +@@ -3,3 +3,5 @@
> + /usr/bin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
>    
>    /usr/sbin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
> ++
> ++/sbin/hwclock\.util-linux	--      gen_context(system_u:object_r:hwclock_exec_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-corecommands.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-corecommands.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-corecommands.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-corecommands.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-dmesg.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-dmesg.patch
> similarity index 60%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-dmesg.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-dmesg.patch
> index 2a567da..e3d7798 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-dmesg.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-dmesg.patch
> @@ -4,15 +4,18 @@ Upstream-Status: Inappropriate [configuration]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
>    policy/modules/admin/dmesg.fc | 1 +
>    1 file changed, 1 insertion(+)
>   
> +diff --git a/policy/modules/admin/dmesg.fc b/policy/modules/admin/dmesg.fc
> +index e52fdfc..33fdf89 100644
>   --- a/policy/modules/admin/dmesg.fc
>   +++ b/policy/modules/admin/dmesg.fc
> -@@ -1,4 +1,5 @@
> -
> - /bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
> -+/bin/dmesg\.util-linux	--		gen_context(system_u:object_r:dmesg_exec_t,s0)
> -
> +@@ -1 +1,2 @@
>    /usr/bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
> ++/bin/dmesg\.util-linux	--              gen_context(system_u:object_r:dmesg_exec_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-bind.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-bind.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-bind.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-bind.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_login.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_login.patch
> similarity index 21%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_login.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_login.patch
> index dfb7544..2908ef7 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_login.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_login.patch
> @@ -4,34 +4,35 @@ Upstream-Status: Inappropriate [only for Poky]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/authlogin.fc |    7 ++++---
> - 1 files changed, 4 insertions(+), 3 deletions(-)
> + policy/modules/system/authlogin.fc | 6 ++++++
> + 1 file changed, 6 insertions(+)
>   
> +diff --git a/policy/modules/system/authlogin.fc b/policy/modules/system/authlogin.fc
> +index a0c4d1c..60ce5a9 100644
>   --- a/policy/modules/system/authlogin.fc
>   +++ b/policy/modules/system/authlogin.fc
> -@@ -1,19 +1,21 @@
> +@@ -12,6 +12,8 @@
> + /usr/bin/unix_verify		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
> + /usr/bin/utempter		--	gen_context(system_u:object_r:utempter_exec_t,s0)
> + /usr/bin/validate		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
> ++/bin/login\.shadow     --      gen_context(system_u:object_r:login_exec_t,s0)
> ++/bin/login\.tinylogin  --      gen_context(system_u:object_r:login_exec_t,s0)
>    
> - /bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
> -+/bin/login\.shadow	--	gen_context(system_u:object_r:login_exec_t,s0)
> -+/bin/login\.tinylogin	--	gen_context(system_u:object_r:login_exec_t,s0)
> + /usr/kerberos/sbin/login\.krb5 -- gen_context(system_u:object_r:login_exec_t,s0)
>    
> - /etc/\.pwd\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
> - /etc/group\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
> - /etc/gshadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
> - /etc/passwd\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
> - /etc/shadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
> -
> - /sbin/pam_console_apply	 --	gen_context(system_u:object_r:pam_console_exec_t,s0)
> - /sbin/pam_timestamp_check --	gen_context(system_u:object_r:pam_exec_t,s0)
> --/sbin/unix_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
> --/sbin/unix_update	--	gen_context(system_u:object_r:updpwd_exec_t,s0)
> --/sbin/unix_verify	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
> -+/sbin/unix_chkpwd		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
> -+/sbin/unix_update		--	gen_context(system_u:object_r:updpwd_exec_t,s0)
> -+/sbin/unix_verify		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
> +@@ -24,6 +26,10 @@
> + /usr/sbin/unix_verify		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
> + /usr/sbin/utempter		--	gen_context(system_u:object_r:utempter_exec_t,s0)
> + /usr/sbin/validate		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
> ++/sbin/unix_chkpwd		--      gen_context(system_u:object_r:chkpwd_exec_t,s0)
> ++/sbin/unix_update		--      gen_context(system_u:object_r:updpwd_exec_t,s0)
> ++/sbin/unix_verify		--      gen_context(system_u:object_r:chkpwd_exec_t,s0)
> ++
>    ifdef(`distro_suse', `
> - /sbin/unix2_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
> + /usr/sbin/unix2_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
>    ')
> -
> - /usr/bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_resolv.conf.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_resolv.conf.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_resolv.conf.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_resolv.conf.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_shadow.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_shadow.patch
> similarity index 38%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_shadow.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_shadow.patch
> index 9819c1d..bb8780f 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_shadow.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_shadow.patch
> @@ -4,31 +4,43 @@ Upstream-Status: Inappropriate [only for Poky]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/admin/usermanage.fc |    6 ++++++
> + policy/modules/admin/usermanage.fc | 6 ++++++
>    1 file changed, 6 insertions(+)
>   
> +diff --git a/policy/modules/admin/usermanage.fc b/policy/modules/admin/usermanage.fc
> +index 620eefc..0c81239 100644
>   --- a/policy/modules/admin/usermanage.fc
>   +++ b/policy/modules/admin/usermanage.fc
> -@@ -6,15 +6,21 @@ ifdef(`distro_debian',`
> - /etc/cron\.daily/cracklib-runtime -- gen_context(system_u:object_r:crack_exec_t,s0)
> - ')
> +@@ -4,7 +4,9 @@ ifdef(`distro_debian',`
>    
>    /usr/bin/chage		--	gen_context(system_u:object_r:passwd_exec_t,s0)
>    /usr/bin/chfn		--	gen_context(system_u:object_r:chfn_exec_t,s0)
> -+/usr/bin/chfn\.shadow	--	gen_context(system_u:object_r:chfn_exec_t,s0)
> ++/usr/bin/chfn\.shadow	--      gen_context(system_u:object_r:chfn_exec_t,s0)
>    /usr/bin/chsh		--	gen_context(system_u:object_r:chfn_exec_t,s0)
> -+/usr/bin/chsh\.shadow	--	gen_context(system_u:object_r:chfn_exec_t,s0)
> ++/usr/bin/chsh\.shadow	--      gen_context(system_u:object_r:chfn_exec_t,s0)
> + /usr/bin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
> + /usr/bin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
>    /usr/bin/gpasswd	--	gen_context(system_u:object_r:groupadd_exec_t,s0)
> +@@ -14,13 +16,17 @@ ifdef(`distro_debian',`
> + /usr/bin/grpconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
> + /usr/bin/grpunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
>    /usr/bin/passwd		--	gen_context(system_u:object_r:passwd_exec_t,s0)
> -+/usr/bin/passwd\.shadow	--	gen_context(system_u:object_r:passwd_exec_t,s0)
> -+/usr/bin/passwd\.tinylogin	--	gen_context(system_u:object_r:passwd_exec_t,s0)
> ++/usr/bin/passwd\.shadow        --      gen_context(system_u:object_r:passwd_exec_t,s0)
> ++/usr/bin/passwd\.tinylogin     --      gen_context(system_u:object_r:passwd_exec_t,s0)
> + /usr/bin/pwconv		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
> + /usr/bin/pwunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
> + /usr/bin/useradd	--	gen_context(system_u:object_r:useradd_exec_t,s0)
> + /usr/bin/userdel	--	gen_context(system_u:object_r:useradd_exec_t,s0)
> + /usr/bin/usermod	--	gen_context(system_u:object_r:useradd_exec_t,s0)
>    /usr/bin/vigr		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
> -+/sbin/vigr\.shadow	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
> ++/sbin/vigr\.shadow	--      gen_context(system_u:object_r:admin_passwd_exec_t,s0)
>    /usr/bin/vipw		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
> -+/sbin/vipw\.shadow	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
> ++/sbin/vipw\.shadow	--      gen_context(system_u:object_r:admin_passwd_exec_t,s0)
>    
>    /usr/lib/cracklib_dict.* --	gen_context(system_u:object_r:crack_db_t,s0)
>    
> - /usr/sbin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
> - /usr/sbin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_su.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_su.patch
> similarity index 70%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_su.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_su.patch
> index b8597f9..7fe7e89 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_su.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fix-real-path_su.patch
> @@ -8,15 +8,18 @@ Upstream-Status: Inappropriate [only for Poky]
>   Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>   ---
> - policy/modules/admin/su.fc |    2 ++
> - 1 file changed, 2 insertions(+)
> + policy/modules/admin/su.fc | 1 +
> + 1 file changed, 1 insertion(+)
>   
> +diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
> +index 3375c96..e89c174 100644
>   --- a/policy/modules/admin/su.fc
>   +++ b/policy/modules/admin/su.fc
> -@@ -2,5 +2,6 @@
> - /bin/su			--	gen_context(system_u:object_r:su_exec_t,s0)
> -
> +@@ -1,3 +1,4 @@
>    /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
>    /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
>    /usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
> -+/bin/su.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
> ++/bin/su.shadow		--      gen_context(system_u:object_r:su_exec_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fstools.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fstools.patch
> similarity index 22%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fstools.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fstools.patch
> index 66bef0f..704dc32 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fstools.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-fstools.patch
> @@ -8,68 +8,37 @@ Upstream-Status: Inappropriate [configuration]
>   Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>   Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/fstools.fc |    9 +++++++++
> - 1 file changed, 9 insertions(+)
> + policy/modules/system/fstools.fc | 8 ++++++++
> + 1 file changed, 8 insertions(+)
>   
> +diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
> +index d4219a1..ca56117 100644
>   --- a/policy/modules/system/fstools.fc
>   +++ b/policy/modules/system/fstools.fc
> -@@ -1,19 +1,23 @@
> - /sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/blkid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> -+/sbin/blkid/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/blockdev		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> -+/sbin/blockdev/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/cfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/dosfsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/dump		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/dumpe2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/e2fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/e4fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/e2label		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/fdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> -+/sbin/fdisk/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> -+/sbin/hdparm/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/install-mbr	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/lsraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/make_reiser4	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> -@@ -22,20 +26,22 @@
> - /sbin/mke4fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/mkfs.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/mkreiserfs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/mkswap		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> -+/sbin/mkswap/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/partx		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/raidautorun	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/raidstart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/reiserfs(ck|tune)	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/resize.*fs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> -+/sbin/swapoff/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/zdb		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/zhack		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /sbin/zinject		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> -@@ -83,10 +89,11 @@
> - /usr/sbin/parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /usr/sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> +@@ -91,6 +91,7 @@
>    /usr/sbin/partx			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
>    /usr/sbin/raidautorun		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
>    /usr/sbin/raidstart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> -+/usr/sbin/raw		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> ++/usr/sbin/raw			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
>    /usr/sbin/reiserfs(ck|tune)	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
>    /usr/sbin/resize.*fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
>    /usr/sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> - /usr/sbin/smartctl		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> +@@ -106,6 +107,13 @@
> + /usr/sbin/zstreamdump		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> + /usr/sbin/ztest			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> +
> ++/sbin/blkid/.util-linux 	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> ++/sbin/blockdev/.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> ++/sbin/fdisk/.util-linux 	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> ++/sbin/hdparm/.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> ++/sbin/mkswap/.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> ++/sbin/swapoff/.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
> ++
> + /var/swap			--	gen_context(system_u:object_r:swapfile_t,s0)
> +
> + /var/log/fsck(/.*)?		gen_context(system_u:object_r:fsadm_log_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-iptables.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-iptables.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-iptables.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-iptables.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-mta.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-mta.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-mta.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-mta.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-netutils.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-netutils.patch
> similarity index 29%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-netutils.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-netutils.patch
> index b41e6e4..70ceb71 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-netutils.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-netutils.patch
> @@ -4,21 +4,21 @@ Upstream-Status: Inappropriate [configuration]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/admin/netutils.fc | 1 +
> - 1 file changed, 1 insertion(+)
> + policy/modules/admin/netutils.fc | 2 ++
> + 1 file changed, 2 insertions(+)
>   
> +diff --git a/policy/modules/admin/netutils.fc b/policy/modules/admin/netutils.fc
> +index 54c0793..8bcd07b 100644
>   --- a/policy/modules/admin/netutils.fc
>   +++ b/policy/modules/admin/netutils.fc
> -@@ -1,10 +1,11 @@
> - /bin/ping.* 		--	gen_context(system_u:object_r:ping_exec_t,s0)
> - /bin/tracepath.*		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
> - /bin/traceroute.*	--	gen_context(system_u:object_r:traceroute_exec_t,s0)
> -
> - /sbin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
> -+/bin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
> -
> - /usr/bin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
> - /usr/bin/lft		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
> - /usr/bin/nmap		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
> - /usr/bin/ping.* 	--	gen_context(system_u:object_r:ping_exec_t,s0)
> +@@ -18,3 +18,5 @@
> + /usr/sbin/send_arp	--	gen_context(system_u:object_r:ping_exec_t,s0)
> + /usr/sbin/tcpdump	--	gen_context(system_u:object_r:netutils_exec_t,s0)
> + /usr/sbin/traceroute.*	--	gen_context(system_u:object_r:traceroute_exec_t,s0)
> ++
> ++/bin/arping		--      gen_context(system_u:object_r:netutils_exec_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-rpm.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-rpm.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-rpm.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-rpm.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-screen.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-screen.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-screen.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-screen.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ssh.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-ssh.patch
> similarity index 61%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ssh.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-ssh.patch
> index a01e2eb..c4fa85c 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ssh.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-ssh.patch
> @@ -4,21 +4,23 @@ Upstream-Status: Inappropriate [configuration]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
>    policy/modules/services/ssh.fc | 1 +
>    1 file changed, 1 insertion(+)
>   
> +diff --git a/policy/modules/services/ssh.fc b/policy/modules/services/ssh.fc
> +index 4ac3e73..a22e7bf 100644
>   --- a/policy/modules/services/ssh.fc
>   +++ b/policy/modules/services/ssh.fc
> -@@ -2,10 +2,11 @@ HOME_DIR/\.ssh(/.*)?			gen_context(syste
> -
> - /etc/ssh/primes			--	gen_context(system_u:object_r:sshd_key_t,s0)
> +@@ -4,6 +4,7 @@ HOME_DIR/\.ssh(/.*)?			gen_context(system_u:object_r:ssh_home_t,s0)
>    /etc/ssh/ssh_host.*_key		--	gen_context(system_u:object_r:sshd_key_t,s0)
>    
>    /usr/bin/ssh			--	gen_context(system_u:object_r:ssh_exec_t,s0)
> -+/usr/bin/ssh\.openssh		--	gen_context(system_u:object_r:ssh_exec_t,s0)
> ++/usr/bin/ssh\.openssh		--      gen_context(system_u:object_r:ssh_exec_t,s0)
>    /usr/bin/ssh-agent		--	gen_context(system_u:object_r:ssh_agent_exec_t,s0)
>    /usr/bin/ssh-keygen		--	gen_context(system_u:object_r:ssh_keygen_exec_t,s0)
> -
> - /usr/lib/openssh/ssh-keysign	--	gen_context(system_u:object_r:ssh_keysign_exec_t,s0)
> - /usr/lib/ssh/ssh-keysign	--	gen_context(system_u:object_r:ssh_keysign_exec_t,s0)
> + /usr/bin/sshd			--	gen_context(system_u:object_r:sshd_exec_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-su.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-su.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-su.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-su.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-subs_dist.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-subs_dist.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-subs_dist.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-subs_dist.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-sysnetwork.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-sysnetwork.patch
> similarity index 39%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-sysnetwork.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-sysnetwork.patch
> index fa369ca..17fdb90 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-sysnetwork.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-sysnetwork.patch
> @@ -8,41 +8,26 @@ Upstream-Status: Inappropriate [configuration]
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/sysnetwork.fc |    4 ++++
> + policy/modules/system/sysnetwork.fc | 4 ++++
>    1 file changed, 4 insertions(+)
>   
> +diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
> +index f9ce70e..7cd6bab 100644
>   --- a/policy/modules/system/sysnetwork.fc
>   +++ b/policy/modules/system/sysnetwork.fc
> -@@ -2,10 +2,11 @@
> - #
> - # /bin
> - #
> - /bin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /bin/ip			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> -+/sbin/ip\.iproute2 --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
> +@@ -68,6 +68,10 @@ ifdef(`distro_redhat',`
> + /usr/sbin/pump			--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
> + /usr/sbin/tc			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
>    
> - #
> - # /dev
> - #
> - ifdef(`distro_debian',`
> -@@ -43,17 +44,19 @@ ifdef(`distro_redhat',`
> - /sbin/dhclient.*	--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
> - /sbin/dhcdbd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
> - /sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
> - /sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> ++/sbin/ip\.iproute2 --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
>   +/sbin/ifconfig\.net-tools  --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /sbin/ip		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /sbin/ipx_configure	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /sbin/ipx_interface	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /sbin/ipx_internal_net	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /sbin/iw		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /sbin/iwconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /sbin/mii-tool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
>   +/sbin/mii-tool\.net-tools  --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
> - /sbin/pump		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
> - /sbin/tc		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
> -
> ++
>    #
> - # /usr
> + # /var
> + #
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-udevd.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-udevd.patch
> similarity index 26%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-udevd.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-udevd.patch
> index 8e2cb1b..9d74148 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-udevd.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-udevd.patch
> @@ -7,32 +7,21 @@ Upstream-Status: Inappropriate [configuration]
>   
>   Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/udev.fc |    2 ++
> - 1 file changed, 2 insertions(+)
> + policy/modules/system/udev.fc | 1 +
> + 1 file changed, 1 insertion(+)
>   
> +diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
> +index 009d821..0390373 100644
>   --- a/policy/modules/system/udev.fc
>   +++ b/policy/modules/system/udev.fc
> -@@ -8,10 +8,11 @@
> +@@ -34,6 +34,7 @@ ifdef(`distro_redhat',`
>    
> - /etc/udev/rules.d(/.*)? gen_context(system_u:object_r:udev_rules_t,s0)
> - /etc/udev/scripts/.+ --	gen_context(system_u:object_r:udev_helper_exec_t,s0)
> + /usr/lib/systemd/systemd-udevd -- gen_context(system_u:object_r:udev_exec_t,s0)
> + /usr/lib/udev/udev-acl --	gen_context(system_u:object_r:udev_exec_t,s0)
> ++/lib/udev/udevd	--  gen_context(system_u:object_r:udev_exec_t,s0)
>    
> - /lib/udev/udev-acl --	gen_context(system_u:object_r:udev_exec_t,s0)
> -+/lib/udev/udevd    --	gen_context(system_u:object_r:udev_exec_t,s0)
> + /usr/share/virtualbox/VBoxCreateUSBNode\.sh	--	gen_context(system_u:object_r:udev_helper_exec_t,s0)
>    
> - ifdef(`distro_debian',`
> - /bin/udevadm	--	gen_context(system_u:object_r:udev_exec_t,s0)
> - /lib/udev/create_static_nodes -- gen_context(system_u:object_r:udev_exec_t,s0)
> - ')
> -@@ -26,10 +27,11 @@ ifdef(`distro_debian',`
> - ifdef(`distro_redhat',`
> - /sbin/start_udev --	gen_context(system_u:object_r:udev_exec_t,s0)
> - ')
> -
> - /usr/bin/udevinfo --	gen_context(system_u:object_r:udev_exec_t,s0)
> -+/usr/bin/udevadm  --	gen_context(system_u:object_r:udev_exec_t,s0)
> -
> - /usr/sbin/udev		--	gen_context(system_u:object_r:udev_exec_t,s0)
> - /usr/sbin/udevadm	--	gen_context(system_u:object_r:udev_exec_t,s0)
> - /usr/sbin/udevd		--	gen_context(system_u:object_r:udev_exec_t,s0)
> - /usr/sbin/udevsend	--	gen_context(system_u:object_r:udev_exec_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_bash.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_bash.patch
> similarity index 30%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_bash.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_bash.patch
> index e0fdba1..74b6e3e 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_bash.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_bash.patch
> @@ -6,19 +6,23 @@ Subject: [PATCH 3/4] fix update-alternatives for hostname
>   Upstream-Status: Inappropriate [only for Poky]
>   
>   Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/corecommands.fc |    1 +
> + policy/modules/kernel/corecommands.fc | 1 +
>    1 file changed, 1 insertion(+)
>   
> -Index: refpolicy/policy/modules/kernel/corecommands.fc
> -===================================================================
> ---- refpolicy.orig/policy/modules/kernel/corecommands.fc
> -+++ refpolicy/policy/modules/kernel/corecommands.fc
> -@@ -6,6 +6,7 @@
> - /bin/d?ash			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/bash2			--	gen_context(system_u:object_r:shell_exec_t,s0)
> -+/bin/bash\.bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/fish			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/ksh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
> +diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
> +index 174e4ff..5ddce49 100644
> +--- a/policy/modules/kernel/corecommands.fc
> ++++ b/policy/modules/kernel/corecommands.fc
> +@@ -158,6 +158,7 @@ ifdef(`distro_gentoo',`
> + /usr/bin/tcsh			--	gen_context(system_u:object_r:shell_exec_t,s0)
> + /usr/bin/yash			--	gen_context(system_u:object_r:shell_exec_t,s0)
> + /usr/bin/zsh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
> ++/bin/bash\.bash			--      gen_context(system_u:object_r:shell_exec_t,s0)
> +
> + /usr/lib/(.*/)?bin(/.*)?		gen_context(system_u:object_r:bin_t,s0)
> + /usr/lib/postfix/configure-instance\.sh -- gen_context(system_u:object_r:bin_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_hostname.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_hostname.patch
> similarity index 73%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_hostname.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_hostname.patch
> index 038cb1f..b9fd50f 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_hostname.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_hostname.patch
> @@ -7,15 +7,18 @@ Upstream-Status: Inappropriate [only for Poky]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/hostname.fc |    1 +
> + policy/modules/system/hostname.fc | 1 +
>    1 file changed, 1 insertion(+)
>   
> +diff --git a/policy/modules/system/hostname.fc b/policy/modules/system/hostname.fc
> +index 83ddeb5..f827dda 100644
>   --- a/policy/modules/system/hostname.fc
>   +++ b/policy/modules/system/hostname.fc
> -@@ -1,4 +1,5 @@
> -
> - /bin/hostname		--	gen_context(system_u:object_r:hostname_exec_t,s0)
> -+/bin/hostname\.net-tools	--	gen_context(system_u:object_r:hostname_exec_t,s0)
> -
> +@@ -1 +1,2 @@
>    /usr/bin/hostname	--	gen_context(system_u:object_r:hostname_exec_t,s0)
> ++/bin/hostname\.net-tools	--	gen_context(system_u:object_r:hostname_exec_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_sysklogd.patch
> similarity index 47%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_sysklogd.patch
> index 2038110..a3c0cf3 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_sysklogd.patch
> @@ -10,51 +10,50 @@ Upstream-Status: Inappropriate [only for Poky]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/logging.fc |    4 ++++
> - policy/modules/system/logging.te |    1 +
> + policy/modules/system/logging.fc | 4 ++++
> + policy/modules/system/logging.te | 1 +
>    2 files changed, 5 insertions(+)
>   
> +diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
> +index b8df5fe..070b3ee 100644
>   --- a/policy/modules/system/logging.fc
>   +++ b/policy/modules/system/logging.fc
> -@@ -1,22 +1,26 @@
> - /dev/log		-s	gen_context(system_u:object_r:devlog_t,mls_systemhigh)
> +@@ -2,10 +2,12 @@
>    
>    /etc/rsyslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
>    /etc/syslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
>   +/etc/syslog.conf\.sysklogd	gen_context(system_u:object_r:syslog_conf_t,s0)
> + /etc/rsyslog.d(/.*)?	gen_context(system_u:object_r:syslog_conf_t,s0)
>    /etc/audit(/.*)?		gen_context(system_u:object_r:auditd_etc_t,mls_systemhigh)
>    /etc/rc\.d/init\.d/auditd --	gen_context(system_u:object_r:auditd_initrc_exec_t,s0)
>    /etc/rc\.d/init\.d/rsyslog --	gen_context(system_u:object_r:syslogd_initrc_exec_t,s0)
> -+/etc/rc\.d/init\.d/syslog\.sysklogd --	gen_context(system_u:object_r:syslogd_initrc_exec_t,s0)
> ++/etc/rc\.d/init\.d/syslog\.sysklogd -- gen_context(system_u:object_r:syslogd_initrc_exec_t,s0)
>    
> - /sbin/audispd		--	gen_context(system_u:object_r:audisp_exec_t,s0)
> - /sbin/audisp-remote	--	gen_context(system_u:object_r:audisp_remote_exec_t,s0)
> - /sbin/auditctl		--	gen_context(system_u:object_r:auditctl_exec_t,s0)
> - /sbin/auditd		--	gen_context(system_u:object_r:auditd_exec_t,s0)
> - /sbin/klogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
> -+/sbin/klogd\.sysklogd	--	gen_context(system_u:object_r:klogd_exec_t,s0)
> - /sbin/minilogd		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
> - /sbin/rklogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
> - /sbin/rsyslogd		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
> - /sbin/syslogd		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
> -+/sbin/syslogd\.sysklogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
> - /sbin/syslog-ng		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
> + /usr/bin/audispd	--	gen_context(system_u:object_r:audisp_exec_t,s0)
> + /usr/bin/audisp-remote	--	gen_context(system_u:object_r:audisp_remote_exec_t,s0)
> +@@ -36,6 +38,8 @@
> + /usr/sbin/rsyslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
> + /usr/sbin/syslog-ng	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
> + /usr/sbin/syslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
> ++/sbin/klogd\.sysklogd	--      gen_context(system_u:object_r:klogd_exec_t,s0)
> ++/sbin/syslogd\.sysklogd	--      gen_context(system_u:object_r:syslogd_exec_t,s0)
>    
> - /usr/lib/systemd/system/auditd.* -- gen_context(system_u:object_r:auditd_unit_t,s0)
> - /usr/lib/systemd/system/[^/]*systemd-journal.* -- gen_context(system_u:object_r:syslogd_unit_t,s0)
> - /usr/lib/systemd/systemd-journald -- gen_context(system_u:object_r:syslogd_exec_t,s0)
> + /var/lib/misc/syslog-ng.persist-? -- gen_context(system_u:object_r:syslogd_var_lib_t,s0)
> + /var/lib/syslog-ng(/.*)? 	gen_context(system_u:object_r:syslogd_var_lib_t,s0)
> +diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
> +index fdf2254..4df01d8 100644
>   --- a/policy/modules/system/logging.te
>   +++ b/policy/modules/system/logging.te
> -@@ -388,10 +388,11 @@ allow syslogd_t self:unix_dgram_socket s
> - allow syslogd_t self:fifo_file rw_fifo_file_perms;
> - allow syslogd_t self:udp_socket create_socket_perms;
> +@@ -396,6 +396,7 @@ allow syslogd_t self:udp_socket create_socket_perms;
>    allow syslogd_t self:tcp_socket create_stream_socket_perms;
>    
>    allow syslogd_t syslog_conf_t:file read_file_perms;
>   +allow syslogd_t syslog_conf_t:lnk_file read_file_perms;
> + allow syslogd_t syslog_conf_t:dir list_dir_perms;
>    
>    # Create and bind to /dev/log or /var/run/log.
> - allow syslogd_t devlog_t:sock_file manage_sock_file_perms;
> - files_pid_filetrans(syslogd_t, devlog_t, sock_file)
> -
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysvinit.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_sysvinit.patch
> similarity index 30%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysvinit.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_sysvinit.patch
> index d8c1642..cee410c 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysvinit.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-fc-update-alternatives_sysvinit.patch
> @@ -7,51 +7,47 @@ Upstream-Status: Inappropriate [only for Poky]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/contrib/shutdown.fc    |    1 +
> - policy/modules/kernel/corecommands.fc |    1 +
> - policy/modules/system/init.fc         |    1 +
> - 3 files changed, 3 insertions(+)
> + policy/modules/contrib/shutdown.fc    | 2 ++
> + policy/modules/kernel/corecommands.fc | 1 +
> + policy/modules/system/init.fc         | 1 +
> + 3 files changed, 4 insertions(+)
>   
> +diff --git a/policy/modules/contrib/shutdown.fc b/policy/modules/contrib/shutdown.fc
> +index 03a2230..e5b15b2 100644
>   --- a/policy/modules/contrib/shutdown.fc
>   +++ b/policy/modules/contrib/shutdown.fc
> -@@ -1,10 +1,11 @@
> - /etc/nologin	--	gen_context(system_u:object_r:shutdown_etc_t,s0)
> -
> - /lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
> -
> - /sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
> -+/sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
> -
> - /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
> -
> +@@ -7,3 +7,5 @@
>    /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
>    
> + /run/shutdown\.pid	--	gen_context(system_u:object_r:shutdown_var_run_t,s0)
> ++
> ++/sbin/shutdown\.sysvinit       --      gen_context(system_u:object_r:shutdown_exec_t,s0)
> +diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
> +index f2e4f51..174e4ff 100644
>   --- a/policy/modules/kernel/corecommands.fc
>   +++ b/policy/modules/kernel/corecommands.fc
> -@@ -8,10 +8,11 @@
> - /bin/bash2			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/fish			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/ksh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/mountpoint			--	gen_context(system_u:object_r:bin_t,s0)
> -+/bin/mountpoint\.sysvinit	--	gen_context(system_u:object_r:bin_t,s0)
> - /bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/tcsh			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/yash			--	gen_context(system_u:object_r:shell_exec_t,s0)
> - /bin/zsh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
> -
> +@@ -148,6 +148,7 @@ ifdef(`distro_gentoo',`
> + /usr/bin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
> + /usr/bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
> + /usr/bin/mountpoint		--	gen_context(system_u:object_r:bin_t,s0)
> ++/bin/mountpoint\.sysvinit	--      gen_context(system_u:object_r:bin_t,s0)
> + /usr/bin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
> + /usr/bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
> + /usr/bin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
> +diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
> +index 548a863..ea28827 100644
>   --- a/policy/modules/system/init.fc
>   +++ b/policy/modules/system/init.fc
> -@@ -30,10 +30,11 @@ ifdef(`distro_gentoo', `
> -
> - #
> - # /sbin
> - #
> - /sbin/init(ng)?		--	gen_context(system_u:object_r:init_exec_t,s0)
> -+/sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
> - # because nowadays, /sbin/init is often a symlink to /sbin/upstart
> - /sbin/upstart		--	gen_context(system_u:object_r:init_exec_t,s0)
> +@@ -41,6 +41,7 @@ ifdef(`distro_gentoo',`
> + /usr/sbin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
> + /usr/sbin/open_init_pty	--	gen_context(system_u:object_r:initrc_exec_t,s0)
> + /usr/sbin/upstart	--	gen_context(system_u:object_r:init_exec_t,s0)
> ++/sbin/init\.sysvinit	--      gen_context(system_u:object_r:init_exec_t,s0)
>    
>    ifdef(`distro_gentoo', `
> - /sbin/rc		--	gen_context(system_u:object_r:rc_exec_t,s0)
> + /usr/lib/rc/init\.d(/.*)?		gen_context(system_u:object_r:initrc_state_t,s0)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-bsdpty_device_t.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-bsdpty_device_t.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-bsdpty_device_t.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-bsdpty_device_t.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-syslogd_t-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-syslogd_t-symlink.patch
> similarity index 68%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-syslogd_t-symlink.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-syslogd_t-symlink.patch
> index e90aab5..8dd6f1d 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-syslogd_t-symlink.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-syslogd_t-symlink.patch
> @@ -9,22 +9,24 @@ Upstream-Status: Inappropriate [only for Poky]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
>    policy/modules/system/logging.te | 2 ++
>    1 file changed, 2 insertions(+)
>   
> +diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
> +index 0821497..3ce98ac 100644
>   --- a/policy/modules/system/logging.te
>   +++ b/policy/modules/system/logging.te
> -@@ -404,10 +404,12 @@ rw_fifo_files_pattern(syslogd_t, var_log
> - files_search_spool(syslogd_t)
> -
> +@@ -415,6 +415,8 @@ files_search_spool(syslogd_t)
>    # Allow access for syslog-ng
>    allow syslogd_t var_log_t:dir { create setattr };
>    
>   +allow syslogd_t var_log_t:lnk_file read_lnk_file_perms;
>   +
> - # manage temporary files
> - manage_dirs_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
> - manage_files_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
> - files_tmp_filetrans(syslogd_t, syslogd_tmp_t, { dir file })
> + # for systemd but can not be conditional
> + files_pid_filetrans(syslogd_t, syslogd_tmp_t, dir, "log")
>    
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-tmp-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-tmp-symlink.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-tmp-symlink.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-tmp-symlink.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-cache-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-cache-symlink.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-cache-symlink.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-cache-symlink.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-log-symlink-apache.patch
> similarity index 70%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-log-symlink-apache.patch
> index 8d22c21..82fc998 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-log-symlink-apache.patch
> @@ -11,21 +11,23 @@ Upstream-Status: Inappropriate [only for Poky]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/contrib/apache.te |    1 +
> + policy/modules/contrib/apache.te | 1 +
>    1 file changed, 1 insertion(+)
>   
> +diff --git a/policy/modules/contrib/apache.te b/policy/modules/contrib/apache.te
> +index d056171..67356d0 100644
>   --- a/policy/modules/contrib/apache.te
>   +++ b/policy/modules/contrib/apache.te
> -@@ -409,10 +409,11 @@ allow httpd_t httpd_log_t:dir setattr_di
> - create_dirs_pattern(httpd_t, httpd_log_t, httpd_log_t)
> - create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
> - append_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
> +@@ -412,6 +412,7 @@ create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
>    read_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
> + setattr_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
>    read_lnk_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
>   +read_lnk_files_pattern(httpd_t, var_log_t, var_log_t)
>    logging_log_filetrans(httpd_t, httpd_log_t, file)
>    
>    allow httpd_t httpd_modules_t:dir list_dir_perms;
> - mmap_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
> - read_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-log-symlink.patch
> similarity index 47%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-log-symlink.patch
> index a7161d5..bb925f9 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-rules-for-var-log-symlink.patch
> @@ -10,17 +10,18 @@ Upstream-Status: Inappropriate [only for Poky]
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/logging.fc |    1 +
> - policy/modules/system/logging.if |   14 +++++++++++++-
> - policy/modules/system/logging.te |    1 +
> - 3 files changed, 15 insertions(+), 1 deletion(-)
> + policy/modules/system/logging.fc | 1 +
> + policy/modules/system/logging.if | 9 ++++++++-
> + policy/modules/system/logging.te | 1 +
> + 3 files changed, 10 insertions(+), 1 deletion(-)
>   
> +diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
> +index 070b3ee..f0ce2d0 100644
>   --- a/policy/modules/system/logging.fc
>   +++ b/policy/modules/system/logging.fc
> -@@ -49,10 +49,11 @@ ifdef(`distro_suse', `
> -
> - /var/axfrdns/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
> +@@ -54,6 +54,7 @@ ifdef(`distro_suse', `
>    /var/dnscache/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
>    
>    /var/log		-d	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
> @@ -28,13 +29,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>    /var/log/.*			gen_context(system_u:object_r:var_log_t,s0)
>    /var/log/boot\.log	--	gen_context(system_u:object_r:var_log_t,mls_systemhigh)
>    /var/log/messages[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
> - /var/log/secure[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
> - /var/log/maillog[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
> +diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
> +index 3c843fd..b714bf8 100644
>   --- a/policy/modules/system/logging.if
>   +++ b/policy/modules/system/logging.if
> -@@ -134,16 +134,17 @@ interface(`logging_set_audit_parameters'
> - ## </param>
> - ## <rolecap/>
> +@@ -136,12 +136,13 @@ interface(`logging_set_audit_parameters',`
>    #
>    interface(`logging_read_audit_log',`
>    	gen_require(`
> @@ -46,50 +45,10 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>    	read_files_pattern($1, auditd_log_t, auditd_log_t)
>    	allow $1 auditd_log_t:dir list_dir_perms;
>   +	allow $1 var_log_t:lnk_file read_lnk_file_perms;
> - ')
> -
> - ########################################
> - ## <summary>
> - ##	Execute auditctl in the auditctl domain.
> -@@ -665,10 +666,11 @@ interface(`logging_search_logs',`
> - 		type var_log_t;
> - 	')
>    
> - 	files_search_var($1)
> - 	allow $1 var_log_t:dir search_dir_perms;
> -+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
> + 	dontaudit $1 auditd_log_t:file map;
>    ')
> -
> - #######################################
> - ## <summary>
> - ##	Do not audit attempts to search the var log directory.
> -@@ -702,10 +704,11 @@ interface(`logging_list_logs',`
> - 		type var_log_t;
> - 	')
> -
> - 	files_search_var($1)
> - 	allow $1 var_log_t:dir list_dir_perms;
> -+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
> - ')
> -
> - #######################################
> - ## <summary>
> - ##	Read and write the generic log directory (/var/log).
> -@@ -721,10 +724,11 @@ interface(`logging_rw_generic_log_dirs',
> - 		type var_log_t;
> - 	')
> -
> - 	files_search_var($1)
> - 	allow $1 var_log_t:dir rw_dir_perms;
> -+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
> - ')
> -
> - #######################################
> - ## <summary>
> - ##	Search through all log dirs.
> -@@ -832,14 +836,16 @@ interface(`logging_append_all_logs',`
> - ## <rolecap/>
> - #
> +@@ -945,10 +946,12 @@ interface(`logging_append_all_inherited_logs',`
>    interface(`logging_read_all_logs',`
>    	gen_require(`
>    		attribute logfile;
> @@ -102,11 +61,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>    	read_files_pattern($1, logfile, logfile)
>    ')
>    
> - ########################################
> - ## <summary>
> -@@ -854,14 +860,16 @@ interface(`logging_read_all_logs',`
> - # cjp: not sure why this is needed.  This was added
> - # because of logrotate.
> +@@ -967,10 +970,12 @@ interface(`logging_read_all_logs',`
>    interface(`logging_exec_all_logs',`
>    	gen_require(`
>    		attribute logfile;
> @@ -119,11 +74,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>    	can_exec($1, logfile)
>    ')
>    
> - ########################################
> - ## <summary>
> -@@ -919,10 +927,11 @@ interface(`logging_read_generic_logs',`
> - 		type var_log_t;
> - 	')
> +@@ -1072,6 +1077,7 @@ interface(`logging_read_generic_logs',`
>    
>    	files_search_var($1)
>    	allow $1 var_log_t:dir list_dir_perms;
> @@ -131,35 +82,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>    	read_files_pattern($1, var_log_t, var_log_t)
>    ')
>    
> - ########################################
> - ## <summary>
> -@@ -939,10 +948,11 @@ interface(`logging_write_generic_logs',`
> - 		type var_log_t;
> - 	')
> -
> - 	files_search_var($1)
> - 	allow $1 var_log_t:dir list_dir_perms;
> -+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
> - 	write_files_pattern($1, var_log_t, var_log_t)
> - ')
> -
> - ########################################
> - ## <summary>
> -@@ -977,10 +987,11 @@ interface(`logging_rw_generic_logs',`
> - 		type var_log_t;
> - 	')
> -
> - 	files_search_var($1)
> - 	allow $1 var_log_t:dir list_dir_perms;
> -+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
> - 	rw_files_pattern($1, var_log_t, var_log_t)
> - ')
> -
> - ########################################
> - ## <summary>
> -@@ -999,10 +1010,11 @@ interface(`logging_manage_generic_logs',
> - 		type var_log_t;
> - 	')
> +@@ -1173,6 +1179,7 @@ interface(`logging_manage_generic_logs',`
>    
>    	files_search_var($1)
>    	manage_files_pattern($1, var_log_t, var_log_t)
> @@ -167,13 +90,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>    ')
>    
>    ########################################
> - ## <summary>
> - ##	All of the rules required to administrate
> +diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
> +index 07b1a08..df354cc 100644
>   --- a/policy/modules/system/logging.te
>   +++ b/policy/modules/system/logging.te
> -@@ -151,10 +151,11 @@ allow auditd_t auditd_etc_t:file read_fi
> -
> - manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
> +@@ -159,6 +159,7 @@ manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
>    allow auditd_t auditd_log_t:dir setattr;
>    manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
>    allow auditd_t var_log_t:dir search_dir_perms;
> @@ -181,5 +102,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>    
>    manage_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
>    manage_sock_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
> - files_pid_filetrans(auditd_t, auditd_var_run_t, { file sock_file })
> -
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-syslogd_t-to-trusted-object.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-syslogd_t-to-trusted-object.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-syslogd_t-to-trusted-object.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-add-syslogd_t-to-trusted-object.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-nfsd-to-exec-shell-commands.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-allow-nfsd-to-exec-shell-commands.patch
> similarity index 52%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-nfsd-to-exec-shell-commands.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-allow-nfsd-to-exec-shell-commands.patch
> index ca2796f..dc7a6bc 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-nfsd-to-exec-shell-commands.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-allow-nfsd-to-exec-shell-commands.patch
> @@ -9,8 +9,7 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>   ---
>    policy/modules/contrib/rpc.te   |    2 +-
> - policy/modules/kernel/kernel.if |   18 ++++++++++++++++++
> - 2 files changed, 19 insertions(+), 1 deletions(-)
> + 1 files changed, 1 insertions(+), 1 deletions(-)
>   
>   --- a/policy/modules/contrib/rpc.te
>   +++ b/policy/modules/contrib/rpc.te
> @@ -26,35 +25,3 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>    corenet_sendrecv_nfs_server_packets(nfsd_t)
>    corenet_tcp_bind_nfs_port(nfsd_t)
>    corenet_udp_bind_nfs_port(nfsd_t)
> -
> ---- a/policy/modules/kernel/kernel.if
> -+++ b/policy/modules/kernel/kernel.if
> -@@ -844,10 +844,28 @@ interface(`kernel_unmount_proc',`
> - 	allow $1 proc_t:filesystem unmount;
> - ')
> -
> - ########################################
> - ## <summary>
> -+##	Mounton a proc filesystem.
> -+## </summary>
> -+## <param name="domain">
> -+##	<summary>
> -+##	Domain allowed access.
> -+##	</summary>
> -+## </param>
> -+#
> -+interface(`kernel_mounton_proc',`
> -+	gen_require(`
> -+		type proc_t;
> -+	')
> -+
> -+	allow $1 proc_t:dir mounton;
> -+')
> -+
> -+########################################
> -+## <summary>
> - ##	Get the attributes of the proc filesystem.
> - ## </summary>
> - ## <param name="domain">
> - ##	<summary>
> - ##	Domain allowed access.
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-setfiles_t-to-read-symlinks.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-allow-setfiles_t-to-read-symlinks.patch
> similarity index 68%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-setfiles_t-to-read-symlinks.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-allow-setfiles_t-to-read-symlinks.patch
> index d28bde0..d5880e8 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-setfiles_t-to-read-symlinks.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-allow-setfiles_t-to-read-symlinks.patch
> @@ -8,15 +8,16 @@ Upstream-Status: Pending
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/selinuxutil.te |    3 +++
> + policy/modules/system/selinuxutil.te | 3 +++
>    1 file changed, 3 insertions(+)
>   
> +diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
> +index d67226a..84ea85f 100644
>   --- a/policy/modules/system/selinuxutil.te
>   +++ b/policy/modules/system/selinuxutil.te
> -@@ -553,10 +553,13 @@ files_read_etc_files(setfiles_t)
> - files_list_all(setfiles_t)
> - files_relabel_all_files(setfiles_t)
> +@@ -598,6 +598,9 @@ files_relabel_all_files(setfiles_t)
>    files_read_usr_symlinks(setfiles_t)
>    files_dontaudit_read_all_symlinks(setfiles_t)
>    
> @@ -24,7 +25,8 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>   +files_read_all_symlinks(setfiles_t)
>   +
>    fs_getattr_all_xattr_fs(setfiles_t)
> - fs_list_all(setfiles_t)
> - fs_search_auto_mountpoints(setfiles_t)
> - fs_relabelfrom_noxattr_fs(setfiles_t)
> -
> + fs_getattr_nfs(setfiles_t)
> + fs_getattr_pstore_dirs(setfiles_t)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-sysadm-to-run-rpcinfo.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-allow-sysadm-to-run-rpcinfo.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-sysadm-to-run-rpcinfo.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-allow-sysadm-to-run-rpcinfo.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-don-t-audit-tty_device_t.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-don-t-audit-tty_device_t.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-don-t-audit-tty_device_t.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-don-t-audit-tty_device_t.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-dmesg-to-use-dev-kmsg.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
> similarity index 46%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
> index 8443e31..72c815b 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
> @@ -5,33 +5,21 @@ Subject: [PATCH] fix dmesg to use /dev/kmsg as default input
>   
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/admin/dmesg.if |    1 +
> - policy/modules/admin/dmesg.te |    2 ++
> - 2 files changed, 3 insertions(+)
> + policy/modules/admin/dmesg.if | 1 +
> + 1 file changed, 1 insertion(+)
>   
> +diff --git a/policy/modules/admin/dmesg.if b/policy/modules/admin/dmesg.if
> +index e1973c7..739a4bc 100644
>   --- a/policy/modules/admin/dmesg.if
>   +++ b/policy/modules/admin/dmesg.if
> -@@ -35,6 +35,7 @@ interface(`dmesg_exec',`
> - 		type dmesg_exec_t;
> - 	')
> +@@ -37,4 +37,5 @@ interface(`dmesg_exec',`
>    
>    	corecmd_search_bin($1)
>    	can_exec($1, dmesg_exec_t)
>   +	dev_read_kmsg($1)
>    ')
> ---- a/policy/modules/admin/dmesg.te
> -+++ b/policy/modules/admin/dmesg.te
> -@@ -28,10 +28,12 @@ kernel_read_proc_symlinks(dmesg_t)
> - # for when /usr is not mounted:
> - kernel_dontaudit_search_unlabeled(dmesg_t)
> -
> - dev_read_sysfs(dmesg_t)
> -
> -+dev_read_kmsg(dmesg_t)
> -+
> - fs_search_auto_mountpoints(dmesg_t)
> -
> - term_dontaudit_use_console(dmesg_t)
> -
> - domain_use_interactive_fds(dmesg_t)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-new-SELINUXMNT-in-sys.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-new-SELINUXMNT-in-sys.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-new-SELINUXMNT-in-sys.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-new-SELINUXMNT-in-sys.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-setfiles-statvfs-get-file-count.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-setfiles-statvfs-get-file-count.patch
> similarity index 67%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-setfiles-statvfs-get-file-count.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-setfiles-statvfs-get-file-count.patch
> index 1cfd80b..90cd427 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-setfiles-statvfs-get-file-count.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-setfiles-statvfs-get-file-count.patch
> @@ -11,22 +11,24 @@ Upstream-Status: pending
>   Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>   Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
>   Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/selinuxutil.te |    2 +-
> + policy/modules/system/selinuxutil.te | 2 +-
>    1 file changed, 1 insertion(+), 1 deletion(-)
>   
> +diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
> +index 84ea85f..947fb54 100644
>   --- a/policy/modules/system/selinuxutil.te
>   +++ b/policy/modules/system/selinuxutil.te
> -@@ -556,11 +556,11 @@ files_read_usr_symlinks(setfiles_t)
> - files_dontaudit_read_all_symlinks(setfiles_t)
> -
> +@@ -601,7 +601,7 @@ files_dontaudit_read_all_symlinks(setfiles_t)
>    # needs to be able to read symlinks to make restorecon on symlink working
>    files_read_all_symlinks(setfiles_t)
>    
>   -fs_getattr_all_xattr_fs(setfiles_t)
>   +fs_getattr_all_fs(setfiles_t)
> - fs_list_all(setfiles_t)
> - fs_search_auto_mountpoints(setfiles_t)
> - fs_relabelfrom_noxattr_fs(setfiles_t)
> -
> - mls_file_read_all_levels(setfiles_t)
> + fs_getattr_nfs(setfiles_t)
> + fs_getattr_pstore_dirs(setfiles_t)
> + fs_getattr_pstorefs(setfiles_t)
> +--
> +2.8.1
> +
> diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-seutils-manage-config-files.patch b/recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-seutils-manage-config-files.patch
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-seutils-manage-config-files.patch
> rename to recipes-security/refpolicy/refpolicy-2.20180114/poky-policy-fix-seutils-manage-config-files.patch
> diff --git a/recipes-security/refpolicy/refpolicy-mcs_2.20170204.bb b/recipes-security/refpolicy/refpolicy-mcs_2.20180114.bb
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-mcs_2.20170204.bb
> rename to recipes-security/refpolicy/refpolicy-mcs_2.20180114.bb
> diff --git a/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch b/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
> index 7a72f18..19df5a0 100644
> --- a/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
> +++ b/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
> @@ -24,33 +24,18 @@ unconfined_t:s0-s0:c0.c1023 tcontext=system_u:object_r:lib_t:s0 tclass=service
>   Upstream-Status: Pending
>   
>   Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/init.te       |  6 +++++-
>    policy/modules/system/libraries.te  |  3 +++
>    policy/modules/system/systemd.if    | 40 +++++++++++++++++++++++++++++++++++++
>    policy/modules/system/unconfined.te |  6 ++++++
> - 4 files changed, 54 insertions(+), 1 deletion(-)
> + 3 files changed, 49 insertions(+)
>   
> -diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
> -index d710fb0..f9d7114 100644
> ---- a/policy/modules/system/init.te
> -+++ b/policy/modules/system/init.te
> -@@ -1100,4 +1100,8 @@ optional_policy(`
> - # systemd related allow rules
> - allow kernel_t init_t:process dyntransition;
> - allow devpts_t device_t:filesystem associate;
> --allow init_t self:capability2 block_suspend;
> -\ No newline at end of file
> -+allow init_t self:capability2 block_suspend;
> -+allow init_t self:capability2 audit_read;
> -+
> -+allow initrc_t init_t:system { start status };
> -+allow initrc_t init_var_run_t:service { start status };
>   diff --git a/policy/modules/system/libraries.te b/policy/modules/system/libraries.te
> -index 0f5cd56..df98fe9 100644
> +index 422b0ea..80b0c9a 100644
>   --- a/policy/modules/system/libraries.te
>   +++ b/policy/modules/system/libraries.te
> -@@ -144,3 +144,6 @@ optional_policy(`
> +@@ -145,3 +145,6 @@ optional_policy(`
>    optional_policy(`
>    	unconfined_domain(ldconfig_t)
>    ')
> @@ -58,12 +43,12 @@ index 0f5cd56..df98fe9 100644
>   +# systemd: init domain to start lib domain service
>   +systemd_service_lib_function(lib_t)
>   diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
> -index 3cd6670..822c03d 100644
> +index d875098..a66248d 100644
>   --- a/policy/modules/system/systemd.if
>   +++ b/policy/modules/system/systemd.if
> -@@ -171,3 +171,43 @@ interface(`systemd_start_power_units',`
> +@@ -714,3 +714,43 @@ interface(`systemd_tmpfilesd_managed',`
>    
> - 	allow $1 power_unit_t:service start;
> + 	allow systemd_tmpfiles_t $1:$2 { setattr relabelfrom relabelto create };
>    ')
>   +
>   +
> @@ -106,10 +91,10 @@ index 3cd6670..822c03d 100644
>   +
>   +')
>   diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
> -index 99cab31..87a1b03 100644
> +index 19c3d6b..f697cbe 100644
>   --- a/policy/modules/system/unconfined.te
>   +++ b/policy/modules/system/unconfined.te
> -@@ -220,3 +220,9 @@ unconfined_domain_noaudit(unconfined_execmem_t)
> +@@ -233,3 +233,9 @@ unconfined_domain_noaudit(unconfined_execmem_t)
>    optional_policy(`
>    	unconfined_dbus_chat(unconfined_execmem_t)
>    ')
> @@ -120,5 +105,5 @@ index 99cab31..87a1b03 100644
>   +
>   +allow unconfined_t init_t:system reload;
>   --
> -1.9.1
> +2.13.3
>   
> diff --git a/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch b/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
> deleted file mode 100644
> index c88f2b2..0000000
> --- a/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
> +++ /dev/null
> @@ -1,36 +0,0 @@
> -From 07b7eb45458de8a6781019a927c66aabe736e03a Mon Sep 17 00:00:00 2001
> -From: Shrikant Bobade <shrikant_bobade@mentor.com>
> -Date: Fri, 26 Aug 2016 17:53:53 +0530
> -Subject: [PATCH 5/9] refpolicy-minimum: init: fix reboot with systemd as init
> - manager.
> -
> -add allow rule to fix avc denial during system reboot.
> -
> -without this change we are getting:
> -
> -audit: type=1107 audit(): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=
> -system_u:system_r:init_t:s0 msg='avc:  denied  { reboot } for auid=n/a uid=0
> -gid=0 cmdline="/bin/systemctl --force reboot" scontext=system_u:system_r:
> -initrc_t:s0 tcontext=system_u:system_r:init_t:s0 tclass=system
> -
> -Upstream-Status: Pending
> -
> -Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> ----
> - policy/modules/system/init.te | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
> -index f9d7114..19a7a20 100644
> ---- a/policy/modules/system/init.te
> -+++ b/policy/modules/system/init.te
> -@@ -1103,5 +1103,5 @@ allow devpts_t device_t:filesystem associate;
> - allow init_t self:capability2 block_suspend;
> - allow init_t self:capability2 audit_read;
> -
> --allow initrc_t init_t:system { start status };
> -+allow initrc_t init_t:system { start status reboot };
> - allow initrc_t init_var_run_t:service { start status };
> ---
> -1.9.1
> -
> diff --git a/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch b/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
> index 50e3c64..e2122e2 100644
> --- a/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
> +++ b/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
> @@ -38,31 +38,44 @@ See 'systemctl status avahi-daemon.service' for details.
>   Upstream-Status: Pending
>   
>   Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
> - policy/modules/system/init.te       | 5 +++++
> + policy/modules/system/init.te       | 4 +++-
>    policy/modules/system/locallogin.te | 3 +++
>    policy/modules/system/systemd.if    | 6 ++++--
>    policy/modules/system/systemd.te    | 3 ++-
> - 4 files changed, 14 insertions(+), 3 deletions(-)
> + 4 files changed, 12 insertions(+), 4 deletions(-)
>   
>   diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
> -index 19a7a20..cefa59d 100644
> +index 8df508f..ca952db 100644
>   --- a/policy/modules/system/init.te
>   +++ b/policy/modules/system/init.te
> -@@ -1105,3 +1105,8 @@ allow init_t self:capability2 audit_read;
> +@@ -149,6 +149,11 @@ dev_filetrans(init_t, initctl_t, fifo_file)
> + # Modify utmp.
> + allow init_t initrc_var_run_t:file { rw_file_perms setattr };
>    
> - allow initrc_t init_t:system { start status reboot };
> - allow initrc_t init_var_run_t:service { start status };
> ++gen_require(`
> ++	class dbus acquire_svc;
> ++')
> ++allow init_t initrc_t:dbus { acquire_svc };
>   +
> -+allow initrc_t init_var_run_t:service stop;
> -+allow initrc_t init_t:dbus send_msg;
> -+
> -+allow init_t initrc_t:dbus { send_msg acquire_svc };
> + kernel_read_system_state(init_t)
> + kernel_share_state(init_t)
> + kernel_dontaudit_search_unlabeled(init_t)
> +@@ -942,7 +944,7 @@ ifdef(`init_systemd',`
> + 	manage_dirs_pattern(initrc_t, init_var_run_t, init_var_run_t)
> + 	allow initrc_t init_var_run_t:file create_file_perms;
> + 	allow initrc_t init_var_run_t:lnk_file create_lnk_file_perms;
> +-	allow initrc_t init_var_run_t:service { start status };
> ++	allow initrc_t init_var_run_t:service { start status stop };
> +
> + 	manage_dirs_pattern(initrc_t, initrc_var_run_t, initrc_var_run_t)
> + 	manage_chr_files_pattern(initrc_t, initrc_var_run_t, initrc_var_run_t)
>   diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
> -index 09ec33f..be25c82 100644
> +index 64628a7..dfedbe9 100644
>   --- a/policy/modules/system/locallogin.te
>   +++ b/policy/modules/system/locallogin.te
> -@@ -284,3 +284,6 @@ allow local_login_t var_run_t:file { open read write lock};
> +@@ -295,3 +295,6 @@ allow local_login_t var_run_t:file { open read write lock};
>    allow local_login_t var_run_t:sock_file write;
>    allow local_login_t tmpfs_t:dir { add_name write search};
>    allow local_login_t tmpfs_t:file { create open read write lock };
> @@ -70,10 +83,10 @@ index 09ec33f..be25c82 100644
>   +allow local_login_t initrc_t:dbus send_msg;
>   +allow initrc_t local_login_t:dbus send_msg;
>   diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
> -index 822c03d..8723527 100644
> +index a66248d..f0059f8 100644
>   --- a/policy/modules/system/systemd.if
>   +++ b/policy/modules/system/systemd.if
> -@@ -205,9 +205,11 @@ interface(`systemd_service_file_operations',`
> +@@ -748,9 +748,11 @@ interface(`systemd_service_file_operations',`
>    #
>    interface(`systemd_service_lib_function',`
>             gen_require(`
> @@ -88,10 +101,10 @@ index 822c03d..8723527 100644
>    
>    ')
>   diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
> -index 70ccb0e..22021eb 100644
> +index 1ce32ae..0cde52a 100644
>   --- a/policy/modules/system/systemd.te
>   +++ b/policy/modules/system/systemd.te
> -@@ -265,6 +265,7 @@ tunable_policy(`systemd_tmpfiles_manage_all',`
> +@@ -989,6 +989,7 @@ optional_policy(`
>    
>    allow systemd_tmpfiles_t init_t:dir search;
>    allow systemd_tmpfiles_t proc_t:filesystem getattr;
> @@ -101,5 +114,5 @@ index 70ccb0e..22021eb 100644
>   +
>   +allow systemd_tmpfiles_t init_t:file { open getattr read };
>   --
> -1.9.1
> +2.13.3
>   
> diff --git a/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch b/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
> index a7338e1..76bfe2e 100644
> --- a/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
> +++ b/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
> @@ -31,17 +31,18 @@ See 'systemctl status systemd-tmpfiles-setup.service' for details.
>   Upstream-Status: Pending
>   
>   Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>   ---
>    policy/modules/kernel/files.if   | 19 +++++++++++++++++++
> - policy/modules/kernel/kernel.if  | 23 +++++++++++++++++++++++
> + policy/modules/kernel/kernel.if  | 21 +++++++++++++++++++++
>    policy/modules/system/systemd.te |  3 +++
> - 3 files changed, 45 insertions(+)
> + 3 files changed, 43 insertions(+)
>   
>   diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
> -index 1cedea2..4ea7d55 100644
> +index 7d3fb27..c5aec0c 100644
>   --- a/policy/modules/kernel/files.if
>   +++ b/policy/modules/kernel/files.if
> -@@ -6729,3 +6729,22 @@ interface(`files_unconfined',`
> +@@ -7019,3 +7019,22 @@ interface(`files_unconfined',`
>    
>    	typeattribute $1 files_unconfined_type;
>    ')
> @@ -65,41 +66,42 @@ index 1cedea2..4ea7d55 100644
>   +	allow $1 tmp_t:lnk_file getattr;
>   +')
>   diff --git a/policy/modules/kernel/kernel.if b/policy/modules/kernel/kernel.if
> -index f1130d1..4604441 100644
> +index 843b26e..4bdf4fb 100644
>   --- a/policy/modules/kernel/kernel.if
>   +++ b/policy/modules/kernel/kernel.if
> -@@ -3323,3 +3323,26 @@ interface(`kernel_unconfined',`
> - 	typeattribute $1 kern_unconfined;
> - 	kernel_load_module($1)
> - ')
> -+
> -+########################################
> -+## <summary>
> -+##	systemd tmp files access to kernel sysctl domain
> +@@ -3492,6 +3492,27 @@ interface(`kernel_unconfined',`
> +
> + ########################################
> + ## <summary>
> ++##     systemd tmp files access to kernel sysctl domain
>   +## </summary>
>   +## <param name="domain">
> -+##	<summary>
> -+##	Domain allowed access.
> -+##	</summary>
> ++##     <summary>
> ++##     Domain allowed access.
> ++##     </summary>
>   +## </param>
>   +#
>   +interface(`systemd_service_allow_kernel_domain_access_to_sysctl_kernel_t',`
> -+         gen_require(`
> -+                type sysctl_kernel_t;
> -+                class dir search;
> -+                class file { open read };
> -+         ')
> -+
> -+        allow $1 sysctl_kernel_t:dir search;
> -+        allow $1 sysctl_kernel_t:file { open read };
> ++	gen_require(`
> ++		type sysctl_kernel_t;
> ++		class dir search;
> ++		class file { open read };
> ++	')
>   +
> ++	allow $1 sysctl_kernel_t:dir search;
> ++	allow $1 sysctl_kernel_t:file { open read };
>   +')
>   +
> ++########################################
> ++## <summary>
> + ##	Read virtual memory overcommit sysctl.
> + ## </summary>
> + ## <param name="domain">
>   diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
> -index 22021eb..8813664 100644
> +index 0cde52a..1f1ff33 100644
>   --- a/policy/modules/system/systemd.te
>   +++ b/policy/modules/system/systemd.te
> -@@ -269,3 +269,6 @@ allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
> +@@ -993,3 +993,6 @@ allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
>    allow systemd_tmpfiles_t self:capability net_admin;
>    
>    allow systemd_tmpfiles_t init_t:file { open getattr read };
> @@ -107,5 +109,5 @@ index 22021eb..8813664 100644
>   +systemd_service_allow_kernel_domain_access_to_sysctl_kernel_t(systemd_tmpfiles_t)
>   +systemd_service_allow_kernel_files_domain_to_tmp_t(systemd_tmpfiles_t)
>   --
> -1.9.1
> +2.13.3
>   
> diff --git a/recipes-security/refpolicy/refpolicy-minimum/0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch b/recipes-security/refpolicy/refpolicy-minimum/0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch
> new file mode 100644
> index 0000000..564d0f8
> --- /dev/null
> +++ b/recipes-security/refpolicy/refpolicy-minimum/0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch
> @@ -0,0 +1,36 @@
> +From 863200bb9122805c2fbb5c635b1780eda10ce9a2 Mon Sep 17 00:00:00 2001
> +From: Wenzong Fan <wenzong.fan@windriver.com>
> +Date: Fri, 27 Apr 2018 02:22:36 +0000
> +Subject: [PATCH] refpolicy-minimum: systemd: make fstools_write_log optional
> +
> +The 'fstools_write_log' is provided by module 'fstools' which is not
> +included in minimum policy type.
> +
> +Upstream-Status: Inappropriate [only for Poky]
> +
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> +---
> + policy/modules/system/init.te | 7 ++++---
> + 1 file changed, 4 insertions(+), 3 deletions(-)
> +
> +diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
> +index a993dc2..c4d0df7 100644
> +--- a/policy/modules/system/init.te
> ++++ b/policy/modules/system/init.te
> +@@ -977,9 +977,10 @@ ifdef(`init_systemd',`
> + 	files_create_pid_dirs(initrc_t)
> + 	files_setattr_pid_dirs(initrc_t)
> +
> +-	# for logsave in strict configuration
> +-	fstools_write_log(initrc_t)
> +-
> ++	optional_policy(`
> ++		# for logsave in strict configuration
> ++		fstools_write_log(initrc_t)
> ++	')
> + 	selinux_set_enforce_mode(initrc_t)
> +
> + 	init_get_all_units_status(initrc_t)
> +--
> +2.13.3
> +
> diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20170204.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20180114.bb
> similarity index 97%
> rename from recipes-security/refpolicy/refpolicy-minimum_2.20170204.bb
> rename to recipes-security/refpolicy/refpolicy-minimum_2.20180114.bb
> index da6626e..73f3bff 100644
> --- a/recipes-security/refpolicy/refpolicy-minimum_2.20170204.bb
> +++ b/recipes-security/refpolicy/refpolicy-minimum_2.20180114.bb
> @@ -76,9 +76,9 @@ SYSTEMD_REFPOLICY_PATCHES = " \
>   	file://0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch \
>   	file://0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch \
>   	file://0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch \
> -	file://0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch \
>   	file://0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch \
>   	file://0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch \
>   	file://0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch \
>   	file://0009-refpolicy-minimum-systemd-fix-for-syslog.patch \
> +	file://0010-refpolicy-minimum-systemd-make-fstools_write_log-opt.patch \
>   	"
> diff --git a/recipes-security/refpolicy/refpolicy-mls_2.20170204.bb b/recipes-security/refpolicy/refpolicy-mls_2.20180114.bb
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-mls_2.20170204.bb
> rename to recipes-security/refpolicy/refpolicy-mls_2.20180114.bb
> diff --git a/recipes-security/refpolicy/refpolicy-standard_2.20170204.bb b/recipes-security/refpolicy/refpolicy-standard_2.20180114.bb
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-standard_2.20170204.bb
> rename to recipes-security/refpolicy/refpolicy-standard_2.20180114.bb
> diff --git a/recipes-security/refpolicy/refpolicy-targeted_2.20170204.bb b/recipes-security/refpolicy/refpolicy-targeted_2.20180114.bb
> similarity index 100%
> rename from recipes-security/refpolicy/refpolicy-targeted_2.20170204.bb
> rename to recipes-security/refpolicy/refpolicy-targeted_2.20180114.bb
> diff --git a/recipes-security/refpolicy/refpolicy_2.20170204.inc b/recipes-security/refpolicy/refpolicy_2.20180114.inc
> similarity index 87%
> rename from recipes-security/refpolicy/refpolicy_2.20170204.inc
> rename to recipes-security/refpolicy/refpolicy_2.20180114.inc
> index 8b72cbd..8298c09 100644
> --- a/recipes-security/refpolicy/refpolicy_2.20170204.inc
> +++ b/recipes-security/refpolicy/refpolicy_2.20180114.inc
> @@ -1,8 +1,8 @@
>   SRC_URI = "https://raw.githubusercontent.com/wiki/TresysTechnology/refpolicy/files/refpolicy-${PV}.tar.bz2;"
> -SRC_URI[md5sum] = "76a7a455289c9216ee0fbb8de71c9799"
> -SRC_URI[sha256sum] = "5e4daee61d89dfdc8c7bf369f81c99845931e337916dc6401e301c5de57ea336"
> +SRC_URI[md5sum] = "151ef30c8d0a10a4f6eb1c865a85040a"
> +SRC_URI[sha256sum] = "e826f7d7f899a548e538964487e9fc1bc67ca94756ebdce0bfb6532b4eb0d06b"
>   
> -FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20170204:"
> +FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20180114:"
>   
>   # Fix file contexts for Poky
>   SRC_URI += "file://poky-fc-subs_dist.patch \
> @@ -19,15 +19,12 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
>               file://poky-fc-fstools.patch \
>               file://poky-fc-mta.patch \
>               file://poky-fc-netutils.patch \
> -            file://poky-fc-nscd.patch \
>               file://poky-fc-screen.patch \
>               file://poky-fc-ssh.patch \
>               file://poky-fc-sysnetwork.patch \
>               file://poky-fc-udevd.patch \
>               file://poky-fc-rpm.patch \
> -            file://poky-fc-ftpwho-dir.patch \
>               file://poky-fc-fix-real-path_su.patch \
> -            file://refpolicy-update-for_systemd.patch \
>              "
>   
>   # Specific policy for Poky


