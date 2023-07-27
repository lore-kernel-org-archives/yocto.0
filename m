Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2C9CC04A94
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 18:08:01 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
 by mx.groups.io with SMTP id smtpd.web11.14478.1690481273733846764
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 11:07:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=jv3lKb6C;
 spf=pass (domain: gmail.com, ip: 209.85.128.172, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-584388ec441so14147437b3.3
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 11:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690481272; x=1691086072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nm0cDk133Qnpt/WPcx6nSCmPkoWQ0lCtSCocnNc+Ygc=;
        b=jv3lKb6CUg0WK+PvM2VdpDIy646EInq9/30C8DxgrU6lshOiVeaDFKf/TA0i2pj/ey
         TC2psAqLobw9SHUWrvUTVt4rCc3TS9grXtmjNDOxamIlEzBXVNX70xqY8jwJ5Mb53TVa
         ubl/x1UYDNYLLWLxAuOqkbPSsnmjHRBpZjf+pICDg12xx+qTbGWL+rnGIxkRofuBykum
         P7y3nzuvkAiGWQw9lBYyusltibrd/wxzp4kfvc/LLS5mv5DrFHrK5KzL6a2hWEevshQN
         3easNHD24kitwxCJUA/fHU7amemV8m4fkogHCYAfnLvtBr5no81HTXWVsseIvP/RszxJ
         inTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690481272; x=1691086072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nm0cDk133Qnpt/WPcx6nSCmPkoWQ0lCtSCocnNc+Ygc=;
        b=GO6+T8+jezfoLZFgA0ESdSpHMyoozFcmPfXWhwO2gu2xNkc3xIiBKl6d/DTyV99fs6
         33QacYrj6bO8PBgGNnfXKEHRYTln8sYv5pV5mIMMCmHFJH4ocKhRzHkVd9vi5xuWaWyT
         KgRS5ey6bsch2+4M/+lv+lH4jHW7MK/dEpaOpWAUGi6+3eLDt1+KjTI0pWWXkd/tpsXj
         BhKbI9J0ZPSwm5EWKU0LyA95mK6csXw+QKAkW94k68MBieV+tU/5QIVwxHcESZN4oNIX
         fBJ0rW+IYIl2gn8se/7wYz9JvhtQD8kRJ9ABJ2LwsutK4G7zRWkZXgyJHkQbc5BnWnha
         fhgg==
X-Gm-Message-State: ABy/qLbCmvHE7rmIep2PJU9HPo9XyNSNiiMW+KP2nX6ShFQu3xGhfC17
	oa6BqUFRy5WiHmgkFilfW0E+t/6X8Uk=
X-Google-Smtp-Source: APBJJlH1SuRjHUVX/JCDFLO+/QInHW6YS1pj/KDj9EIKhCGPBp+pT7i0ITBVnepv3j5/k3STql8fRQ==
X-Received: by 2002:a0d:fc41:0:b0:583:291d:9d3e with SMTP id m62-20020a0dfc41000000b00583291d9d3emr47599ywf.30.1690481271203;
        Thu, 27 Jul 2023 11:07:51 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:1:6648:c79a:5757])
        by smtp.gmail.com with ESMTPSA id t14-20020a81830e000000b0058461c9524fsm558361ywf.12.2023.07.27.11.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 11:07:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Yi Zhao <yi.zhao@windriver.com>,
	Joe MacDonald <joe@deserted.net>,
	Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][dunfell][patch 1/4] refpolicy: remove version 2.20190201
Date: Thu, 27 Jul 2023 14:07:45 -0400
Message-Id: <20230727180748.107196-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727180748.107196-1-akuster808@gmail.com>
References: <20230727180748.107196-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 18:08:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60666

From: Yi Zhao <yi.zhao@windriver.com>

There is no need to maintain two versions of repolicy. Drop this version
and only keep the git version.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
(cherry picked from commit 9e986d7d794f044464e1af914ddbcd57d8f1c2e9)
Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 ...tile-alias-common-var-volatile-paths.patch |  36 -----
 ...fix-update-alternatives-for-sysvinit.patch |  53 --------
 ...m-audit-logging-getty-audit-related-.patch |  68 ----------
 ...box-set-aliases-for-bin-sbin-and-usr.patch |  31 -----
 ...m-locallogin-add-allow-rules-for-typ.patch |  54 --------
 ...ogd-apply-policy-to-sysklogd-symlink.patch |  57 --------
 ...m-systemd-unconfined-lib-add-systemd.patch | 121 -----------------
 ...y-policy-to-common-yocto-hostname-al.patch |  27 ----
 ...m-systemd-mount-logging-authlogin-ad.patch |  96 -------------
 ...sr-bin-bash-context-to-bin-bash.bash.patch |  30 -----
 ...m-init-fix-reboot-with-systemd-as-in.patch |  37 -----
 ...abel-resolv.conf-in-var-run-properly.patch |  30 -----
 ...m-systemd-mount-enable-required-refp.patch |  92 -------------
 ...-apply-login-context-to-login.shadow.patch |  27 ----
 ...m-systemd-fix-for-login-journal-serv.patch | 103 --------------
 .../0008-fc-bind-fix-real-path-for-bind.patch |  31 -----
 ...m-systemd-fix-for-systemd-tmp-files-.patch | 109 ---------------
 ...-fc-hwclock-add-hwclock-alternatives.patch |  28 ----
 ...olicy-minimum-systemd-fix-for-syslog.patch |  70 ----------
 ...g-apply-policy-to-dmesg-alternatives.patch |  24 ----
 ...ssh-apply-policy-to-ssh-alternatives.patch |  27 ----
 ...work-apply-policy-to-ip-alternatives.patch |  48 -------
 ...v-apply-policy-to-udevadm-in-libexec.patch |  28 ----
 ...ply-rpm_exec-policy-to-cpio-binaries.patch |  29 ----
 ...c-su-apply-policy-to-su-alternatives.patch |  26 ----
 ...fc-fstools-fix-real-path-for-fstools.patch |  76 -----------
 ...gging-Add-the-syslogd_t-to-trusted-o.patch |  33 -----
 ...gging-add-rules-for-the-symlink-of-v.patch | 100 --------------
 ...gging-add-rules-for-syslogd-symlink-.patch |  33 -----
 ...gging-add-domain-rules-for-the-subdi.patch |  36 -----
 ...les-add-rules-for-the-symlink-of-tmp.patch | 100 --------------
 ...rminals-add-rules-for-bsdpty_device_.patch | 123 -----------------
 ...rminals-don-t-audit-tty_device_t-in-.patch |  37 -----
 ...pc-allow-nfsd-to-exec-shell-commands.patch |  29 ----
 ...c-fix-policy-for-nfsserver-to-mount-.patch |  77 -----------
 ...-sysfs-fix-for-new-SELINUXMNT-in-sys.patch | 126 ------------------
 ...dule-rpc-allow-sysadm-to-run-rpcinfo.patch |  31 -----
 ...erdomain-fix-selinux-utils-to-manage.patch |  45 -------
 ...linuxutil-fix-setfiles-statvfs-to-ge.patch |  33 -----
 ...min-fix-dmesg-to-use-dev-kmsg-as-def.patch |  25 ----
 ...p-add-ftpd_t-to-mls_file_write_all_l.patch |  41 ------
 ...it-update-for-systemd-related-allow-.patch |  32 -----
 ...inimum-make-sysadmin-module-optional.patch |  67 ----------
 ...ache-add-rules-for-the-symlink-of-va.patch |  33 -----
 .../refpolicy/refpolicy-mcs_2.20190201.bb     |  11 --
 .../refpolicy/refpolicy-minimum_2.20190201.bb |  91 -------------
 .../refpolicy/refpolicy-mls_2.20190201.bb     |  10 --
 .../refpolicy-standard_2.20190201.bb          |   8 --
 .../refpolicy-targeted_2.20190201.bb          |  35 -----
 .../refpolicy/refpolicy_2.20190201.inc        |   9 --
 50 files changed, 2523 deletions(-)
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-fix-update-alternatives-for-sysvinit.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0007-fc-login-apply-login-context-to-login.shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-fc-hwclock-add-hwclock-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternatives.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch
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
 delete mode 100644 recipes-security/refpolicy/refpolicy-mcs_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-mls_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-standard_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy_2.20190201.inc

diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
deleted file mode 100644
index 2692ffa..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 49dd08e69938debc792ac9c3ac3e81a38929d11f Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Thu, 28 Mar 2019 16:14:09 -0400
-Subject: [PATCH 01/34] fc/subs/volatile: alias common /var/volatile paths
-
-Ensure /var/volatile paths get the appropriate base file context.
-
-Upstream-Status: Pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- config/file_contexts.subs_dist | 10 ++++++++++
- 1 file changed, 10 insertions(+)
-
-diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
-index 346d920e..be532d7f 100644
---- a/config/file_contexts.subs_dist
-+++ b/config/file_contexts.subs_dist
-@@ -31,3 +31,13 @@
- # not for refpolicy intern, but for /var/run using applications,
- # like systemd tmpfiles or systemd socket configurations
- /var/run /run
-+
-+# volatile aliases
-+# ensure the policy applied to the base filesystem objects are reflected in the
-+# volatile hierarchy.
-+/var/volatile/log /var/log
-+/var/volatile/run /var/run
-+/var/volatile/cache /var/cache
-+/var/volatile/tmp /var/tmp
-+/var/volatile/lock /var/lock
-+/var/volatile/run/lock /var/lock
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0001-fix-update-alternatives-for-sysvinit.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0001-fix-update-alternatives-for-sysvinit.patch
deleted file mode 100644
index 62e7da1..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0001-fix-update-alternatives-for-sysvinit.patch
+++ /dev/null
@@ -1,53 +0,0 @@
-From 83508f3365277c0ef8c570e744879b904de64cd7 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH] fix update-alternatives for sysvinit
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/admin/shutdown.fc      | 1 +
- policy/modules/kernel/corecommands.fc | 1 +
- policy/modules/system/init.fc         | 1 +
- 3 files changed, 3 insertions(+)
-
-diff --git a/policy/modules/admin/shutdown.fc b/policy/modules/admin/shutdown.fc
-index 03a2230c..2ba049ff 100644
---- a/policy/modules/admin/shutdown.fc
-+++ b/policy/modules/admin/shutdown.fc
-@@ -5,5 +5,6 @@
- /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
- 
- /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
-+/usr/sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
- 
- /run/shutdown\.pid	--	gen_context(system_u:object_r:shutdown_var_run_t,s0)
-diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index cf3848db..86920167 100644
---- a/policy/modules/kernel/corecommands.fc
-+++ b/policy/modules/kernel/corecommands.fc
-@@ -149,6 +149,7 @@ ifdef(`distro_gentoo',`
- /usr/bin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
- /usr/bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /usr/bin/mountpoint		--	gen_context(system_u:object_r:bin_t,s0)
-+/usr/bin/mountpoint\.sysvinit	--	gen_context(system_u:object_r:bin_t,s0)
- /usr/bin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
- /usr/bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /usr/bin/sesh			--	gen_context(system_u:object_r:shell_exec_t,s0)
-diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
-index 11a6ce93..93e9d2b4 100644
---- a/policy/modules/system/init.fc
-+++ b/policy/modules/system/init.fc
-@@ -23,6 +23,7 @@ ifdef(`distro_gentoo',`
- # /usr
- #
- /usr/bin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
-+/usr/sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
- /usr/bin/open_init_pty	--	gen_context(system_u:object_r:initrc_exec_t,s0)
- /usr/bin/sepg_ctl	--	gen_context(system_u:object_r:initrc_exec_t,s0)
- /usr/bin/systemd	--	gen_context(system_u:object_r:init_exec_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
deleted file mode 100644
index f92ddb8..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
+++ /dev/null
@@ -1,68 +0,0 @@
-From aa79b5e7803232a4e57e2cf60613f6fb7dcfc025 Mon Sep 17 00:00:00 2001
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
-index 63e92a8e..8ab46925 100644
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
deleted file mode 100644
index a963751..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From c02445a1073ca6fcb42c771c233ab8aa822cbdda Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Thu, 28 Mar 2019 20:48:10 -0400
-Subject: [PATCH 02/34] fc/subs/busybox: set aliases for bin, sbin and usr
-
-The objects in /usr/lib/busybox/* should have the same policy applied as
-the corresponding objects in the / hierarchy.
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- config/file_contexts.subs_dist | 7 +++++++
- 1 file changed, 7 insertions(+)
-
-diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
-index be532d7f..04fca3c3 100644
---- a/config/file_contexts.subs_dist
-+++ b/config/file_contexts.subs_dist
-@@ -41,3 +41,10 @@
- /var/volatile/tmp /var/tmp
- /var/volatile/lock /var/lock
- /var/volatile/run/lock /var/lock
-+
-+# busybox aliases
-+# quickly match up the busybox built-in tree to the base filesystem tree
-+/usr/lib/busybox/bin /bin
-+/usr/lib/busybox/sbin /sbin
-+/usr/lib/busybox/usr /usr
-+
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
deleted file mode 100644
index 37423ec..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
+++ /dev/null
@@ -1,54 +0,0 @@
-From d8fe68150ae85657b2091bc193b11bd77f7b1f31 Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
deleted file mode 100644
index ad94252..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
+++ /dev/null
@@ -1,57 +0,0 @@
-From fdbd4461bbd6ce8a7f2b2702f7801ed07c41d5a9 Mon Sep 17 00:00:00 2001
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
-index adc628f8..07ed546d 100644
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
deleted file mode 100644
index ed470e4..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
+++ /dev/null
@@ -1,121 +0,0 @@
-From 53aaf2acb8bc3fb115e5d5327f6e7a994cfbf0bd Mon Sep 17 00:00:00 2001
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
-index 8352428a..15745c83 100644
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
-index 8d2bb8da..8fc61843 100644
---- a/policy/modules/system/systemd.if
-+++ b/policy/modules/system/systemd.if
-@@ -887,3 +887,42 @@ interface(`systemd_getattr_updated_runtime',`
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
deleted file mode 100644
index 77c6829..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From 85f5825111d4c6d6b276ed07fec2292804b97a39 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 04/34] fc/hostname: apply policy to common yocto hostname
- alternatives
-
-Upstream-Status: Inappropriate [only for Yocto]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/hostname.fc | 4 ++++
- 1 file changed, 4 insertions(+)
-
-diff --git a/policy/modules/system/hostname.fc b/policy/modules/system/hostname.fc
-index 83ddeb57..653e038d 100644
---- a/policy/modules/system/hostname.fc
-+++ b/policy/modules/system/hostname.fc
-@@ -1 +1,5 @@
-+/usr/bin/hostname\.net-tools	--	gen_context(system_u:object_r:hostname_exec_t,s0)
-+/usr/bin/hostname\.coreutils	--	gen_context(system_u:object_r:hostname_exec_t,s0)
-+/usr/lib/busybox/bin/hostname -- gen_context(system_u:object_r:hostname_exec_t,s0)
-+
- /usr/bin/hostname	--	gen_context(system_u:object_r:hostname_exec_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
deleted file mode 100644
index 98b6156..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
+++ /dev/null
@@ -1,96 +0,0 @@
-From 5694d5bdc5ff824c4d5848dcd61cf021305b5e00 Mon Sep 17 00:00:00 2001
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
-index 345e07f3..39f860e0 100644
---- a/policy/modules/system/authlogin.te
-+++ b/policy/modules/system/authlogin.te
-@@ -472,3 +472,5 @@ optional_policy(`
- 	samba_read_var_files(nsswitch_domain)
- 	samba_dontaudit_write_var_files(nsswitch_domain)
- ')
-+
-+allow chkpwd_t proc_t:filesystem getattr;
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 8ab46925..520f7da6 100644
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
-index a6f09dfd..68b80de3 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -993,6 +993,11 @@ allow systemd_tmpfiles_t systemd_journal_t:file { relabelfrom relabelto };
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
deleted file mode 100644
index 60d585b..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From ed53bb0452aab6aee11c6d6442b8524d3b27fa6f Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Thu, 28 Mar 2019 21:37:32 -0400
-Subject: [PATCH 05/34] fc/bash: apply /usr/bin/bash context to /bin/bash.bash
-
-We include /bin/bash.bash as a valid alias for /bin/bash, so ensure we apply
-the proper context to the target for our policy.
-
-Upstream-Status: Inappropriate [only for Yocto]
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/kernel/corecommands.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index e7415cac..cf3848db 100644
---- a/policy/modules/kernel/corecommands.fc
-+++ b/policy/modules/kernel/corecommands.fc
-@@ -141,6 +141,7 @@ ifdef(`distro_gentoo',`
- /usr/bin/d?ash			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /usr/bin/bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /usr/bin/bash2			--	gen_context(system_u:object_r:shell_exec_t,s0)
-+/usr/bin/bash.bash			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /usr/bin/fish			--	gen_context(system_u:object_r:shell_exec_t,s0)
- /usr/bin/git-shell		--	gen_context(system_u:object_r:shell_exec_t,s0)
- /usr/bin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
deleted file mode 100644
index 7d7908f..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From bf8da1fd057ce11e8ce6e445ccd532fde11868a6 Mon Sep 17 00:00:00 2001
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
-index 15745c83..d6a0270a 100644
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
deleted file mode 100644
index f318c23..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From 8614bc85ab13b72f7f83892ffd227c73b3df42bc Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
deleted file mode 100644
index 4f7d916..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
+++ /dev/null
@@ -1,92 +0,0 @@
-From 853b6611e50369b386a77d5bd8a28eeb9ef4cb9b Mon Sep 17 00:00:00 2001
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
-index 68b80de3..a1ef6990 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -10,7 +10,7 @@ policy_module(systemd, 1.7.0)
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0007-fc-login-apply-login-context-to-login.shadow.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0007-fc-login-apply-login-context-to-login.shadow.patch
deleted file mode 100644
index 8c71c90..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0007-fc-login-apply-login-context-to-login.shadow.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From c1f7e3033057dfb613bd92d723094b06c00e82f8 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Thu, 28 Mar 2019 21:43:53 -0400
-Subject: [PATCH 07/34] fc/login: apply login context to login.shadow
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/authlogin.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/authlogin.fc b/policy/modules/system/authlogin.fc
-index e22945cd..a42bc0da 100644
---- a/policy/modules/system/authlogin.fc
-+++ b/policy/modules/system/authlogin.fc
-@@ -5,6 +5,7 @@
- /etc/shadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
- 
- /usr/bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
-+/usr/bin/login\.shadow	--	gen_context(system_u:object_r:login_exec_t,s0)
- /usr/bin/pam_console_apply	--	gen_context(system_u:object_r:pam_console_exec_t,s0)
- /usr/bin/pam_timestamp_check	--	gen_context(system_u:object_r:pam_exec_t,s0)
- /usr/bin/unix_chkpwd		--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
deleted file mode 100644
index 27cbc9f..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
+++ /dev/null
@@ -1,103 +0,0 @@
-From 34630eecb211199c60c9b01fd77f0ede6e182712 Mon Sep 17 00:00:00 2001
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
-index d6a0270a..035c7ad2 100644
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
-index 8fc61843..1166505f 100644
---- a/policy/modules/system/systemd.if
-+++ b/policy/modules/system/systemd.if
-@@ -920,9 +920,11 @@ interface(`systemd_service_file_operations',`
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
-index a1ef6990..a62c3c38 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -995,7 +995,7 @@ allow systemd_tmpfiles_t systemd_tmpfiles_conf_type:file read_file_perms;
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patch
deleted file mode 100644
index 7a9f3f2..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From 878b005462f7b2208427af60ed6b670dca697b6c Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Thu, 28 Mar 2019 21:58:53 -0400
-Subject: [PATCH 08/34] fc/bind: fix real path for bind
-
-Upstream-Status: Pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/services/bind.fc | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/services/bind.fc b/policy/modules/services/bind.fc
-index b4879dc1..59498e25 100644
---- a/policy/modules/services/bind.fc
-+++ b/policy/modules/services/bind.fc
-@@ -1,8 +1,10 @@
- /etc/rc\.d/init\.d/named	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
-+/etc/rc\.d/init\.d/bind	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
- /etc/rc\.d/init\.d/unbound	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
- 
- /etc/bind(/.*)?	gen_context(system_u:object_r:named_zone_t,s0)
- /etc/bind/named\.conf.*	--	gen_context(system_u:object_r:named_conf_t,s0)
-+/etc/bind/rndc\.conf    --      gen_context(system_u:object_r:named_conf_t,s0)
- /etc/bind/rndc\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
- /etc/dnssec-trigger/dnssec_trigger_server\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
- /etc/named\.rfc1912\.zones	--	gen_context(system_u:object_r:named_conf_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
deleted file mode 100644
index efe81a4..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
+++ /dev/null
@@ -1,109 +0,0 @@
-From 6ac3c261a7cfc3a5d38ccc420f1ea371258c49fa Mon Sep 17 00:00:00 2001
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
-index a62c3c38..9b696823 100644
---- a/policy/modules/system/systemd.te
-+++ b/policy/modules/system/systemd.te
-@@ -1121,3 +1121,5 @@ files_var_filetrans(systemd_update_done_t, systemd_update_run_t, file, ".updated
- 
- kernel_read_system_state(systemd_update_done_t)
- 
-+systemd_service_allow_kernel_domain_access_to_sysctl_kernel_t(systemd_tmpfiles_t)
-+systemd_service_allow_kernel_files_domain_to_tmp_t(systemd_tmpfiles_t)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0009-fc-hwclock-add-hwclock-alternatives.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0009-fc-hwclock-add-hwclock-alternatives.patch
deleted file mode 100644
index 6039f49..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0009-fc-hwclock-add-hwclock-alternatives.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From d21287d2c0b63e19e1004f098a1934b6b02a0c05 Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0009-refpolicy-minimum-systemd-fix-for-syslog.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
deleted file mode 100644
index f67221a..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
+++ /dev/null
@@ -1,70 +0,0 @@
-From 57d554187619e32ecf925ecb015a60f1fca26fb8 Mon Sep 17 00:00:00 2001
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
-index 520f7da6..4e02dab8 100644
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
deleted file mode 100644
index dc715c4..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-From 0ee40e0a68645e23f59842929629a94ebe9873b4 Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch
deleted file mode 100644
index 09576fa..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From 10548eeaba694ff4320fdcbddc9e6cbb71856280 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Fri, 29 Mar 2019 09:20:58 -0400
-Subject: [PATCH 11/34] fc/ssh: apply policy to ssh alternatives
-
-Upstream-Status: Pending
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/services/ssh.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/services/ssh.fc b/policy/modules/services/ssh.fc
-index 4ac3e733..1f453091 100644
---- a/policy/modules/services/ssh.fc
-+++ b/policy/modules/services/ssh.fc
-@@ -4,6 +4,7 @@ HOME_DIR/\.ssh(/.*)?			gen_context(system_u:object_r:ssh_home_t,s0)
- /etc/ssh/ssh_host.*_key		--	gen_context(system_u:object_r:sshd_key_t,s0)
- 
- /usr/bin/ssh			--	gen_context(system_u:object_r:ssh_exec_t,s0)
-+/usr/bin/ssh\.openssh		--	gen_context(system_u:object_r:ssh_exec_t,s0)
- /usr/bin/ssh-agent		--	gen_context(system_u:object_r:ssh_agent_exec_t,s0)
- /usr/bin/ssh-keygen		--	gen_context(system_u:object_r:ssh_keygen_exec_t,s0)
- /usr/bin/sshd			--	gen_context(system_u:object_r:sshd_exec_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
deleted file mode 100644
index f02bd3a..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-From 457f278717ef53e19392c40ea8645ca216c0ae83 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Tue, 9 Jun 2015 21:22:52 +0530
-Subject: [PATCH 12/34] fc/sysnetwork: apply policy to ip alternatives
-
-Upstream-Status: Pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/sysnetwork.fc | 10 ++++++++++
- 1 file changed, 10 insertions(+)
-
-diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
-index ac7c2dd1..4e441503 100644
---- a/policy/modules/system/sysnetwork.fc
-+++ b/policy/modules/system/sysnetwork.fc
-@@ -60,6 +60,8 @@ ifdef(`distro_redhat',`
- /usr/sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
- /usr/sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/sbin/ifconfig\.net-tools	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/sbin/ip\.iproute2		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/sbin/ip			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/sbin/ipx_configure		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/sbin/ipx_interface		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-@@ -67,9 +69,17 @@ ifdef(`distro_redhat',`
- /usr/sbin/iw			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/sbin/iwconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/sbin/mii-tool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/sbin/mii-tool\.net-tools	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /usr/sbin/pump			--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
- /usr/sbin/tc			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- 
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
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
deleted file mode 100644
index 495b82f..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From e38e269b172ec75dcd218cfeac64271fbb3d17db Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Fri, 29 Mar 2019 09:36:08 -0400
-Subject: [PATCH 13/34] fc/udev: apply policy to udevadm in libexec
-
-Upstream-Status: Pending
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/udev.fc | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
-index 009d821a..cc438609 100644
---- a/policy/modules/system/udev.fc
-+++ b/policy/modules/system/udev.fc
-@@ -28,6 +28,8 @@ ifdef(`distro_debian',`
- /usr/sbin/udevstart	--	gen_context(system_u:object_r:udev_exec_t,s0)
- /usr/sbin/wait_for_sysfs --	gen_context(system_u:object_r:udev_exec_t,s0)
- 
-+/usr/libexec/udevadm	--	gen_context(system_u:object_r:udev_exec_t,s0)
-+
- ifdef(`distro_redhat',`
- /usr/sbin/start_udev --	gen_context(system_u:object_r:udev_exec_t,s0)
- ')
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
deleted file mode 100644
index 6ffabe4..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 8d730316e752601949346c9ebd4aff8a3cb2b1bf Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternatives.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternatives.patch
deleted file mode 100644
index c0fbb69..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternatives.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From d9f2d5857c1d558fa09f7e7864bba8427437bea6 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Thu, 13 Feb 2014 00:33:07 -0500
-Subject: [PATCH 15/34] fc/su: apply policy to su alternatives
-
-Upstream-Status: Pending
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/admin/su.fc | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
-index 3375c969..435a6892 100644
---- a/policy/modules/admin/su.fc
-+++ b/policy/modules/admin/su.fc
-@@ -1,3 +1,5 @@
- /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
- /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
- /usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
-+/usr/bin/su\.shadow	--	gen_context(system_u:object_r:su_exec_t,s0)
-+/usr/bin/su\.util-linux	--	gen_context(system_u:object_r:su_exec_t,s0)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch
deleted file mode 100644
index 34e9830..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch
+++ /dev/null
@@ -1,76 +0,0 @@
-From 5d8f2e090c9dbb270156c2f76f1614b03f3b0191 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Mon, 27 Jan 2014 03:54:01 -0500
-Subject: [PATCH 16/34] fc/fstools: fix real path for fstools
-
-Upstream-Status: Pending
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/fstools.fc | 12 ++++++++++++
- 1 file changed, 12 insertions(+)
-
-diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
-index 8fbd5ce4..d719e22c 100644
---- a/policy/modules/system/fstools.fc
-+++ b/policy/modules/system/fstools.fc
-@@ -58,6 +58,7 @@
- /usr/sbin/addpart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/blkid			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/blkid\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/blockdev		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/cfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/clubufflush		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -72,10 +73,12 @@
- /usr/sbin/efibootmgr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/fatsort		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/fdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/fdisk\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/gdisk			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/hdparm\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/install-mbr		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -88,17 +91,20 @@
- /usr/sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/mkreiserfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/mkswap		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/mkswap\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
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
- /usr/sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/swapoff\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/zdb			--	gen_context(system_u:object_r:fsadm_exec_t,s0)
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
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch
deleted file mode 100644
index 8455c08..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 628281e2e192269468cbe2c2818b6cab40975532 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 17/34] policy/module/logging: Add the syslogd_t to trusted
- object
-
-We add the syslogd_t to trusted object, because other process need
-to have the right to connectto/sendto /dev/log.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Roy.Li <rongqing.li@windriver.com>
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/logging.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 07ed546d..a7b69932 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -501,6 +501,7 @@ fs_getattr_all_fs(syslogd_t)
- fs_search_auto_mountpoints(syslogd_t)
- 
- mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
-+mls_trusted_object(syslogd_t) # Other process need to have the right to connectto/sendto /dev/log
- 
- term_write_console(syslogd_t)
- # Allow syslog to a terminal
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
deleted file mode 100644
index b253f84..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
+++ /dev/null
@@ -1,100 +0,0 @@
-From 0036dfb42db831e2dd6c6dc71c093e983a30dbd6 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 18/34] policy/module/logging: add rules for the symlink of
- /var/log
-
-/var/log is a symlink in poky, so we need allow rules for files to read
-lnk_file while doing search/list/delete/rw... in /var/log/ directory.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/logging.fc | 1 +
- policy/modules/system/logging.if | 6 ++++++
- policy/modules/system/logging.te | 2 ++
- 3 files changed, 9 insertions(+)
-
-diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
-index 0cf108e0..5bec7e99 100644
---- a/policy/modules/system/logging.fc
-+++ b/policy/modules/system/logging.fc
-@@ -55,6 +55,7 @@ ifdef(`distro_suse', `
- /var/dnscache/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
- 
- /var/log		-d	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
-+/var/log		-l	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
- /var/log/.*			gen_context(system_u:object_r:var_log_t,s0)
- /var/log/dmesg		--	gen_context(system_u:object_r:var_log_t,s0)
- /var/log/syslog		--	gen_context(system_u:object_r:var_log_t,s0)
-diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
-index 16091eb6..e83cb5b5 100644
---- a/policy/modules/system/logging.if
-+++ b/policy/modules/system/logging.if
-@@ -948,10 +948,12 @@ interface(`logging_append_all_inherited_logs',`
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
-@@ -970,10 +972,12 @@ interface(`logging_read_all_logs',`
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
-@@ -1075,6 +1079,7 @@ interface(`logging_read_generic_logs',`
- 
- 	files_search_var($1)
- 	allow $1 var_log_t:dir list_dir_perms;
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- 	read_files_pattern($1, var_log_t, var_log_t)
- ')
- 
-@@ -1176,6 +1181,7 @@ interface(`logging_manage_generic_logs',`
- 
- 	files_search_var($1)
- 	manage_files_pattern($1, var_log_t, var_log_t)
-+	allow $1 var_log_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index a7b69932..fa5664b0 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -161,6 +161,7 @@ manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
- allow auditd_t auditd_log_t:dir setattr;
- manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
- allow auditd_t var_log_t:dir search_dir_perms;
-+allow auditd_t var_log_t:lnk_file read_lnk_file_perms;
- 
- manage_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
- manage_sock_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
-@@ -288,6 +289,7 @@ allow audisp_remote_t self:capability { setpcap setuid };
- allow audisp_remote_t self:process { getcap setcap };
- allow audisp_remote_t self:tcp_socket create_socket_perms;
- allow audisp_remote_t var_log_t:dir search_dir_perms;
-+allow audisp_remote_t var_log_t:lnk_file read_lnk_file_perms;
- 
- manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
- manage_files_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
deleted file mode 100644
index 588c5c6..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 51e282aa2730e4c6e038d42a84a561c080f41187 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Fri, 29 Mar 2019 10:33:18 -0400
-Subject: [PATCH 19/34] policy/module/logging: add rules for syslogd symlink of
- /var/log
-
-We have added rules for the symlink of /var/log in logging.if, while
-syslogd_t uses /var/log but does not use the interfaces in logging.if. So
-still need add a individual rule for syslogd_t.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/system/logging.te | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index fa5664b0..63e92a8e 100644
---- a/policy/modules/system/logging.te
-+++ b/policy/modules/system/logging.te
-@@ -417,6 +417,7 @@ files_search_spool(syslogd_t)
- 
- # Allow access for syslog-ng
- allow syslogd_t var_log_t:dir { create setattr };
-+allow syslogd_t var_log_t:lnk_file read_lnk_file_perms;
- 
- # for systemd but can not be conditional
- files_pid_filetrans(syslogd_t, syslogd_tmp_t, dir, "log")
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch
deleted file mode 100644
index 3d55476..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 6a0b9c735253a2596bfb2a453694e620a1fdc50b Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Fri, 23 Aug 2013 11:20:00 +0800
-Subject: [PATCH 20/34] policy/module/logging: add domain rules for the subdir
- symlinks in /var/
-
-Except /var/log,/var/run,/var/lock, there still other subdir symlinks in
-/var for poky, so we need allow rules for all domains to read these
-symlinks. Domains still need their practical allow rules to read the
-contents, so this is still a secure relax.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/kernel/domain.te | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/policy/modules/kernel/domain.te b/policy/modules/kernel/domain.te
-index 1a55e3d2..babb794f 100644
---- a/policy/modules/kernel/domain.te
-+++ b/policy/modules/kernel/domain.te
-@@ -110,6 +110,9 @@ term_use_controlling_term(domain)
- # list the root directory
- files_list_root(domain)
- 
-+# Yocto/oe-core use some var volatile links
-+files_read_var_symlinks(domain)
-+
- ifdef(`hide_broken_symptoms',`
- 	# This check is in the general socket
- 	# listen code, before protocol-specific
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch
deleted file mode 100644
index 2546457..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch
+++ /dev/null
@@ -1,100 +0,0 @@
-From 437bb5a3318fd0fb268f6e015564b006135368d1 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 21/34] policy/module/files: add rules for the symlink of /tmp
-
-/tmp is a symlink in poky, so we need allow rules for files to read
-lnk_file while doing search/list/delete/rw.. in /tmp/ directory.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/kernel/files.fc | 1 +
- policy/modules/kernel/files.if | 8 ++++++++
- 2 files changed, 9 insertions(+)
-
-diff --git a/policy/modules/kernel/files.fc b/policy/modules/kernel/files.fc
-index c3496c21..05b1734b 100644
---- a/policy/modules/kernel/files.fc
-+++ b/policy/modules/kernel/files.fc
-@@ -176,6 +176,7 @@ HOME_ROOT/lost\+found/.*	<<none>>
- # /tmp
- #
- /tmp			-d	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
-+/tmp			-l	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
- /tmp/.*				<<none>>
- /tmp/\.journal			<<none>>
- 
-diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index f1c94411..eb067ad3 100644
---- a/policy/modules/kernel/files.if
-+++ b/policy/modules/kernel/files.if
-@@ -4350,6 +4350,7 @@ interface(`files_search_tmp',`
- 	')
- 
- 	allow $1 tmp_t:dir search_dir_perms;
-+	allow $1 tmp_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
-@@ -4386,6 +4387,7 @@ interface(`files_list_tmp',`
- 	')
- 
- 	allow $1 tmp_t:dir list_dir_perms;
-+	allow $1 tmp_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
-@@ -4422,6 +4424,7 @@ interface(`files_delete_tmp_dir_entry',`
- 	')
- 
- 	allow $1 tmp_t:dir del_entry_dir_perms;
-+	allow $1 tmp_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
-@@ -4440,6 +4443,7 @@ interface(`files_read_generic_tmp_files',`
- 	')
- 
- 	read_files_pattern($1, tmp_t, tmp_t)
-+	allow $1 tmp_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
-@@ -4458,6 +4462,7 @@ interface(`files_manage_generic_tmp_dirs',`
- 	')
- 
- 	manage_dirs_pattern($1, tmp_t, tmp_t)
-+	allow $1 tmp_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
-@@ -4476,6 +4481,7 @@ interface(`files_manage_generic_tmp_files',`
- 	')
- 
- 	manage_files_pattern($1, tmp_t, tmp_t)
-+	allow $1 tmp_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
-@@ -4512,6 +4518,7 @@ interface(`files_rw_generic_tmp_sockets',`
- 	')
- 
- 	rw_sock_files_pattern($1, tmp_t, tmp_t)
-+	allow $1 tmp_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
-@@ -4719,6 +4726,7 @@ interface(`files_tmp_filetrans',`
- 	')
- 
- 	filetrans_pattern($1, tmp_t, $2, $3, $4)
-+	allow $1 tmp_t:lnk_file read_lnk_file_perms;
- ')
- 
- ########################################
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch
deleted file mode 100644
index 3281ae8..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch
+++ /dev/null
@@ -1,123 +0,0 @@
-From 2512a367f4c16d4af6dd90d5f93f223466595d86 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 22/34] policy/module/terminals: add rules for bsdpty_device_t
- to complete pty devices.
-
-Upstream-Status: Pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/kernel/terminal.if | 16 ++++++++++++++++
- 1 file changed, 16 insertions(+)
-
-diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
-index 61308843..a84787e6 100644
---- a/policy/modules/kernel/terminal.if
-+++ b/policy/modules/kernel/terminal.if
-@@ -623,9 +623,11 @@ interface(`term_getattr_generic_ptys',`
- interface(`term_dontaudit_getattr_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
- 
- 	dontaudit $1 devpts_t:chr_file getattr;
-+	dontaudit $1 bsdpty_device_t:chr_file getattr;
- ')
- ########################################
- ## <summary>
-@@ -641,11 +643,13 @@ interface(`term_dontaudit_getattr_generic_ptys',`
- interface(`term_ioctl_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
- 
- 	dev_list_all_dev_nodes($1)
- 	allow $1 devpts_t:dir search;
- 	allow $1 devpts_t:chr_file ioctl;
-+	allow $1 bsdpty_device_t:chr_file ioctl;
- ')
- 
- ########################################
-@@ -663,9 +667,11 @@ interface(`term_ioctl_generic_ptys',`
- interface(`term_setattr_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
- 
- 	allow $1 devpts_t:chr_file setattr;
-+	allow $1 bsdpty_device_t:chr_file setattr;
- ')
- 
- ########################################
-@@ -683,9 +689,11 @@ interface(`term_setattr_generic_ptys',`
- interface(`term_dontaudit_setattr_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
- 
- 	dontaudit $1 devpts_t:chr_file setattr;
-+	dontaudit $1 bsdpty_device_t:chr_file setattr;
- ')
- 
- ########################################
-@@ -703,11 +711,13 @@ interface(`term_dontaudit_setattr_generic_ptys',`
- interface(`term_use_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
- 
- 	dev_list_all_dev_nodes($1)
- 	allow $1 devpts_t:dir list_dir_perms;
- 	allow $1 devpts_t:chr_file { rw_term_perms lock append };
-+	allow $1 bsdpty_device_t:chr_file { rw_term_perms lock append };
- ')
- 
- ########################################
-@@ -725,9 +735,11 @@ interface(`term_use_generic_ptys',`
- interface(`term_dontaudit_use_generic_ptys',`
- 	gen_require(`
- 		type devpts_t;
-+		type bsdpty_device_t;
- 	')
- 
- 	dontaudit $1 devpts_t:chr_file { getattr read write ioctl };
-+	dontaudit $1 bsdpty_device_t:chr_file { getattr read write ioctl };
- ')
- 
- #######################################
-@@ -743,10 +755,12 @@ interface(`term_dontaudit_use_generic_ptys',`
- interface(`term_setattr_controlling_term',`
- 	gen_require(`
- 		type devtty_t;
-+		type bsdpty_device_t;
- 	')
- 
- 	dev_list_all_dev_nodes($1)
- 	allow $1 devtty_t:chr_file setattr;
-+	allow $1 bsdpty_device_t:chr_file setattr;
- ')
- 
- ########################################
-@@ -763,10 +777,12 @@ interface(`term_setattr_controlling_term',`
- interface(`term_use_controlling_term',`
- 	gen_require(`
- 		type devtty_t;
-+		type bsdpty_device_t;
- 	')
- 
- 	dev_list_all_dev_nodes($1)
- 	allow $1 devtty_t:chr_file { rw_term_perms lock append };
-+	allow $1 bsdpty_device_t:chr_file { rw_term_perms lock append };
- ')
- 
- #######################################
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch
deleted file mode 100644
index 887af46..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From fcf756e6906bba50d09224184d64ac56f40b6424 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 13:37:23 +0800
-Subject: [PATCH 23/34] policy/module/terminals: don't audit tty_device_t in
- term_dontaudit_use_console.
-
-We should also not audit terminal to rw tty_device_t and fds in
-term_dontaudit_use_console.
-
-Upstream-Status: Inappropriate [only for Poky]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- policy/modules/kernel/terminal.if | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
-index a84787e6..cf66da2f 100644
---- a/policy/modules/kernel/terminal.if
-+++ b/policy/modules/kernel/terminal.if
-@@ -335,9 +335,12 @@ interface(`term_use_console',`
- interface(`term_dontaudit_use_console',`
- 	gen_require(`
- 		type console_device_t;
-+		type tty_device_t;
- 	')
- 
-+	init_dontaudit_use_fds($1)
- 	dontaudit $1 console_device_t:chr_file rw_chr_file_perms;
-+	dontaudit $1 tty_device_t:chr_file rw_chr_file_perms;
- ')
- 
- ########################################
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
deleted file mode 100644
index 0188fa9..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 85d5fc695ae69956715b502a8f1d95e9070dfbcc Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch
deleted file mode 100644
index b4befdd..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch
+++ /dev/null
@@ -1,77 +0,0 @@
-From 97a6eec0d2ea437b5155090ba880a88666f40059 Mon Sep 17 00:00:00 2001
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
-index 1db0c652..bf1c0173 100644
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
-index e971c533..ad7c823a 100644
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
deleted file mode 100644
index 94b7dd3..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
+++ /dev/null
@@ -1,126 +0,0 @@
-From 00d81a825519cac67d88e513d75e82ab3269124c Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch
deleted file mode 100644
index c20dd5f..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From fbb7431a4288c7dd2739bc3adfa521d427e6375a Mon Sep 17 00:00:00 2001
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
-index e411d4fd..f326d1d7 100644
---- a/policy/modules/roles/sysadm.te
-+++ b/policy/modules/roles/sysadm.te
-@@ -939,6 +939,7 @@ optional_policy(`
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch
deleted file mode 100644
index e0208aa..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch
+++ /dev/null
@@ -1,45 +0,0 @@
-From 8a3c685c1f868f04cb4a7953d14443527b920310 Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
deleted file mode 100644
index e62c81e..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 524f823bb07e0eb763683b72f18999ef29ae43c9 Mon Sep 17 00:00:00 2001
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
-index db6bb368..98fed2d0 100644
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
deleted file mode 100644
index 88c94c5..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From 78210f371391ccfad1d18b89a91ffb5a83f451e0 Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch
deleted file mode 100644
index d002830..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-From a406bcd2838772573e2cdde1a408ea52a60adc87 Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0032-policy-module-init-update-for-systemd-related-allow-.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0032-policy-module-init-update-for-systemd-related-allow-.patch
deleted file mode 100644
index 37d180c..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0032-policy-module-init-update-for-systemd-related-allow-.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-From dfbda15401f92e5d1b9b55c7ba24a543deea18e8 Mon Sep 17 00:00:00 2001
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
-index eabba1ed..5da25cd6 100644
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
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0033-refpolicy-minimum-make-sysadmin-module-optional.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0033-refpolicy-minimum-make-sysadmin-module-optional.patch
deleted file mode 100644
index 644c2cd..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0033-refpolicy-minimum-make-sysadmin-module-optional.patch
+++ /dev/null
@@ -1,67 +0,0 @@
-From 937924e34c516c4a18d183084958b2612439ba52 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Fri, 5 Apr 2019 11:53:28 -0400
-Subject: [PATCH 33/34] refpolicy/minimum: make sysadmin module optional
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
- policy/modules/system/init.te       | 16 +++++++++-------
- policy/modules/system/locallogin.te |  4 +++-
- 2 files changed, 12 insertions(+), 8 deletions(-)
-
-diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 5da25cd6..8352428a 100644
---- a/policy/modules/system/init.te
-+++ b/policy/modules/system/init.te
-@@ -446,13 +446,15 @@ ifdef(`init_systemd',`
- 		modutils_domtrans(init_t)
- 	')
- ',`
--	tunable_policy(`init_upstart',`
--		corecmd_shell_domtrans(init_t, initrc_t)
--	',`
--		# Run the shell in the sysadm role for single-user mode.
--		# causes problems with upstart
--		ifndef(`distro_debian',`
--			sysadm_shell_domtrans(init_t)
-+	optional_policy(`
-+		tunable_policy(`init_upstart',`
-+			corecmd_shell_domtrans(init_t, initrc_t)
-+		',`
-+			# Run the shell in the sysadm role for single-user mode.
-+			# causes problems with upstart
-+			ifndef(`distro_debian',`
-+				sysadm_shell_domtrans(init_t)
-+			')
- 		')
- 	')
- ')
-diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
-index a56f3d1f..4c679ff3 100644
---- a/policy/modules/system/locallogin.te
-+++ b/policy/modules/system/locallogin.te
-@@ -266,7 +266,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
- userdom_search_user_home_dirs(sulogin_t)
- userdom_use_user_ptys(sulogin_t)
- 
--sysadm_shell_domtrans(sulogin_t)
-+optional_policy(`
-+	sysadm_shell_domtrans(sulogin_t)
-+')
- 
- # by default, sulogin does not use pam...
- # sulogin_pam might need to be defined otherwise
--- 
-2.19.1
-
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch b/recipes-security/refpolicy/refpolicy-2.20190201/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
deleted file mode 100644
index c374384..0000000
--- a/recipes-security/refpolicy/refpolicy-2.20190201/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From bbad13d008ab4df827ac2ba8dfc6dd3e430f6dd6 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 19:36:44 +0800
-Subject: [PATCH 34/34] policy/module/apache: add rules for the symlink of
- /var/log - apache2
-
-We have added rules for the symlink of /var/log in logging.if,
-while apache.te uses /var/log but does not use the interfaces in
-logging.if. So still need add a individual rule for apache.te.
-
-Upstream-Status: Pending
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
diff --git a/recipes-security/refpolicy/refpolicy-mcs_2.20190201.bb b/recipes-security/refpolicy/refpolicy-mcs_2.20190201.bb
deleted file mode 100644
index 062727b..0000000
--- a/recipes-security/refpolicy/refpolicy-mcs_2.20190201.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-SUMMARY = "MCS (Multi Category Security) variant of the SELinux policy"
-DESCRIPTION = "\
-This is the reference policy for SE Linux built with MCS support. \
-An MCS policy is the same as an MLS policy but with only one sensitivity \
-level. This is useful on systems where a hierarchical policy (MLS) isn't \
-needed (pretty much all systems) but the non-hierarchical categories are. \
-"
-
-POLICY_TYPE = "mcs"
-
-include refpolicy_${PV}.inc
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb
deleted file mode 100644
index 01c9fc0..0000000
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb
+++ /dev/null
@@ -1,91 +0,0 @@
-################################################################################
-# Note that -minimum specifically inherits from -targeted. Key policy pieces
-# will be missing if you do not preserve this relationship.
-include refpolicy-targeted_${PV}.bb
-
-SUMMARY = "SELinux minimum policy"
-DESCRIPTION = "\
-This is a minimum reference policy with just core policy modules, and \
-could be used as a base for customizing targeted policy. \
-Pretty much everything runs as initrc_t or unconfined_t so all of the \
-domains are unconfined. \
-"
-
-POLICY_NAME = "minimum"
-
-CORE_POLICY_MODULES = "unconfined \
-	selinuxutil \
-	storage \
-	sysnetwork \
-	application \
-	libraries \
-	miscfiles \
-	logging \
-	userdomain \
-	init \
-	mount \
-	modutils \
-	getty \
-	authlogin \
-	locallogin \
-	"
-#systemd dependent policy modules
-CORE_POLICY_MODULES += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'clock systemd udev fstools', '', d)}"
-
-# nscd caches libc-issued requests to the name service.
-# Without nscd.pp, commands want to use these caches will be blocked.
-EXTRA_POLICY_MODULES += "nscd"
-
-# pam_mail module enables checking and display of mailbox status upon
-# "login", so "login" process will access to /var/spool/mail.
-EXTRA_POLICY_MODULES += "mta"
-
-# sysnetwork requires type definitions (insmod_t, consoletype_t,
-# hostname_t, ping_t, netutils_t) from modules:
-EXTRA_POLICY_MODULES += "modutils consoletype hostname netutils"
-
-# Add specific policy modules here that should be purged from the system
-# policy.  Purged modules will not be built and will not be installed on the
-# target.  To use them at some later time you must specifically build and load
-# the modules by hand on the target.
-#
-# USE WITH CARE!  With this feature it is easy to break your policy by purging
-# core modules (eg.  userdomain)
-# 
-# PURGE_POLICY_MODULES += "xdg xen"
-
-POLICY_MODULES_MIN = "${CORE_POLICY_MODULES} ${EXTRA_POLICY_MODULES}"
-
-# re-write the same func from refpolicy_common.inc
-prepare_policy_store () {
-	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
-	POL_PRIORITY=100
-	POL_SRC=${D}${datadir}/selinux/${POLICY_NAME}
-	POL_STORE=${D}${localstatedir}/lib/selinux/${POLICY_NAME}
-	POL_ACTIVE_MODS=${POL_STORE}/active/modules/${POL_PRIORITY}
-
-	# Prepare to create policy store
-	mkdir -p ${POL_STORE}
-	mkdir -p ${POL_ACTIVE_MODS}
-
-	# get hll type from suffix on base policy module
-	HLL_TYPE=$(echo ${POL_SRC}/base.* | awk -F . '{if (NF>1) {print $NF}}')
-	HLL_BIN=${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TYPE}
-
-	for i in base ${POLICY_MODULES_MIN}; do
-		MOD_FILE=${POL_SRC}/${i}.${HLL_TYPE}
-		MOD_DIR=${POL_ACTIVE_MODS}/${i}
-		mkdir -p ${MOD_DIR}
-		echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
-
-		if ! bzip2 -t ${MOD_FILE} >/dev/null 2>&1; then
-			${HLL_BIN} ${MOD_FILE} | bzip2 --stdout > ${MOD_DIR}/cil
-			bzip2 -f ${MOD_FILE} && mv -f ${MOD_FILE}.bz2 ${MOD_FILE}
-		else
-			bunzip2 --stdout ${MOD_FILE} | \
-				${HLL_BIN} | \
-				bzip2 --stdout > ${MOD_DIR}/cil
-		fi
-		cp ${MOD_FILE} ${MOD_DIR}/hll
-	done
-}
diff --git a/recipes-security/refpolicy/refpolicy-mls_2.20190201.bb b/recipes-security/refpolicy/refpolicy-mls_2.20190201.bb
deleted file mode 100644
index 7388232..0000000
--- a/recipes-security/refpolicy/refpolicy-mls_2.20190201.bb
+++ /dev/null
@@ -1,10 +0,0 @@
-SUMMARY = "MLS (Multi Level Security) variant of the SELinux policy"
-DESCRIPTION = "\
-This is the reference policy for SE Linux built with MLS support. \
-It allows giving data labels such as \"Top Secret\" and preventing \
-such data from leaking to processes or files with lower classification. \
-"
-
-POLICY_TYPE = "mls"
-
-include refpolicy_${PV}.inc
diff --git a/recipes-security/refpolicy/refpolicy-standard_2.20190201.bb b/recipes-security/refpolicy/refpolicy-standard_2.20190201.bb
deleted file mode 100644
index 3674fdd..0000000
--- a/recipes-security/refpolicy/refpolicy-standard_2.20190201.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-SUMMARY = "Standard variants of the SELinux policy"
-DESCRIPTION = "\
-This is the reference policy for SELinux built with type enforcement \
-only."
-
-POLICY_TYPE = "standard"
-
-include refpolicy_${PV}.inc
diff --git a/recipes-security/refpolicy/refpolicy-targeted_2.20190201.bb b/recipes-security/refpolicy/refpolicy-targeted_2.20190201.bb
deleted file mode 100644
index 1ecdb4e..0000000
--- a/recipes-security/refpolicy/refpolicy-targeted_2.20190201.bb
+++ /dev/null
@@ -1,35 +0,0 @@
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
-SRC_URI += " \
-	${@bb.utils.contains('DISTRO_FEATURES', 'systemd', '${SYSTEMD_REFPOLICY_PATCHES}', '${SYSVINIT_REFPOLICY_PATCHES}', d)} \
-	"
diff --git a/recipes-security/refpolicy/refpolicy_2.20190201.inc b/recipes-security/refpolicy/refpolicy_2.20190201.inc
deleted file mode 100644
index 4030b36..0000000
--- a/recipes-security/refpolicy/refpolicy_2.20190201.inc
+++ /dev/null
@@ -1,9 +0,0 @@
-SRC_URI = "https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE_2_20190201/refpolicy-${PV}.tar.bz2"
-SRC_URI[md5sum] = "babb0d5ca2ae333631d25392b2b3ce8d"
-SRC_URI[sha256sum] = "ed620dc91c4e09eee6271b373f7c61a364a82ea57bd2dc86ca1f7075304e2843"
-
-UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20190201:"
-
-include refpolicy_common.inc
-- 
2.34.1


