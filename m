Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5313C04E69
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 18:08:01 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web11.14479.1690481277127118757
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 11:07:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=QtyvuC2M;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-583fe10bb3cso13874717b3.2
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 11:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690481276; x=1691086076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nXkEJGkoQQnbY2ncWtygc9D9m8u6ON1bKK27+Km4k2Q=;
        b=QtyvuC2M85dHI/qxGZhiRTNZmwxh9AVkKXOXOFiCQS8/nlNPq3BbMPNP4WJUZmqNzI
         XpSTv/3vziw9ZS6K1ympjDAKE3qK0HcMLcX1ZXQFk0bYrsh1JROiNYpoVQaSWWQz9hn0
         3E3MxkqatyabUf/n35Uwbxc1nrSNMPN5jYTnbTjNFv9b6ZFy7Ac4F2wGv5+9hemz3lci
         VymfCF31j0iE0wCaPxUrljm2tKen93y8wDaTntnqI61lpCEBl0uivOHib9TtCdo5J8K3
         uVo/MaMjktdUFVde4qfEZ+zTn/iW9xAr2PcCA54+0z0joQH2u98gu3znLcyIi0JNyytK
         QcSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690481276; x=1691086076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nXkEJGkoQQnbY2ncWtygc9D9m8u6ON1bKK27+Km4k2Q=;
        b=Q8M1u10ziscdKeC8rt8UwyzYI1EWEZ5i2mjQ3ZWg1mv61GAf/wzDhnyQWixFsgDwes
         51cb7rCRL46wJN3rHf/+DP2/8nIeoNkrU0hn2pckhPsksQHh/ZH6xsSKNFa7daS8w7ZD
         VDV0yg5WdU4EZoUHlARwgttvO/eDCkqYpqfpqu8tvtbxpC8Zo0CSPoS5yW6vuP/64fGX
         QA2CniSavyMIvzq2nuBU6MDO4Qb/Cr8YKlphNw7BLv4WUHVgmp30cLjdHJvpLgaNRlEG
         o1YlBrpxPYmhwSfkhmzVaqH0479QifapsW2N9vCPRGSM+ClhqERzu7fXE1JG0jm0cD9b
         AzxQ==
X-Gm-Message-State: ABy/qLZyn1+YcH9fVDGjh0h9oCIYUvwUMAfSu2piEZPz+VhwXyGPaNkD
	3ypSukznY4aMRRnvt9ukpgdQ2mR26Ds=
X-Google-Smtp-Source: APBJJlGCTnHEGamtVDB102DpNNPoQqjUoHKZ+36asDFjMGPIcWIRIWXS5RSUvq001L71J5UY/AZJYQ==
X-Received: by 2002:a0d:f282:0:b0:579:e318:4c01 with SMTP id b124-20020a0df282000000b00579e3184c01mr53840ywf.19.1690481273875;
        Thu, 27 Jul 2023 11:07:53 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:1:6648:c79a:5757])
        by smtp.gmail.com with ESMTPSA id t14-20020a81830e000000b0058461c9524fsm558361ywf.12.2023.07.27.11.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 11:07:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Yi Zhao <yi.zhao@windriver.com>,
	Joe MacDonald <joe@deserted.net>,
	Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][dunfell][patch 4/4] refpolicy: update to 20200229+git
Date: Thu, 27 Jul 2023 14:07:48 -0400
Message-Id: <20230727180748.107196-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727180748.107196-1-akuster808@gmail.com>
References: <20230727180748.107196-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 18:08:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60668

From: Yi Zhao <yi.zhao@windriver.com>

* Drop obsolete and unused patches.
* Rebase patches.
* Add patches to make systemd and sysvinit can work with all policy types.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
(cherry picked from commit 15fed8756aa4828fa12a3d813754b4ca65a7607d)
Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 ...m-audit-logging-getty-audit-related-.patch |  68 ------
 ...m-locallogin-add-allow-rules-for-typ.patch |  54 -----
 ...ogd-apply-policy-to-sysklogd-symlink.patch |  57 ------
 ...m-systemd-unconfined-lib-add-systemd.patch | 121 -----------
 ...m-systemd-mount-logging-authlogin-ad.patch |  96 ---------
 ...m-init-fix-reboot-with-systemd-as-in.patch |  37 ----
 ...abel-resolv.conf-in-var-run-properly.patch |  30 ---
 ...m-systemd-mount-enable-required-refp.patch |  92 ---------
 ...m-systemd-fix-for-login-journal-serv.patch | 103 ----------
 ...m-systemd-fix-for-systemd-tmp-files-.patch | 110 ----------
 ...-fc-hwclock-add-hwclock-alternatives.patch |  28 ---
 ...olicy-minimum-systemd-fix-for-syslog.patch |  70 -------
 ...g-apply-policy-to-dmesg-alternatives.patch |  24 ---
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |  29 ---
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
 .../refpolicy/refpolicy-minimum_git.bb        |   6 +-
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
 .../refpolicy/refpolicy_common.inc            | 118 +++++++----
 recipes-security/refpolicy/refpolicy_git.inc  |   6 +-
 110 files changed, 2982 insertions(+), 1681 deletions(-)
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0009-fc-hwclock-add-hwclock-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
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
 rename recipes-security/refpolicy/{refpolicy-git => refpolicy}/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch (63%)
 rename recipes-security/refpolicy/{refpolicy-git/0033-refpolicy-minimum-make-sysadmin-module-optional.patch => refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch} (65%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
 rename recipes-security/refpolicy/{refpolicy-git => refpolicy}/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch (54%)
 rename recipes-security/refpolicy/{refpolicy-git/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch => refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch} (60%)
 rename recipes-security/refpolicy/{refpolicy-git/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch => refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
 rename recipes-security/refpolicy/{refpolicy-git/0007-fc-login-apply-login-context-to-login.shadow.patch => refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch} (69%)
 rename recipes-security/refpolicy/{refpolicy-git/0008-fc-bind-fix-real-path-for-bind.patch => refpolicy/0007-fc-bind-fix-real-path-for-bind.patch} (76%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 rename recipes-security/refpolicy/{refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch => refpolicy/0010-fc-ssh-apply-policy-to-ssh-alternatives.patch} (71%)
 rename recipes-security/refpolicy/{refpolicy-git/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch => refpolicy/0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch} (59%)
 rename recipes-security/refpolicy/{refpolicy-git/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch => refpolicy/0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 rename recipes-security/refpolicy/{refpolicy-git/0015-fc-su-apply-policy-to-su-alternatives.patch => refpolicy/0014-fc-su-apply-policy-to-su-alternatives.patch} (61%)
 rename recipes-security/refpolicy/{refpolicy-git/0016-fc-fstools-fix-real-path-for-fstools.patch => refpolicy/0015-fc-fstools-fix-real-path-for-fstools.patch} (62%)
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
 rename recipes-security/refpolicy/{refpolicy-git/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch => refpolicy/0033-policy-modules-system-logging-add-domain-rules-for-t.patch} (76%)
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

diff --git a/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch b/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
deleted file mode 100644
index 3cc5395..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
+++ /dev/null
@@ -1,68 +0,0 @@
-From 0f25b7c345d516eccd1c02c93f752ce073b84865 Mon Sep 17 00:00:00 2001
-From: Shrikant Bobade <shrikant_bobade@mentor.com>
-Date: Fri, 26 Aug 2016 17:51:44 +0530
-Subject: [PATCH 1/9] refpolicy-minimum: audit: logging: getty: audit related
- allow rules
-
-add allow rules for audit.log file & resolve dependent avc denials.
-
-without this change we are getting audit avc denials mixed into bootlog &
-audit other avc denials.
-
-audit: type=1400 audit(): avc:  denied  { getattr } for  pid=217 comm="mount"
-name="/" dev="proc" ino=1 scontext=system_u:system_r:mount_t:s0 tcontext=system_0
-audit: type=1400 audit(): avc:  denied  { sendto } for  pid=310 comm="klogd"
-path="/run/systemd/journal/dev-log" scontext=sy0
-audit: type=1400 audit(): avc:  denied  { sendto } for  pid=310 comm="klogd"
-path="/run/systemd/journal/dev-log" scontext=system_u:system_r:klogd_t:s0
-audit(): avc:  denied  { open } for  pid=540 comm="agetty" path="/var/
-volatile/log/wtmp" dev="tmpfs" ino=9536 scontext=system_u:system_r:getty_t
-:s0 tcontext=system_u:object_r:tmpfs_t:s0 tclass=file permissive=0
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/getty.te   | 3 +++
- policy/modules/system/logging.te | 8 ++++++++
- 2 files changed, 11 insertions(+)
-
-diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.te
-index 6d3c4284..423db0cc 100644
---- a/policy/modules/system/getty.te
-+++ b/policy/modules/system/getty.te
-@@ -129,3 +129,6 @@ optional_policy(`
- optional_policy(`
- 	udev_read_db(getty_t)
- ')
-+
-+allow getty_t tmpfs_t:dir search;
-+allow getty_t tmpfs_t:file { open write lock };
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index e6221a02..4cc73327 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -249,6 +249,7 @@ allow audisp_t self:unix_stream_socket create_stream_socket_perms;
- allow audisp_t self:unix_dgram_socket create_socket_perms;
- 
- allow audisp_t auditd_t:unix_stream_socket rw_socket_perms;
-+allow audisp_t initrc_t:unix_dgram_socket sendto;
- 
- manage_sock_files_pattern(audisp_t, audisp_var_run_t, audisp_var_run_t)
- files_pid_filetrans(audisp_t, audisp_var_run_t, sock_file)
-@@ -620,3 +621,10 @@ optional_policy(`
- 	# log to the xconsole
- 	xserver_rw_console(syslogd_t)
- ')
-+
-+
-+allow auditd_t tmpfs_t:file { getattr setattr create open read append };
-+allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
-+allow auditd_t initrc_t:unix_dgram_socket sendto;
-+
-+allow klogd_t initrc_t:unix_dgram_socket sendto;
-\ No newline at end of file
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch b/recipes-security/refpolicy/refpolicy-git/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
deleted file mode 100644
index e2c6c89..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
+++ /dev/null
@@ -1,54 +0,0 @@
-From b69a82237ccc8de3f5b822739760f5cb6596fe51 Mon Sep 17 00:00:00 2001
-From: Shrikant Bobade <shrikant_bobade@mentor.com>
-Date: Fri, 26 Aug 2016 17:53:46 +0530
-Subject: [PATCH 2/9] refpolicy-minimum: locallogin: add allow rules for type
- local_login_t
-
-add allow rules for locallogin module avc denials.
-
-without this change we are getting errors like these:
-
-type=AVC msg=audit(): avc:  denied  { read write open } for  pid=353
-comm="login" path="/var/volatile/log/lastlog" dev="tmpfs" ino=12281 scontext
-=system_u:system_r:local_login_t:s0-s0:c0.c1023 tcontext=system_u:object_r:
-var_log_t:s0 tclass=file permissive=1
-
-type=AVC msg=audit(): avc:  denied  { sendto } for  pid=353 comm="login"
-path="/run/systemd/journal/dev-log" scontext=system_u:system_r:
-local_login_t:s0-s0:c0.c1023 tcontext=system_u:system_r:initrc_t:s0
-tclass=unix_dgram_socket permissive=1
-
-type=AVC msg=audit(): avc:  denied  { lock } for  pid=353 comm="login" path=
-"/var/volatile/log/lastlog" dev="tmpfs" ino=12281 scontext=system_u:system_r
-:local_login_t:s0-s0:c0.c1023 tcontext=system_u:object_r:var_log_t:s0 tclass
-=file permissive=1
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/locallogin.te | 10 ++++++++++
- 1 file changed, 10 insertions(+)
-
-diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
-index 4c679ff3..75750e4c 100644
---- a/policy/modules/system/locallogin.te
-+++ b/policy/modules/system/locallogin.te
-@@ -288,3 +288,13 @@ optional_policy(`
- optional_policy(`
- 	nscd_use(sulogin_t)
- ')
-+
-+allow local_login_t initrc_t:fd use;
-+allow local_login_t initrc_t:unix_dgram_socket sendto;
-+allow local_login_t initrc_t:unix_stream_socket connectto;
-+allow local_login_t self:capability net_admin;
-+allow local_login_t var_log_t:file { create lock open read write };
-+allow local_login_t var_run_t:file { open read write lock};
-+allow local_login_t var_run_t:sock_file write;
-+allow local_login_t tmpfs_t:dir { add_name write search};
-+allow local_login_t tmpfs_t:file { create open read write lock };
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch b/recipes-security/refpolicy/refpolicy-git/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
deleted file mode 100644
index f194d6d..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
+++ /dev/null
@@ -1,57 +0,0 @@
-From d0fd07dda45b349af634e4671a70e47fef102386 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:39:41 +0800
-Subject: [PATCH 03/34] fc/sysklogd: apply policy to sysklogd symlink
-
-/etc/syslog.conf is a symlink to /etc/syslog.conf.sysklogd, so a allow
-rule for syslogd_t to read syslog_conf_t lnk_file is needed.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/logging.fc | 3 +++
- policy/modules/system/logging.te | 1 +
- 2 files changed, 4 insertions(+)
-
-diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
-index 6693d87b..0cf108e0 100644
---- a/policy/modules/system/logging.fc
-+++ b/policy/modules/system/logging.fc
-@@ -2,6 +2,7 @@
- 
- /etc/rsyslog\.conf					--	gen_context(system_u:object_r:syslog_conf_t,s0)
- /etc/syslog\.conf					--	gen_context(system_u:object_r:syslog_conf_t,s0)
-+/etc/syslog\.conf\.sysklogd	gen_context(system_u:object_r:syslog_conf_t,s0)
- /etc/rsyslog\.d(/.*)?					gen_context(system_u:object_r:syslog_conf_t,s0)
- /etc/audit(/.*)?						gen_context(system_u:object_r:auditd_etc_t,mls_systemhigh)
- /etc/systemd/journal.*\.conf		--	gen_context(system_u:object_r:syslog_conf_t,s0)
-@@ -32,10 +33,12 @@
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
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 0c5be1cd..38ccfe3a 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -399,6 +399,7 @@ allow syslogd_t self:udp_socket create_socket_perms;
- allow syslogd_t self:tcp_socket create_stream_socket_perms;
- 
- allow syslogd_t syslog_conf_t:file read_file_perms;
-+allow syslogd_t syslog_conf_t:lnk_file read_file_perms;
- allow syslogd_t syslog_conf_t:dir list_dir_perms;
- 
- # Create and bind to /dev/log or /var/run/log.
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch b/recipes-security/refpolicy/refpolicy-git/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
deleted file mode 100644
index 968a9be..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
+++ /dev/null
@@ -1,121 +0,0 @@
-From ec36df125da565fe1a9b64000151afaf40c2887d Mon Sep 17 00:00:00 2001
-From: Shrikant Bobade <shrikant_bobade@mentor.com>
-Date: Fri, 26 Aug 2016 17:51:32 +0530
-Subject: [PATCH 3/9] refpolicy-minimum: systemd:unconfined:lib: add systemd
- services allow rules
-
-systemd allow rules for systemd service file operations: start, stop, restart
-& allow rule for unconfined systemd service.
-
-without this change we are getting these errors:
-:~# systemctl status selinux-init.service
-Failed to get properties: Access denied
-
-:~# systemctl stop selinux-init.service
-Failed to stop selinux-init.service: Access denied
-
-:~# systemctl restart  selinux-init.service
-audit: type=1107 audit: pid=1 uid=0 auid=4294967295 ses=4294967295 subj=
-system_u:system_r:init_t:s0 msg='avc:  denied  { start } for auid=n/a uid=0
-gid=0 path="/lib/systemd/system/selinux-init.service" cmdline="systemctl
-restart selinux-init.service" scontext=unconfined_u:unconfined_r:
-unconfined_t:s0-s0:c0.c1023 tcontext=system_u:object_r:lib_t:s0 tclass=service
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/init.te       |  4 +++
- policy/modules/system/libraries.te  |  3 +++
- policy/modules/system/systemd.if    | 39 +++++++++++++++++++++++++++++
- policy/modules/system/unconfined.te |  6 +++++
- 4 files changed, 52 insertions(+)
-
-diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index d8696580..e15ec4b9 100644
---- a/policy/modules/system/init.te
-+++ b/policy/modules/system/init.te
-@@ -1425,3 +1425,7 @@ optional_policy(`
- allow kernel_t init_t:process dyntransition;
- allow devpts_t device_t:filesystem associate;
- allow init_t self:capability2 block_suspend;
-+allow init_t self:capability2 audit_read;
-+
-+allow initrc_t init_t:system { start status };
-+allow initrc_t init_var_run_t:service { start status };
-diff --git a/policy/modules/system/libraries.te b/policy/modules/system/libraries.te
-index 422b0ea1..80b0c9a5 100644
---- a/policy/modules/system/libraries.te
-+++ b/policy/modules/system/libraries.te
-@@ -145,3 +145,6 @@ optional_policy(`
- optional_policy(`
- 	unconfined_domain(ldconfig_t)
- ')
-+
-+# systemd: init domain to start lib domain service
-+systemd_service_lib_function(lib_t)
-diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 6353ca69..4519a448 100644
---- a/policy/modules/system/systemd.if
-+++ b/policy/modules/system/systemd.if
-@@ -905,3 +905,42 @@ interface(`systemd_getattr_updated_runtime',`
- 
- 	getattr_files_pattern($1, systemd_update_run_t, systemd_update_run_t)
- ')
-+
-+########################################
-+## <summary>
-+## Allow specified domain to start stop reset systemd service
-+## </summary>
-+## <param name="domain">
-+## <summary>
-+## Domain to not audit.
-+## </summary>
-+## </param>
-+#
-+interface(`systemd_service_file_operations',`
-+         gen_require(`
-+               class service { start status stop };
-+         ')
-+
-+	allow $1 lib_t:service { start status stop };
-+
-+')
-+
-+
-+########################################
-+## <summary>
-+## Allow init domain to start lib domain service
-+## </summary>
-+## <param name="domain">
-+## <summary>
-+## Domain to not audit.
-+## </summary>
-+## </param>
-+#
-+interface(`systemd_service_lib_function',`
-+         gen_require(`
-+               class service start;
-+         ')
-+
-+	allow initrc_t $1:service start;
-+
-+')
-diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
-index 12cc0d7c..c09e94a5 100644
---- a/policy/modules/system/unconfined.te
-+++ b/policy/modules/system/unconfined.te
-@@ -240,3 +240,9 @@ unconfined_domain_noaudit(unconfined_execmem_t)
- optional_policy(`
- 	unconfined_dbus_chat(unconfined_execmem_t)
- ')
-+
-+
-+# systemd: specified domain to start stop reset systemd service
-+systemd_service_file_operations(unconfined_t)
-+
-+allow unconfined_t init_t:system reload;
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch b/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
deleted file mode 100644
index 06b9192..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
+++ /dev/null
@@ -1,96 +0,0 @@
-From 0918b156dcf4d126fd0e36de5a6c61f114448c8a Mon Sep 17 00:00:00 2001
-From: Shrikant Bobade <shrikant_bobade@mentor.com>
-Date: Fri, 26 Aug 2016 17:53:37 +0530
-Subject: [PATCH 4/9] refpolicy-minimum: systemd: mount: logging: authlogin:
- add allow rules
-
-add allow rules for avc denails for systemd, mount, logging & authlogin
-modules.
-
-without this change we are getting avc denial like these:
-
-type=AVC msg=audit(): avc:  denied  { sendto } for pid=893 comm="systemd-
-tmpfile" path="/run/systemd/journal/socket" scontext=system_u:system_r:
-systemd_tmpfiles_t:s0 tcontext=system_u:system_r:initrc_t:s0 tclass=
-unix_dgram_socket permissive=0
-
-type=AVC msg=audit(): avc:  denied  { open } for  pid=703 comm="systemd-
-tmpfile" path="/proc/1/environ" dev="proc" ino=8841 scontext=system_u:
-system_r:systemd_tmpfiles_t:s0 tcontext=system_u:system_r:init_t:s0 tclass=
-file permissive=0
-
-type=AVC msg=audit(): avc:  denied  { read write } for  pid=486 comm="mount"
-path="socket:[9717]" dev="sockfs" ino=9717 scontext=system_u:system_r:
-mount_t:s0 tcontext=system_u:system_r:initrc_t:s0 tclass=udp_socket
-
-type=AVC msg=audit(): avc:  denied  { unix_read unix_write } for  pid=292
-comm="syslogd" key=1095648583  scontext=system_u:system_r:syslogd_t:s0
-tcontext=system_u:system_r:syslogd_t:s0 tclass=shm permissive=1
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/authlogin.te | 2 ++
- policy/modules/system/logging.te   | 7 ++++++-
- policy/modules/system/mount.te     | 3 +++
- policy/modules/system/systemd.te   | 5 +++++
- 4 files changed, 16 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/authlogin.te
-index 28f74bac..dfa46612 100644
---- a/policy/modules/system/authlogin.te
-+++ b/policy/modules/system/authlogin.te
-@@ -479,3 +479,5 @@ optional_policy(`
- 	samba_read_var_files(nsswitch_domain)
- 	samba_dontaudit_write_var_files(nsswitch_domain)
- ')
-+
-+allow chkpwd_t proc_t:filesystem getattr;
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 4cc73327..98c2bd19 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -627,4 +627,9 @@ allow auditd_t tmpfs_t:file { getattr setattr create open read append };
- allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
- allow auditd_t initrc_t:unix_dgram_socket sendto;
- 
--allow klogd_t initrc_t:unix_dgram_socket sendto;
-\ No newline at end of file
-+allow klogd_t initrc_t:unix_dgram_socket sendto;
-+
-+allow syslogd_t self:shm create;
-+allow syslogd_t self:sem { create read unix_write write };
-+allow syslogd_t self:shm { read unix_read unix_write write };
-+allow syslogd_t tmpfs_t:file { read write };
-diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
-index 3dcb8493..a87d0e82 100644
---- a/policy/modules/system/mount.te
-+++ b/policy/modules/system/mount.te
-@@ -231,3 +231,6 @@ optional_policy(`
- 	files_etc_filetrans_etc_runtime(unconfined_mount_t, file)
- 	unconfined_domain(unconfined_mount_t)
- ')
-+
-+allow mount_t proc_t:filesystem getattr;
-+allow mount_t initrc_t:udp_socket { read write };
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index f6455f6f..b13337b9 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -1011,6 +1011,11 @@ allow systemd_tmpfiles_t systemd_journal_t:file { relabelfrom relabelto };
- allow systemd_tmpfiles_t systemd_tmpfiles_conf_t:dir list_dir_perms;
- allow systemd_tmpfiles_t systemd_tmpfiles_conf_type:file read_file_perms;
- 
-+allow systemd_tmpfiles_t init_t:dir search;
-+allow systemd_tmpfiles_t proc_t:filesystem getattr;
-+allow systemd_tmpfiles_t init_t:file read;
-+allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
-+
- kernel_getattr_proc(systemd_tmpfiles_t)
- kernel_read_kernel_sysctls(systemd_tmpfiles_t)
- kernel_read_network_state(systemd_tmpfiles_t)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch b/recipes-security/refpolicy/refpolicy-git/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
deleted file mode 100644
index aec54cd..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 54a00a22a0d9aca794440bf51511f5477e9249d2 Mon Sep 17 00:00:00 2001
-From: Shrikant Bobade <shrikant_bobade@mentor.com>
-Date: Fri, 26 Aug 2016 17:53:53 +0530
-Subject: [PATCH 5/9] refpolicy-minimum: init: fix reboot with systemd as init
- manager.
-
-add allow rule to fix avc denial during system reboot.
-
-without this change we are getting:
-
-audit: type=1107 audit(): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=
-system_u:system_r:init_t:s0 msg='avc:  denied  { reboot } for auid=n/a uid=0
-gid=0 cmdline="/bin/systemctl --force reboot" scontext=system_u:system_r:
-initrc_t:s0 tcontext=system_u:system_r:init_t:s0 tclass=system
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/init.te | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index e15ec4b9..843fdcff 100644
---- a/policy/modules/system/init.te
-+++ b/policy/modules/system/init.te
-@@ -1427,5 +1427,5 @@ allow devpts_t device_t:filesystem associate;
- allow init_t self:capability2 block_suspend;
- allow init_t self:capability2 audit_read;
- 
--allow initrc_t init_t:system { start status };
-+allow initrc_t init_t:system { start status reboot };
- allow initrc_t init_var_run_t:service { start status };
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch b/recipes-security/refpolicy/refpolicy-git/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
deleted file mode 100644
index d098118..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From 9818faa2a732d6d1cda72926526f104de74bd992 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Thu, 4 Apr 2019 10:45:03 -0400
-Subject: [PATCH 06/34] fc/resolv.conf: label resolv.conf in var/run/ properly
-
-Upstream-Status: Pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/sysnetwork.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
-index 1e5432a4..ac7c2dd1 100644
---- a/policy/modules/system/sysnetwork.fc
-+++ b/policy/modules/system/sysnetwork.fc
-@@ -22,6 +22,7 @@ ifdef(`distro_debian',`
- /etc/denyhosts.*	--	gen_context(system_u:object_r:net_conf_t,s0)
- /etc/resolv\.conf.*	--	gen_context(system_u:object_r:net_conf_t,s0)
- /etc/yp\.conf.*		--	gen_context(system_u:object_r:net_conf_t,s0)
-+/var/run/resolv\.conf.*	--	gen_context(system_u:object_r:net_conf_t,s0)
- 
- /etc/dhcp3(/.*)?		gen_context(system_u:object_r:dhcp_etc_t,s0)
- /etc/dhcp3?/dhclient.*		gen_context(system_u:object_r:dhcp_etc_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch b/recipes-security/refpolicy/refpolicy-git/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
deleted file mode 100644
index bf770d9..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
+++ /dev/null
@@ -1,92 +0,0 @@
-From ca6644e1f1066a8354f2f6dbb068713f59225f37 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Wed, 3 Apr 2019 14:51:29 -0400
-Subject: [PATCH 6/9] refpolicy-minimum: systemd: mount: enable required
- refpolicy booleans
-
-enable required refpolicy booleans for these modules
-
-i. mount:  allow_mount_anyfile
-without enabling this boolean we are getting below avc denial
-
-audit(): avc:  denied  { mounton } for  pid=462 comm="mount" path="/run/media
-/mmcblk2p1" dev="tmpfs" ino=11523 scontext=system_u:system_r:mount_t:s0
-tcontext=system_u:object_r:initrc_var_run_t:s0 tclass=dir permissive=0
-
-This avc can be allowed using the boolean 'allow_mount_anyfile'
-allow mount_t initrc_var_run_t:dir mounton;
-
-ii. systemd : systemd_tmpfiles_manage_all
-without enabling this boolean we are not getting access to mount systemd
-essential tmpfs during bootup, also not getting access to create audit.log
-
-audit(): avc:  denied  { search } for  pid=168 comm="systemd-tmpfile" name=
-"sys" dev="proc" ino=4026531855 scontext=system_u:system_r:systemd_tmpfiles
-_t:s0 tcontext=system_u:object_r:sysctl_t:s0 tclass=dir permissive=0
-
- ls  /var/log
- /var/log -> volatile/log
-:~#
-
-The old refpolicy included a pre-generated booleans.conf that could be
-patched.  That's no longer the case so we're left with a few options,
-tweak the default directly or create a template booleans.conf file which
-will be updated during build time.  Since this is intended to be applied
-only for specific configuraitons it seems like the same either way and
-this avoids us playing games to work around .gitignore.
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/booleans.conf             | 9 +++++++++
- policy/modules/system/mount.te   | 2 +-
- policy/modules/system/systemd.te | 2 +-
- 3 files changed, 11 insertions(+), 2 deletions(-)
- create mode 100644 policy/booleans.conf
-
-diff --git a/policy/booleans.conf b/policy/booleans.conf
-new file mode 100644
-index 00000000..850f56ed
---- /dev/null
-+++ b/policy/booleans.conf
-@@ -0,0 +1,9 @@
-+#
-+# Allow the mount command to mount any directory or file.
-+#
-+allow_mount_anyfile = true
-+
-+#
-+# Enable support for systemd-tmpfiles to manage all non-security files.
-+#
-+systemd_tmpfiles_manage_all = true
-diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
-index a87d0e82..868052b7 100644
---- a/policy/modules/system/mount.te
-+++ b/policy/modules/system/mount.te
-@@ -10,7 +10,7 @@ policy_module(mount, 1.20.0)
- ## Allow the mount command to mount any directory or file.
- ## </p>
- ## </desc>
--gen_tunable(allow_mount_anyfile, false)
-+gen_tunable(allow_mount_anyfile, true)
- 
- attribute_role mount_roles;
- roleattribute system_r mount_roles;
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index b13337b9..74f9c1cb 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -10,7 +10,7 @@ policy_module(systemd, 1.7.5)
- ## Enable support for systemd-tmpfiles to manage all non-security files.
- ## </p>
- ## </desc>
--gen_tunable(systemd_tmpfiles_manage_all, false)
-+gen_tunable(systemd_tmpfiles_manage_all, true)
- 
- ## <desc>
- ## <p>
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch b/recipes-security/refpolicy/refpolicy-git/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
deleted file mode 100644
index 307574c..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
+++ /dev/null
@@ -1,103 +0,0 @@
-From a1b92a176fe791468e750b95fa8299e8beecf2b1 Mon Sep 17 00:00:00 2001
-From: Shrikant Bobade <shrikant_bobade@mentor.com>
-Date: Fri, 26 Aug 2016 17:54:09 +0530
-Subject: [PATCH 7/9] refpolicy-minimum: systemd: fix for login & journal
- service
-
-1. fix for systemd services: login & journal wile using refpolicy-minimum and
-systemd as init manager.
-2. fix login duration after providing root password.
-
-without these changes we are getting avc denails like these and below
-systemd services failure:
-
-audit[]: AVC avc:  denied  { write } for  pid=422 comm="login" path="/run/
-systemd/sessions/c1.ref" dev="tmpfs" ino=13455 scontext=system_u:system_r:
-local_login_t:s0-s0:c0.c1023 tcontext=system_u:object_r:init_var_run_t:s0
-tclass=fifo_file permissive=0
-
-audit[]: AVC avc:  denied  { open } for  pid=216 comm="systemd-tmpfile" path
-="/proc/1/environ" dev="proc" ino=9221 scontext=system_u:system_r:
-systemd_tmpfiles_t:s0 tcontext=system_u:system_r:init_t:s0 tclass=file
-
-audit[]: USER_AVC pid=1 uid=0 auid=4294967295 ses=4294967295 subj=system_u:
-system_r:init_t:s0 msg='avc:  denied  { stop } for auid=n/a uid=0 gid=0 path
-="/lib/systemd/system/systemd-journald.service" cmdline="/bin/journalctl
---flush" scontext=system_u:system_r:initrc_t:s0 tcontext=system_u:object_r:
-lib_t:s0 tclass=service
-
-[FAILED] Failed to start Flush Journal to Persistent Storage.
-See 'systemctl status systemd-journal-flush.service' for details.
-
-[FAILED] Failed to start Login Service.
-See 'systemctl status systemd-logind.service' for details.
-
-[FAILED] Failed to start Avahi mDNS/DNS-SD Stack.
-See 'systemctl status avahi-daemon.service' for details.
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/init.te       | 2 ++
- policy/modules/system/locallogin.te | 3 +++
- policy/modules/system/systemd.if    | 6 ++++--
- policy/modules/system/systemd.te    | 2 +-
- 4 files changed, 10 insertions(+), 3 deletions(-)
-
-diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 843fdcff..ca8678b8 100644
---- a/policy/modules/system/init.te
-+++ b/policy/modules/system/init.te
-@@ -1429,3 +1429,5 @@ allow init_t self:capability2 audit_read;
- 
- allow initrc_t init_t:system { start status reboot };
- allow initrc_t init_var_run_t:service { start status };
-+
-+allow initrc_t init_var_run_t:service stop;
-diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
-index 75750e4c..2c2cfc7d 100644
---- a/policy/modules/system/locallogin.te
-+++ b/policy/modules/system/locallogin.te
-@@ -298,3 +298,6 @@ allow local_login_t var_run_t:file { open read write lock};
- allow local_login_t var_run_t:sock_file write;
- allow local_login_t tmpfs_t:dir { add_name write search};
- allow local_login_t tmpfs_t:file { create open read write lock };
-+allow local_login_t init_var_run_t:fifo_file write;
-+allow local_login_t initrc_t:dbus send_msg;
-+allow initrc_t local_login_t:dbus send_msg;
-diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
-index 4519a448..79133e6f 100644
---- a/policy/modules/system/systemd.if
-+++ b/policy/modules/system/systemd.if
-@@ -938,9 +938,11 @@ interface(`systemd_service_file_operations',`
- #
- interface(`systemd_service_lib_function',`
-          gen_require(`
--               class service start;
-+		class service { start status stop };
-+		class file { execmod open };
-          ')
- 
--	allow initrc_t $1:service start;
-+	allow initrc_t $1:service { start status stop };
-+	allow initrc_t $1:file execmod;
- 
- ')
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 74f9c1cb..f1d26a44 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -1013,7 +1013,7 @@ allow systemd_tmpfiles_t systemd_tmpfiles_conf_type:file read_file_perms;
- 
- allow systemd_tmpfiles_t init_t:dir search;
- allow systemd_tmpfiles_t proc_t:filesystem getattr;
--allow systemd_tmpfiles_t init_t:file read;
-+allow systemd_tmpfiles_t init_t:file { open getattr read };
- allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
- 
- kernel_getattr_proc(systemd_tmpfiles_t)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch b/recipes-security/refpolicy/refpolicy-git/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
deleted file mode 100644
index 05543da..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
+++ /dev/null
@@ -1,110 +0,0 @@
-From c268b15ec696aa23be73e040daae433b509fa82f Mon Sep 17 00:00:00 2001
-From: Shrikant Bobade <shrikant_bobade@mentor.com>
-Date: Fri, 26 Aug 2016 17:54:17 +0530
-Subject: [PATCH 8/9] refpolicy-minimum: systemd: fix for systemd tmp-files
- services
-
-fix for systemd tmp files setup service while using refpolicy-minimum and
-systemd as init manager.
-
-these allow rules require kernel domain & files access, so added interfaces
-at systemd.te to merge these allow rules.
-
-without these changes we are getting avc denails like these and below
-systemd services failure:
-
-audit[]: AVC avc:  denied  { getattr } for  pid=232 comm="systemd-tmpfile"
-path="/var/tmp" dev="mmcblk2p2" ino=4993 scontext=system_u:system_r:systemd
-_tmpfiles_t:s0 tcontext=system_u:object_r:tmp_t:s0 tclass=lnk_file
-
-audit[]: AVC avc:  denied  { search } for  pid=232 comm="systemd-tmpfile"
-name="kernel" dev="proc" ino=9341 scontext=system_u:system_r:
-systemd_tmpfiles_t:s0 tcontext=system_u:object_r:sysctl_kernel_t:s0
-tclass=dir permissive=0
-
-[FAILED] Failed to start Create Static Device Nodes in /dev.
-See 'systemctl status systemd-tmpfiles-setup-dev.service' for details.
-
-[FAILED] Failed to start Create Volatile Files and Directories.
-See 'systemctl status systemd-tmpfiles-setup.service' for details.
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/kernel/files.if   | 19 +++++++++++++++++++
- policy/modules/kernel/kernel.if  | 21 +++++++++++++++++++++
- policy/modules/system/systemd.te |  2 ++
- 3 files changed, 42 insertions(+)
-
-diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index eb067ad3..ff74f55a 100644
---- a/policy/modules/kernel/files.if
-+++ b/policy/modules/kernel/files.if
-@@ -7076,3 +7076,22 @@ interface(`files_unconfined',`
- 
- 	typeattribute $1 files_unconfined_type;
- ')
-+
-+########################################
-+## <summary>
-+##	systemd tmp files access to kernel tmp files domain
-+## </summary>
-+## <param name="domain">
-+##	<summary>
-+##	Domain allowed access.
-+##	</summary>
-+## </param>
-+#
-+interface(`systemd_service_allow_kernel_files_domain_to_tmp_t',`
-+	gen_require(`
-+	type tmp_t;
-+        class lnk_file getattr;
-+	')
-+
-+	allow $1 tmp_t:lnk_file getattr;
-+')
-diff --git a/policy/modules/kernel/kernel.if b/policy/modules/kernel/kernel.if
-index 1ad282aa..342eb033 100644
---- a/policy/modules/kernel/kernel.if
-+++ b/policy/modules/kernel/kernel.if
-@@ -3584,3 +3584,24 @@ interface(`kernel_ib_manage_subnet_unlabeled_endports',`
- 	allow $1 unlabeled_t:infiniband_endport manage_subnet;
- ')
- 
-+########################################
-+## <summary>
-+##	systemd tmp files access to kernel sysctl domain
-+## </summary>
-+## <param name="domain">
-+##	<summary>
-+##	Domain allowed access.
-+##	</summary>
-+## </param>
-+#
-+interface(`systemd_service_allow_kernel_domain_access_to_sysctl_kernel_t',`
-+         gen_require(`
-+                type sysctl_kernel_t;
-+                class dir search;
-+                class file { open read };
-+         ')
-+
-+        allow $1 sysctl_kernel_t:dir search;
-+        allow $1 sysctl_kernel_t:file { open read };
-+
-+')
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index f1d26a44..b4c64bc1 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -1139,4 +1139,6 @@ files_var_filetrans(systemd_update_done_t, systemd_update_run_t, file, ".updated
- 
- seutil_read_file_contexts(systemd_update_done_t)
- 
-+systemd_service_allow_kernel_domain_access_to_sysctl_kernel_t(systemd_tmpfiles_t)
-+systemd_service_allow_kernel_files_domain_to_tmp_t(systemd_tmpfiles_t)
- systemd_log_parse_environment(systemd_update_done_t)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0009-fc-hwclock-add-hwclock-alternatives.patch b/recipes-security/refpolicy/refpolicy-git/0009-fc-hwclock-add-hwclock-alternatives.patch
deleted file mode 100644
index 382a62c..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0009-fc-hwclock-add-hwclock-alternatives.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From afaee985ce8cb915905b9cbef141db5d4b7f228c Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Thu, 28 Mar 2019 21:59:18 -0400
-Subject: [PATCH 09/34] fc/hwclock: add hwclock alternatives
-
-Upstream-Status: Pending
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/clock.fc | 5 ++++-
- 1 file changed, 4 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/clock.fc b/policy/modules/system/clock.fc
-index 30196589..e0dc4b6f 100644
---- a/policy/modules/system/clock.fc
-+++ b/policy/modules/system/clock.fc
-@@ -2,4 +2,7 @@
- 
- /usr/bin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
- 
--/usr/sbin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
-+/usr/sbin/hwclock\.util-linux	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
-+/usr/sbin/hwclock             	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
-+/usr/lib/busybox/sbin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
-+/sbin/hwclock             	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0009-refpolicy-minimum-systemd-fix-for-syslog.patch b/recipes-security/refpolicy/refpolicy-git/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
deleted file mode 100644
index de9180a..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
+++ /dev/null
@@ -1,70 +0,0 @@
-From 3c7c492f060212bf7c854a27ffa6afa5035f4862 Mon Sep 17 00:00:00 2001
-From: Shrikant Bobade <shrikant_bobade@mentor.com>
-Date: Fri, 26 Aug 2016 17:54:29 +0530
-Subject: [PATCH 9/9] refpolicy-minimum: systemd: fix for syslog
-
-syslog & getty related allow rules required to fix the syslog mixup with
-boot log, while using systemd as init manager.
-
-without this change we are getting these avc denials:
-
-audit: avc:  denied  { search } for  pid=484 comm="syslogd" name="/"
-dev="tmpfs" ino=7269 scontext=system_u:system_r:syslogd_t:s0 tcontext=
-system_u:object_r:tmpfs_t:s0 tclass=dir permissive=0
-
-audit: avc:  denied  { write } for  pid=372 comm="syslogd" name="log" dev=
-"tmpfs" ino=954 scontext=system_u:system_r:syslogd_t:s0 tcontext=system_u:
-object_r:tmpfs_t:s0 tclass=dir permissive=0
-
-audit: avc:  denied  { add_name } for  pid=390 comm="syslogd" name=
-"messages" scontext=system_u:system_r:syslogd_t:s0 tcontext=system_u:object_r
-:tmpfs_t:s0 tclass=dir permissive=0
-
-audit: avc:  denied  { sendto } for  pid=558 comm="agetty" path="/run/systemd
-/journal/dev-log" scontext=system_u:system_r:getty_t:s0 tcontext=system_u:
-system_r:initrc_t:s0 tclass=unix_dgram_socket permissive=0
-
-audit: avc:  denied  { create } for  pid=374 comm="syslogd" name="messages"
-scontext=system_u:system_r:syslogd_t:s0 tcontext=system_u:object_r:tmpfs_t:
-s0 tclass=file permissive=0
-
-audit: avc:  denied  { append } for  pid=423 comm="syslogd" name="messages"
-dev="tmpfs" ino=7995 scontext=system_u:system_r:syslogd_t:s0 tcontext=
-system_u:object_r:tmpfs_t:s0 tclass=file permissive=0
-
-audit: avc:  denied  { getattr } for  pid=425 comm="syslogd" path="/var/
-volatile/log/messages" dev="tmpfs" ino=8857 scontext=system_u:system_r:
-syslogd_t:s0 tcontext=system_u:object_r:tmpfs_t:s0 tclass=file permissive=0
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/getty.te   | 1 +
- policy/modules/system/logging.te | 3 ++-
- 2 files changed, 3 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.te
-index 423db0cc..9ab03956 100644
---- a/policy/modules/system/getty.te
-+++ b/policy/modules/system/getty.te
-@@ -132,3 +132,4 @@ optional_policy(`
- 
- allow getty_t tmpfs_t:dir search;
- allow getty_t tmpfs_t:file { open write lock };
-+allow getty_t initrc_t:unix_dgram_socket sendto;
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 98c2bd19..6a94ac12 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -632,4 +632,5 @@ allow klogd_t initrc_t:unix_dgram_socket sendto;
- allow syslogd_t self:shm create;
- allow syslogd_t self:sem { create read unix_write write };
- allow syslogd_t self:shm { read unix_read unix_write write };
--allow syslogd_t tmpfs_t:file { read write };
-+allow syslogd_t tmpfs_t:file { read write create getattr append open };
-+allow syslogd_t tmpfs_t:dir { search write add_name };
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch b/recipes-security/refpolicy/refpolicy-git/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
deleted file mode 100644
index 5de6d0d..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-From 9f8b5359ce85eab23a5c46157497c44fd3bc4335 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Fri, 29 Mar 2019 08:26:55 -0400
-Subject: [PATCH 10/34] fc/dmesg: apply policy to dmesg alternatives
-
-Upstream-Status: Pending
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/admin/dmesg.fc | 4 +++-
- 1 file changed, 3 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/admin/dmesg.fc b/policy/modules/admin/dmesg.fc
-index e52fdfcf..85d15127 100644
---- a/policy/modules/admin/dmesg.fc
-+++ b/policy/modules/admin/dmesg.fc
-@@ -1 +1,3 @@
--/usr/bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
-+/usr/bin/dmesg			--		gen_context(system_u:object_r:dmesg_exec_t,s0)
-+/usr/bin/dmesg\.util-linux	--		gen_context(system_u:object_r:dmesg_exec_t,s0)
-+/usr/lib/busybox/bin/dmesg	--		gen_context(system_u:object_r:dmesg_exec_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch b/recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
deleted file mode 100644
index fff816a..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From c8dbbbaed4371c600d057736d1dab78371066fdd Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Fri, 29 Mar 2019 09:54:07 -0400
-Subject: [PATCH 14/34] fc/rpm: apply rpm_exec policy to cpio binaries
-
-Upstream-Status: Pending
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/admin/rpm.fc | 5 ++++-
- 1 file changed, 4 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/admin/rpm.fc b/policy/modules/admin/rpm.fc
-index 578d465c..f2b8003a 100644
---- a/policy/modules/admin/rpm.fc
-+++ b/policy/modules/admin/rpm.fc
-@@ -65,5 +65,8 @@ ifdef(`distro_redhat',`
- /run/PackageKit(/.*)?	gen_context(system_u:object_r:rpm_var_run_t,s0)
- 
- ifdef(`enable_mls',`
--/usr/sbin/cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
-+/usr/sbin/cpio		--	gen_context(system_u:object_r:rpm_exec_t,s0)
-+/usr/bin/cpio		--	gen_context(system_u:object_r:rpm_exec_t,s0)
-+/usr/bin/cpio.cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
- ')
-+
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch b/recipes-security/refpolicy/refpolicy-git/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
deleted file mode 100644
index 01f6c8b..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From bc1f2fba24fb63cd9a65ec22b34fcc59798bbaff Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 24/34] policy/module/rpc: allow nfsd to exec shell commands.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/services/rpc.te | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
-index 47fa2fd0..d4209231 100644
---- a/policy/modules/services/rpc.te
-+++ b/policy/modules/services/rpc.te
-@@ -227,7 +227,7 @@ kernel_read_network_state(nfsd_t)
- kernel_dontaudit_getattr_core_if(nfsd_t)
- kernel_setsched(nfsd_t)
- kernel_request_load_module(nfsd_t)
--# kernel_mounton_proc(nfsd_t)
-+kernel_mounton_proc(nfsd_t)
- 
- corenet_sendrecv_nfs_server_packets(nfsd_t)
- corenet_tcp_bind_nfs_port(nfsd_t)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch b/recipes-security/refpolicy/refpolicy-git/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch
deleted file mode 100644
index 78a4328..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch
+++ /dev/null
@@ -1,77 +0,0 @@
-From f24c277f622d1ae72275525c6d5863f1ddce1d58 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Fri, 23 Aug 2013 12:01:53 +0800
-Subject: [PATCH 25/34] policy/module/rpc: fix policy for nfsserver to mount
- nfsd_fs_t.
-
-Upstream-Status: Pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/kernel/filesystem.te | 1 +
- policy/modules/kernel/kernel.te     | 2 ++
- policy/modules/services/rpc.te      | 5 +++++
- policy/modules/services/rpcbind.te  | 5 +++++
- 4 files changed, 13 insertions(+)
-
-diff --git a/policy/modules/kernel/filesystem.te b/policy/modules/kernel/filesystem.te
-index 41037951..b341ba83 100644
---- a/policy/modules/kernel/filesystem.te
-+++ b/policy/modules/kernel/filesystem.te
-@@ -129,6 +129,7 @@ genfscon mvfs / gen_context(system_u:object_r:mvfs_t,s0)
- 
- type nfsd_fs_t;
- fs_type(nfsd_fs_t)
-+files_mountpoint(nfsd_fs_t)
- genfscon nfsd / gen_context(system_u:object_r:nfsd_fs_t,s0)
- 
- type nsfs_t;
-diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
-index 8e958074..7b81c732 100644
---- a/policy/modules/kernel/kernel.te
-+++ b/policy/modules/kernel/kernel.te
-@@ -334,6 +334,8 @@ mls_process_read_all_levels(kernel_t)
- mls_process_write_all_levels(kernel_t)
- mls_file_write_all_levels(kernel_t)
- mls_file_read_all_levels(kernel_t)
-+mls_socket_write_all_levels(kernel_t)
-+mls_fd_use_all_levels(kernel_t)
- 
- ifdef(`distro_redhat',`
- 	# Bugzilla 222337
-diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
-index d4209231..a2327b44 100644
---- a/policy/modules/services/rpc.te
-+++ b/policy/modules/services/rpc.te
-@@ -280,6 +280,11 @@ tunable_policy(`nfs_export_all_ro',`
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
-diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/rpcbind.te
-index 5914af99..2055c114 100644
---- a/policy/modules/services/rpcbind.te
-+++ b/policy/modules/services/rpcbind.te
-@@ -75,6 +75,11 @@ logging_send_syslog_msg(rpcbind_t)
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
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch b/recipes-security/refpolicy/refpolicy-git/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
deleted file mode 100644
index 257395a..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
+++ /dev/null
@@ -1,126 +0,0 @@
-From 06d2bad9325fdc6b0a73858bca7ba51fe591f39d Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Fri, 29 Mar 2019 11:16:37 -0400
-Subject: [PATCH 26/34] policy/module/sysfs: fix for new SELINUXMNT in /sys
-
-SELINUXMNT is now from /selinux to /sys/fs/selinux, so we should
-add rules to access sysfs.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/kernel/selinux.if | 19 +++++++++++++++++++
- 1 file changed, 19 insertions(+)
-
-diff --git a/policy/modules/kernel/selinux.if b/policy/modules/kernel/selinux.if
-index 6790e5d0..2c95db81 100644
---- a/policy/modules/kernel/selinux.if
-+++ b/policy/modules/kernel/selinux.if
-@@ -117,6 +117,9 @@ interface(`selinux_mount_fs',`
- 		type security_t;
- 	')
- 
-+	dev_getattr_sysfs($1)
-+	dev_search_sysfs($1)
-+
- 	allow $1 security_t:filesystem mount;
- ')
- 
-@@ -136,6 +139,9 @@ interface(`selinux_remount_fs',`
- 		type security_t;
- 	')
- 
-+	dev_getattr_sysfs($1)
-+	dev_search_sysfs($1)
-+
- 	allow $1 security_t:filesystem remount;
- ')
- 
-@@ -155,6 +161,9 @@ interface(`selinux_unmount_fs',`
- 	')
- 
- 	allow $1 security_t:filesystem unmount;
-+
-+	dev_getattr_sysfs($1)
-+	dev_search_sysfs($1)
- ')
- 
- ########################################
-@@ -217,6 +226,8 @@ interface(`selinux_dontaudit_getattr_dir',`
- 	')
- 
- 	dontaudit $1 security_t:dir getattr;
-+	dev_dontaudit_getattr_sysfs($1)
-+	dev_dontaudit_search_sysfs($1)
- ')
- 
- ########################################
-@@ -253,6 +264,7 @@ interface(`selinux_dontaudit_search_fs',`
- 		type security_t;
- 	')
- 
-+	dev_dontaudit_search_sysfs($1)
- 	dontaudit $1 security_t:dir search_dir_perms;
- ')
- 
-@@ -272,6 +284,7 @@ interface(`selinux_dontaudit_read_fs',`
- 		type security_t;
- 	')
- 
-+	dev_dontaudit_getattr_sysfs($1)
- 	dontaudit $1 security_t:dir search_dir_perms;
- 	dontaudit $1 security_t:file read_file_perms;
- ')
-@@ -361,6 +374,7 @@ interface(`selinux_read_policy',`
- 		type security_t;
- 	')
- 
-+	dev_getattr_sysfs($1)
- 	dev_search_sysfs($1)
- 	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file read_file_perms;
-@@ -394,6 +408,7 @@ interface(`selinux_set_generic_booleans',`
- 		type security_t;
- 	')
- 
-+	dev_getattr_sysfs($1)
- 	dev_search_sysfs($1)
- 
- 	allow $1 security_t:dir list_dir_perms;
-@@ -431,6 +446,7 @@ interface(`selinux_set_all_booleans',`
- 		bool secure_mode_policyload;
- 	')
- 
-+	dev_getattr_sysfs($1)
- 	dev_search_sysfs($1)
- 
- 	allow $1 security_t:dir list_dir_perms;
-@@ -512,6 +528,7 @@ interface(`selinux_dontaudit_validate_context',`
- 		type security_t;
- 	')
- 
-+	dev_dontaudit_search_sysfs($1)
- 	dontaudit $1 security_t:dir list_dir_perms;
- 	dontaudit $1 security_t:file rw_file_perms;
- 	dontaudit $1 security_t:security check_context;
-@@ -533,6 +550,7 @@ interface(`selinux_compute_access_vector',`
- 		type security_t;
- 	')
- 
-+	dev_getattr_sysfs($1)
- 	dev_search_sysfs($1)
- 	allow $1 self:netlink_selinux_socket create_socket_perms;
- 	allow $1 security_t:dir list_dir_perms;
-@@ -629,6 +647,7 @@ interface(`selinux_compute_user_contexts',`
- 		type security_t;
- 	')
- 
-+	dev_getattr_sysfs($1)
- 	dev_search_sysfs($1)
- 	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file rw_file_perms;
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch b/recipes-security/refpolicy/refpolicy-git/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch
deleted file mode 100644
index 23226a0..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From 447036f5ead83977933b375f5587595b85307a7d Mon Sep 17 00:00:00 2001
-From: Roy Li <rongqing.li@windriver.com>
-Date: Sat, 15 Feb 2014 09:45:00 +0800
-Subject: [PATCH 27/34] policy/module/rpc: allow sysadm to run rpcinfo
-
-Upstream-Status: Pending
-
-type=AVC msg=audit(1392427946.976:264): avc:  denied  { connectto } for  pid=2111 comm="rpcinfo" path="/run/rpcbind.sock" scontext=system_u:system_r:rpcbind_t:s0-s15:c0.c1023 tcontext=system_u:system_r:rpcbind_t:s0-s15:c0.c1023 tclass=unix_stream_socket
-type=SYSCALL msg=audit(1392427946.976:264): arch=c000003e syscall=42 success=no exit=-13 a0=3 a1=7fff3aa20000 a2=17 a3=22 items=0 ppid=2108 pid=2111 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 ses=4294967295 tty=pts0 comm="rpcinfo" exe="/usr/sbin/rpcinfo" subj=system_u:system_r:rpcbind_t:s0-s15:c0.c1023 key=(null)
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/roles/sysadm.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index 2ae952bf..d781378f 100644
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -945,6 +945,7 @@ optional_policy(`
- ')
- 
- optional_policy(`
-+	rpcbind_stream_connect(sysadm_t)
- 	rpcbind_admin(sysadm_t, sysadm_r)
- ')
- 
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch b/recipes-security/refpolicy/refpolicy-git/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch
deleted file mode 100644
index 732eaaf..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch
+++ /dev/null
@@ -1,45 +0,0 @@
-From 391ab30556a3276bac131b3d4bd6c5e52b49c77c Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 28/34] policy/module/userdomain: fix selinux utils to manage
- config files
-
-Upstream-Status: Pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/selinuxutil.if | 1 +
- policy/modules/system/userdomain.if  | 4 ++++
- 2 files changed, 5 insertions(+)
-
-diff --git a/policy/modules/system/selinuxutil.if b/policy/modules/system/selinuxutil.if
-index 20024993..0fdc8c10 100644
---- a/policy/modules/system/selinuxutil.if
-+++ b/policy/modules/system/selinuxutil.if
-@@ -674,6 +674,7 @@ interface(`seutil_manage_config',`
- 	')
- 
- 	files_search_etc($1)
-+	manage_dirs_pattern($1, selinux_config_t, selinux_config_t)
- 	manage_files_pattern($1, selinux_config_t, selinux_config_t)
- 	read_lnk_files_pattern($1, selinux_config_t, selinux_config_t)
- ')
-diff --git a/policy/modules/system/userdomain.if b/policy/modules/system/userdomain.if
-index 5221bd13..4cf987d1 100644
---- a/policy/modules/system/userdomain.if
-+++ b/policy/modules/system/userdomain.if
-@@ -1431,6 +1431,10 @@ template(`userdom_security_admin_template',`
- 	logging_read_audit_config($1)
- 
- 	seutil_manage_bin_policy($1)
-+	seutil_manage_default_contexts($1)
-+	seutil_manage_file_contexts($1)
-+	seutil_manage_module_store($1)
-+	seutil_manage_config($1)
- 	seutil_run_checkpolicy($1, $2)
- 	seutil_run_loadpolicy($1, $2)
- 	seutil_run_semanage($1, $2)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch b/recipes-security/refpolicy/refpolicy-git/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
deleted file mode 100644
index 14734b2..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From d97aef0ecdb2ff964b1ed3d0b18ce83c2ab42f14 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Fri, 29 Mar 2019 11:30:27 -0400
-Subject: [PATCH 29/34] policy/module/selinuxutil: fix setfiles statvfs to get
- file count
-
-New setfiles will read /proc/mounts and use statvfs in
-file_system_count() to get file count of filesystems.
-
-Upstream-Status: Pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/selinuxutil.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
-index 8a1688cc..a9930e9e 100644
---- a/policy/modules/system/selinuxutil.te
-+++ b/policy/modules/system/selinuxutil.te
-@@ -607,6 +607,7 @@ files_relabel_all_files(setfiles_t)
- files_read_usr_symlinks(setfiles_t)
- files_dontaudit_read_all_symlinks(setfiles_t)
- 
-+fs_getattr_all_fs(setfiles_t)
- fs_getattr_all_xattr_fs(setfiles_t)
- fs_getattr_cgroup(setfiles_t)
- fs_getattr_nfs(setfiles_t)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch b/recipes-security/refpolicy/refpolicy-git/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
deleted file mode 100644
index aebdcb3..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From 43eba9b9205c5e63f634d60ab8eb5302f7bf4408 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Fri, 23 Aug 2013 16:36:09 +0800
-Subject: [PATCH 30/34] policy/module/admin: fix dmesg to use /dev/kmsg as
- default input
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/admin/dmesg.if | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/admin/dmesg.if b/policy/modules/admin/dmesg.if
-index e1973c78..739a4bc5 100644
---- a/policy/modules/admin/dmesg.if
-+++ b/policy/modules/admin/dmesg.if
-@@ -37,4 +37,5 @@ interface(`dmesg_exec',`
- 
- 	corecmd_search_bin($1)
- 	can_exec($1, dmesg_exec_t)
-+	dev_read_kmsg($1)
- ')
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch b/recipes-security/refpolicy/refpolicy-git/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch
deleted file mode 100644
index afba90f..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-From 2d81043e7c98b31b37a1ecd1f037a04c60e662aa Mon Sep 17 00:00:00 2001
-From: Roy Li <rongqing.li@windriver.com>
-Date: Mon, 10 Feb 2014 18:10:12 +0800
-Subject: [PATCH 31/34] policy/module/ftp: add ftpd_t to
- mls_file_write_all_levels
-
-Proftpd will create file under /var/run, but its mls is in high, and
-can not write to lowlevel
-
-Upstream-Status: Pending
-
-type=AVC msg=audit(1392347709.621:15): avc:  denied  { write } for  pid=545 comm="proftpd" name="/" dev="tmpfs" ino=5853 scontext=system_u:system_r:ftpd_t:s15:c0.c1023 tcontext=system_u:object_r:var_run_t:s0-s15:c0.c1023 tclass=dir
-type=AVC msg=audit(1392347709.621:15): avc:  denied  { add_name } for  pid=545 comm="proftpd" name="proftpd.delay" scontext=system_u:system_r:ftpd_t:s15:c0.c1023 tcontext=system_u:object_r:var_run_t:s0-s15:c0.c1023 tclass=dir
-type=SYSCALL msg=audit(1392347709.621:15): arch=c000003e syscall=2 success=yes exit=3 a0=471910 a1=42 a2=1b6 a3=8 items=0 ppid=539 pid=545 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 ses=4294967295 tty=(none) comm="proftpd" exe="/usr/sbin/proftpd" subj=system_u:system_r:ftpd_t:s15:c0.c1023 key=(null)
-
-root@localhost:~# sesearch --allow -s ftpd_t -t var_run_t|grep dir|grep add_name
-   allow ftpd_t var_run_t : dir { ioctl read write getattr lock add_name remove_name search open } ;
-root@localhost:~#
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/services/ftp.te | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/ftp.te b/policy/modules/services/ftp.te
-index 29bc077c..d582cf80 100644
---- a/policy/modules/services/ftp.te
-+++ b/policy/modules/services/ftp.te
-@@ -150,6 +150,8 @@ role ftpdctl_roles types ftpdctl_t;
- type ftpdctl_tmp_t;
- files_tmp_file(ftpdctl_tmp_t)
- 
-+mls_file_write_all_levels(ftpd_t)
-+
- type sftpd_t;
- domain_type(sftpd_t)
- role system_r types sftpd_t;
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0032-policy-module-init-update-for-systemd-related-allow-.patch b/recipes-security/refpolicy/refpolicy-git/0032-policy-module-init-update-for-systemd-related-allow-.patch
deleted file mode 100644
index ced90be..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0032-policy-module-init-update-for-systemd-related-allow-.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-From ddb7393018483be0ce1cfc4734043b413e3b8a04 Mon Sep 17 00:00:00 2001
-From: Shrikant Bobade <shrikant_bobade@mentor.com>
-Date: Fri, 12 Jun 2015 19:37:52 +0530
-Subject: [PATCH 32/34] policy/module/init: update for systemd related allow
- rules
-
-It provide, the systemd support related allow rules
-
-Upstream-Status: Pending
-
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/init.te | 5 +++++
- 1 file changed, 5 insertions(+)
-
-diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index f7635d6f..2e6b57a6 100644
---- a/policy/modules/system/init.te
-+++ b/policy/modules/system/init.te
-@@ -1418,3 +1418,8 @@ optional_policy(`
- 	userdom_dontaudit_rw_all_users_stream_sockets(systemprocess)
- 	userdom_dontaudit_write_user_tmp_files(systemprocess)
- ')
-+
-+# systemd related allow rules
-+allow kernel_t init_t:process dyntransition;
-+allow devpts_t device_t:filesystem associate;
-+allow init_t self:capability2 block_suspend;
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-git/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch b/recipes-security/refpolicy/refpolicy-git/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
deleted file mode 100644
index 03b1439..0000000
--- a/recipes-security/refpolicy/refpolicy-git/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 2e2abdbc7a0e57a27518de0d879ecc84053203d8 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 19:36:44 +0800
-Subject: [PATCH 34/34] policy/module/apache: add rules for the symlink of
- /var/log - apache2
-
-We have added rules for the symlink of /var/log in logging.if,
-while apache.te uses /var/log but does not use the interfaces in
-logging.if. So still need add a individual rule for apache.te.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/services/apache.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/services/apache.te b/policy/modules/services/apache.te
-index 15c4ea53..596370b1 100644
---- a/policy/modules/services/apache.te
-+++ b/policy/modules/services/apache.te
-@@ -412,6 +412,7 @@ create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
- read_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
- setattr_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
- read_lnk_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
-+read_lnk_files_pattern(httpd_t, var_log_t, var_log_t)
- logging_log_filetrans(httpd_t, httpd_log_t, file)
- 
- allow httpd_t httpd_modules_t:dir list_dir_perms;
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb b/recipes-security/refpolicy/refpolicy-minimum_git.bb
index 3b3ca15..dc06ccf 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_git.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
@@ -11,6 +11,10 @@ Pretty much everything runs as initrc_t or unconfined_t so all of the \
 domains are unconfined. \
 "
 
+SRC_URI += " \
+        file://0001-refpolicy-minimum-make-sysadmin-module-optional.patch \
+        "
+
 POLICY_NAME = "minimum"
 
 CORE_POLICY_MODULES = "unconfined \
@@ -30,7 +34,7 @@ CORE_POLICY_MODULES = "unconfined \
 	locallogin \
 	"
 #systemd dependent policy modules
-CORE_POLICY_MODULES += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'clock systemd udev fstools', '', d)}"
+CORE_POLICY_MODULES += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'clock systemd udev fstools dbus', '', d)}"
 
 # nscd caches libc-issued requests to the name service.
 # Without nscd.pp, commands want to use these caches will be blocked.
diff --git a/recipes-security/refpolicy/refpolicy-targeted_git.bb b/recipes-security/refpolicy/refpolicy-targeted_git.bb
index 1ecdb4e..e37a083 100644
--- a/recipes-security/refpolicy/refpolicy-targeted_git.bb
+++ b/recipes-security/refpolicy/refpolicy-targeted_git.bb
@@ -14,22 +14,6 @@ POLICY_MLS_SENS = "0"
 
 include refpolicy_${PV}.inc
 
-SYSTEMD_REFPOLICY_PATCHES = " \
-	file://0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch \
-	file://0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch \
-	file://0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch \
-	file://0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch \
-	file://0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch \
-	file://0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch \
-	file://0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch \
-	file://0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch \
-	file://0009-refpolicy-minimum-systemd-fix-for-syslog.patch \
-	"
-
-SYSVINIT_REFPOLICY_PATCHES = " \
-	file://0001-fix-update-alternatives-for-sysvinit.patch \
-	"
-
 SRC_URI += " \
-	${@bb.utils.contains('DISTRO_FEATURES', 'systemd', '${SYSTEMD_REFPOLICY_PATCHES}', '${SYSVINIT_REFPOLICY_PATCHES}', d)} \
-	"
+        file://0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch \
+        "
diff --git a/recipes-security/refpolicy/refpolicy-git/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
similarity index 63%
rename from recipes-security/refpolicy/refpolicy-git/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
rename to recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
index 5e38b8c..be802ec 100644
--- a/recipes-security/refpolicy/refpolicy-git/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
@@ -1,23 +1,24 @@
-From ab97bea9248f62e735526292fc1253ebb1ecfa6c Mon Sep 17 00:00:00 2001
+From 7dc492abc2918e770b36099cf079ca9be10598c8 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 16:14:09 -0400
-Subject: [PATCH 01/34] fc/subs/volatile: alias common /var/volatile paths
+Subject: [PATCH] fc/subs/volatile: alias common /var/volatile paths
 
 Ensure /var/volatile paths get the appropriate base file context.
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- config/file_contexts.subs_dist | 10 ++++++++++
- 1 file changed, 10 insertions(+)
+ config/file_contexts.subs_dist | 6 ++++++
+ 1 file changed, 6 insertions(+)
 
 diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
-index 346d920e..be532d7f 100644
+index 346d920e3..aeb25a5bb 100644
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -31,3 +31,13 @@
+@@ -31,3 +31,9 @@
  # not for refpolicy intern, but for /var/run using applications,
  # like systemd tmpfiles or systemd socket configurations
  /var/run /run
@@ -26,11 +27,7 @@ index 346d920e..be532d7f 100644
 +# ensure the policy applied to the base filesystem objects are reflected in the
 +# volatile hierarchy.
 +/var/volatile/log /var/log
-+/var/volatile/run /var/run
-+/var/volatile/cache /var/cache
 +/var/volatile/tmp /var/tmp
-+/var/volatile/lock /var/lock
-+/var/volatile/run/lock /var/lock
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0033-refpolicy-minimum-make-sysadmin-module-optional.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
similarity index 65%
rename from recipes-security/refpolicy/refpolicy-git/0033-refpolicy-minimum-make-sysadmin-module-optional.patch
rename to recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
index 09a16fb..deb27c0 100644
--- a/recipes-security/refpolicy/refpolicy-git/0033-refpolicy-minimum-make-sysadmin-module-optional.patch
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-minimum-make-sysadmin-module-optional.patch
@@ -1,44 +1,44 @@
-From a45624beb571ad5dadfca95d53ff69925c9f628c Mon Sep 17 00:00:00 2001
+From efe4d5472fde3d4f043f4e8660c6cc73c7fc1542 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 5 Apr 2019 11:53:28 -0400
-Subject: [PATCH 33/34] refpolicy/minimum: make sysadmin module optional
+Subject: [PATCH] refpolicy-minimum: make sysadmin module optional
 
-init and locallogin modules have a depend for sysadm module because
-they have called sysadm interfaces(sysadm_shell_domtrans). Since
-sysadm is not a core module, we could make the sysadm_shell_domtrans
-calls optionally by optional_policy.
+The init and locallogin modules have a depend for sysadm module
+because they have called sysadm interfaces(sysadm_shell_domtrans).
+Since sysadm is not a core module, we could make the
+sysadm_shell_domtrans calls optionally by optional_policy.
 
 So, we could make the minimum policy without sysadm module.
 
-Upstream-Status: pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/init.te       | 16 +++++++++-------
+ policy/modules/system/init.te       | 14 ++++++++------
  policy/modules/system/locallogin.te |  4 +++-
- 2 files changed, 12 insertions(+), 8 deletions(-)
+ 2 files changed, 11 insertions(+), 7 deletions(-)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 2e6b57a6..d8696580 100644
+index feed5af5f..6b6b723b8 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -448,13 +448,15 @@ ifdef(`init_systemd',`
- 		modutils_domtrans(init_t)
+@@ -515,13 +515,15 @@ ifdef(`init_systemd',`
+ 		unconfined_write_keys(init_t)
  	')
  ',`
 -	tunable_policy(`init_upstart',`
 -		corecmd_shell_domtrans(init_t, initrc_t)
--	',`
++	optional_policy(`
++		tunable_policy(`init_upstart',`
++			corecmd_shell_domtrans(init_t, initrc_t)
+ 	',`
 -		# Run the shell in the sysadm role for single-user mode.
 -		# causes problems with upstart
 -		ifndef(`distro_debian',`
 -			sysadm_shell_domtrans(init_t)
-+	optional_policy(`
-+		tunable_policy(`init_upstart',`
-+			corecmd_shell_domtrans(init_t, initrc_t)
-+		',`
 +			# Run the shell in the sysadm role for single-user mode.
 +			# causes problems with upstart
 +			ifndef(`distro_debian',`
@@ -48,10 +48,10 @@ index 2e6b57a6..d8696580 100644
  	')
  ')
 diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
-index a56f3d1f..4c679ff3 100644
+index f629b0040..971ca40e5 100644
 --- a/policy/modules/system/locallogin.te
 +++ b/policy/modules/system/locallogin.te
-@@ -266,7 +266,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
+@@ -267,7 +267,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
  userdom_search_user_home_dirs(sulogin_t)
  userdom_use_user_ptys(sulogin_t)
  
@@ -63,5 +63,5 @@ index a56f3d1f..4c679ff3 100644
  # by default, sulogin does not use pam...
  # sulogin_pam might need to be defined otherwise
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
new file mode 100644
index 0000000..f3244c6
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0001-refpolicy-targeted-make-unconfined_u-the-default-sel.patch
@@ -0,0 +1,193 @@
+From 8613549f3aad37ce3bec8513057f0f893d4cc9bd Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 20 Apr 2020 11:50:03 +0800
+Subject: [PATCH] refpolicy-targeted: make unconfined_u the default selinux
+ user
+
+For targeted policy type, we define unconfined_u as the default selinux
+user for root and normal users, so users could login in and run most
+commands and services on unconfined domains.
+
+Also add rules for users to run init scripts directly, instead of via
+run_init.
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ config/appconfig-mcs/failsafe_context |  2 +-
+ config/appconfig-mcs/seusers          |  4 +--
+ policy/modules/roles/sysadm.te        |  1 +
+ policy/modules/system/init.if         | 42 +++++++++++++++++++++++----
+ policy/modules/system/unconfined.te   |  7 +++++
+ policy/users                          |  6 ++--
+ 6 files changed, 50 insertions(+), 12 deletions(-)
+
+diff --git a/config/appconfig-mcs/failsafe_context b/config/appconfig-mcs/failsafe_context
+index 999abd9a3..a50bde775 100644
+--- a/config/appconfig-mcs/failsafe_context
++++ b/config/appconfig-mcs/failsafe_context
+@@ -1 +1 @@
+-sysadm_r:sysadm_t:s0
++unconfined_r:unconfined_t:s0
+diff --git a/config/appconfig-mcs/seusers b/config/appconfig-mcs/seusers
+index ce614b41b..c0903d98b 100644
+--- a/config/appconfig-mcs/seusers
++++ b/config/appconfig-mcs/seusers
+@@ -1,2 +1,2 @@
+-root:root:s0-mcs_systemhigh
+-__default__:user_u:s0
++root:unconfined_u:s0-mcs_systemhigh
++__default__:unconfined_u:s0
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index ac5239d83..310a4fad2 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -53,6 +53,7 @@ ubac_fd_exempt(sysadm_t)
+ 
+ init_exec(sysadm_t)
+ init_admin(sysadm_t)
++init_script_role_transition(sysadm_r)
+ 
+ selinux_read_policy(sysadm_t)
+ 
+diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
+index ab24b5d9b..ed441ddef 100644
+--- a/policy/modules/system/init.if
++++ b/policy/modules/system/init.if
+@@ -1798,11 +1798,12 @@ interface(`init_script_file_entry_type',`
+ #
+ interface(`init_spec_domtrans_script',`
+ 	gen_require(`
+-		type initrc_t, initrc_exec_t;
++		type initrc_t;
++		attribute init_script_file_type;
+ 	')
+ 
+ 	files_list_etc($1)
+-	spec_domtrans_pattern($1, initrc_exec_t, initrc_t)
++	spec_domtrans_pattern($1, init_script_file_type, initrc_t)
+ 
+ 	ifdef(`distro_gentoo',`
+ 		gen_require(`
+@@ -1813,11 +1814,11 @@ interface(`init_spec_domtrans_script',`
+ 	')
+ 
+ 	ifdef(`enable_mcs',`
+-		range_transition $1 initrc_exec_t:process s0;
++		range_transition $1 init_script_file_type:process s0;
+ 	')
+ 
+ 	ifdef(`enable_mls',`
+-		range_transition $1 initrc_exec_t:process s0 - mls_systemhigh;
++		range_transition $1 init_script_file_type:process s0 - mls_systemhigh;
+ 	')
+ ')
+ 
+@@ -1834,17 +1835,18 @@ interface(`init_spec_domtrans_script',`
+ interface(`init_domtrans_script',`
+ 	gen_require(`
+ 		type initrc_t, initrc_exec_t;
++		attribute init_script_file_type;
+ 	')
+ 
+ 	files_list_etc($1)
+ 	domtrans_pattern($1, initrc_exec_t, initrc_t)
+ 
+ 	ifdef(`enable_mcs',`
+-		range_transition $1 initrc_exec_t:process s0;
++		range_transition $1 init_script_file_type:process s0;
+ 	')
+ 
+ 	ifdef(`enable_mls',`
+-		range_transition $1 initrc_exec_t:process s0 - mls_systemhigh;
++		range_transition $1 init_script_file_type:process s0 - mls_systemhigh;
+ 	')
+ ')
+ 
+@@ -3599,3 +3601,31 @@ interface(`init_getrlimit',`
+ 
+ 	allow $1 init_t:process getrlimit;
+ ')
++
++########################################
++## <summary>
++##	Transition to system_r when execute an init script
++## </summary>
++## <desc>
++##	<p>
++##	Execute a init script in a specified role
++##	</p>
++##	<p>
++##	No interprocess communication (signals, pipes,
++##	etc.) is provided by this interface since
++##	the domains are not owned by this module.
++##	</p>
++## </desc>
++## <param name="source_role">
++##	<summary>
++##	Role to transition from.
++##	</summary>
++## </param>
++#
++interface(`init_script_role_transition',`
++	gen_require(`
++		attribute init_script_file_type;
++	')
++
++	role_transition $1 init_script_file_type system_r;
++')
+diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
+index 3d75855b6..5aa4c0b69 100644
+--- a/policy/modules/system/unconfined.te
++++ b/policy/modules/system/unconfined.te
+@@ -20,6 +20,11 @@ type unconfined_execmem_t alias ada_t;
+ type unconfined_execmem_exec_t alias ada_exec_t;
+ init_system_domain(unconfined_execmem_t, unconfined_execmem_exec_t)
+ role unconfined_r types unconfined_execmem_t;
++role unconfined_r types unconfined_t;
++role system_r types unconfined_t;
++role_transition system_r unconfined_exec_t unconfined_r;
++allow system_r unconfined_r;
++allow unconfined_r system_r;
+ 
+ ########################################
+ #
+@@ -50,6 +55,8 @@ userdom_user_home_dir_filetrans_user_home_content(unconfined_t, { dir file lnk_f
+ ifdef(`direct_sysadm_daemon',`
+         optional_policy(`
+                 init_run_daemon(unconfined_t, unconfined_r)
++                init_domtrans_script(unconfined_t)
++                init_script_role_transition(unconfined_r)
+         ')
+ ',`
+         ifdef(`distro_gentoo',`
+diff --git a/policy/users b/policy/users
+index ca203758c..e737cd9cc 100644
+--- a/policy/users
++++ b/policy/users
+@@ -15,7 +15,7 @@
+ # and a user process should never be assigned the system user
+ # identity.
+ #
+-gen_user(system_u,, system_r, s0, s0 - mls_systemhigh, mcs_allcats)
++gen_user(system_u,, system_r unconfined_r, s0, s0 - mls_systemhigh, mcs_allcats)
+ 
+ #
+ # user_u is a generic user identity for Linux users who have no
+@@ -43,7 +43,7 @@ ifdef(`direct_sysadm_daemon',`
+ # not in the sysadm_r.
+ #
+ ifdef(`direct_sysadm_daemon',`
+-	gen_user(root, sysadm, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r') system_r, s0, s0 - mls_systemhigh, mcs_allcats)
++	gen_user(root, sysadm, unconfined_r sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r') system_r, s0, s0 - mls_systemhigh, mcs_allcats)
+ ',`
+-	gen_user(root, sysadm, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
++	gen_user(root, sysadm, unconfined_r sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
+ ')
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy-git/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
similarity index 54%
rename from recipes-security/refpolicy/refpolicy-git/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
rename to recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
index 22eab15..e7b69ef 100644
--- a/recipes-security/refpolicy/refpolicy-git/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
+++ b/recipes-security/refpolicy/refpolicy/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
@@ -1,31 +1,33 @@
-From a47fb4d6a25574d900213ef63b5c7e3ce7182419 Mon Sep 17 00:00:00 2001
+From 2a68b7539104bec76aaf2a18b399770f59d0cb28 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 20:48:10 -0400
-Subject: [PATCH 02/34] fc/subs/busybox: set aliases for bin, sbin and usr
+Subject: [PATCH] fc/subs/busybox: set aliases for bin, sbin and usr
 
 The objects in /usr/lib/busybox/* should have the same policy applied as
 the corresponding objects in the / hierarchy.
 
+Upstream-Status: Inappropriate [embedded specific]
+
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- config/file_contexts.subs_dist | 7 +++++++
- 1 file changed, 7 insertions(+)
+ config/file_contexts.subs_dist | 6 ++++++
+ 1 file changed, 6 insertions(+)
 
 diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
-index be532d7f..04fca3c3 100644
+index aeb25a5bb..c249c5207 100644
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -41,3 +41,10 @@
+@@ -37,3 +37,9 @@
+ # volatile hierarchy.
+ /var/volatile/log /var/log
  /var/volatile/tmp /var/tmp
- /var/volatile/lock /var/lock
- /var/volatile/run/lock /var/lock
 +
 +# busybox aliases
 +# quickly match up the busybox built-in tree to the base filesystem tree
-+/usr/lib/busybox/bin /bin
-+/usr/lib/busybox/sbin /sbin
++/usr/lib/busybox/bin /usr/bin
++/usr/lib/busybox/sbin /usr/sbin
 +/usr/lib/busybox/usr /usr
-+
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
similarity index 60%
rename from recipes-security/refpolicy/refpolicy-git/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
rename to recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
index 36bfdcf..d2e650e 100644
--- a/recipes-security/refpolicy/refpolicy-git/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
+++ b/recipes-security/refpolicy/refpolicy/0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
@@ -1,27 +1,26 @@
-From abd7d9fa3398be45e733930ebaec9e05b1aba252 Mon Sep 17 00:00:00 2001
+From 9f73ec53a4a5d5bb9b7fa453f3089c55f777c2ce Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 04/34] fc/hostname: apply policy to common yocto hostname
+Subject: [PATCH] fc/hostname: apply policy to common yocto hostname
  alternatives
 
-Upstream-Status: Inappropriate [only for Yocto]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/hostname.fc | 4 ++++
- 1 file changed, 4 insertions(+)
+ policy/modules/system/hostname.fc | 2 ++
+ 1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/hostname.fc b/policy/modules/system/hostname.fc
-index 83ddeb57..653e038d 100644
+index 83ddeb573..cf523bc4c 100644
 --- a/policy/modules/system/hostname.fc
 +++ b/policy/modules/system/hostname.fc
-@@ -1 +1,5 @@
+@@ -1 +1,3 @@
+ /usr/bin/hostname	--	gen_context(system_u:object_r:hostname_exec_t,s0)
 +/usr/bin/hostname\.net-tools	--	gen_context(system_u:object_r:hostname_exec_t,s0)
 +/usr/bin/hostname\.coreutils	--	gen_context(system_u:object_r:hostname_exec_t,s0)
-+/usr/lib/busybox/bin/hostname -- gen_context(system_u:object_r:hostname_exec_t,s0)
-+
- /usr/bin/hostname	--	gen_context(system_u:object_r:hostname_exec_t,s0)
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
similarity index 66%
rename from recipes-security/refpolicy/refpolicy-git/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
rename to recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
index 194a474..3c16ac2 100644
--- a/recipes-security/refpolicy/refpolicy-git/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
+++ b/recipes-security/refpolicy/refpolicy/0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
@@ -1,30 +1,31 @@
-From 783ba03eff9d5b94363fff148aa1c745ff02ddd4 Mon Sep 17 00:00:00 2001
+From fda1e656c46b360f1023834636c460c5510acf68 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:37:32 -0400
-Subject: [PATCH 05/34] fc/bash: apply /usr/bin/bash context to /bin/bash.bash
+Subject: [PATCH] fc/bash: apply /usr/bin/bash context to /bin/bash.bash
 
 We include /bin/bash.bash as a valid alias for /bin/bash, so ensure we apply
 the proper context to the target for our policy.
 
-Upstream-Status: Inappropriate [only for Yocto]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/kernel/corecommands.fc | 1 +
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index e7415cac..cf3848db 100644
+index b473850d4..7e199b7b0 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -141,6 +141,7 @@ ifdef(`distro_gentoo',`
+@@ -142,6 +142,7 @@ ifdef(`distro_gentoo',`
+ /usr/bin(/.*)?				gen_context(system_u:object_r:bin_t,s0)
  /usr/bin/d?ash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
++/usr/bin/bash\.bash		--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/bash2			--	gen_context(system_u:object_r:shell_exec_t,s0)
-+/usr/bin/bash.bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/fish			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/git-shell		--	gen_context(system_u:object_r:shell_exec_t,s0)
- /usr/bin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
new file mode 100644
index 0000000..2fe6479
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
@@ -0,0 +1,29 @@
+From 90a9ef3adb997517f921a3524da99c966e3b00df Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Thu, 4 Apr 2019 10:45:03 -0400
+Subject: [PATCH] fc/resolv.conf: label resolv.conf in var/run/ properly
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/sysnetwork.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
+index fddf9f693..acf539656 100644
+--- a/policy/modules/system/sysnetwork.fc
++++ b/policy/modules/system/sysnetwork.fc
+@@ -83,6 +83,7 @@ ifdef(`distro_redhat',`
+ /run/dhcpcd(/.*)?		gen_context(system_u:object_r:dhcpc_runtime_t,s0)
+ /run/netns	-d		gen_context(system_u:object_r:ifconfig_runtime_t,s0)
+ /run/netns/[^/]+	--	<<none>>
++/run/resolv\.conf.*    --  gen_context(system_u:object_r:net_conf_t,s0)
+ 
+ ifdef(`distro_gentoo',`
+ /var/lib/dhcpc(/.*)?		gen_context(system_u:object_r:dhcpc_state_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy-git/0007-fc-login-apply-login-context-to-login.shadow.patch b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
similarity index 69%
rename from recipes-security/refpolicy/refpolicy-git/0007-fc-login-apply-login-context-to-login.shadow.patch
rename to recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
index 824c136..e187b9e 100644
--- a/recipes-security/refpolicy/refpolicy-git/0007-fc-login-apply-login-context-to-login.shadow.patch
+++ b/recipes-security/refpolicy/refpolicy/0006-fc-login-apply-login-context-to-login.shadow.patch
@@ -1,27 +1,28 @@
-From 3323cd185bd27a010fb4353d16cb6c3a8608fd20 Mon Sep 17 00:00:00 2001
+From 3383027dfb8c672468a99805535eeadffbe7d332 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:43:53 -0400
-Subject: [PATCH 07/34] fc/login: apply login context to login.shadow
+Subject: [PATCH] fc/login: apply login context to login.shadow
 
-Upstream-Status: Inappropriate [only for Poky]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/system/authlogin.fc | 1 +
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/authlogin.fc b/policy/modules/system/authlogin.fc
-index e22945cd..a42bc0da 100644
+index 7fd315706..fa86d6f92 100644
 --- a/policy/modules/system/authlogin.fc
 +++ b/policy/modules/system/authlogin.fc
 @@ -5,6 +5,7 @@
  /etc/shadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
  
  /usr/bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
-+/usr/bin/login\.shadow	--	gen_context(system_u:object_r:login_exec_t,s0)
++/usr/bin/login\.shadow		--	gen_context(system_u:object_r:login_exec_t,s0)
  /usr/bin/pam_console_apply	--	gen_context(system_u:object_r:pam_console_exec_t,s0)
  /usr/bin/pam_timestamp_check	--	gen_context(system_u:object_r:pam_exec_t,s0)
  /usr/bin/unix_chkpwd		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0008-fc-bind-fix-real-path-for-bind.patch b/recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-path-for-bind.patch
similarity index 76%
rename from recipes-security/refpolicy/refpolicy-git/0008-fc-bind-fix-real-path-for-bind.patch
rename to recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-path-for-bind.patch
index 6472a21..cfd8dfc 100644
--- a/recipes-security/refpolicy/refpolicy-git/0008-fc-bind-fix-real-path-for-bind.patch
+++ b/recipes-security/refpolicy/refpolicy/0007-fc-bind-fix-real-path-for-bind.patch
@@ -1,18 +1,19 @@
-From 9207386c0a860b3b6520eca5e509b9633c67c1e4 Mon Sep 17 00:00:00 2001
+From fcf91092015155c4a10a1d7c4dd352ead0b5698b Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Thu, 28 Mar 2019 21:58:53 -0400
-Subject: [PATCH 08/34] fc/bind: fix real path for bind
+Subject: [PATCH] fc/bind: fix real path for bind
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/services/bind.fc | 2 ++
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/services/bind.fc b/policy/modules/services/bind.fc
-index b4879dc1..59498e25 100644
+index 7c1df4895..9f87a21a6 100644
 --- a/policy/modules/services/bind.fc
 +++ b/policy/modules/services/bind.fc
 @@ -1,8 +1,10 @@
@@ -22,10 +23,10 @@ index b4879dc1..59498e25 100644
  
  /etc/bind(/.*)?	gen_context(system_u:object_r:named_zone_t,s0)
  /etc/bind/named\.conf.*	--	gen_context(system_u:object_r:named_conf_t,s0)
-+/etc/bind/rndc\.conf    --      gen_context(system_u:object_r:named_conf_t,s0)
++/etc/bind/rndc\.conf.*	--	gen_context(system_u:object_r:named_conf_t,s0)
  /etc/bind/rndc\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
  /etc/dnssec-trigger/dnssec_trigger_server\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
  /etc/named\.rfc1912\.zones	--	gen_context(system_u:object_r:named_conf_t,s0)
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alternatives.patch
new file mode 100644
index 0000000..5a09d4b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0008-fc-hwclock-add-hwclock-alternatives.patch
@@ -0,0 +1,25 @@
+From 2e5be9a910fc07a63efafc87a3c10bd81bd9c052 Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Thu, 28 Mar 2019 21:59:18 -0400
+Subject: [PATCH] fc/hwclock: add hwclock alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/clock.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/clock.fc b/policy/modules/system/clock.fc
+index 301965892..139485835 100644
+--- a/policy/modules/system/clock.fc
++++ b/policy/modules/system/clock.fc
+@@ -3,3 +3,4 @@
+ /usr/bin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
+ 
+ /usr/sbin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
++/usr/sbin/hwclock\.util-linux	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch b/recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
new file mode 100644
index 0000000..cc7eb7c
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
@@ -0,0 +1,23 @@
+From 924ecc31c140dcd862d067849d4e11e111284165 Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Fri, 29 Mar 2019 08:26:55 -0400
+Subject: [PATCH] fc/dmesg: apply policy to dmesg alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/dmesg.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/admin/dmesg.fc b/policy/modules/admin/dmesg.fc
+index e52fdfcf8..526b92ed2 100644
+--- a/policy/modules/admin/dmesg.fc
++++ b/policy/modules/admin/dmesg.fc
+@@ -1 +1,2 @@
+ /usr/bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
++/usr/bin/dmesg\.util-linux		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch b/recipes-security/refpolicy/refpolicy/0010-fc-ssh-apply-policy-to-ssh-alternatives.patch
similarity index 71%
rename from recipes-security/refpolicy/refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0010-fc-ssh-apply-policy-to-ssh-alternatives.patch
index ab81b31..003af92 100644
--- a/recipes-security/refpolicy/refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0010-fc-ssh-apply-policy-to-ssh-alternatives.patch
@@ -1,27 +1,28 @@
-From c7002e990710f83763a1481ddaa56a1f658defee Mon Sep 17 00:00:00 2001
+From 261892950c5b2a40b7c3bb050ede148cbd1c7a84 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:20:58 -0400
-Subject: [PATCH 11/34] fc/ssh: apply policy to ssh alternatives
+Subject: [PATCH] fc/ssh: apply policy to ssh alternatives
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/services/ssh.fc | 1 +
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/services/ssh.fc b/policy/modules/services/ssh.fc
-index 4ac3e733..1f453091 100644
+index 60060c35c..518043a9b 100644
 --- a/policy/modules/services/ssh.fc
 +++ b/policy/modules/services/ssh.fc
 @@ -4,6 +4,7 @@ HOME_DIR/\.ssh(/.*)?			gen_context(system_u:object_r:ssh_home_t,s0)
  /etc/ssh/ssh_host.*_key		--	gen_context(system_u:object_r:sshd_key_t,s0)
  
  /usr/bin/ssh			--	gen_context(system_u:object_r:ssh_exec_t,s0)
-+/usr/bin/ssh\.openssh		--	gen_context(system_u:object_r:ssh_exec_t,s0)
++/usr/bin/ssh\.openssh	--	gen_context(system_u:object_r:ssh_exec_t,s0)
  /usr/bin/ssh-agent		--	gen_context(system_u:object_r:ssh_agent_exec_t,s0)
  /usr/bin/ssh-keygen		--	gen_context(system_u:object_r:ssh_keygen_exec_t,s0)
  /usr/bin/sshd			--	gen_context(system_u:object_r:sshd_exec_t,s0)
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch b/recipes-security/refpolicy/refpolicy/0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
similarity index 59%
rename from recipes-security/refpolicy/refpolicy-git/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
index 8346fcf..aeb63f7 100644
--- a/recipes-security/refpolicy/refpolicy-git/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
@@ -1,48 +1,39 @@
-From 881a9f637b6eec90d1fa20bf4c102bb595225aaf Mon Sep 17 00:00:00 2001
+From bb8832629e85af2a16800f5cfec97ca0bf8319e6 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Tue, 9 Jun 2015 21:22:52 +0530
-Subject: [PATCH 12/34] fc/sysnetwork: apply policy to ip alternatives
+Subject: [PATCH] fc/sysnetwork: apply policy to ip alternatives
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/sysnetwork.fc | 10 ++++++++++
- 1 file changed, 10 insertions(+)
+ policy/modules/system/sysnetwork.fc | 3 +++
+ 1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
-index ac7c2dd1..4e441503 100644
+index acf539656..d8902d725 100644
 --- a/policy/modules/system/sysnetwork.fc
 +++ b/policy/modules/system/sysnetwork.fc
-@@ -60,6 +60,8 @@ ifdef(`distro_redhat',`
+@@ -59,13 +59,16 @@ ifdef(`distro_redhat',`
  /usr/sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /usr/sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/sbin/ifconfig\.net-tools	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/sbin/ip\.iproute2		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/sbin/ifconfig\.net-tools		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/ip			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/sbin/ip\.iproute2			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/ipx_configure		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/ipx_interface		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-@@ -67,9 +69,17 @@ ifdef(`distro_redhat',`
+ /usr/sbin/ipx_internal_net	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/iw			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/iwconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/mii-tool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/sbin/mii-tool\.net-tools	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/sbin/mii-tool\.net-tools		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /usr/sbin/pump			--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /usr/sbin/tc			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  
-+#
-+# /usr/lib/busybox
-+#
-+/usr/lib/busybox/bin/ifconfig	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/lib/busybox/bin/ip		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/lib/busybox/sbin/mii-tool	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+
- #
- # /var
- #
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch b/recipes-security/refpolicy/refpolicy/0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch
similarity index 66%
rename from recipes-security/refpolicy/refpolicy-git/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
rename to recipes-security/refpolicy/refpolicy/0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch
index 9ec2e21..d1059df 100644
--- a/recipes-security/refpolicy/refpolicy-git/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
+++ b/recipes-security/refpolicy/refpolicy/0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch
@@ -1,28 +1,29 @@
-From 434fe791713127cea8a796529266b87763833117 Mon Sep 17 00:00:00 2001
+From 02a3c7a06f760d3cae909d2c271d1e4fde07c09b Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 09:36:08 -0400
-Subject: [PATCH 13/34] fc/udev: apply policy to udevadm in libexec
+Subject: [PATCH] fc/udev: apply policy to udevadm in libexec
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/system/udev.fc | 2 ++
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
-index 606ad517..2919c0bd 100644
+index 0ae7571cd..ceb5b70b3 100644
 --- a/policy/modules/system/udev.fc
 +++ b/policy/modules/system/udev.fc
 @@ -28,6 +28,8 @@ ifdef(`distro_debian',`
  /usr/sbin/udevstart	--	gen_context(system_u:object_r:udev_exec_t,s0)
  /usr/sbin/wait_for_sysfs --	gen_context(system_u:object_r:udev_exec_t,s0)
  
-+/usr/libexec/udevadm	--	gen_context(system_u:object_r:udev_exec_t,s0)
++/usr/libexec/udevadm	--	gen_context(system_u:object_r:udevadm_exec_t,s0)
 +
  ifdef(`distro_redhat',`
  /usr/sbin/start_udev --	gen_context(system_u:object_r:udev_exec_t,s0)
  ')
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch b/recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
new file mode 100644
index 0000000..3e61f45
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
@@ -0,0 +1,27 @@
+From 117884178c9ba63334f732da6f30e67e22aa898e Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Fri, 29 Mar 2019 09:54:07 -0400
+Subject: [PATCH] fc/rpm: apply rpm_exec policy to cpio binaries
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/rpm.fc | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/admin/rpm.fc b/policy/modules/admin/rpm.fc
+index 6194a4833..ace922ac1 100644
+--- a/policy/modules/admin/rpm.fc
++++ b/policy/modules/admin/rpm.fc
+@@ -66,4 +66,6 @@ ifdef(`distro_redhat',`
+ 
+ ifdef(`enable_mls',`
+ /usr/sbin/cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
++/usr/bin/cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
++/usr/bin/cpio\.cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
+ ')
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy-git/0015-fc-su-apply-policy-to-su-alternatives.patch b/recipes-security/refpolicy/refpolicy/0014-fc-su-apply-policy-to-su-alternatives.patch
similarity index 61%
rename from recipes-security/refpolicy/refpolicy-git/0015-fc-su-apply-policy-to-su-alternatives.patch
rename to recipes-security/refpolicy/refpolicy/0014-fc-su-apply-policy-to-su-alternatives.patch
index b26eeea..da05686 100644
--- a/recipes-security/refpolicy/refpolicy-git/0015-fc-su-apply-policy-to-su-alternatives.patch
+++ b/recipes-security/refpolicy/refpolicy/0014-fc-su-apply-policy-to-su-alternatives.patch
@@ -1,26 +1,27 @@
-From d6eb7326773a01cea4cb6949e8e8f94e12d145ca Mon Sep 17 00:00:00 2001
+From 522d08c0dac1cfe9e33f06bc1252b7b672d9ffd3 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Thu, 13 Feb 2014 00:33:07 -0500
-Subject: [PATCH 15/34] fc/su: apply policy to su alternatives
+Subject: [PATCH] fc/su: apply policy to su alternatives
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/admin/su.fc | 2 ++
  1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
-index 3375c969..435a6892 100644
+index 3375c9692..a9868cd58 100644
 --- a/policy/modules/admin/su.fc
 +++ b/policy/modules/admin/su.fc
 @@ -1,3 +1,5 @@
  /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
  /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
  /usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
-+/usr/bin/su\.shadow	--	gen_context(system_u:object_r:su_exec_t,s0)
-+/usr/bin/su\.util-linux	--	gen_context(system_u:object_r:su_exec_t,s0)
++/usr/bin/su\.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
++/usr/bin/su\.util-linux		--	gen_context(system_u:object_r:su_exec_t,s0)
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0016-fc-fstools-fix-real-path-for-fstools.patch b/recipes-security/refpolicy/refpolicy/0015-fc-fstools-fix-real-path-for-fstools.patch
similarity index 62%
rename from recipes-security/refpolicy/refpolicy-git/0016-fc-fstools-fix-real-path-for-fstools.patch
rename to recipes-security/refpolicy/refpolicy/0015-fc-fstools-fix-real-path-for-fstools.patch
index 35676f8..78260e5 100644
--- a/recipes-security/refpolicy/refpolicy-git/0016-fc-fstools-fix-real-path-for-fstools.patch
+++ b/recipes-security/refpolicy/refpolicy/0015-fc-fstools-fix-real-path-for-fstools.patch
@@ -1,76 +1,76 @@
-From 4cc043905534403d2c6c5882ed982bd09a6c605f Mon Sep 17 00:00:00 2001
+From c4b0ffd60873ecca2cf0b1aa898185f5f3928828 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 27 Jan 2014 03:54:01 -0500
-Subject: [PATCH 16/34] fc/fstools: fix real path for fstools
+Subject: [PATCH] fc/fstools: fix real path for fstools
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/fstools.fc | 12 ++++++++++++
- 1 file changed, 12 insertions(+)
+ policy/modules/system/fstools.fc | 10 ++++++++++
+ 1 file changed, 10 insertions(+)
 
 diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
-index 8fbd5ce4..d719e22c 100644
+index d871294e8..bef711850 100644
 --- a/policy/modules/system/fstools.fc
 +++ b/policy/modules/system/fstools.fc
-@@ -58,6 +58,7 @@
+@@ -59,7 +59,9 @@
  /usr/sbin/addpart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/blkid			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/blkid\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/blkid\.util-linux			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/blockdev		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/blockdev\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/cfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/clubufflush		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -72,10 +73,12 @@
+ /usr/sbin/delpart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -73,10 +75,12 @@
  /usr/sbin/efibootmgr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/fatsort		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/fdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/fdisk\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/fdisk\.util-linux			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/gdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/hdparm\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/hdparm\.hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/install-mbr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -88,17 +91,20 @@
+@@ -84,24 +88,30 @@
+ /usr/sbin/make_reiser4		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mkdosfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mke2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/mke2fs\.e2fsprogs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mke4fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/mkfs.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/mkreiserfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/mkswap		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/mkswap\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/mkswap\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/partprobe\.parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/partx			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/raidautorun		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/raidstart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/raw		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/raw			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/reiserfs(ck|tune)	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/resize.*fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/smartctl		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/swapoff\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/swapoff\.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/tune2fs\.e2fsprogs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/sbin/zdb			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -108,6 +114,12 @@
- /usr/sbin/zstreamdump		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/ztest			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- 
-+/usr/lib/busybox/sbin/blkid	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/lib/busybox/sbin/fdisk	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/lib/busybox/sbin/mkswap	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/lib/busybox/sbin/swapoff	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/lib/busybox/sbin/swapon	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+
- /var/swap			--	gen_context(system_u:object_r:swapfile_t,s0)
- 
- /var/log/fsck(/.*)?		gen_context(system_u:object_r:fsadm_log_t,s0)
+ /usr/sbin/zhack			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/zinject		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0001-fix-update-alternatives-for-sysvinit.patch b/recipes-security/refpolicy/refpolicy/0016-fc-init-fix-update-alternatives-for-sysvinit.patch
similarity index 59%
rename from recipes-security/refpolicy/refpolicy-git/0001-fix-update-alternatives-for-sysvinit.patch
rename to recipes-security/refpolicy/refpolicy/0016-fc-init-fix-update-alternatives-for-sysvinit.patch
index 98d98d4..1a8e8dc 100644
--- a/recipes-security/refpolicy/refpolicy-git/0001-fix-update-alternatives-for-sysvinit.patch
+++ b/recipes-security/refpolicy/refpolicy/0016-fc-init-fix-update-alternatives-for-sysvinit.patch
@@ -1,20 +1,21 @@
-From cf2f08bdb2d64b38b6c83c96f409c1cd9975fe6a Mon Sep 17 00:00:00 2001
+From 95a843719394827621e3b33c13f2696f7e498e5b Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH] fix update-alternatives for sysvinit
+Subject: [PATCH] fc/init: fix update-alternatives for sysvinit
 
-Upstream-Status: Inappropriate [only for Poky]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/admin/shutdown.fc      | 1 +
- policy/modules/kernel/corecommands.fc | 1 +
+ policy/modules/kernel/corecommands.fc | 2 ++
  policy/modules/system/init.fc         | 1 +
- 3 files changed, 3 insertions(+)
+ 3 files changed, 4 insertions(+)
 
 diff --git a/policy/modules/admin/shutdown.fc b/policy/modules/admin/shutdown.fc
-index 03a2230c..2ba049ff 100644
+index bf51c103f..91ed72be0 100644
 --- a/policy/modules/admin/shutdown.fc
 +++ b/policy/modules/admin/shutdown.fc
 @@ -5,5 +5,6 @@
@@ -23,31 +24,32 @@ index 03a2230c..2ba049ff 100644
  /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
 +/usr/sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
  
- /run/shutdown\.pid	--	gen_context(system_u:object_r:shutdown_var_run_t,s0)
+ /run/shutdown\.pid	--	gen_context(system_u:object_r:shutdown_runtime_t,s0)
 diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index cf3848db..86920167 100644
+index 7e199b7b0..157eeb0d0 100644
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -149,6 +149,7 @@ ifdef(`distro_gentoo',`
+@@ -151,6 +151,8 @@ ifdef(`distro_gentoo',`
  /usr/bin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
  /usr/bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/mountpoint		--	gen_context(system_u:object_r:bin_t,s0)
-+/usr/bin/mountpoint\.sysvinit	--	gen_context(system_u:object_r:bin_t,s0)
++/usr/bin/mountpoint\.sysvinit		--	gen_context(system_u:object_r:bin_t,s0)
++/usr/bin/mountpoint\.util-linux		--	gen_context(system_u:object_r:bin_t,s0)
  /usr/bin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /usr/bin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
 diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
-index 11a6ce93..93e9d2b4 100644
+index fee6ff3b6..fe72df22a 100644
 --- a/policy/modules/system/init.fc
 +++ b/policy/modules/system/init.fc
-@@ -23,6 +23,7 @@ ifdef(`distro_gentoo',`
- # /usr
- #
- /usr/bin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
+@@ -40,6 +40,7 @@ ifdef(`distro_gentoo',`
+ /usr/libexec/dcc/stop-.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
+ 
+ /usr/sbin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
 +/usr/sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
- /usr/bin/open_init_pty	--	gen_context(system_u:object_r:initrc_exec_t,s0)
- /usr/bin/sepg_ctl	--	gen_context(system_u:object_r:initrc_exec_t,s0)
- /usr/bin/systemd	--	gen_context(system_u:object_r:init_exec_t,s0)
+ /usr/sbin/open_init_pty	--	gen_context(system_u:object_r:initrc_exec_t,s0)
+ /usr/sbin/upstart	--	gen_context(system_u:object_r:init_exec_t,s0)
+ 
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-policy-to-brctl-alternatives.patch b/recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-policy-to-brctl-alternatives.patch
new file mode 100644
index 0000000..6271a88
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0017-fc-brctl-apply-policy-to-brctl-alternatives.patch
@@ -0,0 +1,24 @@
+From 0b05d71fea73c9fc0dc8aac6e7d096b0214db5eb Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 10:19:54 +0800
+Subject: [PATCH] fc/brctl: apply policy to brctl alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/brctl.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/admin/brctl.fc b/policy/modules/admin/brctl.fc
+index ed472f095..2a852b0fd 100644
+--- a/policy/modules/admin/brctl.fc
++++ b/policy/modules/admin/brctl.fc
+@@ -1,3 +1,4 @@
+ /usr/bin/brctl	--	gen_context(system_u:object_r:brctl_exec_t,s0)
+ 
+ /usr/sbin/brctl	--	gen_context(system_u:object_r:brctl_exec_t,s0)
++/usr/sbin/brctl\.bridge-utils	--	gen_context(system_u:object_r:brctl_exec_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch
new file mode 100644
index 0000000..442c3d8
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch
@@ -0,0 +1,28 @@
+From 5f759c3d89b52e62607266c4e684d66953803d4d Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 10:21:51 +0800
+Subject: [PATCH] fc/corecommands: apply policy to nologin alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/kernel/corecommands.fc | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
+index 157eeb0d0..515948ea9 100644
+--- a/policy/modules/kernel/corecommands.fc
++++ b/policy/modules/kernel/corecommands.fc
+@@ -303,6 +303,8 @@ ifdef(`distro_debian',`
+ /usr/sbin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
+ /usr/sbin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
+ /usr/sbin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
++/usr/sbin/nologin\.shadow		--	gen_context(system_u:object_r:shell_exec_t,s0)
++/usr/sbin/nologin\.util-linux		--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/sbin/scponlyc		--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/sbin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /usr/sbin/smrsh			--	gen_context(system_u:object_r:shell_exec_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch b/recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
new file mode 100644
index 0000000..4303d36
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch
@@ -0,0 +1,25 @@
+From 84f715b8d128bcbfdc95adf18d6bc8eb225f05cd Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 10:43:28 +0800
+Subject: [PATCH] fc/locallogin: apply policy to sulogin alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/locallogin.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/locallogin.fc b/policy/modules/system/locallogin.fc
+index fc8d58507..59e6e9601 100644
+--- a/policy/modules/system/locallogin.fc
++++ b/policy/modules/system/locallogin.fc
+@@ -2,4 +2,5 @@
+ /usr/bin/sushell	--	gen_context(system_u:object_r:sulogin_exec_t,s0)
+ 
+ /usr/sbin/sulogin	--	gen_context(system_u:object_r:sulogin_exec_t,s0)
++/usr/sbin/sulogin\.util-linux	--	gen_context(system_u:object_r:sulogin_exec_t,s0)
+ /usr/sbin/sushell	--	gen_context(system_u:object_r:sulogin_exec_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch b/recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch
new file mode 100644
index 0000000..49c2f82
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch
@@ -0,0 +1,27 @@
+From b30d9ad872f613d2b1c3aad45eac65593de37b9b Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 10:45:23 +0800
+Subject: [PATCH] fc/ntp: apply policy to ntpd alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/ntp.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/services/ntp.fc b/policy/modules/services/ntp.fc
+index cd69ea5d5..49ffe6f68 100644
+--- a/policy/modules/services/ntp.fc
++++ b/policy/modules/services/ntp.fc
+@@ -25,6 +25,7 @@
+ /usr/lib/systemd/systemd-timesyncd	--	gen_context(system_u:object_r:ntpd_exec_t,s0)
+ 
+ /usr/sbin/ntpd				--	gen_context(system_u:object_r:ntpd_exec_t,s0)
++/usr/sbin/ntpd\.ntp				--	gen_context(system_u:object_r:ntpd_exec_t,s0)
+ /usr/sbin/ntpdate			--	gen_context(system_u:object_r:ntpdate_exec_t,s0)
+ /usr/sbin/sntp				--	gen_context(system_u:object_r:ntpdate_exec_t,s0)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch b/recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
new file mode 100644
index 0000000..7fe5c8f
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch
@@ -0,0 +1,50 @@
+From 632dcd7a700049a955082bd24af742c2780dcc38 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 10:55:05 +0800
+Subject: [PATCH] fc/kerberos: apply policy to kerberos alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/kerberos.fc | 10 ++++++++++
+ 1 file changed, 10 insertions(+)
+
+diff --git a/policy/modules/services/kerberos.fc b/policy/modules/services/kerberos.fc
+index df21fcc78..ce0166edd 100644
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
+@@ -41,6 +45,12 @@ HOME_DIR/\.k5login	--	gen_context(system_u:object_r:krb5_home_t,s0)
+ /var/kerberos/krb5kdc/principal.*	gen_context(system_u:object_r:krb5kdc_principal_t,s0)
+ /var/kerberos/krb5kdc/principal.*\.ok	--	gen_context(system_u:object_r:krb5kdc_lock_t,s0)
+ 
++/var/krb5kdc(/.*)?	gen_context(system_u:object_r:krb5kdc_conf_t,s0)
++/var/krb5kdc/from_master.*	gen_context(system_u:object_r:krb5kdc_lock_t,s0)
++/var/krb5kdc/kadm5\.keytab	--	gen_context(system_u:object_r:krb5_keytab_t,s0)
++/var/krb5kdc/principal.*	gen_context(system_u:object_r:krb5kdc_principal_t,s0)
++/var/krb5kdc/principal.*\.ok	--	gen_context(system_u:object_r:krb5kdc_lock_t,s0)
++
+ /var/log/krb5kdc\.log.*	--	gen_context(system_u:object_r:krb5kdc_log_t,s0)
+ /var/log/kadmin\.log.*	--	gen_context(system_u:object_r:kadmind_log_t,s0)
+ /var/log/kadmind\.log.*	--	gen_context(system_u:object_r:kadmind_log_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy-to-ldap-alternatives.patch b/recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy-to-ldap-alternatives.patch
new file mode 100644
index 0000000..c3bcabe
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0022-fc-ldap-apply-policy-to-ldap-alternatives.patch
@@ -0,0 +1,40 @@
+From a580b0154da9dd07369b172ed459046197e388c7 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 11:06:13 +0800
+Subject: [PATCH] fc/ldap: apply policy to ldap alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/ldap.fc | 5 +++++
+ 1 file changed, 5 insertions(+)
+
+diff --git a/policy/modules/services/ldap.fc b/policy/modules/services/ldap.fc
+index 0a1d08d0f..65b202962 100644
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
+@@ -25,6 +27,9 @@
+ /var/log/ldap.*	gen_context(system_u:object_r:slapd_log_t,s0)
+ /var/log/slapd.*	gen_context(system_u:object_r:slapd_log_t,s0)
+ 
++/var/openldap(/.*)?	gen_context(system_u:object_r:slapd_db_t,s0)
++/var/openldap/replog(/.*)?	gen_context(system_u:object_r:slapd_replog_t,s0)
++
+ /run/ldapi	-s	gen_context(system_u:object_r:slapd_runtime_t,s0)
+ /run/openldap(/.*)?	gen_context(system_u:object_r:slapd_runtime_t,s0)
+ /run/slapd.*	-s	gen_context(system_u:object_r:slapd_runtime_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch b/recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch
new file mode 100644
index 0000000..0fc608b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch
@@ -0,0 +1,37 @@
+From 926401518bca5a1e63b7f2c2cbae4a3bc42bf342 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 11:13:16 +0800
+Subject: [PATCH] fc/postgresql: apply policy to postgresql alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/postgresql.fc | 11 +++++++++++
+ 1 file changed, 11 insertions(+)
+
+diff --git a/policy/modules/services/postgresql.fc b/policy/modules/services/postgresql.fc
+index f31a52cf8..f9bf46870 100644
+--- a/policy/modules/services/postgresql.fc
++++ b/policy/modules/services/postgresql.fc
+@@ -27,6 +27,17 @@
+ /usr/lib/postgresql(-.*)?/(.*/)?bin/postgres		--	gen_context(system_u:object_r:postgresql_exec_t,s0)
+ /usr/lib/postgresql(-.*)?/(.*/)?bin/postmaster		-l	gen_context(system_u:object_r:postgresql_exec_t,s0)
+ 
++/usr/bin/pg_archivecleanup	--	gen_context(system_u:object_r:postgresql_exec_t,s0)
++/usr/bin/pg_basebackup	--	gen_context(system_u:object_r:postgresql_exec_t,s0)
++/usr/bin/pg_controldata	--	gen_context(system_u:object_r:postgresql_exec_t,s0)
++/usr/bin/pg_ctl		--	gen_context(system_u:object_r:postgresql_exec_t,s0)
++/usr/bin/pg_resetxlog	--	gen_context(system_u:object_r:postgresql_exec_t,s0)
++/usr/bin/pg_standby		--	gen_context(system_u:object_r:postgresql_exec_t,s0)
++/usr/bin/pg_upgrade		--	gen_context(system_u:object_r:postgresql_exec_t,s0)
++/usr/bin/pg_xlogdump		--	gen_context(system_u:object_r:postgresql_exec_t,s0)
++/usr/bin/postgres		--	gen_context(system_u:object_r:postgresql_exec_t,s0)
++/usr/bin/postmaster		-l	gen_context(system_u:object_r:postgresql_exec_t,s0)
++
+ ifdef(`distro_redhat', `
+ /usr/share/jonas/pgsql(/.*)?		gen_context(system_u:object_r:postgresql_db_t,s0)
+ ')
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-policy-to-screen-alternatives.patch b/recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-policy-to-screen-alternatives.patch
new file mode 100644
index 0000000..b529bbf
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0024-fc-screen-apply-policy-to-screen-alternatives.patch
@@ -0,0 +1,25 @@
+From f3f6f0cb4857954afd8a025a1cd3f14b8a11b64d Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 11:15:33 +0800
+Subject: [PATCH] fc/screen: apply policy to screen alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/apps/screen.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/apps/screen.fc b/policy/modules/apps/screen.fc
+index 7196c598e..cada9944e 100644
+--- a/policy/modules/apps/screen.fc
++++ b/policy/modules/apps/screen.fc
+@@ -6,4 +6,5 @@ HOME_DIR/\.tmux\.conf	--	gen_context(system_u:object_r:screen_home_t,s0)
+ /run/tmux(/.*)?			gen_context(system_u:object_r:screen_runtime_t,s0)
+ 
+ /usr/bin/screen		--	gen_context(system_u:object_r:screen_exec_t,s0)
++/usr/bin/screen-.*		--	gen_context(system_u:object_r:screen_exec_t,s0)
+ /usr/bin/tmux		--	gen_context(system_u:object_r:screen_exec_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch b/recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch
new file mode 100644
index 0000000..76278c9
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch
@@ -0,0 +1,45 @@
+From 0656c4b988cb700f322fb03e6639fe0b64e08d63 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 11:25:34 +0800
+Subject: [PATCH] fc/usermanage: apply policy to usermanage alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/usermanage.fc | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/policy/modules/admin/usermanage.fc b/policy/modules/admin/usermanage.fc
+index 620eefc6f..6a051f8a5 100644
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
+@@ -14,6 +16,7 @@ ifdef(`distro_debian',`
+ /usr/bin/grpconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/bin/grpunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/bin/passwd		--	gen_context(system_u:object_r:passwd_exec_t,s0)
++/usr/bin/passwd\.shadow		--	gen_context(system_u:object_r:passwd_exec_t,s0)
+ /usr/bin/pwconv		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/bin/pwunconv	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/bin/useradd	--	gen_context(system_u:object_r:useradd_exec_t,s0)
+@@ -39,6 +42,7 @@ ifdef(`distro_debian',`
+ /usr/sbin/usermod	--	gen_context(system_u:object_r:useradd_exec_t,s0)
+ /usr/sbin/vigr		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/sbin/vipw		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
++/usr/sbin/vipw\.shadow		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ 
+ /usr/share/cracklib(/.*)?	gen_context(system_u:object_r:crack_db_t,s0)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-context-to-start_getty.patch b/recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-context-to-start_getty.patch
new file mode 100644
index 0000000..5f45438
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0026-fc-getty-add-file-context-to-start_getty.patch
@@ -0,0 +1,27 @@
+From cc8da498e20518cc9e8f59d1a4570e073f19e88b Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 15 Nov 2019 16:07:30 +0800
+Subject: [PATCH] fc/getty: add file context to start_getty
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/getty.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/getty.fc b/policy/modules/system/getty.fc
+index 116ea6421..53ff6137b 100644
+--- a/policy/modules/system/getty.fc
++++ b/policy/modules/system/getty.fc
+@@ -4,6 +4,7 @@
+ /run/agetty\.reload	--	gen_context(system_u:object_r:getty_runtime_t,s0)
+ 
+ /usr/bin/.*getty	--	gen_context(system_u:object_r:getty_exec_t,s0)
++/usr/bin/start_getty	--	gen_context(system_u:object_r:bin_t,s0)
+ 
+ /usr/sbin/.*getty	--	gen_context(system_u:object_r:getty_exec_t,s0)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to-etc-network-if-files.patch b/recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to-etc-network-if-files.patch
new file mode 100644
index 0000000..e54777c
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0027-fc-init-add-file-context-to-etc-network-if-files.patch
@@ -0,0 +1,33 @@
+From 1d6f9b62082188992bfb681632dff15d5ad608c9 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 19 Nov 2019 14:33:28 +0800
+Subject: [PATCH] fc/init: add file context to /etc/network/if-* files
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/init.fc | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
+index fe72df22a..a9d8f343a 100644
+--- a/policy/modules/system/init.fc
++++ b/policy/modules/system/init.fc
+@@ -70,11 +70,12 @@ ifdef(`distro_redhat',`
+ ifdef(`distro_debian',`
+ /run/hotkey-setup	--	gen_context(system_u:object_r:initrc_runtime_t,s0)
+ /run/kdm/.*		--	gen_context(system_u:object_r:initrc_runtime_t,s0)
++')
++
+ /etc/network/if-pre-up\.d/.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
+ /etc/network/if-up\.d/.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
+ /etc/network/if-down\.d/.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
+ /etc/network/if-post-down\.d/.* -- gen_context(system_u:object_r:initrc_exec_t,s0)
+-')
+ 
+ ifdef(`distro_gentoo', `
+ /var/lib/init\.d(/.*)?		gen_context(system_u:object_r:initrc_state_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-policy-to-vlock-alternatives.patch b/recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-policy-to-vlock-alternatives.patch
new file mode 100644
index 0000000..8017392
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0028-fc-vlock-apply-policy-to-vlock-alternatives.patch
@@ -0,0 +1,25 @@
+From 8d8858bd8569db106f0feb44a0912daa872954ec Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Wed, 18 Dec 2019 15:04:41 +0800
+Subject: [PATCH] fc/vlock: apply policy to vlock alternatives
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/apps/vlock.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/apps/vlock.fc b/policy/modules/apps/vlock.fc
+index f668cde9c..c4bc50984 100644
+--- a/policy/modules/apps/vlock.fc
++++ b/policy/modules/apps/vlock.fc
+@@ -1,4 +1,5 @@
+ /usr/bin/vlock		--	gen_context(system_u:object_r:vlock_exec_t,s0)
++/usr/bin/vlock\.kbd		--	gen_context(system_u:object_r:vlock_exec_t,s0)
+ /usr/bin/vlock-main	--	gen_context(system_u:object_r:vlock_exec_t,s0)
+ 
+ /usr/sbin/vlock-main	--	gen_context(system_u:object_r:vlock_exec_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc-init.d-crond.patch b/recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc-init.d-crond.patch
new file mode 100644
index 0000000..294f999
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0029-fc-cron-apply-policy-to-etc-init.d-crond.patch
@@ -0,0 +1,25 @@
+From 25701662f7149743556bb2d5edb5c69e6de2744f Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 30 Jun 2020 10:45:57 +0800
+Subject: [PATCH] fc/cron: apply policy to /etc/init.d/crond
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/cron.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/services/cron.fc b/policy/modules/services/cron.fc
+index 827363d88..e8412396d 100644
+--- a/policy/modules/services/cron.fc
++++ b/policy/modules/services/cron.fc
+@@ -1,4 +1,5 @@
+ /etc/rc\.d/init\.d/(anacron|atd)	--	gen_context(system_u:object_r:crond_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/crond	--	gen_context(system_u:object_r:crond_initrc_exec_t,s0)
+ 
+ /etc/cron\.d(/.*)?	gen_context(system_u:object_r:system_cron_spool_t,s0)
+ /etc/crontab	--	gen_context(system_u:object_r:system_cron_spool_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0030-file_contexts.subs_dist-set-aliase-for-root-director.patch b/recipes-security/refpolicy/refpolicy/0030-file_contexts.subs_dist-set-aliase-for-root-director.patch
new file mode 100644
index 0000000..8331955
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0030-file_contexts.subs_dist-set-aliase-for-root-director.patch
@@ -0,0 +1,30 @@
+From 9260b04d257cdddf42d0267456d3ba2b38dc22d4 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sun, 5 Apr 2020 22:03:45 +0800
+Subject: [PATCH] file_contexts.subs_dist: set aliase for /root directory
+
+The genhomedircon.py will expand /root directory to /home/root.
+Add an aliase for it
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ config/file_contexts.subs_dist | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
+index c249c5207..67f476868 100644
+--- a/config/file_contexts.subs_dist
++++ b/config/file_contexts.subs_dist
+@@ -43,3 +43,7 @@
+ /usr/lib/busybox/bin /usr/bin
+ /usr/lib/busybox/sbin /usr/sbin
+ /usr/lib/busybox/usr /usr
++
++# The genhomedircon.py will expand /root home directory to /home/root
++# Add an aliase for it
++/root /home/root
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy-git/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch b/recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-add-rules-for-the-syml.patch
similarity index 63%
rename from recipes-security/refpolicy/refpolicy-git/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
rename to recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-add-rules-for-the-syml.patch
index 6dca744..b05f037 100644
--- a/recipes-security/refpolicy/refpolicy-git/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
+++ b/recipes-security/refpolicy/refpolicy/0031-policy-modules-system-logging-add-rules-for-the-syml.patch
@@ -1,39 +1,40 @@
-From ccb0b3884513829a2ab344f1682df6ea6ff4e7de Mon Sep 17 00:00:00 2001
+From e4bdbb101fd2af2d4fd8b87794443097b58d20ff Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 18/34] policy/module/logging: add rules for the symlink of
+Subject: [PATCH] policy/modules/system/logging: add rules for the symlink of
  /var/log
 
 /var/log is a symlink in poky, so we need allow rules for files to read
 lnk_file while doing search/list/delete/rw... in /var/log/ directory.
 
-Upstream-Status: Inappropriate [only for Poky]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/system/logging.fc | 1 +
- policy/modules/system/logging.if | 6 ++++++
+ policy/modules/system/logging.if | 9 +++++++++
  policy/modules/system/logging.te | 2 ++
- 3 files changed, 9 insertions(+)
+ 3 files changed, 12 insertions(+)
 
 diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
-index 0cf108e0..5bec7e99 100644
+index 5681acb51..a4ecd570a 100644
 --- a/policy/modules/system/logging.fc
 +++ b/policy/modules/system/logging.fc
-@@ -55,6 +55,7 @@ ifdef(`distro_suse', `
+@@ -52,6 +52,7 @@ ifdef(`distro_suse', `
  /var/dnscache/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
  
  /var/log		-d	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
-+/var/log		-l	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
++/var/log		-l	gen_context(system_u:object_r:var_log_t,s0)
  /var/log/.*			gen_context(system_u:object_r:var_log_t,s0)
  /var/log/dmesg		--	gen_context(system_u:object_r:var_log_t,s0)
  /var/log/syslog		--	gen_context(system_u:object_r:var_log_t,s0)
 diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
-index 7b7644f7..0c7268ff 100644
+index e5f4080ac..e3cbe4f1a 100644
 --- a/policy/modules/system/logging.if
 +++ b/policy/modules/system/logging.if
-@@ -972,10 +972,12 @@ interface(`logging_append_all_inherited_logs',`
+@@ -1066,10 +1066,12 @@ interface(`logging_append_all_inherited_logs',`
  interface(`logging_read_all_logs',`
  	gen_require(`
  		attribute logfile;
@@ -46,7 +47,7 @@ index 7b7644f7..0c7268ff 100644
  	read_files_pattern($1, logfile, logfile)
  ')
  
-@@ -994,10 +996,12 @@ interface(`logging_read_all_logs',`
+@@ -1088,10 +1090,12 @@ interface(`logging_read_all_logs',`
  interface(`logging_exec_all_logs',`
  	gen_require(`
  		attribute logfile;
@@ -59,7 +60,23 @@ index 7b7644f7..0c7268ff 100644
  	can_exec($1, logfile)
  ')
  
-@@ -1099,6 +1103,7 @@ interface(`logging_read_generic_logs',`
+@@ -1153,6 +1157,7 @@ interface(`logging_manage_generic_log_dirs',`
+ 
+ 	files_search_var($1)
+ 	allow $1 var_log_t:dir manage_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -1173,6 +1178,7 @@ interface(`logging_relabel_generic_log_dirs',`
+ 
+ 	files_search_var($1)
+ 	allow $1 var_log_t:dir { relabelfrom relabelto };
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -1193,6 +1199,7 @@ interface(`logging_read_generic_logs',`
  
  	files_search_var($1)
  	allow $1 var_log_t:dir list_dir_perms;
@@ -67,16 +84,24 @@ index 7b7644f7..0c7268ff 100644
  	read_files_pattern($1, var_log_t, var_log_t)
  ')
  
-@@ -1200,6 +1205,7 @@ interface(`logging_manage_generic_logs',`
+@@ -1294,6 +1301,7 @@ interface(`logging_manage_generic_logs',`
  
  	files_search_var($1)
  	manage_files_pattern($1, var_log_t, var_log_t)
 +	allow $1 var_log_t:lnk_file read_lnk_file_perms;
  ')
  
+ ########################################
+@@ -1312,6 +1320,7 @@ interface(`logging_watch_generic_logs_dir',`
+ 	')
+ 
+ 	allow $1 var_log_t:dir watch;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ ')
+ 
  ########################################
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index c892f547..499a4552 100644
+index 3702d441a..513d811ef 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
 @@ -161,6 +161,7 @@ manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
@@ -85,8 +110,8 @@ index c892f547..499a4552 100644
  allow auditd_t var_log_t:dir search_dir_perms;
 +allow auditd_t var_log_t:lnk_file read_lnk_file_perms;
  
- manage_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
- manage_sock_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
+ manage_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
+ manage_sock_files_pattern(auditd_t, auditd_runtime_t, auditd_runtime_t)
 @@ -288,6 +289,7 @@ allow audisp_remote_t self:capability { setpcap setuid };
  allow audisp_remote_t self:process { getcap setcap };
  allow audisp_remote_t self:tcp_socket create_socket_perms;
@@ -96,5 +121,5 @@ index c892f547..499a4552 100644
  manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
  manage_files_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch b/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-add-rules-for-syslogd-.patch
similarity index 66%
rename from recipes-security/refpolicy/refpolicy-git/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
rename to recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-add-rules-for-syslogd-.patch
index a532316..c81bee7 100644
--- a/recipes-security/refpolicy/refpolicy-git/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
+++ b/recipes-security/refpolicy/refpolicy/0032-policy-modules-system-logging-add-rules-for-syslogd-.patch
@@ -1,33 +1,34 @@
-From b52614cce12e4a7d3437350bb35688d5470f92fc Mon Sep 17 00:00:00 2001
+From aaa818cd6d0b1d7a3ad99f911c6c21d5b30b9f49 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 29 Mar 2019 10:33:18 -0400
-Subject: [PATCH 19/34] policy/module/logging: add rules for syslogd symlink of
- /var/log
+Subject: [PATCH] policy/modules/system/logging: add rules for syslogd symlink
+ of /var/log
 
 We have added rules for the symlink of /var/log in logging.if, while
 syslogd_t uses /var/log but does not use the interfaces in logging.if. So
 still need add a individual rule for syslogd_t.
 
-Upstream-Status: Inappropriate [only for Poky]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/system/logging.te | 1 +
  1 file changed, 1 insertion(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 499a4552..e6221a02 100644
+index 513d811ef..2d9f65d2d 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -417,6 +417,7 @@ files_search_spool(syslogd_t)
+@@ -414,6 +414,7 @@ files_search_spool(syslogd_t)
  
  # Allow access for syslog-ng
  allow syslogd_t var_log_t:dir { create setattr };
 +allow syslogd_t var_log_t:lnk_file read_lnk_file_perms;
  
  # for systemd but can not be conditional
- files_pid_filetrans(syslogd_t, syslogd_tmp_t, dir, "log")
+ files_runtime_filetrans(syslogd_t, syslogd_tmp_t, dir, "log")
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch b/recipes-security/refpolicy/refpolicy/0033-policy-modules-system-logging-add-domain-rules-for-t.patch
similarity index 76%
rename from recipes-security/refpolicy/refpolicy-git/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch
rename to recipes-security/refpolicy/refpolicy/0033-policy-modules-system-logging-add-domain-rules-for-t.patch
index a494671..90995dc 100644
--- a/recipes-security/refpolicy/refpolicy-git/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch
+++ b/recipes-security/refpolicy/refpolicy/0033-policy-modules-system-logging-add-domain-rules-for-t.patch
@@ -1,24 +1,25 @@
-From 07456143d9478b345dbe480e1b418b744de96751 Mon Sep 17 00:00:00 2001
+From 0385f2374297ab2b8799fe1ec28d12e1682ec074 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 11:20:00 +0800
-Subject: [PATCH 20/34] policy/module/logging: add domain rules for the subdir
- symlinks in /var/
+Subject: [PATCH] policy/modules/system/logging: add domain rules for the
+ subdir symlinks in /var/
 
 Except /var/log,/var/run,/var/lock, there still other subdir symlinks in
 /var for poky, so we need allow rules for all domains to read these
 symlinks. Domains still need their practical allow rules to read the
 contents, so this is still a secure relax.
 
-Upstream-Status: Inappropriate [only for Poky]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/kernel/domain.te | 3 +++
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/kernel/domain.te b/policy/modules/kernel/domain.te
-index 1a55e3d2..babb794f 100644
+index 4e43a208d..7e5d2b458 100644
 --- a/policy/modules/kernel/domain.te
 +++ b/policy/modules/kernel/domain.te
 @@ -110,6 +110,9 @@ term_use_controlling_term(domain)
@@ -32,5 +33,5 @@ index 1a55e3d2..babb794f 100644
  	# This check is in the general socket
  	# listen code, before protocol-specific
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch b/recipes-security/refpolicy/refpolicy/0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch
similarity index 71%
rename from recipes-security/refpolicy/refpolicy-git/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch
rename to recipes-security/refpolicy/refpolicy/0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch
index aa61a80..33dc366 100644
--- a/recipes-security/refpolicy/refpolicy-git/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch
+++ b/recipes-security/refpolicy/refpolicy/0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch
@@ -1,37 +1,39 @@
-From edcfc7eb98658352f3ffdeb8079517c54ba7f984 Mon Sep 17 00:00:00 2001
+From 3ff1a004b77f44857dadfef3b78a49a55d90c665 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 21/34] policy/module/files: add rules for the symlink of /tmp
+Subject: [PATCH] policy/modules/kernel/files: add rules for the symlink of
+ /tmp
 
 /tmp is a symlink in poky, so we need allow rules for files to read
 lnk_file while doing search/list/delete/rw.. in /tmp/ directory.
 
-Upstream-Status: Inappropriate [only for Poky]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/kernel/files.fc | 1 +
  policy/modules/kernel/files.if | 8 ++++++++
  2 files changed, 9 insertions(+)
 
 diff --git a/policy/modules/kernel/files.fc b/policy/modules/kernel/files.fc
-index c3496c21..05b1734b 100644
+index a3993f5cc..f69900945 100644
 --- a/policy/modules/kernel/files.fc
 +++ b/policy/modules/kernel/files.fc
 @@ -176,6 +176,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
  # /tmp
  #
  /tmp			-d	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
-+/tmp			-l	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
++/tmp			-l	gen_context(system_u:object_r:tmp_t,s0)
  /tmp/.*				<<none>>
  /tmp/\.journal			<<none>>
  
 diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index f1c94411..eb067ad3 100644
+index 6a53f886b..ad19738b3 100644
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -4350,6 +4350,7 @@ interface(`files_search_tmp',`
+@@ -4451,6 +4451,7 @@ interface(`files_search_tmp',`
  	')
  
  	allow $1 tmp_t:dir search_dir_perms;
@@ -39,7 +41,7 @@ index f1c94411..eb067ad3 100644
  ')
  
  ########################################
-@@ -4386,6 +4387,7 @@ interface(`files_list_tmp',`
+@@ -4487,6 +4488,7 @@ interface(`files_list_tmp',`
  	')
  
  	allow $1 tmp_t:dir list_dir_perms;
@@ -47,7 +49,7 @@ index f1c94411..eb067ad3 100644
  ')
  
  ########################################
-@@ -4422,6 +4424,7 @@ interface(`files_delete_tmp_dir_entry',`
+@@ -4523,6 +4525,7 @@ interface(`files_delete_tmp_dir_entry',`
  	')
  
  	allow $1 tmp_t:dir del_entry_dir_perms;
@@ -55,7 +57,7 @@ index f1c94411..eb067ad3 100644
  ')
  
  ########################################
-@@ -4440,6 +4443,7 @@ interface(`files_read_generic_tmp_files',`
+@@ -4541,6 +4544,7 @@ interface(`files_read_generic_tmp_files',`
  	')
  
  	read_files_pattern($1, tmp_t, tmp_t)
@@ -63,7 +65,7 @@ index f1c94411..eb067ad3 100644
  ')
  
  ########################################
-@@ -4458,6 +4462,7 @@ interface(`files_manage_generic_tmp_dirs',`
+@@ -4559,6 +4563,7 @@ interface(`files_manage_generic_tmp_dirs',`
  	')
  
  	manage_dirs_pattern($1, tmp_t, tmp_t)
@@ -71,7 +73,7 @@ index f1c94411..eb067ad3 100644
  ')
  
  ########################################
-@@ -4476,6 +4481,7 @@ interface(`files_manage_generic_tmp_files',`
+@@ -4577,6 +4582,7 @@ interface(`files_manage_generic_tmp_files',`
  	')
  
  	manage_files_pattern($1, tmp_t, tmp_t)
@@ -79,7 +81,7 @@ index f1c94411..eb067ad3 100644
  ')
  
  ########################################
-@@ -4512,6 +4518,7 @@ interface(`files_rw_generic_tmp_sockets',`
+@@ -4613,6 +4619,7 @@ interface(`files_rw_generic_tmp_sockets',`
  	')
  
  	rw_sock_files_pattern($1, tmp_t, tmp_t)
@@ -87,7 +89,7 @@ index f1c94411..eb067ad3 100644
  ')
  
  ########################################
-@@ -4719,6 +4726,7 @@ interface(`files_tmp_filetrans',`
+@@ -4820,6 +4827,7 @@ interface(`files_tmp_filetrans',`
  	')
  
  	filetrans_pattern($1, tmp_t, $2, $3, $4)
@@ -96,5 +98,5 @@ index f1c94411..eb067ad3 100644
  
  ########################################
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch b/recipes-security/refpolicy/refpolicy/0035-policy-modules-kernel-terminal-add-rules-for-bsdpty_.patch
similarity index 87%
rename from recipes-security/refpolicy/refpolicy-git/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch
rename to recipes-security/refpolicy/refpolicy/0035-policy-modules-kernel-terminal-add-rules-for-bsdpty_.patch
index 68235b1..c6fb34f 100644
--- a/recipes-security/refpolicy/refpolicy-git/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch
+++ b/recipes-security/refpolicy/refpolicy/0035-policy-modules-kernel-terminal-add-rules-for-bsdpty_.patch
@@ -1,19 +1,20 @@
-From 938ae00d2358d6ebad8173fce274ebb70d95cf72 Mon Sep 17 00:00:00 2001
+From cc8505dc9613a98ee8215854ece31a4aca103e8d Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 22/34] policy/module/terminals: add rules for bsdpty_device_t
- to complete pty devices.
+Subject: [PATCH] policy/modules/kernel/terminal: add rules for bsdpty_device_t
+ to complete pty devices
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/kernel/terminal.if | 16 ++++++++++++++++
  1 file changed, 16 insertions(+)
 
 diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
-index 61308843..a84787e6 100644
+index 4bd4884f8..f70e51525 100644
 --- a/policy/modules/kernel/terminal.if
 +++ b/policy/modules/kernel/terminal.if
 @@ -623,9 +623,11 @@ interface(`term_getattr_generic_ptys',`
@@ -92,7 +93,7 @@ index 61308843..a84787e6 100644
  ')
  
  #######################################
-@@ -743,10 +755,12 @@ interface(`term_dontaudit_use_generic_ptys',`
+@@ -764,10 +776,12 @@ interface(`term_create_controlling_term',`
  interface(`term_setattr_controlling_term',`
  	gen_require(`
  		type devtty_t;
@@ -105,7 +106,7 @@ index 61308843..a84787e6 100644
  ')
  
  ########################################
-@@ -763,10 +777,12 @@ interface(`term_setattr_controlling_term',`
+@@ -784,10 +798,12 @@ interface(`term_setattr_controlling_term',`
  interface(`term_use_controlling_term',`
  	gen_require(`
  		type devtty_t;
@@ -119,5 +120,5 @@ index 61308843..a84787e6 100644
  
  #######################################
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy-git/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch b/recipes-security/refpolicy/refpolicy/0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
similarity index 74%
rename from recipes-security/refpolicy/refpolicy-git/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch
rename to recipes-security/refpolicy/refpolicy/0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
index 06f9207..cc018fa 100644
--- a/recipes-security/refpolicy/refpolicy-git/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch
+++ b/recipes-security/refpolicy/refpolicy/0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch
@@ -1,22 +1,23 @@
-From 3f5a9b987211ef511bfd1c76b1a7dffad51fba0c Mon Sep 17 00:00:00 2001
+From a9aebca531f52818fe77b9b21f0cad425da78e43 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 23/34] policy/module/terminals: don't audit tty_device_t in
- term_dontaudit_use_console.
+Subject: [PATCH] policy/modules/kernel/terminal: don't audit tty_device_t in
+ term_dontaudit_use_console
 
 We should also not audit terminal to rw tty_device_t and fds in
 term_dontaudit_use_console.
 
-Upstream-Status: Inappropriate [only for Poky]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  policy/modules/kernel/terminal.if | 3 +++
  1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
-index a84787e6..cf66da2f 100644
+index f70e51525..8f9578dbc 100644
 --- a/policy/modules/kernel/terminal.if
 +++ b/policy/modules/kernel/terminal.if
 @@ -335,9 +335,12 @@ interface(`term_use_console',`
@@ -33,5 +34,5 @@ index a84787e6..cf66da2f 100644
  
  ########################################
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0037-policy-modules-services-avahi-allow-avahi_t-to-watch.patch b/recipes-security/refpolicy/refpolicy/0037-policy-modules-services-avahi-allow-avahi_t-to-watch.patch
new file mode 100644
index 0000000..52887e5
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0037-policy-modules-services-avahi-allow-avahi_t-to-watch.patch
@@ -0,0 +1,34 @@
+From 4316f85adb1ab6e0278fb8e8ff68b358f36a933e Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 08:19:16 +0800
+Subject: [PATCH] policy/modules/services/avahi: allow avahi_t to watch /etc
+ directory
+
+Fixes:
+type=AVC msg=audit(1592813140.176:24): avc:  denied  { watch } for
+pid=360 comm="avahi-daemon" path="/services" dev="vda" ino=173
+scontext=system_u:system_r:avahi_t tcontext=system_u:object_r:etc_t
+tclass=dir permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/avahi.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/services/avahi.te b/policy/modules/services/avahi.te
+index f77e5546d..5643349e3 100644
+--- a/policy/modules/services/avahi.te
++++ b/policy/modules/services/avahi.te
+@@ -76,6 +76,7 @@ domain_use_interactive_fds(avahi_t)
+ 
+ files_read_etc_runtime_files(avahi_t)
+ files_read_usr_files(avahi_t)
++files_watch_etc_dirs(avahi_t)
+ 
+ auth_use_nsswitch(avahi_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-getty-allow-getty_t-watch-gett.patch b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-getty-allow-getty_t-watch-gett.patch
new file mode 100644
index 0000000..3be2cdc
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0038-policy-modules-system-getty-allow-getty_t-watch-gett.patch
@@ -0,0 +1,42 @@
+From 383a70a87049ef5065bba4c2c4d4bc3cff914358 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 08:39:44 +0800
+Subject: [PATCH] policy/modules/system/getty: allow getty_t watch
+ getty_runtime_t file
+
+Fixes:
+type=AVC msg=audit(1592813140.280:26): avc:  denied  { watch } for
+pid=385 comm="getty" path="/run/agetty.reload" dev="tmpfs" ino=12247
+scontext=system_u:system_r:getty_t
+tcontext=system_u:object_r:getty_runtime_t tclass=file permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/getty.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.te
+index f5316c30a..39e27e5f1 100644
+--- a/policy/modules/system/getty.te
++++ b/policy/modules/system/getty.te
+@@ -47,6 +47,7 @@ allow getty_t getty_log_t:file { append_file_perms create_file_perms setattr_fil
+ logging_log_filetrans(getty_t, getty_log_t, file)
+ 
+ allow getty_t getty_runtime_t:dir watch;
++allow getty_t getty_runtime_t:file watch;
+ manage_files_pattern(getty_t, getty_runtime_t, getty_runtime_t)
+ files_runtime_filetrans(getty_t, getty_runtime_t, file)
+ 
+@@ -65,6 +66,7 @@ dev_read_sysfs(getty_t)
+ files_read_etc_runtime_files(getty_t)
+ files_read_etc_files(getty_t)
+ files_search_spool(getty_t)
++fs_search_tmpfs(getty_t)
+ 
+ fs_search_auto_mountpoints(getty_t)
+ # for error condition handling
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0039-policy-modules-services-bluetooth-allow-bluetooth_t-.patch b/recipes-security/refpolicy/refpolicy/0039-policy-modules-services-bluetooth-allow-bluetooth_t-.patch
new file mode 100644
index 0000000..39e72e8
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0039-policy-modules-services-bluetooth-allow-bluetooth_t-.patch
@@ -0,0 +1,65 @@
+From dfc3e78dfee0709bcbfc2d1959e5b7c27922b1b7 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 08:54:20 +0800
+Subject: [PATCH] policy/modules/services/bluetooth: allow bluetooth_t to
+ create and use bluetooth_socket
+
+Fixes:
+type=AVC msg=audit(1592813138.485:17): avc:  denied  { create } for
+pid=324 comm="bluetoothd" scontext=system_u:system_r:bluetooth_t
+tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
+permissive=1
+type=AVC msg=audit(1592813138.485:18): avc:  denied  { bind } for
+pid=324 comm="bluetoothd" scontext=system_u:system_r:bluetooth_t
+tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
+permissive=1
+type=AVC msg=audit(1592813138.485:19): avc:  denied  { write } for
+pid=324 comm="bluetoothd" scontext=system_u:system_r:bluetooth_t
+tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
+permissive=1
+type=AVC msg=audit(1592813138.488:20): avc:  denied  { getattr } for
+pid=324 comm="bluetoothd" path="socket:[11771]" dev="sockfs" ino=11771
+scontext=system_u:system_r:bluetooth_t
+tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
+permissive=1
+type=AVC msg=audit(1592813138.488:21): avc:  denied  { listen } for
+pid=324 comm="bluetoothd" scontext=system_u:system_r:bluetooth_t
+tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
+permissive=1
+type=AVC msg=audit(1592813138.498:22): avc:  denied  { read } for
+pid=324 comm="bluetoothd" path="socket:[11771]" dev="sockfs" ino=11771
+scontext=system_u:system_r:bluetooth_t
+tcontext=system_u:system_r:bluetooth_t tclass=bluetooth_socket
+permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/bluetooth.te | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/services/bluetooth.te b/policy/modules/services/bluetooth.te
+index 025eff444..63e50aeda 100644
+--- a/policy/modules/services/bluetooth.te
++++ b/policy/modules/services/bluetooth.te
+@@ -60,6 +60,7 @@ allow bluetooth_t self:socket create_stream_socket_perms;
+ allow bluetooth_t self:unix_stream_socket { accept connectto listen };
+ allow bluetooth_t self:tcp_socket { accept listen };
+ allow bluetooth_t self:netlink_kobject_uevent_socket create_socket_perms;
++allow bluetooth_t self:bluetooth_socket create_stream_socket_perms;
+ 
+ read_files_pattern(bluetooth_t, bluetooth_conf_t, bluetooth_conf_t)
+ 
+@@ -127,6 +128,8 @@ userdom_dontaudit_use_unpriv_user_fds(bluetooth_t)
+ userdom_dontaudit_use_user_terminals(bluetooth_t)
+ userdom_dontaudit_search_user_home_dirs(bluetooth_t)
+ 
++init_dbus_send_script(bluetooth_t)
++
+ optional_policy(`
+ 	dbus_system_bus_client(bluetooth_t)
+ 	dbus_connect_system_bus(bluetooth_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch b/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch
new file mode 100644
index 0000000..e5ad291
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0040-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch
@@ -0,0 +1,38 @@
+From 354389c93e26bb8d8e8c1c126b01d838a6a214c8 Mon Sep 17 00:00:00 2001
+From: Roy Li <rongqing.li@windriver.com>
+Date: Sat, 15 Feb 2014 09:45:00 +0800
+Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm to run rpcinfo
+
+Fixes:
+$ rpcinfo
+rpcinfo: can't contact rpcbind: RPC: Remote system error - Permission denied
+
+avc:  denied  { connectto } for  pid=406 comm="rpcinfo"
+path="/run/rpcbind.sock" scontext=root:sysadm_r:sysadm_t
+tcontext=system_u:system_r:rpcbind_t tclass=unix_stream_socket
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/roles/sysadm.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index f0370b426..fc0945fe4 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -962,6 +962,7 @@ optional_policy(`
+ ')
+ 
+ optional_policy(`
++	rpcbind_stream_connect(sysadm_t)
+ 	rpcbind_admin(sysadm_t, sysadm_r)
+ ')
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-add-capability-dac_read_.patch b/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-add-capability-dac_read_.patch
new file mode 100644
index 0000000..074647d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0041-policy-modules-services-rpc-add-capability-dac_read_.patch
@@ -0,0 +1,34 @@
+From fbc8f3140bf6b519bad568fc1d840c9043fc13db Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 14 May 2019 15:22:08 +0800
+Subject: [PATCH] policy/modules/services/rpc: add capability dac_read_search
+ for rpcd_t
+
+Fixes:
+type=AVC msg=audit(1558592079.931:494): avc:  denied  { dac_read_search }
+for  pid=585 comm="sm-notify" capability=2 scontext=system_u:system_r:rpcd_t
+tcontext=system_u:system_r:rpcd_t tclass=capability permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/rpc.te | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
+index 020dbc4ad..c06ff803f 100644
+--- a/policy/modules/services/rpc.te
++++ b/policy/modules/services/rpc.te
+@@ -142,7 +142,7 @@ optional_policy(`
+ # Local policy
+ #
+ 
+-allow rpcd_t self:capability { chown dac_override setgid setpcap setuid sys_admin };
++allow rpcd_t self:capability { chown dac_override dac_read_search setgid setpcap setuid sys_admin };
+ allow rpcd_t self:capability2 block_suspend;
+ allow rpcd_t self:process { getcap setcap };
+ allow rpcd_t self:fifo_file rw_fifo_file_perms;
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch b/recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
new file mode 100644
index 0000000..7ef81fe
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0042-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch
@@ -0,0 +1,45 @@
+From dfe79338ee9915527afd9e0943ed84e0347c4d66 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Wed, 1 Jul 2020 08:44:07 +0800
+Subject: [PATCH] policy/modules/services/rpcbind: allow rpcbind_t to create
+ directory with label rpcbind_runtime_t
+
+Fixes:
+avc:  denied  { create } for  pid=136 comm="rpcbind" name="rpcbind"
+scontext=system_u:system_r:rpcbind_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:var_run_t:s0 tclass=dir permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/rpcbind.te | 5 +++--
+ 1 file changed, 3 insertions(+), 2 deletions(-)
+
+diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/rpcbind.te
+index 69ed49d8b..4f110773a 100644
+--- a/policy/modules/services/rpcbind.te
++++ b/policy/modules/services/rpcbind.te
+@@ -25,16 +25,17 @@ files_type(rpcbind_var_lib_t)
+ # Local policy
+ #
+ 
+-allow rpcbind_t self:capability { dac_override setgid setuid sys_tty_config };
++allow rpcbind_t self:capability { dac_override setgid setuid sys_tty_config chown };
+ # net_admin is for SO_SNDBUFFORCE
+ dontaudit rpcbind_t self:capability net_admin;
+ allow rpcbind_t self:fifo_file rw_fifo_file_perms;
+ allow rpcbind_t self:unix_stream_socket { accept listen };
+ allow rpcbind_t self:tcp_socket { accept listen };
+ 
++manage_dirs_pattern(rpcbind_t, rpcbind_runtime_t, rpcbind_runtime_t)
+ manage_files_pattern(rpcbind_t, rpcbind_runtime_t, rpcbind_runtime_t)
+ manage_sock_files_pattern(rpcbind_t, rpcbind_runtime_t, rpcbind_runtime_t)
+-files_runtime_filetrans(rpcbind_t, rpcbind_runtime_t, { file sock_file })
++files_runtime_filetrans(rpcbind_t, rpcbind_runtime_t, { file sock_file dir })
+ 
+ manage_dirs_pattern(rpcbind_t, rpcbind_var_lib_t, rpcbind_var_lib_t)
+ manage_files_pattern(rpcbind_t, rpcbind_var_lib_t, rpcbind_var_lib_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rngd-fix-security-context-fo.patch b/recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rngd-fix-security-context-fo.patch
new file mode 100644
index 0000000..491cf02
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0043-policy-modules-services-rngd-fix-security-context-fo.patch
@@ -0,0 +1,64 @@
+From 617b8b558674a77cd2b1eff9155f276985456684 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Wed, 25 May 2016 03:16:24 -0400
+Subject: [PATCH] policy/modules/services/rngd: fix security context for
+ rng-tools
+
+* fix security context for /etc/init.d/rng-tools
+* allow rngd_t to search /run/systemd/journal
+
+Fixes:
+audit: type=1400 audit(1592874699.503:11): avc:  denied  { read } for
+pid=355 comm="rngd" name="cpu" dev="sysfs" ino=36
+scontext=system_u:system_r:rngd_t tcontext=system_u:object_r:sysfs_t
+tclass=dir permissive=1
+audit: type=1400 audit(1592874699.505:12): avc:  denied  { getsched }
+for pid=355 comm="rngd" scontext=system_u:system_r:rngd_t
+tcontext=system_u:system_r:rngd_t tclass=process permissive=1
+audit: type=1400 audit(1592874699.508:13): avc:  denied  { setsched }
+for pid=355 comm="rngd" scontext=system_u:system_r:rngd_t
+tcontext=system_u:system_r:rngd_t tclass=process permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/rngd.fc | 1 +
+ policy/modules/services/rngd.te | 3 ++-
+ 2 files changed, 3 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/services/rngd.fc b/policy/modules/services/rngd.fc
+index 382c067f9..0ecc5acc4 100644
+--- a/policy/modules/services/rngd.fc
++++ b/policy/modules/services/rngd.fc
+@@ -1,4 +1,5 @@
+ /etc/rc\.d/init\.d/rngd	--	gen_context(system_u:object_r:rngd_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/rng-tools	--	gen_context(system_u:object_r:rngd_initrc_exec_t,s0)
+ 
+ /usr/bin/rngd	--	gen_context(system_u:object_r:rngd_exec_t,s0)
+ 
+diff --git a/policy/modules/services/rngd.te b/policy/modules/services/rngd.te
+index 839813216..c4ffafb5d 100644
+--- a/policy/modules/services/rngd.te
++++ b/policy/modules/services/rngd.te
+@@ -21,7 +21,7 @@ files_runtime_file(rngd_runtime_t)
+ #
+ 
+ allow rngd_t self:capability { ipc_lock sys_admin };
+-allow rngd_t self:process signal;
++allow rngd_t self:process { signal getsched setsched };
+ allow rngd_t self:fifo_file rw_fifo_file_perms;
+ allow rngd_t self:unix_stream_socket { accept listen };
+ 
+@@ -34,6 +34,7 @@ dev_read_rand(rngd_t)
+ dev_read_urand(rngd_t)
+ dev_rw_tpm(rngd_t)
+ dev_write_rand(rngd_t)
++dev_read_sysfs(rngd_t)
+ 
+ files_read_etc_files(rngd_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-authlogin-allow-chkpwd_t-to-ma.patch b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-authlogin-allow-chkpwd_t-to-ma.patch
new file mode 100644
index 0000000..f929df2
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0044-policy-modules-system-authlogin-allow-chkpwd_t-to-ma.patch
@@ -0,0 +1,34 @@
+From 0e3199f243a47853452a877ebad5360bc8c1f2f1 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 21 Nov 2019 13:58:28 +0800
+Subject: [PATCH] policy/modules/system/authlogin: allow chkpwd_t to map
+ shadow_t
+
+Fixes:
+avc:  denied  { map } for  pid=244 comm="unix_chkpwd" path="/etc/shadow"
+dev="vda" ino=443 scontext=system_u:system_r:chkpwd_t
+tcontext=system_u:object_r:shadow_t tclass=file permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/authlogin.te | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/authlogin.te
+index 0fc5951e9..e999fa798 100644
+--- a/policy/modules/system/authlogin.te
++++ b/policy/modules/system/authlogin.te
+@@ -100,7 +100,7 @@ allow chkpwd_t self:capability { dac_override setuid };
+ dontaudit chkpwd_t self:capability sys_tty_config;
+ allow chkpwd_t self:process { getattr signal };
+ 
+-allow chkpwd_t shadow_t:file read_file_perms;
++allow chkpwd_t shadow_t:file { read_file_perms map };
+ files_list_etc(chkpwd_t)
+ 
+ kernel_read_crypto_sysctls(chkpwd_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-udev-allow-udevadm_t-to-search.patch b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-udev-allow-udevadm_t-to-search.patch
new file mode 100644
index 0000000..03d9552
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0045-policy-modules-system-udev-allow-udevadm_t-to-search.patch
@@ -0,0 +1,34 @@
+From bd03c34ab3c193d6c21a6c0b951e89dd4e24eee6 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 19 Jun 2020 15:21:26 +0800
+Subject: [PATCH] policy/modules/system/udev: allow udevadm_t to search bin dir
+
+Fixes:
+audit: type=1400 audit(1592894099.930:6): avc:  denied  { search } for
+pid=153 comm="udevadm" name="bin" dev="vda" ino=13
+scontext=system_u:system_r:udevadm_t tcontext=system_u:object_r:bin_t
+tclass=dir permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/udev.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
+index 52da11acd..3a4d7362c 100644
+--- a/policy/modules/system/udev.te
++++ b/policy/modules/system/udev.te
+@@ -415,6 +415,8 @@ dev_read_urand(udevadm_t)
+ files_read_etc_files(udevadm_t)
+ files_read_usr_files(udevadm_t)
+ 
++corecmd_search_bin(udevadm_t)
++
+ init_list_runtime(udevadm_t)
+ init_read_state(udevadm_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0046-policy-modules-udev-do-not-audit-udevadm_t-to-read-w.patch b/recipes-security/refpolicy/refpolicy/0046-policy-modules-udev-do-not-audit-udevadm_t-to-read-w.patch
new file mode 100644
index 0000000..9397287
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0046-policy-modules-udev-do-not-audit-udevadm_t-to-read-w.patch
@@ -0,0 +1,37 @@
+From 8b5eb5b2e01a7686c43ba7b53cc76f465f9e8f56 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 30 Jun 2020 09:27:45 +0800
+Subject: [PATCH] policy/modules/udev: do not audit udevadm_t to read/write
+ /dev/console
+
+Fixes:
+avc:  denied  { read write } for  pid=162 comm="udevadm"
+path="/dev/console" dev="devtmpfs" ino=10034
+scontext=system_u:system_r:udevadm_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:console_device_t:s0 tclass=chr_file
+permissive=0
+avc:  denied  { use } for  pid=162 comm="udevadm" path="/dev/console"
+dev="devtmpfs" ino=10034
+scontext=system_u:system_r:udevadm_t:s0-s15:c0.c1023
+tcontext=system_u:system_r:init_t:s0-s15:c0.c1023 tclass=fd permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/udev.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
+index 3a4d7362c..e483d63d3 100644
+--- a/policy/modules/system/udev.te
++++ b/policy/modules/system/udev.te
+@@ -425,3 +425,5 @@ kernel_read_system_state(udevadm_t)
+ 
+ seutil_read_file_contexts(udevadm_t)
+ 
++init_dontaudit_use_fds(udevadm_t)
++term_dontaudit_use_console(udevadm_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0047-policy-modules-services-rdisc-allow-rdisc_t-to-searc.patch b/recipes-security/refpolicy/refpolicy/0047-policy-modules-services-rdisc-allow-rdisc_t-to-searc.patch
new file mode 100644
index 0000000..bfb50cc
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0047-policy-modules-services-rdisc-allow-rdisc_t-to-searc.patch
@@ -0,0 +1,34 @@
+From 6bcf62e310931e8be943520a7e1a5686f54a8e34 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 15:44:43 +0800
+Subject: [PATCH] policy/modules/services/rdisc: allow rdisc_t to search sbin
+ dir
+
+Fixes:
+avc:  denied  { search } for  pid=225 comm="rdisc" name="sbin" dev="vda"
+ino=1478 scontext=system_u:system_r:rdisc_t
+tcontext=system_u:object_r:bin_t tclass=dir permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/rdisc.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/services/rdisc.te b/policy/modules/services/rdisc.te
+index 82d54dbb7..1dd458f8e 100644
+--- a/policy/modules/services/rdisc.te
++++ b/policy/modules/services/rdisc.te
+@@ -47,6 +47,8 @@ sysnet_read_config(rdisc_t)
+ 
+ userdom_dontaudit_use_unpriv_user_fds(rdisc_t)
+ 
++corecmd_search_bin(rdisc_t)
++
+ optional_policy(`
+ 	seutil_sigchld_newrole(rdisc_t)
+ ')
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-logging-fix-auditd-startup-fai.patch b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-logging-fix-auditd-startup-fai.patch
new file mode 100644
index 0000000..cb5b88d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0048-policy-modules-system-logging-fix-auditd-startup-fai.patch
@@ -0,0 +1,52 @@
+From b585008cec90386903e7613a4a22286c0a94be8c Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Tue, 24 Jan 2017 08:45:35 +0000
+Subject: [PATCH] policy/modules/system/logging: fix auditd startup failures
+
+Fixes:
+  avc: denied { getcap } for pid=849 comm="auditctl" \
+  scontext=system_u:system_r:auditctl_t:s0-s15:c0.c1023 \
+  tcontext=system_u:system_r:auditctl_t:s0-s15:c0.c1023 \
+  tclass=process
+
+  avc: denied { setattr } for pid=848 comm="auditd" \
+  name="audit" dev="tmpfs" ino=9569 \
+  scontext=system_u:system_r:auditd_t:s15:c0.c1023 \
+  tcontext=system_u:object_r:auditd_log_t:s15:c0.c1023 \
+  tclass=dir
+
+  avc: denied { search } for pid=731 comm="auditd" \
+  name="/" dev="tmpfs" ino=9399 \
+  scontext=system_u:system_r:auditd_t:s15:c0.c1023 \
+  tcontext=system_u:object_r:tmpfs_t:s0 tclass=dir
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/system/logging.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 2d9f65d2d..95309f334 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -157,6 +157,7 @@ allow auditd_t auditd_etc_t:dir list_dir_perms;
+ allow auditd_t auditd_etc_t:file read_file_perms;
+ dontaudit auditd_t auditd_etc_t:file map;
+ 
++manage_dirs_pattern(auditd_t, auditd_log_t, auditd_log_t)
+ manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
+ allow auditd_t auditd_log_t:dir setattr;
+ manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
+@@ -177,6 +178,7 @@ dev_read_sysfs(auditd_t)
+ fs_getattr_all_fs(auditd_t)
+ fs_search_auto_mountpoints(auditd_t)
+ fs_rw_anon_inodefs_files(auditd_t)
++fs_search_tmpfs(auditd_t)
+ 
+ selinux_search_fs(auditctl_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0049-policy-modules-services-ssh-make-respective-init-scr.patch b/recipes-security/refpolicy/refpolicy/0049-policy-modules-services-ssh-make-respective-init-scr.patch
new file mode 100644
index 0000000..86df765
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0049-policy-modules-services-ssh-make-respective-init-scr.patch
@@ -0,0 +1,33 @@
+From 878f3eb8e0716764ea4d42b996f58ea9072204fc Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sun, 28 Jun 2020 16:14:45 +0800
+Subject: [PATCH] policy/modules/services/ssh: make respective init scripts
+ create pid dirs with proper contexts
+
+Fix sshd starup failure.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/ssh.te | 4 +---
+ 1 file changed, 1 insertion(+), 3 deletions(-)
+
+diff --git a/policy/modules/services/ssh.te b/policy/modules/services/ssh.te
+index fefca0c20..db62eaa18 100644
+--- a/policy/modules/services/ssh.te
++++ b/policy/modules/services/ssh.te
+@@ -80,9 +80,7 @@ userdom_user_home_content(ssh_home_t)
+ type sshd_keytab_t;
+ files_type(sshd_keytab_t)
+ 
+-ifdef(`distro_debian',`
+-	init_daemon_runtime_file(sshd_runtime_t, dir, "sshd")
+-')
++init_daemon_runtime_file(sshd_runtime_t, dir, "sshd")
+ 
+ ##############################
+ #
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-terminal-allow-loging-to-reset.patch b/recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-terminal-allow-loging-to-reset.patch
new file mode 100644
index 0000000..e15e57b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0050-policy-modules-kernel-terminal-allow-loging-to-reset.patch
@@ -0,0 +1,31 @@
+From fb900b71d7e1fa5c3bd997e6deadcaae2b65b05a Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 29 Jun 2020 14:27:02 +0800
+Subject: [PATCH] policy/modules/kernel/terminal: allow loging to reset tty
+ perms
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/kernel/terminal.if | 4 +---
+ 1 file changed, 1 insertion(+), 3 deletions(-)
+
+diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
+index 8f9578dbc..3821ab9b0 100644
+--- a/policy/modules/kernel/terminal.if
++++ b/policy/modules/kernel/terminal.if
+@@ -119,9 +119,7 @@ interface(`term_user_tty',`
+ 
+ 	# Debian login is from shadow utils and does not allow resetting the perms.
+ 	# have to fix this!
+-	ifdef(`distro_debian',`
+-		type_change $1 ttynode:chr_file $2;
+-	')
++	type_change $1 ttynode:chr_file $2;
+ 
+ 	tunable_policy(`console_login',`
+ 		# When user logs in from /dev/console, relabel it
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-selinuxutil-allow-semanage_t-t.patch b/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-selinuxutil-allow-semanage_t-t.patch
new file mode 100644
index 0000000..d4f996d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0051-policy-modules-system-selinuxutil-allow-semanage_t-t.patch
@@ -0,0 +1,33 @@
+From 2c8464254adf0b2635e5abf4ccc4473c96fa0006 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 29 Jun 2020 14:30:58 +0800
+Subject: [PATCH] policy/modules/system/selinuxutil: allow semanage_t to read
+ /var/lib
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/selinuxutil.te | 6 ++----
+ 1 file changed, 2 insertions(+), 4 deletions(-)
+
+diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
+index fad28f179..09fef149b 100644
+--- a/policy/modules/system/selinuxutil.te
++++ b/policy/modules/system/selinuxutil.te
+@@ -544,10 +544,8 @@ userdom_map_user_home_content_files(semanage_t)
+ userdom_read_user_tmp_files(semanage_t)
+ userdom_map_user_tmp_files(semanage_t)
+ 
+-ifdef(`distro_debian',`
+-	files_read_var_lib_files(semanage_t)
+-	files_read_var_lib_symlinks(semanage_t)
+-')
++files_read_var_lib_files(semanage_t)
++files_read_var_lib_symlinks(semanage_t)
+ 
+ ifdef(`distro_ubuntu',`
+ 	optional_policy(`
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-sysnetwork-allow-ifconfig_t-to.patch b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-sysnetwork-allow-ifconfig_t-to.patch
new file mode 100644
index 0000000..5e606d7
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0052-policy-modules-system-sysnetwork-allow-ifconfig_t-to.patch
@@ -0,0 +1,35 @@
+From a3e4135c543be8d3a054e6f74629240370d111ed Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 27 May 2019 15:55:19 +0800
+Subject: [PATCH] policy/modules/system/sysnetwork: allow ifconfig_t to read
+ dhcp client state files
+
+Fixes:
+type=AVC msg=audit(1558942740.789:50): avc:  denied  { read } for
+pid=221 comm="ip" path="/var/lib/dhcp/dhclient.leases" dev="vda"
+ino=29858 scontext=system_u:system_r:ifconfig_t
+tcontext=system_u:object_r:dhcpc_state_t tclass=file permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/sysnetwork.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/sysnetwork.te b/policy/modules/system/sysnetwork.te
+index bbdbcdc7e..a77738924 100644
+--- a/policy/modules/system/sysnetwork.te
++++ b/policy/modules/system/sysnetwork.te
+@@ -319,6 +319,8 @@ kernel_request_load_module(ifconfig_t)
+ kernel_search_network_sysctl(ifconfig_t)
+ kernel_rw_net_sysctls(ifconfig_t)
+ 
++sysnet_read_dhcpc_state(ifconfig_t)
++
+ corenet_rw_tun_tap_dev(ifconfig_t)
+ 
+ dev_read_sysfs(ifconfig_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0053-policy-modules-services-ntp-allow-ntpd_t-to-watch-sy.patch b/recipes-security/refpolicy/refpolicy/0053-policy-modules-services-ntp-allow-ntpd_t-to-watch-sy.patch
new file mode 100644
index 0000000..85a6d63
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0053-policy-modules-services-ntp-allow-ntpd_t-to-watch-sy.patch
@@ -0,0 +1,55 @@
+From f23bb02c92bcbf7afa0c6b445719df6b06df15ea Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 6 Jul 2020 09:06:08 +0800
+Subject: [PATCH] policy/modules/services/ntp: allow ntpd_t to watch system bus
+ runtime directories and named sockets
+
+Fixes:
+avc:  denied  { read } for  pid=197 comm="systemd-timesyn" name="dbus"
+dev="tmpfs" ino=14064 scontext=system_u:system_r:ntpd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:system_dbusd_runtime_t:s0 tclass=dir
+permissive=0
+
+avc:  denied  { watch } for  pid=197 comm="systemd-timesyn"
+path="/run/dbus" dev="tmpfs" ino=14064
+scontext=system_u:system_r:ntpd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:system_dbusd_runtime_t:s0 tclass=dir
+permissive=0
+
+avc:  denied  { read } for  pid=197 comm="systemd-timesyn"
+name="system_bus_socket" dev="tmpfs" ino=14067
+scontext=system_u:system_r:ntpd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:system_dbusd_runtime_t:s0 tclass=sock_file
+permissive=0
+
+avc:  denied  { watch } for  pid=197 comm="systemd-timesyn"
+path="/run/dbus/system_bus_socket" dev="tmpfs" ino=14067
+scontext=system_u:system_r:ntpd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:system_dbusd_runtime_t:s0 tclass=sock_file
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/ntp.te | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/policy/modules/services/ntp.te b/policy/modules/services/ntp.te
+index 81f8c76bb..75603e16b 100644
+--- a/policy/modules/services/ntp.te
++++ b/policy/modules/services/ntp.te
+@@ -141,6 +141,10 @@ userdom_list_user_home_dirs(ntpd_t)
+ ifdef(`init_systemd',`
+ 	allow ntpd_t ntpd_unit_t:file read_file_perms;
+ 
++	dbus_watch_system_bus_runtime_dirs(ntpd_t)
++	allow ntpd_t system_dbusd_runtime_t:dir read;
++	dbus_watch_system_bus_runtime_named_sockets(ntpd_t)
++	allow ntpd_t system_dbusd_runtime_t:sock_file read;
+ 	dbus_system_bus_client(ntpd_t)
+ 	dbus_connect_system_bus(ntpd_t)
+ 	init_dbus_chat(ntpd_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-systemd-enable-support-for-sys.patch b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-systemd-enable-support-for-sys.patch
new file mode 100644
index 0000000..9dde899
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0054-policy-modules-system-systemd-enable-support-for-sys.patch
@@ -0,0 +1,64 @@
+From 9eee952a306000eaa5e92b578f3caa35b6a35699 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 4 Feb 2016 06:03:19 -0500
+Subject: [PATCH] policy/modules/system/systemd: enable support for
+ systemd-tmpfiles to manage all non-security files
+
+Fixes:
+systemd-tmpfiles[137]: Failed to create directory or subvolume "/var/volatile/log": Permission denied
+systemd-tmpfiles[137]: Failed to create directory or subvolume "/var/volatile/tmp": Permission denied
+systemd-tmpfiles[137]: Failed to create directory or subvolume "/var/log/audit": Permission denied
+
+avc:  denied  { write } for  pid=137 comm="systemd-tmpfile" name="/"
+dev="tmpfs" ino=12400 scontext=system_u:system_r:systemd_tmpfiles_t
+tcontext=system_u:object_r:tmpfs_t tclass=dir permissive=0
+
+avc:  denied  { read } for  pid=137 comm="systemd-tmpfile" name="dbus"
+dev="vda" ino=12363 scontext=system_u:system_r:systemd_tmpfiles_t
+tcontext=system_u:object_r:system_dbusd_var_lib_t tclass=dir
+permissive=0
+
+avc:  denied  { relabelfrom } for  pid=137 comm="systemd-tmpfile"
+name="log" dev="vda" ino=14129
+scontext=system_u:system_r:systemd_tmpfiles_t
+tcontext=system_u:object_r:var_log_t tclass=lnk_file permissive=0
+
+avc:  denied  { create } for  pid=137 comm="systemd-tmpfile"
+name="audit" scontext=system_u:system_r:systemd_tmpfiles_t
+tcontext=system_u:object_r:auditd_log_t tclass=dir permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 6 +++++-
+ 1 file changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 136990d08..c7fe51b62 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -10,7 +10,7 @@ policy_module(systemd, 1.9.14)
+ ## Enable support for systemd-tmpfiles to manage all non-security files.
+ ## </p>
+ ## </desc>
+-gen_tunable(systemd_tmpfiles_manage_all, false)
++gen_tunable(systemd_tmpfiles_manage_all, true)
+ 
+ ## <desc>
+ ## <p>
+@@ -1196,6 +1196,10 @@ files_relabel_var_lib_dirs(systemd_tmpfiles_t)
+ files_relabelfrom_home(systemd_tmpfiles_t)
+ files_relabelto_home(systemd_tmpfiles_t)
+ files_relabelto_etc_dirs(systemd_tmpfiles_t)
++
++files_manage_non_auth_files(systemd_tmpfiles_t)
++files_relabel_non_auth_files(systemd_tmpfiles_t)
++
+ # for /etc/mtab
+ files_manage_etc_symlinks(systemd_tmpfiles_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-logging-fix-systemd-journald-s.patch b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-logging-fix-systemd-journald-s.patch
new file mode 100644
index 0000000..7291d2e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-logging-fix-systemd-journald-s.patch
@@ -0,0 +1,74 @@
+From e10a4ea43bb756bdecc30a3c14f0d2fe980405bd Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 4 Feb 2016 02:10:15 -0500
+Subject: [PATCH] policy/modules/system/logging: fix systemd-journald startup
+ failures
+
+Fixes:
+avc:  denied  { search } for  pid=233 comm="systemd-journal" name="/"
+dev="tmpfs" ino=12398 scontext=system_u:system_r:syslogd_t
+tcontext=system_u:object_r:tmpfs_t tclass=dir permissive=0
+
+avc:  denied  { nlmsg_write } for  pid=110 comm="systemd-journal"
+scontext=system_u:system_r:syslogd_t
+tcontext=system_u:system_r:syslogd_t tclass=netlink_audit_socket
+permissive=0
+
+avc:  denied  { audit_control } for  pid=109 comm="systemd-journal"
+capability=30  scontext=system_u:system_r:syslogd_t
+tcontext=system_u:system_r:syslogd_t tclass=capability permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/logging.fc | 1 +
+ policy/modules/system/logging.te | 5 ++++-
+ 2 files changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
+index a4ecd570a..dee26a9f4 100644
+--- a/policy/modules/system/logging.fc
++++ b/policy/modules/system/logging.fc
+@@ -24,6 +24,7 @@
+ /usr/lib/systemd/system/auditd.* -- gen_context(system_u:object_r:auditd_unit_t,s0)
+ /usr/lib/systemd/system/[^/]*systemd-journal.* -- gen_context(system_u:object_r:syslogd_unit_t,s0)
+ /usr/lib/systemd/system/rsyslog.*\.service -- gen_context(system_u:object_r:syslogd_unit_t,s0)
++/usr/lib/systemd/system/syslog.*\.service -- gen_context(system_u:object_r:syslogd_unit_t,s0)
+ /usr/lib/systemd/systemd-journald -- gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /usr/lib/systemd/systemd-kmsg-syslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ 
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 95309f334..1d45a5fa9 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -438,6 +438,7 @@ allow syslogd_t syslogd_runtime_t:sock_file { create setattr unlink };
+ allow syslogd_t syslogd_runtime_t:file map;
+ manage_files_pattern(syslogd_t, syslogd_runtime_t, syslogd_runtime_t)
+ files_runtime_filetrans(syslogd_t, syslogd_runtime_t, file)
++fs_search_tmpfs(syslogd_t)
+ 
+ kernel_read_crypto_sysctls(syslogd_t)
+ kernel_read_system_state(syslogd_t)
+@@ -517,6 +518,8 @@ init_use_fds(syslogd_t)
+ # cjp: this doesnt make sense
+ logging_send_syslog_msg(syslogd_t)
+ 
++logging_set_loginuid(syslogd_t)
++
+ miscfiles_read_localization(syslogd_t)
+ 
+ seutil_read_config(syslogd_t)
+@@ -529,7 +532,7 @@ ifdef(`init_systemd',`
+ 	allow syslogd_t self:netlink_audit_socket connected_socket_perms;
+ 	allow syslogd_t self:capability2 audit_read;
+ 	allow syslogd_t self:capability { chown setgid setuid sys_ptrace };
+-	allow syslogd_t self:netlink_audit_socket { getattr getopt read setopt write };
++	allow syslogd_t self:netlink_audit_socket { getattr getopt read setopt write nlmsg_write };
+ 
+ 	# remove /run/log/journal when switching to permanent storage
+ 	allow syslogd_t var_log_t:dir rmdir;
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0056-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch b/recipes-security/refpolicy/refpolicy/0056-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch
new file mode 100644
index 0000000..7cf3763
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0056-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch
@@ -0,0 +1,36 @@
+From 7fd830d6b2c60dcf5b8ee0b2ff94436de63d5b8c Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 29 Jun 2020 10:32:25 +0800
+Subject: [PATCH] policy/modules/roles/sysadm: allow sysadm_t to watch runtime
+ dirs
+
+Fixes:
+Failed to add a watch for /run/systemd/ask-password: Permission denied
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/roles/sysadm.te | 6 ++++++
+ 1 file changed, 6 insertions(+)
+
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index fc0945fe4..07b9faf30 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -83,6 +83,12 @@ ifdef(`init_systemd',`
+ 	# Allow sysadm to resolve the username of dynamic users by calling
+ 	# LookupDynamicUserByUID on org.freedesktop.systemd1.
+ 	init_dbus_chat(sysadm_t)
++
++	fs_watch_cgroup_files(sysadm_t)
++	files_watch_etc_symlinks(sysadm_t)
++	mount_watch_runtime_dirs(sysadm_t)
++	systemd_filetrans_passwd_runtime_dirs(sysadm_t)
++	allow sysadm_t systemd_passwd_runtime_t:dir watch;
+ ')
+ 
+ tunable_policy(`allow_ptrace',`
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-systemd-add-capability-mknod-f.patch b/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-systemd-add-capability-mknod-f.patch
new file mode 100644
index 0000000..b1a72d6
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0057-policy-modules-system-systemd-add-capability-mknod-f.patch
@@ -0,0 +1,35 @@
+From 4782b27839064438f103b77c31e5db75189025a8 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 18 Jun 2020 16:14:45 +0800
+Subject: [PATCH] policy/modules/system/systemd: add capability mknod for
+ systemd_user_runtime_dir_t
+
+Fixes:
+avc:  denied  { mknod } for  pid=266 comm="systemd-user-ru" capability=27
+scontext=system_u:system_r:systemd_user_runtime_dir_t:s0-s15:c0.c1023
+tcontext=system_u:system_r:systemd_user_runtime_dir_t:s0-s15:c0.c1023
+tclass=capability permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index c7fe51b62..f82031a09 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -1372,7 +1372,7 @@ seutil_libselinux_linked(systemd_user_session_type)
+ # systemd-user-runtime-dir local policy
+ #
+ 
+-allow systemd_user_runtime_dir_t self:capability { fowner chown sys_admin dac_read_search dac_override };
++allow systemd_user_runtime_dir_t self:capability { fowner chown sys_admin dac_read_search dac_override mknod };
+ allow systemd_user_runtime_dir_t self:process setfscreate;
+ 
+ domain_obj_id_change_exemption(systemd_user_runtime_dir_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0058-policy-modules-system-systemd-systemd-gpt-auto-gener.patch b/recipes-security/refpolicy/refpolicy/0058-policy-modules-system-systemd-systemd-gpt-auto-gener.patch
new file mode 100644
index 0000000..fc1684f
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0058-policy-modules-system-systemd-systemd-gpt-auto-gener.patch
@@ -0,0 +1,35 @@
+From 0607a935759fe3143f473d4a444f92e01aaa2a45 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 14:52:43 +0800
+Subject: [PATCH] policy/modules/system/systemd: systemd-gpt-auto-generator: do
+ not audit attempts to read or write unallocated ttys
+
+Fixes:
+avc:  denied  { read write } for  pid=87 comm="systemd-getty-g"
+name="ttyS0" dev="devtmpfs" ino=10128
+scontext=system_u:system_r:systemd_generator_t
+tcontext=system_u:object_r:tty_device_t tclass=chr_file permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index f82031a09..fb8d4960f 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -400,6 +400,8 @@ storage_raw_read_fixed_disk(systemd_generator_t)
+ 
+ systemd_log_parse_environment(systemd_generator_t)
+ 
++term_dontaudit_use_unallocated_ttys(systemd_generator_t)
++
+ optional_policy(`
+ 	fstools_exec(systemd_generator_t)
+ ')
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0059-policy-modules-services-rpc-fix-policy-for-nfsserver.patch b/recipes-security/refpolicy/refpolicy/0059-policy-modules-services-rpc-fix-policy-for-nfsserver.patch
new file mode 100644
index 0000000..d4bdd37
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0059-policy-modules-services-rpc-fix-policy-for-nfsserver.patch
@@ -0,0 +1,78 @@
+From fbf98576f32e33e55f3babeb9db255a459fad711 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Fri, 23 Aug 2013 12:01:53 +0800
+Subject: [PATCH] policy/modules/services/rpc: fix policy for nfsserver to
+ mount nfsd_fs_t
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/kernel/kernel.te    | 2 ++
+ policy/modules/services/rpc.fc     | 2 ++
+ policy/modules/services/rpc.te     | 2 ++
+ policy/modules/services/rpcbind.te | 6 ++++++
+ 4 files changed, 12 insertions(+)
+
+diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
+index c8218bf8c..44c031a39 100644
+--- a/policy/modules/kernel/kernel.te
++++ b/policy/modules/kernel/kernel.te
+@@ -356,6 +356,8 @@ mls_process_read_all_levels(kernel_t)
+ mls_process_write_all_levels(kernel_t)
+ mls_file_write_all_levels(kernel_t)
+ mls_file_read_all_levels(kernel_t)
++mls_socket_write_all_levels(kernel_t)
++mls_fd_use_all_levels(kernel_t)
+ 
+ ifdef(`distro_redhat',`
+ 	# Bugzilla 222337
+diff --git a/policy/modules/services/rpc.fc b/policy/modules/services/rpc.fc
+index 6d3c9b68b..75999a57c 100644
+--- a/policy/modules/services/rpc.fc
++++ b/policy/modules/services/rpc.fc
+@@ -1,7 +1,9 @@
+ /etc/exports	--	gen_context(system_u:object_r:exports_t,s0)
+ 
+ /etc/rc\.d/init\.d/nfs	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/nfsserver	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
+ /etc/rc\.d/init\.d/nfslock	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/nfscommon	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
+ /etc/rc\.d/init\.d/rpcidmapd	--	gen_context(system_u:object_r:rpcd_initrc_exec_t,s0)
+ 
+ /usr/bin/rpc\..*	--	gen_context(system_u:object_r:rpcd_exec_t,s0)
+diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
+index c06ff803f..7c0b37ddc 100644
+--- a/policy/modules/services/rpc.te
++++ b/policy/modules/services/rpc.te
+@@ -250,6 +250,8 @@ storage_raw_read_removable_device(nfsd_t)
+ 
+ miscfiles_read_public_files(nfsd_t)
+ 
++mls_file_read_to_clearance(nfsd_t)
++
+ tunable_policy(`allow_nfsd_anon_write',`
+ 	miscfiles_manage_public_files(nfsd_t)
+ ')
+diff --git a/policy/modules/services/rpcbind.te b/policy/modules/services/rpcbind.te
+index 4f110773a..3cc85a8d5 100644
+--- a/policy/modules/services/rpcbind.te
++++ b/policy/modules/services/rpcbind.te
+@@ -73,6 +73,12 @@ logging_send_syslog_msg(rpcbind_t)
+ 
+ miscfiles_read_localization(rpcbind_t)
+ 
++# nfsd_t would not be allowed to send unix_stream_socket to rpcbind_t,
++# because the are running in different level. So add rules to allow this.
++mls_socket_read_all_levels(rpcbind_t)
++mls_socket_write_all_levels(rpcbind_t)
++mls_file_read_to_clearance(rpcbind_t)
++
+ ifdef(`distro_debian',`
+ 	term_dontaudit_use_unallocated_ttys(rpcbind_t)
+ ')
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0060-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpolicy/0060-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch
new file mode 100644
index 0000000..8f68d66
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0060-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch
@@ -0,0 +1,36 @@
+From 1c71d74635c2b39a15c449e75eacae23b3d4f1b8 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 30 May 2019 08:30:06 +0800
+Subject: [PATCH] policy/modules/services/rpc: make rpcd_t MLS trusted for
+ reading from files up to its clearance
+
+Fixes:
+type=AVC msg=audit(1559176077.169:242): avc:  denied  { search } for
+pid=374 comm="rpc.statd" name="journal" dev="tmpfs" ino=9854
+scontext=system_u:system_r:rpcd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_var_run_t:s15:c0.c1023 tclass=dir
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/rpc.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/services/rpc.te b/policy/modules/services/rpc.te
+index 7c0b37ddc..ef6cb9b63 100644
+--- a/policy/modules/services/rpc.te
++++ b/policy/modules/services/rpc.te
+@@ -185,6 +185,8 @@ seutil_dontaudit_search_config(rpcd_t)
+ 
+ userdom_signal_all_users(rpcd_t)
+ 
++mls_file_read_to_clearance(rpcd_t)
++
+ ifdef(`distro_debian',`
+ 	term_dontaudit_use_unallocated_ttys(rpcd_t)
+ ')
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0061-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch b/recipes-security/refpolicy/refpolicy/0061-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
new file mode 100644
index 0000000..af7f3ad
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0061-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch
@@ -0,0 +1,41 @@
+From 0404c4ad3f92408edcdbf46ac0665bf09d4b2516 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Mon, 28 Jan 2019 14:05:18 +0800
+Subject: [PATCH] policy/modules/roles/sysadm: MLS - sysadm rw to clearance
+
+The two new rules make sysadm_t domain MLS trusted for:
+ - reading from files at all levels.
+ - writing to processes up to its clearance(s0-s15).
+
+With default MLS policy, root user would login in as sysadm_t:s0 by
+default. Most processes will run in sysadm_t:s0 because no
+domtrans/rangetrans rules, as a result, even root could not access
+high level files/processes.
+
+So with the two new rules, root user could work easier in MLS policy.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/roles/sysadm.te | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index 07b9faf30..ac5239d83 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -42,6 +42,9 @@ dev_read_kmsg(sysadm_t)
+ 
+ mls_process_read_all_levels(sysadm_t)
+ 
++mls_file_read_all_levels(sysadm_t)
++mls_process_write_to_clearance(sysadm_t)
++
+ selinux_read_policy(sysadm_t)
+ 
+ ubac_process_exempt(sysadm_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0062-policy-modules-system-mount-make-mount_t-domain-MLS-.patch b/recipes-security/refpolicy/refpolicy/0062-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
new file mode 100644
index 0000000..1e7d963
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0062-policy-modules-system-mount-make-mount_t-domain-MLS-.patch
@@ -0,0 +1,36 @@
+From 7789f70ee3506f11b6bc1954469915214bcb9c58 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Sat, 15 Feb 2014 04:22:47 -0500
+Subject: [PATCH] policy/modules/system/mount: make mount_t domain MLS trusted
+ for writing to processes up to its clearance
+
+Fixes:
+avc:  denied  { setsched } for  pid=148 comm="mount"
+scontext=system_u:system_r:mount_t:s0-s15:c0.c1023
+tcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=process
+permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signen-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/mount.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
+index 282eb3ada..5bb4fe631 100644
+--- a/policy/modules/system/mount.te
++++ b/policy/modules/system/mount.te
+@@ -116,6 +116,8 @@ fs_dontaudit_write_tmpfs_dirs(mount_t)
+ mls_file_read_all_levels(mount_t)
+ mls_file_write_all_levels(mount_t)
+ 
++mls_process_write_to_clearance(mount_t)
++
+ selinux_get_enforce_mode(mount_t)
+ 
+ storage_raw_read_fixed_disk(mount_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0063-policy-modules-system-setrans-allow-setrans-to-acces.patch b/recipes-security/refpolicy/refpolicy/0063-policy-modules-system-setrans-allow-setrans-to-acces.patch
new file mode 100644
index 0000000..55d92f0
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0063-policy-modules-system-setrans-allow-setrans-to-acces.patch
@@ -0,0 +1,53 @@
+From fc77db62ce54a33ee04bfc3e4c68b9cbed7251c6 Mon Sep 17 00:00:00 2001
+From: Roy Li <rongqing.li@windriver.com>
+Date: Sat, 22 Feb 2014 13:35:38 +0800
+Subject: [PATCH] policy/modules/system/setrans: allow setrans to access
+ /sys/fs/selinux
+
+1. mcstransd failed to boot-up since the below permission is denied
+statfs("/sys/fs/selinux", 0x7ffff2b80370) = -1 EACCES (Permission denied)
+
+2. other programs can not connect to /run/setrans/.setrans-unix
+avc:  denied  { connectto } for  pid=2055 comm="ls"
+path="/run/setrans/.setrans-unix"
+scontext=root:sysadm_r:sysadm_t:s0-s15:c0.c1023
+tcontext=system_u:system_r:setrans_t:s15:c0.c1023
+tclass=unix_stream_socket
+
+3. allow setrans_t use fd at any level
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/setrans.te | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/policy/modules/system/setrans.te b/policy/modules/system/setrans.te
+index 5f020ef78..7f618f212 100644
+--- a/policy/modules/system/setrans.te
++++ b/policy/modules/system/setrans.te
+@@ -23,9 +23,7 @@ mls_trusted_object(setrans_runtime_t)
+ type setrans_unit_t;
+ init_unit_file(setrans_unit_t)
+ 
+-ifdef(`distro_debian',`
+-	init_daemon_runtime_file(setrans_runtime_t, dir, "setrans")
+-')
++init_daemon_runtime_file(setrans_runtime_t, dir, "setrans")
+ 
+ ifdef(`enable_mcs',`
+ 	init_ranged_daemon_domain(setrans_t, setrans_exec_t, s0 - mcs_systemhigh)
+@@ -73,6 +71,8 @@ mls_net_receive_all_levels(setrans_t)
+ mls_socket_write_all_levels(setrans_t)
+ mls_process_read_all_levels(setrans_t)
+ mls_socket_read_all_levels(setrans_t)
++mls_fd_use_all_levels(setrans_t)
++mls_trusted_object(setrans_t)
+ 
+ selinux_compute_access_vector(setrans_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0064-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpolicy/0064-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
new file mode 100644
index 0000000..4fa9968
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0064-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch
@@ -0,0 +1,36 @@
+From a51cec2a8d8f47b7a06c59b8af73d96edcc2a993 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 30 Jun 2020 10:18:20 +0800
+Subject: [PATCH] policy/modules/admin/dmesg: make dmesg_t MLS trusted reading
+ from files up to its clearance
+
+Fixes:
+avc:  denied  { read } for  pid=255 comm="dmesg" name="kmsg"
+dev="devtmpfs" ino=10032
+scontext=system_u:system_r:dmesg_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/dmesg.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/admin/dmesg.te b/policy/modules/admin/dmesg.te
+index 5bbe71b26..228baecd8 100644
+--- a/policy/modules/admin/dmesg.te
++++ b/policy/modules/admin/dmesg.te
+@@ -51,6 +51,8 @@ miscfiles_read_localization(dmesg_t)
+ userdom_dontaudit_use_unpriv_user_fds(dmesg_t)
+ userdom_use_user_terminals(dmesg_t)
+ 
++mls_file_read_to_clearance(dmesg_t)
++
+ optional_policy(`
+ 	seutil_sigchld_newrole(dmesg_t)
+ ')
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0065-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0065-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
new file mode 100644
index 0000000..3a2c235
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0065-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -0,0 +1,77 @@
+From fdc58fd666915aba89cb07fe6e7eb43a7fbec2ec Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Fri, 13 Oct 2017 07:20:40 +0000
+Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
+ lowering the level of files
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
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/kernel/kernel.te | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
+index 44c031a39..4dffaef76 100644
+--- a/policy/modules/kernel/kernel.te
++++ b/policy/modules/kernel/kernel.te
+@@ -359,6 +359,9 @@ mls_file_read_all_levels(kernel_t)
+ mls_socket_write_all_levels(kernel_t)
+ mls_fd_use_all_levels(kernel_t)
+ 
++# https://bugzilla.redhat.com/show_bug.cgi?id=667370
++mls_file_downgrade(kernel_t)
++
+ ifdef(`distro_redhat',`
+ 	# Bugzilla 222337
+ 	fs_rw_tmpfs_chr_files(kernel_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0066-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0066-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
new file mode 100644
index 0000000..09e9af2
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0066-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -0,0 +1,46 @@
+From 3aa784896315d269be4f43a281d59ad7671b2d07 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Fri, 15 Jan 2016 03:47:05 -0500
+Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
+ lowering/raising the leve of files
+
+Fix security_validate_transition issues:
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:device_t:s15:c0.c1023 \
+  newcontext=system_u:object_r:device_t:s0 \
+  taskcontext=system_u:system_r:init_t:s0-s15:c0.c1023 \
+  tclass=dir
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:var_run_t:s0 \
+  newcontext=system_u:object_r:var_log_t:s0-s15:c0.c1023 \
+  taskcontext=system_u:system_r:init_t:s0-s15:c0.c1023 \
+  tclass=dir
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/init.te | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index fe3fcf011..8e85dde72 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -208,6 +208,10 @@ mls_process_write_all_levels(init_t)
+ mls_fd_use_all_levels(init_t)
+ mls_process_set_level(init_t)
+ 
++# MLS trusted for lowering/raising the level of files
++mls_file_downgrade(init_t)
++mls_file_upgrade(init_t)
++
+ # the following one is needed for libselinux:is_selinux_enabled()
+ # otherwise the call fails and sysvinit tries to load the policy
+ # again when using the initramfs
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0067-policy-modules-system-systemd-make-systemd-tmpfiles_.patch b/recipes-security/refpolicy/refpolicy/0067-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
new file mode 100644
index 0000000..b4245ab
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0067-policy-modules-system-systemd-make-systemd-tmpfiles_.patch
@@ -0,0 +1,63 @@
+From fb69dde2c8783e0602dcce3509b69ded9e6331a2 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 4 Feb 2016 06:03:19 -0500
+Subject: [PATCH] policy/modules/system/systemd: make systemd-tmpfiles_t domain
+ MLS trusted for raising/lowering the level of files
+
+Fixes:
+  avc: denied { search } for pid=92 comm="systemd-tmpfile" name="1" \
+  dev="proc" ino=7987 \
+  scontext=system_u:system_r:systemd_tmpfiles_t:s0-s15:c0.c1023 \
+  tcontext=system_u:system_r:init_t:s0-s15:c0.c1023 \
+  tclass=dir
+
+  avc: denied { search } for pid=92 comm="systemd-tmpfile" \
+  name="journal" dev="tmpfs" ino=8226 \
+  scontext=system_u:system_r:systemd_tmpfiles_t:s0-s15:c0.c1023 \
+  tcontext=system_u:object_r:syslogd_var_run_t:s15:c0.c1023 \
+  tclass=dir
+
+  avc: denied { write } for pid=92 comm="systemd-tmpfile" \
+  name="kmsg" dev="devtmpfs" ino=7242 \
+  scontext=system_u:system_r:systemd_tmpfiles_t:s0-s15:c0.c1023 \
+  tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 \
+  tclass=chr_file
+
+  avc: denied { read } for pid=92 comm="systemd-tmpfile" \
+  name="kmod.conf" dev="tmpfs" ino=8660 \
+  scontext=system_u:system_r:systemd_tmpfiles_t:s0-s15:c0.c1023 \
+  tcontext=system_u:object_r:var_run_t:s0 \
+  tclass=file
+
+  avc: denied { search } for pid=92 comm="systemd-tmpfile" \
+  name="kernel" dev="proc" ino=8731 \
+  scontext=system_u:system_r:systemd_tmpfiles_t:s0-s15:c0.c1023 \
+  tcontext=system_u:object_r:sysctl_kernel_t:s0 tclass=dir
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 5 +++++
+ 1 file changed, 5 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index fb8d4960f..57f4dc40d 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -1249,6 +1249,11 @@ sysnet_relabel_config(systemd_tmpfiles_t)
+ 
+ systemd_log_parse_environment(systemd_tmpfiles_t)
+ 
++mls_file_write_all_levels(systemd_tmpfiles_t)
++mls_file_read_all_levels(systemd_tmpfiles_t)
++mls_file_downgrade(systemd_tmpfiles_t)
++mls_file_upgrade(systemd_tmpfiles_t)
++
+ userdom_manage_user_runtime_root_dirs(systemd_tmpfiles_t)
+ userdom_relabel_user_runtime_root_dirs(systemd_tmpfiles_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy-git/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch b/recipes-security/refpolicy/refpolicy/0068-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
similarity index 60%
rename from recipes-security/refpolicy/refpolicy-git/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch
rename to recipes-security/refpolicy/refpolicy/0068-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
index af24d90..921305e 100644
--- a/recipes-security/refpolicy/refpolicy-git/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch
+++ b/recipes-security/refpolicy/refpolicy/0068-policy-modules-system-logging-add-the-syslogd_t-to-t.patch
@@ -1,33 +1,37 @@
-From f84b1809e45bf08ce2a603827de3ade876ce8683 Mon Sep 17 00:00:00 2001
+From f5a6c667186850ba8c5057742195c46d9f7ff8cf Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 17/34] policy/module/logging: Add the syslogd_t to trusted
+Subject: [PATCH] policy/modules/system/logging: add the syslogd_t to trusted
  object
 
 We add the syslogd_t to trusted object, because other process need
 to have the right to connectto/sendto /dev/log.
 
-Upstream-Status: Inappropriate [only for Poky]
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Roy.Li <rongqing.li@windriver.com>
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- policy/modules/system/logging.te | 1 +
- 1 file changed, 1 insertion(+)
+ policy/modules/system/logging.te | 4 ++++
+ 1 file changed, 4 insertions(+)
 
 diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 38ccfe3a..c892f547 100644
+index 1d45a5fa9..eec0560d1 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -501,6 +501,7 @@ fs_getattr_all_fs(syslogd_t)
+@@ -501,6 +501,10 @@ fs_getattr_all_fs(syslogd_t)
  fs_search_auto_mountpoints(syslogd_t)
  
  mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
++mls_file_read_all_levels(syslogd_t)
++mls_socket_write_all_levels(syslogd_t) # Neet to be able to sendto dgram
 +mls_trusted_object(syslogd_t) # Other process need to have the right to connectto/sendto /dev/log
++mls_fd_use_all_levels(syslogd_t)
  
  term_write_console(syslogd_t)
  # Allow syslog to a terminal
 -- 
-2.19.1
+2.17.1
 
diff --git a/recipes-security/refpolicy/refpolicy/0069-policy-modules-system-init-make-init_t-MLS-trusted-f.patch b/recipes-security/refpolicy/refpolicy/0069-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
new file mode 100644
index 0000000..74ef580
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0069-policy-modules-system-init-make-init_t-MLS-trusted-f.patch
@@ -0,0 +1,33 @@
+From b74b8052fd654d6a242bf3d8773a42f376d08fed Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 28 May 2019 16:41:37 +0800
+Subject: [PATCH] policy/modules/system/init: make init_t MLS trusted for
+ writing to keys at all levels
+
+Fixes:
+type=AVC msg=audit(1559024138.454:31): avc:  denied  { link } for
+pid=190 comm="(mkdir)" scontext=system_u:system_r:init_t:s0-s15:c0.c1023
+tcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=key permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/init.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index 8e85dde72..453ae9b6b 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -207,6 +207,7 @@ mls_file_write_all_levels(init_t)
+ mls_process_write_all_levels(init_t)
+ mls_fd_use_all_levels(init_t)
+ mls_process_set_level(init_t)
++mls_key_write_all_levels(init_t)
+ 
+ # MLS trusted for lowering/raising the level of files
+ mls_file_downgrade(init_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0070-policy-modules-system-init-all-init_t-to-read-any-le.patch b/recipes-security/refpolicy/refpolicy/0070-policy-modules-system-init-all-init_t-to-read-any-le.patch
new file mode 100644
index 0000000..38a8076
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0070-policy-modules-system-init-all-init_t-to-read-any-le.patch
@@ -0,0 +1,40 @@
+From 0e29b493136115b9bf397cc59424552c5b354385 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Wed, 3 Feb 2016 04:16:06 -0500
+Subject: [PATCH] policy/modules/system/init: all init_t to read any level
+ sockets
+
+Fixes:
+  avc: denied { listen } for pid=1 comm="systemd" \
+  path="/run/systemd/journal/stdout" \
+  scontext=system_u:system_r:init_t:s0-s15:c0.c1023 \
+  tcontext=system_u:system_r:syslogd_t:s15:c0.c1023 \
+  tclass=unix_stream_socket permissive=1
+
+  systemd[1]: Failded to listen on Journal Socket
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/init.te | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index 453ae9b6b..feed5af5f 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -213,6 +213,9 @@ mls_key_write_all_levels(init_t)
+ mls_file_downgrade(init_t)
+ mls_file_upgrade(init_t)
+ 
++# MLS trusted for reading from sockets at any level
++mls_socket_read_all_levels(init_t)
++
+ # the following one is needed for libselinux:is_selinux_enabled()
+ # otherwise the call fails and sysvinit tries to load the policy
+ # again when using the initramfs
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0071-policy-modules-system-logging-allow-auditd_t-to-writ.patch b/recipes-security/refpolicy/refpolicy/0071-policy-modules-system-logging-allow-auditd_t-to-writ.patch
new file mode 100644
index 0000000..2f7eb44
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0071-policy-modules-system-logging-allow-auditd_t-to-writ.patch
@@ -0,0 +1,39 @@
+From 71a217de05a084899537462f8b432825b12ab187 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 25 Feb 2016 04:25:08 -0500
+Subject: [PATCH] policy/modules/system/logging: allow auditd_t to write socket
+ at any level
+
+Allow auditd_t to write init_t:unix_stream_socket at any level.
+
+Fixes:
+  avc: denied { write } for pid=748 comm="auditd" \
+  path="socket:[17371]" dev="sockfs" ino=17371 \
+  scontext=system_u:system_r:auditd_t:s15:c0.c1023 \
+  tcontext=system_u:system_r:init_t:s0-s15:c0.c1023 \
+  tclass=unix_stream_socket permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/logging.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index eec0560d1..c22613c0b 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -210,6 +210,8 @@ miscfiles_read_localization(auditd_t)
+ 
+ mls_file_read_all_levels(auditd_t)
+ mls_file_write_all_levels(auditd_t) # Need to be able to write to /var/run/ directory
++mls_fd_use_all_levels(auditd_t)
++mls_socket_write_all_levels(auditd_t)
+ 
+ seutil_dontaudit_read_config(auditd_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0072-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0072-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
new file mode 100644
index 0000000..f32bb74
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0072-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch
@@ -0,0 +1,32 @@
+From 8d1a8ffca75ada3dc576a4013644c9e9cdb45947 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 31 Oct 2019 17:35:59 +0800
+Subject: [PATCH] policy/modules/kernel/kernel: make kernel_t MLS trusted for
+ writing to keys at all levels.
+
+Fixes:
+systemd-udevd[216]: regulatory.0: Process '/usr/sbin/crda' failed with exit code 254.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/kernel/kernel.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
+index 4dffaef76..34444a2f9 100644
+--- a/policy/modules/kernel/kernel.te
++++ b/policy/modules/kernel/kernel.te
+@@ -362,6 +362,8 @@ mls_fd_use_all_levels(kernel_t)
+ # https://bugzilla.redhat.com/show_bug.cgi?id=667370
+ mls_file_downgrade(kernel_t)
+ 
++mls_key_write_all_levels(kernel_t)
++
+ ifdef(`distro_redhat',`
+ 	# Bugzilla 222337
+ 	fs_rw_tmpfs_chr_files(kernel_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0073-policy-modules-system-systemd-make-systemd-logind-do.patch b/recipes-security/refpolicy/refpolicy/0073-policy-modules-system-systemd-make-systemd-logind-do.patch
new file mode 100644
index 0000000..1e5b474
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0073-policy-modules-system-systemd-make-systemd-logind-do.patch
@@ -0,0 +1,42 @@
+From 212156df805a24852a4762737f7040f1c7bb9b9a Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Mon, 23 Jan 2017 08:42:44 +0000
+Subject: [PATCH] policy/modules/system/systemd: make systemd-logind domain MLS
+ trusted for reading from files up to its clearance.
+
+Fixes:
+avc:  denied  { search } for  pid=184 comm="systemd-logind"
+name="journal" dev="tmpfs" ino=10949
+scontext=system_u:system_r:systemd_logind_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
+permissive=1
+
+avc:  denied  { watch } for  pid=184 comm="systemd-logind"
+path="/run/utmp" dev="tmpfs" ino=12725
+scontext=system_u:system_r:systemd_logind_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:initrc_runtime_t:s0 tclass=file permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 57f4dc40d..1449d2808 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -621,6 +621,8 @@ userdom_relabelto_user_runtime_dirs(systemd_logind_t)
+ userdom_setattr_user_ttys(systemd_logind_t)
+ userdom_use_user_ttys(systemd_logind_t)
+ 
++mls_file_read_to_clearance(systemd_logind_t)
++
+ # Needed to work around patch not yet merged into the systemd-logind supported on RHEL 7.x
+ # The change in systemd by Nicolas Iooss on 02-Feb-2016 with hash 4b51966cf6c06250036e428608da92f8640beb96
+ # should fix the problem where user directories in /run/user/$UID/ are not getting the proper context
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0074-policy-modules-system-systemd-systemd-user-sessions-.patch b/recipes-security/refpolicy/refpolicy/0074-policy-modules-system-systemd-systemd-user-sessions-.patch
new file mode 100644
index 0000000..ebe2b52
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0074-policy-modules-system-systemd-systemd-user-sessions-.patch
@@ -0,0 +1,41 @@
+From bea1f53ae2ba7608503051b874db9aecb97d4f00 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 18 Jun 2020 09:39:23 +0800
+Subject: [PATCH] policy/modules/system/systemd: systemd-user-sessions: make
+ systemd_sessions_t MLS trusted for reading/writing from files at all levels
+
+Fixes:
+avc:  denied  { search } for  pid=229 comm="systemd-user-se"
+name="journal" dev="tmpfs" ino=10956
+scontext=system_u:system_r:systemd_sessions_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
+permissive=0
+avc:  denied  { write } for  pid=229 comm="systemd-user-se" name="kmsg"
+dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_sessions_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 1449d2808..6b0f52d15 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -1125,6 +1125,8 @@ seutil_read_file_contexts(systemd_sessions_t)
+ 
+ systemd_log_parse_environment(systemd_sessions_t)
+ 
++mls_file_read_to_clearance(systemd_sessions_t)
++mls_file_write_all_levels(systemd_sessions_t)
+ 
+ #########################################
+ #
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0075-policy-modules-system-systemd-systemd-networkd-make-.patch b/recipes-security/refpolicy/refpolicy/0075-policy-modules-system-systemd-systemd-networkd-make-.patch
new file mode 100644
index 0000000..addb480
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0075-policy-modules-system-systemd-systemd-networkd-make-.patch
@@ -0,0 +1,36 @@
+From a75847eb2a5a34c18a4fd24383a696d6c077a117 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 18 Jun 2020 09:59:58 +0800
+Subject: [PATCH] policy/modules/system/systemd: systemd-networkd: make
+ systemd_networkd_t MLS trusted for reading from files up to its clearance
+
+Fixes:
+avc:  denied  { search } for  pid=219 comm="systemd-network"
+name="journal" dev="tmpfs" ino=10956
+scontext=system_u:system_r:systemd_networkd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 6b0f52d15..cfbd9196a 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -795,6 +795,8 @@ sysnet_read_config(systemd_networkd_t)
+ 
+ systemd_log_parse_environment(systemd_networkd_t)
+ 
++mls_file_read_to_clearance(systemd_networkd_t)
++
+ optional_policy(`
+ 	dbus_system_bus_client(systemd_networkd_t)
+ 	dbus_connect_system_bus(systemd_networkd_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0076-policy-modules-system-systemd-systemd-resolved-make-.patch b/recipes-security/refpolicy/refpolicy/0076-policy-modules-system-systemd-systemd-resolved-make-.patch
new file mode 100644
index 0000000..908fe64
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0076-policy-modules-system-systemd-systemd-resolved-make-.patch
@@ -0,0 +1,40 @@
+From fac0583bea8eb74c43cd715cf5029d3243e38f95 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 18 Jun 2020 09:47:25 +0800
+Subject: [PATCH] policy/modules/system/systemd: systemd-resolved: make
+ systemd_resolved_t MLS trusted for reading from files up to its clearance
+
+Fixes:
+avc:  denied  { search } for  pid=220 comm="systemd-resolve"
+name="journal" dev="tmpfs" ino=10956
+scontext=system_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
+permissive=0
+avc:  denied  { search } for  pid=220 comm="systemd-resolve" name="/"
+dev="tmpfs" ino=15102
+scontext=system_u:system_r:systemd_resolved_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:tmpfs_t:s0 tclass=dir permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index cfbd9196a..806468109 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -1096,6 +1096,8 @@ init_dgram_send(systemd_resolved_t)
+ 
+ seutil_read_file_contexts(systemd_resolved_t)
+ 
++mls_file_read_to_clearance(systemd_resolved_t)
++
+ systemd_log_parse_environment(systemd_resolved_t)
+ systemd_read_networkd_runtime(systemd_resolved_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0077-policy-modules-system-systemd-make-systemd-modules_t.patch b/recipes-security/refpolicy/refpolicy/0077-policy-modules-system-systemd-make-systemd-modules_t.patch
new file mode 100644
index 0000000..a1013a1
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0077-policy-modules-system-systemd-make-systemd-modules_t.patch
@@ -0,0 +1,36 @@
+From 569033512340d791a13c1ee2f269788c55fff63c Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sun, 28 Jun 2020 15:19:44 +0800
+Subject: [PATCH] policy/modules/system/systemd: make systemd-modules_t domain
+ MLS trusted for reading from files up to its clearance
+
+Fixes:
+avc:  denied  { search } for  pid=142 comm="systemd-modules"
+name="journal" dev="tmpfs" ino=10990
+scontext=system_u:system_r:systemd_modules_load_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 806468109..e82a1e64a 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -739,6 +739,8 @@ modutils_read_module_objects(systemd_modules_load_t)
+ 
+ systemd_log_parse_environment(systemd_modules_load_t)
+ 
++mls_file_read_to_clearance(systemd_modules_load_t)
++
+ ########################################
+ #
+ # networkd local policy
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0078-policy-modules-system-systemd-systemd-gpt-auto-gener.patch b/recipes-security/refpolicy/refpolicy/0078-policy-modules-system-systemd-systemd-gpt-auto-gener.patch
new file mode 100644
index 0000000..303e7cf
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0078-policy-modules-system-systemd-systemd-gpt-auto-gener.patch
@@ -0,0 +1,70 @@
+From 84b86b1a4dd6f8e535c4b9b4ac2bfa38d202d9d3 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 14:52:43 +0800
+Subject: [PATCH] policy/modules/system/systemd: systemd-gpt-auto-generator:
+ make systemd_generator_t MLS trusted for writing from files up to its
+ clearance
+
+Fixes:
+audit: type=1400 audit(1592892455.376:3): avc:  denied  { write } for
+pid=120 comm="systemd-gpt-aut" name="kmsg" dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+audit: type=1400 audit(1592892455.381:4): avc:  denied  { write } for
+pid=119 comm="systemd-getty-g" name="kmsg" dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+audit: type=1400 audit(1592892455.382:5): avc:  denied  { read write }
+for  pid=119 comm="systemd-getty-g" name="ttyS0" dev="devtmpfs"
+ino=10127 scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:tty_device_t:s0 tclass=chr_file permissive=0
+audit: type=1400 audit(1592892455.382:6): avc:  denied  { write } for
+pid=124 comm="systemd-system-" name="kmsg" dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+audit: type=1400 audit(1592892455.383:7): avc:  denied  { write } for
+pid=122 comm="systemd-rc-loca" name="kmsg" dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+audit: type=1400 audit(1592892455.385:8): avc:  denied  { write } for
+pid=118 comm="systemd-fstab-g" name="kmsg" dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+audit: type=1400 audit(1592892455.385:9): avc:  denied  { write } for
+pid=121 comm="systemd-hiberna" name="kmsg" dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+audit: type=1400 audit(1592892455.386:10): avc:  denied  { write } for
+pid=123 comm="systemd-run-gen" name="kmsg" dev="devtmpfs" ino=10032
+scontext=system_u:system_r:systemd_generator_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:kmsg_device_t:s15:c0.c1023 tclass=chr_file
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/systemd.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index e82a1e64a..7e573645b 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -401,6 +401,7 @@ storage_raw_read_fixed_disk(systemd_generator_t)
+ systemd_log_parse_environment(systemd_generator_t)
+ 
+ term_dontaudit_use_unallocated_ttys(systemd_generator_t)
++mls_file_write_to_clearance(systemd_generator_t)
+ 
+ optional_policy(`
+ 	fstools_exec(systemd_generator_t)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0079-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch b/recipes-security/refpolicy/refpolicy/0079-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch
new file mode 100644
index 0000000..b939c37
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0079-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch
@@ -0,0 +1,40 @@
+From cb455496193d01761175f35297038f7cf468ebed Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Thu, 18 Jun 2020 10:21:04 +0800
+Subject: [PATCH] policy/modules/services/ntp: make nptd_t MLS trusted for
+ reading from files at all levels
+
+Fixes:
+avc:  denied  { search } for  pid=193 comm="systemd-timesyn"
+name="journal" dev="tmpfs" ino=10956
+scontext=system_u:system_r:ntpd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:syslogd_runtime_t:s15:c0.c1023 tclass=dir
+permissive=0
+avc:  denied  { read } for  pid=193 comm="systemd-timesyn" name="dbus"
+dev="tmpfs" ino=13971 scontext=system_u:system_r:ntpd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:system_dbusd_runtime_t:s0 tclass=dir
+permissive=0
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/ntp.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/services/ntp.te b/policy/modules/services/ntp.te
+index 75603e16b..8886cb3bf 100644
+--- a/policy/modules/services/ntp.te
++++ b/policy/modules/services/ntp.te
+@@ -138,6 +138,8 @@ miscfiles_read_localization(ntpd_t)
+ userdom_dontaudit_use_unpriv_user_fds(ntpd_t)
+ userdom_list_user_home_dirs(ntpd_t)
+ 
++mls_file_read_all_levels(ntpd_t)
++
+ ifdef(`init_systemd',`
+ 	allow ntpd_t ntpd_unit_t:file read_file_perms;
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy/0080-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch b/recipes-security/refpolicy/refpolicy/0080-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch
new file mode 100644
index 0000000..2b1ab6f
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0080-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch
@@ -0,0 +1,29 @@
+From 0a2e2a58a645bd99242ac5ec60f17fab26a80bf9 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 23 Jun 2020 08:19:16 +0800
+Subject: [PATCH] policy/modules/services/avahi: make avahi_t MLS trusted for
+ reading from files up to its clearance
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/services/avahi.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/services/avahi.te b/policy/modules/services/avahi.te
+index 5643349e3..5994ff3d5 100644
+--- a/policy/modules/services/avahi.te
++++ b/policy/modules/services/avahi.te
+@@ -95,6 +95,8 @@ sysnet_etc_filetrans_config(avahi_t)
+ userdom_dontaudit_use_unpriv_user_fds(avahi_t)
+ userdom_dontaudit_search_user_home_dirs(avahi_t)
+ 
++mls_file_read_to_clearance(avahi_t)
++
+ optional_policy(`
+ 	dbus_system_domain(avahi_t, avahi_exec_t)
+ 
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 1d9ca93..46cbfa3 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -18,41 +18,87 @@ SRC_URI += "file://customizable_types  \
 # refpolicy should provide a version of these and place them in your own
 # refpolicy-${PV} directory.
 SRC_URI += " \
-	file://0001-fc-subs-volatile-alias-common-var-volatile-paths.patch \
-	file://0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch \
-	file://0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch \
-	file://0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch \
-	file://0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch \
-	file://0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch \
-	file://0007-fc-login-apply-login-context-to-login.shadow.patch \
-	file://0008-fc-bind-fix-real-path-for-bind.patch \
-	file://0009-fc-hwclock-add-hwclock-alternatives.patch \
-	file://0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch \
-	file://0011-fc-ssh-apply-policy-to-ssh-alternatives.patch \
-	file://0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch \
-	file://0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch \
-	file://0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch \
-	file://0015-fc-su-apply-policy-to-su-alternatives.patch \
-	file://0016-fc-fstools-fix-real-path-for-fstools.patch \
-	file://0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch \
-	file://0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch \
-	file://0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch \
-	file://0020-policy-module-logging-add-domain-rules-for-the-subdi.patch \
-	file://0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch \
-	file://0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch \
-	file://0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch \
-	file://0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch \
-	file://0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch \
-	file://0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch \
-	file://0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch \
-	file://0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch \
-	file://0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch \
-	file://0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch \
-	file://0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch \
-	file://0032-policy-module-init-update-for-systemd-related-allow-.patch \
-	file://0033-refpolicy-minimum-make-sysadmin-module-optional.patch \
-	file://0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch \
-   "
+        file://0001-fc-subs-volatile-alias-common-var-volatile-paths.patch \
+        file://0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch \
+        file://0003-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch \
+        file://0004-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch \
+        file://0005-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch \
+        file://0006-fc-login-apply-login-context-to-login.shadow.patch \
+        file://0007-fc-bind-fix-real-path-for-bind.patch \
+        file://0008-fc-hwclock-add-hwclock-alternatives.patch \
+        file://0009-fc-dmesg-apply-policy-to-dmesg-alternatives.patch \
+        file://0010-fc-ssh-apply-policy-to-ssh-alternatives.patch \
+        file://0011-fc-sysnetwork-apply-policy-to-ip-alternatives.patch \
+        file://0012-fc-udev-apply-policy-to-udevadm-in-libexec.patch \
+        file://0013-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch \
+        file://0014-fc-su-apply-policy-to-su-alternatives.patch \
+        file://0015-fc-fstools-fix-real-path-for-fstools.patch \
+        file://0016-fc-init-fix-update-alternatives-for-sysvinit.patch \
+        file://0017-fc-brctl-apply-policy-to-brctl-alternatives.patch \
+        file://0018-fc-corecommands-apply-policy-to-nologin-alternatives.patch \
+        file://0019-fc-locallogin-apply-policy-to-sulogin-alternatives.patch \
+        file://0020-fc-ntp-apply-policy-to-ntpd-alternatives.patch \
+        file://0021-fc-kerberos-apply-policy-to-kerberos-alternatives.patch \
+        file://0022-fc-ldap-apply-policy-to-ldap-alternatives.patch \
+        file://0023-fc-postgresql-apply-policy-to-postgresql-alternative.patch \
+        file://0024-fc-screen-apply-policy-to-screen-alternatives.patch \
+        file://0025-fc-usermanage-apply-policy-to-usermanage-alternative.patch \
+        file://0026-fc-getty-add-file-context-to-start_getty.patch \
+        file://0027-fc-init-add-file-context-to-etc-network-if-files.patch \
+        file://0028-fc-vlock-apply-policy-to-vlock-alternatives.patch \
+        file://0029-fc-cron-apply-policy-to-etc-init.d-crond.patch \
+        file://0030-file_contexts.subs_dist-set-aliase-for-root-director.patch \
+        file://0031-policy-modules-system-logging-add-rules-for-the-syml.patch \
+        file://0032-policy-modules-system-logging-add-rules-for-syslogd-.patch \
+        file://0033-policy-modules-system-logging-add-domain-rules-for-t.patch \
+        file://0034-policy-modules-kernel-files-add-rules-for-the-symlin.patch \
+        file://0035-policy-modules-kernel-terminal-add-rules-for-bsdpty_.patch \
+        file://0036-policy-modules-kernel-terminal-don-t-audit-tty_devic.patch \
+        file://0037-policy-modules-services-avahi-allow-avahi_t-to-watch.patch \
+        file://0038-policy-modules-system-getty-allow-getty_t-watch-gett.patch \
+        file://0039-policy-modules-services-bluetooth-allow-bluetooth_t-.patch \
+        file://0040-policy-modules-roles-sysadm-allow-sysadm-to-run-rpci.patch \
+        file://0041-policy-modules-services-rpc-add-capability-dac_read_.patch \
+        file://0042-policy-modules-services-rpcbind-allow-rpcbind_t-to-c.patch \
+        file://0043-policy-modules-services-rngd-fix-security-context-fo.patch \
+        file://0044-policy-modules-system-authlogin-allow-chkpwd_t-to-ma.patch \
+        file://0045-policy-modules-system-udev-allow-udevadm_t-to-search.patch \
+        file://0046-policy-modules-udev-do-not-audit-udevadm_t-to-read-w.patch \
+        file://0047-policy-modules-services-rdisc-allow-rdisc_t-to-searc.patch \
+        file://0048-policy-modules-system-logging-fix-auditd-startup-fai.patch \
+        file://0049-policy-modules-services-ssh-make-respective-init-scr.patch \
+        file://0050-policy-modules-kernel-terminal-allow-loging-to-reset.patch \
+        file://0051-policy-modules-system-selinuxutil-allow-semanage_t-t.patch \
+        file://0052-policy-modules-system-sysnetwork-allow-ifconfig_t-to.patch \
+        file://0053-policy-modules-services-ntp-allow-ntpd_t-to-watch-sy.patch \
+        file://0054-policy-modules-system-systemd-enable-support-for-sys.patch \
+        file://0055-policy-modules-system-logging-fix-systemd-journald-s.patch \
+        file://0056-policy-modules-roles-sysadm-allow-sysadm_t-to-watch-.patch \
+        file://0057-policy-modules-system-systemd-add-capability-mknod-f.patch \
+        file://0058-policy-modules-system-systemd-systemd-gpt-auto-gener.patch \
+        file://0059-policy-modules-services-rpc-fix-policy-for-nfsserver.patch \
+        file://0060-policy-modules-services-rpc-make-rpcd_t-MLS-trusted-.patch \
+        file://0061-policy-modules-roles-sysadm-MLS-sysadm-rw-to-clearan.patch \
+        file://0062-policy-modules-system-mount-make-mount_t-domain-MLS-.patch \
+        file://0063-policy-modules-system-setrans-allow-setrans-to-acces.patch \
+        file://0064-policy-modules-admin-dmesg-make-dmesg_t-MLS-trusted-.patch \
+        file://0065-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
+        file://0066-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
+        file://0067-policy-modules-system-systemd-make-systemd-tmpfiles_.patch \
+        file://0068-policy-modules-system-logging-add-the-syslogd_t-to-t.patch \
+        file://0069-policy-modules-system-init-make-init_t-MLS-trusted-f.patch \
+        file://0070-policy-modules-system-init-all-init_t-to-read-any-le.patch \
+        file://0071-policy-modules-system-logging-allow-auditd_t-to-writ.patch \
+        file://0072-policy-modules-kernel-kernel-make-kernel_t-MLS-trust.patch \
+        file://0073-policy-modules-system-systemd-make-systemd-logind-do.patch \
+        file://0074-policy-modules-system-systemd-systemd-user-sessions-.patch \
+        file://0075-policy-modules-system-systemd-systemd-networkd-make-.patch \
+        file://0076-policy-modules-system-systemd-systemd-resolved-make-.patch \
+        file://0077-policy-modules-system-systemd-make-systemd-modules_t.patch \
+        file://0078-policy-modules-system-systemd-systemd-gpt-auto-gener.patch \
+        file://0079-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch \
+        file://0080-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch \
+        "
 
 S = "${WORKDIR}/refpolicy"
 
@@ -85,7 +131,7 @@ POLICY_NAME ?= "${POLICY_TYPE}"
 POLICY_DISTRO ?= "redhat"
 POLICY_UBAC ?= "n"
 POLICY_UNK_PERMS ?= "allow"
-POLICY_DIRECT_INITRC ?= "n"
+POLICY_DIRECT_INITRC ?= "y"
 POLICY_SYSTEMD ?= "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'y', 'n', d)}"
 POLICY_MONOLITHIC ?= "n"
 POLICY_CUSTOM_BUILDOPT ?= ""
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index 8de07c0..122b7b6 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,11 +1,11 @@
-PV = "2.20190201+git${SRCPV}"
+PV = "2.20200229+git${SRCPV}"
 
 SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=git;branch=master;name=refpolicy;destsuffix=refpolicy"
 
-SRCREV_refpolicy ?= "df696a325404b84c2c931c85356510005e5e6916"
+SRCREV_refpolicy ?= "613708cad64943bae4e2de00df7b8e656446dd2f"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy:"
 
 include refpolicy_common.inc
-- 
2.34.1


