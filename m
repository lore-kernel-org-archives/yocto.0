Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3BC7C0015E
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 18:08:01 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web11.14475.1690481272009468704
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 11:07:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=icUVScvT;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-584243f84eeso13595497b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 11:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690481271; x=1691086071;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Key4hIbNobWppNplJBmuYTfwdyLvJTu7mmyuUgHQ3kA=;
        b=icUVScvTfYEgVDVv5RcUYmiuaQkQOsDYkxVDwBF3fXOIzB4TQi+eKPsqlUi+dw1ZRN
         DaciL/vsKnjtsoqZPxkBJGc4+dAL8MBb6Fe3wlJsGhlW8h4W84NIHjSkYZwx/AWNsrwM
         tolufcds0uyLCixbQNRTO62zrp5lkBvMuz500q+Nz/cswcKmUb/gn2Fl6jgU8YmWmk4P
         mqcvRsM4AKAuH2en6pXa4fOq0a8SYKLoa2576wfvnzuqW4ZeQrTy2Yo97nJYikEMIeYY
         OHlXGAk0KPxgKk/0grWSzWDABWDhx7bj5M/qVU704DcWe5E9Ctru0f9crk+aJ2ExrWdz
         SXkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690481271; x=1691086071;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Key4hIbNobWppNplJBmuYTfwdyLvJTu7mmyuUgHQ3kA=;
        b=E6Lao+xD9Ng/E4QjFrbqm+N9PTdwf49cFPjB8TAMRVYVD8m/kA0/+e+Kgz+k7umh6a
         Pe7XHAYX3gZ8aTJv1gzoi7LYXw6mOaGJKYw29Op7oBBKtyFNGzH3S0TJxFg8JjQmB5Zn
         Yx2BTBhMUWSPkrxgR91SWuBkP2q0tMoy3cZhyadl2iKvFZpsGwq9NLMopQ16vTGaWCKK
         7zLPQ6sv8kYrLWQBlFZeU2N2ksCA77Kai+EMS6EGj6yXc9atXl2hZWH50fEDTiIBo7Lg
         zW1VUzPECSutQwfTf06fQkVGViKt6tZWPzIHW59TFHzj+JVdkbI51HzEZWeapDzDlMWg
         PU7Q==
X-Gm-Message-State: ABy/qLbMxKVTL6I6cPMCNszbbQj0UEG7cskOt2gSXr0tnKcx04lz11wi
	BBgLJxovWxkd9fZSKqHKM2rGQnvgj+A=
X-Google-Smtp-Source: APBJJlFGgP/i5zARVQqaxU42rewsy9RDUNxZ1FxXUc+v1kybnnGCUglwn0hKUfIVQ/IoK0uWO9dm7Q==
X-Received: by 2002:a81:73d6:0:b0:584:3f4a:b790 with SMTP id o205-20020a8173d6000000b005843f4ab790mr42825ywc.33.1690481270276;
        Thu, 27 Jul 2023 11:07:50 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:1:6648:c79a:5757])
        by smtp.gmail.com with ESMTPSA id t14-20020a81830e000000b0058461c9524fsm558361ywf.12.2023.07.27.11.07.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 11:07:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-selinux][dunfell][patch 0/4] Selinux failed to enable do to errors.
Date: Thu, 27 Jul 2023 14:07:44 -0400
Message-Id: <20230727180748.107196-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 18:08:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60664

These backports fixes issues we found on a PPC target and QEMU Machine

Checking SELinux security contexts:
/etc/selinux/standard/contexts/files/file_contexts.bin:  line 1 error due to:
Non-ASCII characters found
/etc/selinux/standard/contexts/files/file_contexts.homedirs.bin:  line 1 error
due to: Non-ASCII characters found
* First booting, filesystem will be relabeled...
/sbin/restorecon: /etc/selinux/standard/contexts/files/file_contexts.bin:  line
1 error due to: Non-ASCII characters found
/sbin/restorecon:
/etc/selinux/standard/contexts/files/file_contexts.homedirs.bin:  line 1 error
due to: Non-ASCII characters found

I understand package updates may be be allowes on stable branches but wanted to share.

Yi Zhao (4):
  refpolicy: remove version 2.20190201
  audit: set correct security context for /var/log/audit
  sysklogd: set correct security context for /var/log in initscript
  refpolicy: update to 20200229+git

 recipes-extended/sysklogd/files/sysklogd      |   2 +-
 recipes-security/audit/audit/auditd           |   2 +-
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
 ...m-systemd-fix-for-login-journal-serv.patch | 103 ----------
 .../0008-fc-bind-fix-real-path-for-bind.patch |  31 ---
 ...m-systemd-fix-for-systemd-tmp-files-.patch | 109 ----------
 ...-fc-hwclock-add-hwclock-alternatives.patch |  28 ---
 ...olicy-minimum-systemd-fix-for-syslog.patch |  70 -------
 ...g-apply-policy-to-dmesg-alternatives.patch |  24 ---
 ...ssh-apply-policy-to-ssh-alternatives.patch |  27 ---
 ...v-apply-policy-to-udevadm-in-libexec.patch |  28 ---
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |  29 ---
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
 ...tile-alias-common-var-volatile-paths.patch |  36 ----
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
 ...-apply-login-context-to-login.shadow.patch |  27 ---
 ...m-systemd-fix-for-login-journal-serv.patch | 103 ----------
 ...m-systemd-fix-for-systemd-tmp-files-.patch | 110 ----------
 ...-fc-hwclock-add-hwclock-alternatives.patch |  28 ---
 ...olicy-minimum-systemd-fix-for-syslog.patch |  70 -------
 ...g-apply-policy-to-dmesg-alternatives.patch |  24 ---
 ...work-apply-policy-to-ip-alternatives.patch |  48 -----
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |  29 ---
 ...c-su-apply-policy-to-su-alternatives.patch |  26 ---
 ...fc-fstools-fix-real-path-for-fstools.patch |  76 -------
 ...gging-Add-the-syslogd_t-to-trusted-o.patch |  33 ---
 ...gging-add-rules-for-the-symlink-of-v.patch | 100 ---------
 ...gging-add-rules-for-syslogd-symlink-.patch |  33 ---
 ...gging-add-domain-rules-for-the-subdi.patch |  36 ----
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
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-fc-hwclock-add-hwclock-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0032-policy-module-init-update-for-systemd-related-allow-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0033-refpolicy-minimum-make-sysadmin-module-optional.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fix-update-alternatives-for-sysvinit.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0007-fc-login-apply-login-context-to-login.shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0009-fc-hwclock-add-hwclock-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0015-fc-su-apply-policy-to-su-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0016-fc-fstools-fix-real-path-for-fstools.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0032-policy-module-init-update-for-systemd-related-allow-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-mcs_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-mls_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-standard_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20190201.bb
 rename recipes-security/refpolicy/{refpolicy-2.20190201 => refpolicy}/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch (63%)
 rename recipes-security/refpolicy/{refpolicy-git/0033-refpolicy-minimum-make-sysadmin-module-optional.patch => refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch} (65%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
 rename recipes-security/refpolicy/{refpolicy-git => refpolicy}/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch (54%)
 rename recipes-security/refpolicy/{refpolicy-git/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch => refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch} (60%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch => refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0007-fc-login-apply-login-context-to-login.shadow.patch => refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch} (69%)
 rename recipes-security/refpolicy/{refpolicy-git/0008-fc-bind-fix-real-path-for-bind.patch => refpolicy/0007-fc-bind-fix-real-path-for-bind.patch} (76%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 rename recipes-security/refpolicy/{refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch => refpolicy/0010-fc-ssh-apply-policy-to-ssh-alternatives.patch} (71%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch => refpolicy/0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch} (59%)
 rename recipes-security/refpolicy/{refpolicy-git/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch => refpolicy/0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternatives.patch => refpolicy/0014-fc-su-apply-policy-to-su-alternatives.patch} (61%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch => refpolicy/0015-fc-fstools-fix-real-path-for-fstools.patch} (62%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0001-fix-update-alternatives-for-sysvinit.patch => refpolicy/0016-fc-init-fix-update-alternatives-for-sysvinit.patch} (59%)
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
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch => refpolicy/0031-policy-modules-system-logging-add-rules-for-the-syml.patch} (63%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch => refpolicy/0032-policy-modules-system-logging-add-rules-for-syslogd-.patch} (66%)
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch => refpolicy/0033-policy-modules-system-logging-add-domain-rules-for-t.patch} (76%)
 rename recipes-security/refpolicy/{refpolicy-git/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch => refpolicy/0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch} (71%)
 rename recipes-security/refpolicy/{refpolicy-git/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch => refpolicy/0035-policy-modules-kernel-terminal-add-rules-for-bsdpty_.patch} (87%)
 rename recipes-security/refpolicy/{refpolicy-git/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch => refpolicy/0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch} (74%)
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
 rename recipes-security/refpolicy/{refpolicy-2.20190201/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch => refpolicy/0068-policy-modules-system-logging-add-the-syslogd_t-to-t.patch} (60%)
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
2.34.1


