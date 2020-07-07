Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.12107.1594110573223568927
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 01:29:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 0678TTWh013910
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 7 Jul 2020 01:29:30 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 7 Jul
 2020 01:29:28 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <joe@deserted.net>
Subject: [meta-selinux][PATCH 0/4] refpolicy: update to 20200229+git
Date: Tue, 7 Jul 2020 16:29:10 +0800
Message-ID: <20200707082914.30094-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Here is the changelog for this is patchset:

* Drop refpolicy 2.20190201
  If we still keep two versions of refpolicy, it is difficult to maintain two huge local patchsets. So drop this version and only keep the git version.

* Add patches to make systemd/sysvinit can work with all policy types.

Here are the results with this patcheset:

Machine: qemux86-64
Image: core-image-selinux
Init manager: sysvinit and systemd
Policy types: minimum, targeted, standard, mcs, mls
Boot command: runqemu qemux86-64 kvm nographic bootparams="selinux=1 enforcing=1" qemuparams="-m 1024"

1. All refpolicy type can be built without problems.

2. With parameter selinux=1 & enforcing=1
The qemu can boot up and login with all policy types.


Regards,
Yi


Yi Zhao (4):
  refpolicy: remove version 2.20190201
  refpolicy: update to 20200229+git
  audit: set correct security context for /var/log/audit
  sysklogd: set correct security context for /var/log in initscript

 recipes-extended/sysklogd/files/sysklogd      |   2 +-
 recipes-security/audit/audit/auditd           |   2 +-
 ...fix-update-alternatives-for-sysvinit.patch |  53 -----
 ...m-audit-logging-getty-audit-related-.patch |  68 ------
 ...m-locallogin-add-allow-rules-for-typ.patch |  54 -----
 ...ogd-apply-policy-to-sysklogd-symlink.patch |  57 ------
 ...m-systemd-unconfined-lib-add-systemd.patch | 121 -----------
 ...m-systemd-mount-logging-authlogin-ad.patch |  96 ---------
 ...sr-bin-bash-context-to-bin-bash.bash.patch |  30 ---
 ...m-init-fix-reboot-with-systemd-as-in.patch |  37 ----
 ...abel-resolv.conf-in-var-run-properly.patch |  30 ---
 ...m-systemd-mount-enable-required-refp.patch |  92 ---------
 ...m-systemd-fix-for-login-journal-serv.patch | 103 ----------
 ...m-systemd-fix-for-systemd-tmp-files-.patch | 109 ----------
 ...-fc-hwclock-add-hwclock-alternatives.patch |  28 ---
 ...olicy-minimum-systemd-fix-for-syslog.patch |  70 -------
 ...g-apply-policy-to-dmesg-alternatives.patch |  24 ---
 ...work-apply-policy-to-ip-alternatives.patch |  48 -----
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |  29 ---
 ...gging-Add-the-syslogd_t-to-trusted-o.patch |  33 ---
 ...gging-add-rules-for-the-symlink-of-v.patch | 100 ---------
 ...gging-add-rules-for-syslogd-symlink-.patch |  33 ---
 ...pc-allow-nfsd-to-exec-shell-commands.patch |  29 ---
 ...c-fix-policy-for-nfsserver-to-mount-.patch |  77 -------
 ...-sysfs-fix-for-new-SELINUXMNT-in-sys.patch | 126 ------------
 ...dule-rpc-allow-sysadm-to-run-rpcinfo.patch |  31 ---
 ...erdomain-fix-selinux-utils-to-manage.patch |  45 ----
 ...linuxutil-fix-setfiles-statvfs-to-ge.patch |  33 ---
 ...min-fix-dmesg-to-use-dev-kmsg-as-def.patch |  25 ---
 ...p-add-ftpd_t-to-mls_file_write_all_l.patch |  41 ----
 ...it-update-for-systemd-related-allow-.patch |  32 ---
 ...ache-add-rules-for-the-symlink-of-va.patch |  33 ---
 ...tile-alias-common-var-volatile-paths.patch |  36 ----
 ...m-audit-logging-getty-audit-related-.patch |  68 ------
 ...box-set-aliases-for-bin-sbin-and-usr.patch |  31 ---
 ...m-locallogin-add-allow-rules-for-typ.patch |  54 -----
 ...ogd-apply-policy-to-sysklogd-symlink.patch |  57 ------
 ...m-systemd-unconfined-lib-add-systemd.patch | 121 -----------
 ...y-policy-to-common-yocto-hostname-al.patch |  27 ---
 ...m-systemd-mount-logging-authlogin-ad.patch |  96 ---------
 ...m-init-fix-reboot-with-systemd-as-in.patch |  37 ----
 ...abel-resolv.conf-in-var-run-properly.patch |  30 ---
 ...m-systemd-mount-enable-required-refp.patch |  92 ---------
 ...-apply-login-context-to-login.shadow.patch |  27 ---
 ...m-systemd-fix-for-login-journal-serv.patch | 103 ----------
 .../0008-fc-bind-fix-real-path-for-bind.patch |  31 ---
 ...m-systemd-fix-for-systemd-tmp-files-.patch | 110 ----------
 ...-fc-hwclock-add-hwclock-alternatives.patch |  28 ---
 ...olicy-minimum-systemd-fix-for-syslog.patch |  70 -------
 ...g-apply-policy-to-dmesg-alternatives.patch |  24 ---
 ...ssh-apply-policy-to-ssh-alternatives.patch |  27 ---
 ...v-apply-policy-to-udevadm-in-libexec.patch |  28 ---
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |  29 ---
 ...c-su-apply-policy-to-su-alternatives.patch |  26 ---
 ...fc-fstools-fix-real-path-for-fstools.patch |  76 -------
 ...gging-add-domain-rules-for-the-subdi.patch |  36 ----
 ...les-add-rules-for-the-symlink-of-tmp.patch | 100 ---------
 ...rminals-add-rules-for-bsdpty_device_.patch | 123 -----------
 ...rminals-don-t-audit-tty_device_t-in-.patch |  37 ----
 ...pc-allow-nfsd-to-exec-shell-commands.patch |  29 ---
 ...c-fix-policy-for-nfsserver-to-mount-.patch |  77 -------
 ...-sysfs-fix-for-new-SELINUXMNT-in-sys.patch | 126 ------------
 ...dule-rpc-allow-sysadm-to-run-rpcinfo.patch |  31 ---
 ...erdomain-fix-selinux-utils-to-manage.patch |  45 ----
 ...linuxutil-fix-setfiles-statvfs-to-ge.patch |  33 ---
 ...min-fix-dmesg-to-use-dev-kmsg-as-def.patch |  25 ---
 ...p-add-ftpd_t-to-mls_file_write_all_l.patch |  41 ----
 ...it-update-for-systemd-related-allow-.patch |  32 ---
 ...inimum-make-sysadmin-module-optional.patch |  67 ------
 ...ache-add-rules-for-the-symlink-of-va.patch |  33 ---
 .../refpolicy/refpolicy-mcs_2.20190201.bb     |  11 -
 .../refpolicy/refpolicy-minimum_2.20190201.bb |  91 ---------
 .../refpolicy/refpolicy-minimum_git.bb        |   6 +-
 .../refpolicy/refpolicy-mls_2.20190201.bb     |  10 -
 .../refpolicy-standard_2.20190201.bb          |   8 -
 .../refpolicy-targeted_2.20190201.bb          |  35 ----
 .../refpolicy/refpolicy-targeted_git.bb       |  20 +-
 ...tile-alias-common-var-volatile-paths.patch |  21 +-
 ...nimum-make-sysadmin-module-optional.patch} |  40 ++--
 ...ed-make-unconfined_u-the-default-sel.patch | 193 ++++++++++++++++++
 ...box-set-aliases-for-bin-sbin-and-usr.patch |  26 +--
 ...-policy-to-common-yocto-hostname-al.patch} |  21 +-
 ...r-bin-bash-context-to-bin-bash.bash.patch} |  17 +-
 ...abel-resolv.conf-in-var-run-properly.patch |  29 +++
 ...apply-login-context-to-login.shadow.patch} |  13 +-
 ...0007-fc-bind-fix-real-path-for-bind.patch} |  13 +-
 ...-fc-hwclock-add-hwclock-alternatives.patch |  25 +++
 ...g-apply-policy-to-dmesg-alternatives.patch |  23 +++
 ...sh-apply-policy-to-ssh-alternatives.patch} |  13 +-
 ...ork-apply-policy-to-ip-alternatives.patch} |  35 ++--
 ...-apply-policy-to-udevadm-in-libexec.patch} |  13 +-
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |  27 +++
 ...-su-apply-policy-to-su-alternatives.patch} |  15 +-
 ...c-fstools-fix-real-path-for-fstools.patch} |  58 +++---
 ...ix-update-alternatives-for-sysvinit.patch} |  40 ++--
 ...l-apply-policy-to-brctl-alternatives.patch |  24 +++
 ...apply-policy-to-nologin-alternatives.patch |  28 +++
 ...apply-policy-to-sulogin-alternatives.patch |  25 +++
 ...tp-apply-policy-to-ntpd-alternatives.patch |  27 +++
 ...pply-policy-to-kerberos-alternatives.patch |  50 +++++
 ...ap-apply-policy-to-ldap-alternatives.patch |  40 ++++
 ...ply-policy-to-postgresql-alternative.patch |  37 ++++
 ...-apply-policy-to-screen-alternatives.patch |  25 +++
 ...ply-policy-to-usermanage-alternative.patch |  45 ++++
 ...etty-add-file-context-to-start_getty.patch |  27 +++
 ...file-context-to-etc-network-if-files.patch |  33 +++
 ...k-apply-policy-to-vlock-alternatives.patch |  25 +++
 ...ron-apply-policy-to-etc-init.d-crond.patch |  25 +++
 ...bs_dist-set-aliase-for-root-director.patch |  30 +++
 ...stem-logging-add-rules-for-the-syml.patch} |  59 ++++--
 ...stem-logging-add-rules-for-syslogd-.patch} |  17 +-
 ...stem-logging-add-domain-rules-for-t.patch} |  13 +-
 ...rnel-files-add-rules-for-the-symlin.patch} |  32 +--
 ...rnel-terminal-add-rules-for-bsdpty_.patch} |  17 +-
 ...rnel-terminal-don-t-audit-tty_devic.patch} |  13 +-
 ...ervices-avahi-allow-avahi_t-to-watch.patch |  34 +++
 ...ystem-getty-allow-getty_t-watch-gett.patch |  42 ++++
 ...ervices-bluetooth-allow-bluetooth_t-.patch |  65 ++++++
 ...oles-sysadm-allow-sysadm-to-run-rpci.patch |  38 ++++
 ...ervices-rpc-add-capability-dac_read_.patch |  34 +++
 ...ervices-rpcbind-allow-rpcbind_t-to-c.patch |  45 ++++
 ...ervices-rngd-fix-security-context-fo.patch |  64 ++++++
 ...ystem-authlogin-allow-chkpwd_t-to-ma.patch |  34 +++
 ...ystem-udev-allow-udevadm_t-to-search.patch |  34 +++
 ...dev-do-not-audit-udevadm_t-to-read-w.patch |  37 ++++
 ...ervices-rdisc-allow-rdisc_t-to-searc.patch |  34 +++
 ...ystem-logging-fix-auditd-startup-fai.patch |  52 +++++
 ...ervices-ssh-make-respective-init-scr.patch |  33 +++
 ...ernel-terminal-allow-loging-to-reset.patch |  31 +++
 ...ystem-selinuxutil-allow-semanage_t-t.patch |  33 +++
 ...ystem-sysnetwork-allow-ifconfig_t-to.patch |  35 ++++
 ...ervices-ntp-allow-ntpd_t-to-watch-sy.patch |  55 +++++
 ...ystem-systemd-enable-support-for-sys.patch |  64 ++++++
 ...ystem-logging-fix-systemd-journald-s.patch |  74 +++++++
 ...oles-sysadm-allow-sysadm_t-to-watch-.patch |  36 ++++
 ...ystem-systemd-add-capability-mknod-f.patch |  35 ++++
 ...ystem-systemd-systemd-gpt-auto-gener.patch |  35 ++++
 ...ervices-rpc-fix-policy-for-nfsserver.patch |  78 +++++++
 ...ervices-rpc-make-rpcd_t-MLS-trusted-.patch |  36 ++++
 ...oles-sysadm-MLS-sysadm-rw-to-clearan.patch |  41 ++++
 ...ystem-mount-make-mount_t-domain-MLS-.patch |  36 ++++
 ...ystem-setrans-allow-setrans-to-acces.patch |  53 +++++
 ...dmin-dmesg-make-dmesg_t-MLS-trusted-.patch |  36 ++++
 ...ernel-kernel-make-kernel_t-MLS-trust.patch |  77 +++++++
 ...ystem-init-make-init_t-MLS-trusted-f.patch |  46 +++++
 ...ystem-systemd-make-systemd-tmpfiles_.patch |  63 ++++++
 ...stem-logging-add-the-syslogd_t-to-t.patch} |  20 +-
 ...ystem-init-make-init_t-MLS-trusted-f.patch |  33 +++
 ...ystem-init-all-init_t-to-read-any-le.patch |  40 ++++
 ...ystem-logging-allow-auditd_t-to-writ.patch |  39 ++++
 ...ernel-kernel-make-kernel_t-MLS-trust.patch |  32 +++
 ...ystem-systemd-make-systemd-logind-do.patch |  42 ++++
 ...ystem-systemd-systemd-user-sessions-.patch |  41 ++++
 ...ystem-systemd-systemd-networkd-make-.patch |  36 ++++
 ...ystem-systemd-systemd-resolved-make-.patch |  40 ++++
 ...ystem-systemd-make-systemd-modules_t.patch |  36 ++++
 ...ystem-systemd-systemd-gpt-auto-gener.patch |  70 +++++++
 ...ervices-ntp-make-nptd_t-MLS-trusted-.patch |  40 ++++
 ...ervices-avahi-make-avahi_t-MLS-trust.patch |  29 +++
 .../refpolicy/refpolicy_2.20190201.inc        |   9 -
 .../refpolicy/refpolicy_common.inc            | 118 +++++++----
 recipes-security/refpolicy/refpolicy_git.inc  |   6 +-
 162 files changed, 2984 insertions(+), 4206 deletions(-)
 mode change 100755 => 100644 recipes-security/audit/audit/auditd
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-fix-update-alternatives-for-sysvinit.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-fc-hwclock-add-hwclock-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0032-policy-module-init-update-for-systemd-related-allow-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0007-fc-login-apply-login-context-to-login.shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0008-fc-bind-fix-real-path-for-bind.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0009-fc-hwclock-add-hwclock-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0015-fc-su-apply-policy-to-su-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0016-fc-fstools-fix-real-path-for-fstools.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0032-policy-module-init-update-for-systemd-related-allow-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0033-refpolicy-minimum-make-sysadmin-module-optional.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-mcs_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-mls_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-standard_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20190201.bb
 rename recipes-security/refpolicy/{refpolicy-2.20190201 => refpolicy}/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch (63%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0033-refpolicy-minimum-make-sysadmin-module-optional.patch => refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch} (65%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
 rename recipes-security/refpolicy/{refpolicy-2.20190201 => refpolicy}/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch (54%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch => refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch} (60%)
 rename recipes-security/refpolicy/{refpolicy-git/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch => refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0007-fc-login-apply-login-context-to-login.shadow.patch => refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch} (69%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patch => refpolicy/0007-fc-bind-fix-real-path-for-bind.patch} (76%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch => refpolicy/0010-fc-ssh-apply-policy-to-ssh-alternatives.patch} (71%)
 rename recipes-security/refpolicy/{refpolicy-git/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch => refpolicy/0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch} (59%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch => refpolicy/0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternatives.patch => refpolicy/0014-fc-su-apply-policy-to-su-alternatives.patch} (61%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch => refpolicy/0015-fc-fstools-fix-real-path-for-fstools.patch} (62%)
 rename recipes-security/refpolicy/{refpolicy-git/0001-fix-update-alternatives-for-sysvinit.patch => refpolicy/0016-fc-init-fix-update-alternatives-for-sysvinit.patch} (59%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-policy-to-brctl-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy-to-ldap-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-policy-to-screen-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-context-to-start_getty.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to-etc-network-if-files.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-policy-to-vlock-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc-init.d-crond.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0030-file_contexts.subs_dist-set-aliase-for-root-director.patch
 rename recipes-security/refpolicy/{refpolicy-git/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch => refpolicy/0031-policy-modules-system-logging-add-rules-for-the-syml.patch} (63%)
 rename recipes-security/refpolicy/{refpolicy-git/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch => refpolicy/0032-policy-modules-system-logging-add-rules-for-syslogd-.patch} (66%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch => refpolicy/0033-policy-modules-system-logging-add-domain-rules-for-t.patch} (76%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch => refpolicy/0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch} (71%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch => refpolicy/0035-policy-modules-kernel-terminal-add-rules-for-bsdpty_.patch} (87%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch => refpolicy/0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch} (74%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0037-policy-modules-services-avahi-allow-avahi_t-to-watch.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0038-policy-modules-system-getty-allow-getty_t-watch-gett.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0039-policy-modules-services-bluetooth-allow-bluetooth_t-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-add-capability-dac_read_.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rngd-fix-security-context-fo.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0044-policy-modules-system-authlogin-allow-chkpwd_t-to-ma.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0045-policy-modules-system-udev-allow-udevadm_t-to-search.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0046-policy-modules-udev-do-not-audit-udevadm_t-to-read-w.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0047-policy-modules-services-rdisc-allow-rdisc_t-to-searc.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0048-policy-modules-system-logging-fix-auditd-startup-fai.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0049-policy-modules-services-ssh-make-respective-init-scr.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-terminal-allow-loging-to-reset.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0051-policy-modules-system-selinuxutil-allow-semanage_t-t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0052-policy-modules-system-sysnetwork-allow-ifconfig_t-to.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0053-policy-modules-services-ntp-allow-ntpd_t-to-watch-sy.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0054-policy-modules-system-systemd-enable-support-for-sys.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0055-policy-modules-system-logging-fix-systemd-journald-s.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0056-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0057-policy-modules-system-systemd-add-capability-mknod-f.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0058-policy-modules-system-systemd-systemd-gpt-auto-gener.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0059-policy-modules-services-rpc-fix-policy-for-nfsserver.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0060-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0061-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0062-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0063-policy-modules-system-setrans-allow-setrans-to-acces.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0064-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0065-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0066-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0067-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
 rename recipes-security/refpolicy/{refpolicy-git/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch => refpolicy/0068-policy-modules-system-logging-add-the-syslogd_t-to-t.patch} (60%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0069-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0070-policy-modules-system-init-all-init_t-to-read-any-le.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0071-policy-modules-system-logging-allow-auditd_t-to-writ.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0072-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0073-policy-modules-system-systemd-make-systemd-logind-do.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0074-policy-modules-system-systemd-systemd-user-sessions-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0075-policy-modules-system-systemd-systemd-networkd-make-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0076-policy-modules-system-systemd-systemd-resolved-make-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0077-policy-modules-system-systemd-make-systemd-modules_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0078-policy-modules-system-systemd-systemd-gpt-auto-gener.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0079-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0080-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy_2.20190201.inc

-- 
2.17.1

