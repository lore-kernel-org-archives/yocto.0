Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5B5CE00803; Sun, 20 Mar 2016 21:27:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00, URI_HEX autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.1 URI_HEX URI: URI hostname has long hexadecimal
	sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 967CEE007B5
	for <yocto@yoctoproject.org>; Sun, 20 Mar 2016 21:27:09 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ahrPe-0003Xy-6J; Mon, 21 Mar 2016 04:25:56 +0000
From: Philip Tricca <flihp@twobit.us>
To: mark.hatle@windriver.com, Joe_MacDonald@mentor.com, yocto@yoctoproject.org
Date: Mon, 21 Mar 2016 04:26:44 +0000
Message-Id: <1458534406-79852-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 0/2] policy upgrade and cleanup
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
X-List-Received-Date: Mon, 21 Mar 2016 04:27:13 -0000

By default we build *_git refpolicy packages. The release packages
have been lagging behind. The first patch replaces the 2.2014120
release with the latest (2.20151208). The second removes the old
2.20140311 release.

Philip Tricca (2):
  refpolicy: Replace 2.2014120 with release 2.20151208.
  refpolicy: Remove 2.20140311 release.

 .../ftp-add-ftpd_t-to-mlsfilewrite.patch           |  39 ----
 .../refpolicy-2.20140311/poky-fc-clock.patch       |  22 --
 .../poky-fc-corecommands.patch                     |  24 ---
 .../refpolicy-2.20140311/poky-fc-dmesg.patch       |  20 --
 .../refpolicy-2.20140311/poky-fc-fix-bind.patch    |  30 ---
 .../poky-fc-fix-real-path_login.patch              |  37 ----
 .../poky-fc-fix-real-path_resolv.conf.patch        |  24 ---
 .../poky-fc-fix-real-path_shadow.patch             |  34 ---
 .../poky-fc-fix-real-path_su.patch                 |  25 ---
 .../refpolicy-2.20140311/poky-fc-fstools.patch     |  65 ------
 .../refpolicy-2.20140311/poky-fc-ftpwho-dir.patch  |  27 ---
 .../refpolicy-2.20140311/poky-fc-iptables.patch    |  24 ---
 .../refpolicy-2.20140311/poky-fc-mta.patch         |  27 ---
 .../refpolicy-2.20140311/poky-fc-netutils.patch    |  24 ---
 .../refpolicy-2.20140311/poky-fc-nscd.patch        |  27 ---
 .../refpolicy-2.20140311/poky-fc-rpm.patch         |  25 ---
 .../refpolicy-2.20140311/poky-fc-screen.patch      |  27 ---
 .../refpolicy-2.20140311/poky-fc-ssh.patch         |  24 ---
 .../refpolicy-2.20140311/poky-fc-su.patch          |  23 ---
 .../refpolicy-2.20140311/poky-fc-subs_dist.patch   |  29 ---
 .../refpolicy-2.20140311/poky-fc-sysnetwork.patch  |  41 ----
 .../refpolicy-2.20140311/poky-fc-udevd.patch       |  35 ----
 .../poky-fc-update-alternatives_hostname.patch     |  23 ---
 .../poky-fc-update-alternatives_sysklogd.patch     |  59 ------
 .../poky-fc-update-alternatives_sysvinit.patch     |  53 -----
 ...poky-policy-add-rules-for-bsdpty_device_t.patch | 121 -----------
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  30 ---
 .../poky-policy-add-rules-for-tmp-symlink.patch    |  99 ---------
 ...ky-policy-add-rules-for-var-cache-symlink.patch |  34 ---
 ...licy-add-rules-for-var-log-symlink-apache.patch |  31 ---
 ...rules-for-var-log-symlink-audisp_remote_t.patch |  29 ---
 ...poky-policy-add-rules-for-var-log-symlink.patch | 145 -------------
 ...ky-policy-add-syslogd_t-to-trusted-object.patch |  31 ---
 ...-policy-allow-nfsd-to-exec-shell-commands.patch |  58 ------
 ...-policy-allow-setfiles_t-to-read-symlinks.patch |  29 ---
 .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |  33 ---
 .../poky-policy-don-t-audit-tty_device_t.patch     |  35 ----
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  37 ----
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 229 ---------------------
 ...poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch |  65 ------
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |  31 ---
 ...ky-policy-fix-seutils-manage-config-files.patch |  43 ----
 .../refpolicy-update-for_systemd.patch             |  46 -----
 .../ftp-add-ftpd_t-to-mlsfilewrite.patch           |  39 ----
 .../refpolicy-2.20141203/poky-fc-clock.patch       |  22 --
 .../poky-fc-corecommands.patch                     |  24 ---
 .../refpolicy-2.20141203/poky-fc-dmesg.patch       |  20 --
 .../refpolicy-2.20141203/poky-fc-fix-bind.patch    |  30 ---
 .../poky-fc-fix-real-path_login.patch              |  37 ----
 .../poky-fc-fix-real-path_resolv.conf.patch        |  24 ---
 .../poky-fc-fix-real-path_shadow.patch             |  34 ---
 .../poky-fc-fix-real-path_su.patch                 |  25 ---
 .../refpolicy-2.20141203/poky-fc-fstools.patch     |  70 -------
 .../refpolicy-2.20141203/poky-fc-ftpwho-dir.patch  |  27 ---
 .../refpolicy-2.20141203/poky-fc-iptables.patch    |  24 ---
 .../refpolicy-2.20141203/poky-fc-mta.patch         |  27 ---
 .../refpolicy-2.20141203/poky-fc-netutils.patch    |  24 ---
 .../refpolicy-2.20141203/poky-fc-nscd.patch        |  27 ---
 .../refpolicy-2.20141203/poky-fc-rpm.patch         |  25 ---
 .../refpolicy-2.20141203/poky-fc-screen.patch      |  27 ---
 .../refpolicy-2.20141203/poky-fc-ssh.patch         |  24 ---
 .../refpolicy-2.20141203/poky-fc-su.patch          |  23 ---
 .../refpolicy-2.20141203/poky-fc-subs_dist.patch   |  29 ---
 .../refpolicy-2.20141203/poky-fc-sysnetwork.patch  |  46 -----
 .../refpolicy-2.20141203/poky-fc-udevd.patch       |  35 ----
 .../poky-fc-update-alternatives_hostname.patch     |  23 ---
 .../poky-fc-update-alternatives_sysklogd.patch     |  59 ------
 .../poky-fc-update-alternatives_sysvinit.patch     |  53 -----
 ...poky-policy-add-rules-for-bsdpty_device_t.patch | 121 -----------
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  30 ---
 .../poky-policy-add-rules-for-tmp-symlink.patch    |  99 ---------
 ...ky-policy-add-rules-for-var-cache-symlink.patch |  34 ---
 ...licy-add-rules-for-var-log-symlink-apache.patch |  31 ---
 ...rules-for-var-log-symlink-audisp_remote_t.patch |  29 ---
 ...poky-policy-add-rules-for-var-log-symlink.patch | 145 -------------
 ...ky-policy-add-syslogd_t-to-trusted-object.patch |  31 ---
 ...-policy-allow-nfsd-to-exec-shell-commands.patch |  58 ------
 ...-policy-allow-setfiles_t-to-read-symlinks.patch |  30 ---
 .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |  33 ---
 .../poky-policy-don-t-audit-tty_device_t.patch     |  35 ----
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  37 ----
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 229 ---------------------
 ...poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch |  65 ------
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |  32 ---
 ...ky-policy-fix-seutils-manage-config-files.patch |  43 ----
 .../refpolicy-update-for_systemd.patch             |  29 ---
 .../ftp-add-ftpd_t-to-mlsfilewrite.patch           |  39 ++++
 .../refpolicy-2.20151208/poky-fc-clock.patch       |  22 ++
 .../poky-fc-corecommands.patch                     |  24 +++
 .../refpolicy-2.20151208/poky-fc-dmesg.patch       |  20 ++
 .../refpolicy-2.20151208/poky-fc-fix-bind.patch    |  30 +++
 .../poky-fc-fix-real-path_login.patch              |  37 ++++
 .../poky-fc-fix-real-path_resolv.conf.patch        |  24 +++
 .../poky-fc-fix-real-path_shadow.patch             |  34 +++
 .../poky-fc-fix-real-path_su.patch                 |  25 +++
 .../refpolicy-2.20151208/poky-fc-fstools.patch     |  70 +++++++
 .../refpolicy-2.20151208/poky-fc-ftpwho-dir.patch  |  27 +++
 .../refpolicy-2.20151208/poky-fc-iptables.patch    |  24 +++
 .../refpolicy-2.20151208/poky-fc-mta.patch         |  27 +++
 .../refpolicy-2.20151208/poky-fc-netutils.patch    |  24 +++
 .../refpolicy-2.20151208/poky-fc-nscd.patch        |  27 +++
 .../refpolicy-2.20151208/poky-fc-rpm.patch         |  25 +++
 .../refpolicy-2.20151208/poky-fc-screen.patch      |  27 +++
 .../refpolicy-2.20151208/poky-fc-ssh.patch         |  24 +++
 .../refpolicy-2.20151208/poky-fc-su.patch          |  23 +++
 .../refpolicy-2.20151208/poky-fc-subs_dist.patch   |  29 +++
 .../refpolicy-2.20151208/poky-fc-sysnetwork.patch  |  46 +++++
 .../refpolicy-2.20151208/poky-fc-udevd.patch       |  35 ++++
 .../poky-fc-update-alternatives_hostname.patch     |  23 +++
 .../poky-fc-update-alternatives_sysklogd.patch     |  59 ++++++
 .../poky-fc-update-alternatives_sysvinit.patch     |  53 +++++
 ...poky-policy-add-rules-for-bsdpty_device_t.patch | 121 +++++++++++
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  30 +++
 .../poky-policy-add-rules-for-tmp-symlink.patch    |  99 +++++++++
 ...ky-policy-add-rules-for-var-cache-symlink.patch |  34 +++
 ...licy-add-rules-for-var-log-symlink-apache.patch |  31 +++
 ...rules-for-var-log-symlink-audisp_remote_t.patch |  29 +++
 ...poky-policy-add-rules-for-var-log-symlink.patch | 145 +++++++++++++
 ...ky-policy-add-syslogd_t-to-trusted-object.patch |  31 +++
 ...-policy-allow-nfsd-to-exec-shell-commands.patch |  58 ++++++
 ...-policy-allow-setfiles_t-to-read-symlinks.patch |  30 +++
 .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |  33 +++
 .../poky-policy-don-t-audit-tty_device_t.patch     |  35 ++++
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  37 ++++
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 185 +++++++++++++++++
 ...poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch |  65 ++++++
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |  32 +++
 ...ky-policy-fix-seutils-manage-config-files.patch |  43 ++++
 .../refpolicy-update-for_systemd.patch             |  29 +++
 .../refpolicy/refpolicy-mcs_2.20140311.bb          |  11 -
 .../refpolicy/refpolicy-mcs_2.20141203.bb          |  11 -
 .../refpolicy/refpolicy-mcs_2.20151208.bb          |  11 +
 .../refpolicy/refpolicy-minimum_2.20140311.bb      |  48 -----
 .../refpolicy/refpolicy-minimum_2.20141203.bb      |  48 -----
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |  48 +++++
 .../refpolicy/refpolicy-mls_2.20140311.bb          |  10 -
 .../refpolicy/refpolicy-mls_2.20141203.bb          |  10 -
 .../refpolicy/refpolicy-mls_2.20151208.bb          |  10 +
 .../refpolicy/refpolicy-standard_2.20140311.bb     |   8 -
 .../refpolicy/refpolicy-standard_2.20141203.bb     |   8 -
 .../refpolicy/refpolicy-standard_2.20151208.bb     |   8 +
 .../refpolicy/refpolicy-targeted_2.20140311.bb     |  20 --
 .../refpolicy/refpolicy-targeted_2.20141203.bb     |  20 --
 .../refpolicy/refpolicy-targeted_2.20151208.bb     |  20 ++
 .../refpolicy/refpolicy_2.20140311.inc             |  60 ------
 .../refpolicy/refpolicy_2.20141203.inc             |  60 ------
 .../refpolicy/refpolicy_2.20151208.inc             |  60 ++++++
 147 files changed, 2022 insertions(+), 4137 deletions(-)
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/ftp-add-ftpd_t-to-mlsfilewrite.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-clock.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-corecommands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-dmesg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-fix-bind.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-fix-real-path_login.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-fix-real-path_resolv.conf.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-fix-real-path_shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-fix-real-path_su.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-fstools.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-ftpwho-dir.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-iptables.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-mta.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-netutils.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-nscd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-rpm.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-screen.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-ssh.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-su.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-subs_dist.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-sysnetwork.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-udevd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-update-alternatives_hostname.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-update-alternatives_sysklogd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-fc-update-alternatives_sysvinit.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-add-rules-for-bsdpty_device_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-add-rules-for-syslogd_t-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-add-rules-for-tmp-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-add-rules-for-var-cache-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-add-rules-for-var-log-symlink-apache.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-add-rules-for-var-log-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-add-syslogd_t-to-trusted-object.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-allow-setfiles_t-to-read-symlinks.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-allow-sysadm-to-run-rpcinfo.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-don-t-audit-tty_device_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-fix-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-fix-setfiles-statvfs-get-file-count.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/poky-policy-fix-seutils-manage-config-files.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/ftp-add-ftpd_t-to-mlsfilewrite.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-clock.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-corecommands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-dmesg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-fix-bind.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-fix-real-path_login.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-fix-real-path_resolv.conf.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-fix-real-path_shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-fix-real-path_su.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-fstools.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-ftpwho-dir.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-iptables.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-mta.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-netutils.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-nscd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-rpm.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-screen.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-ssh.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-su.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-subs_dist.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-sysnetwork.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-udevd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-update-alternatives_hostname.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-update-alternatives_sysklogd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-fc-update-alternatives_sysvinit.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-add-rules-for-bsdpty_device_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-add-rules-for-syslogd_t-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-add-rules-for-tmp-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-add-rules-for-var-cache-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-add-rules-for-var-log-symlink-apache.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-add-rules-for-var-log-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-add-syslogd_t-to-trusted-object.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-allow-setfiles_t-to-read-symlinks.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-allow-sysadm-to-run-rpcinfo.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-don-t-audit-tty_device_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-fix-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-fix-setfiles-statvfs-get-file-count.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/poky-policy-fix-seutils-manage-config-files.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20141203/refpolicy-update-for_systemd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/ftp-add-ftpd_t-to-mlsfilewrite.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-clock.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-corecommands.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-dmesg.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-bind.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_login.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_resolv.conf.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_shadow.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fix-real-path_su.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-fstools.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-ftpwho-dir.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-iptables.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-mta.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-netutils.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-nscd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-rpm.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-screen.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-ssh.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-su.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-subs_dist.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-sysnetwork.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-udevd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-update-alternatives_hostname.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-update-alternatives_sysklogd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-fc-update-alternatives_sysvinit.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-bsdpty_device_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-syslogd_t-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-tmp-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-cache-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-log-symlink-apache.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-rules-for-var-log-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-add-syslogd_t-to-trusted-object.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-allow-nfsd-to-exec-shell-commands.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-allow-setfiles_t-to-read-symlinks.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-allow-sysadm-to-run-rpcinfo.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-don-t-audit-tty_device_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-new-SELINUXMNT-in-sys.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-setfiles-statvfs-get-file-count.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/poky-policy-fix-seutils-manage-config-files.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/refpolicy-update-for_systemd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-mcs_2.20140311.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-mcs_2.20141203.bb
 create mode 100644 recipes-security/refpolicy/refpolicy-mcs_2.20151208.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20140311.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20141203.bb
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-mls_2.20140311.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-mls_2.20141203.bb
 create mode 100644 recipes-security/refpolicy/refpolicy-mls_2.20151208.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-standard_2.20140311.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-standard_2.20141203.bb
 create mode 100644 recipes-security/refpolicy/refpolicy-standard_2.20151208.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20140311.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20141203.bb
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20151208.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy_2.20140311.inc
 delete mode 100644 recipes-security/refpolicy/refpolicy_2.20141203.inc
 create mode 100644 recipes-security/refpolicy/refpolicy_2.20151208.inc

-- 
2.1.4


