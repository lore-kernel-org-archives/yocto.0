Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2BBEB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 22:50:12 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.1196.1687387802640560656
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 15:50:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=CPI1eKAm;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5702415be17so57677407b3.2
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 15:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687387801; x=1689979801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=02CtSfA2n4cbHr86I82pG065mKgShXcSCI1qDxTA35g=;
        b=CPI1eKAmjo3XrKEBL8KZRVkr+LWLDsm8kSmGFR5EtRQA9cL83NOA+6Y28aZA4ohjqf
         pLvCvnndS+KaeHvBx8g72bPv8IWg8YQdD+8tfOE3CaKKcVRI3BW1XXLBrnA6PvQAX9Uz
         E7YTNbfzgjTtzAWTdZ9qRRm3/7mFK4R2IBPMa5keAEa2msSoy9kCxVglRpqmGmVBcANs
         SIZPYboL96uBZXrOr8qLXYsvrQcTrYnnJm5zifMcw4Yovdds3zNnrkSrx+8QIBRaEN7H
         qtECsPz0mr6AohubL4z0Y43vENs2FFbIeHh8mM34laPmBWBhlLi6id9x4ElX5x/SeX3L
         etLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687387801; x=1689979801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=02CtSfA2n4cbHr86I82pG065mKgShXcSCI1qDxTA35g=;
        b=baiDxscUYsEsA84DHcgW/80XQc5k/G6v2lz8Vc0s/PVHWVCzxK6Pnnla0cNCI1hj/h
         9SR4fY2rGciWbjFJZxU2oKZkKZLWm4Xeu5NdOTadh61XfSb/Gp6vdhcqwK4V08CB7nwA
         8qmKivoC2zecU6K8W2IYb92tzSoLP3toeBWyFd6WaFqUZe0NC/cA6Ywj/Jxw6A2feJze
         sImqB7k5pKUhttDKjIH8QMBLBfI6E67zdg4pJ0+9KHy6aQ7vGHUXSgqGDoaWigNii3h8
         z4MQgaOGRZ3TxX/Se31VoQg5XoyaWOam7/tWKZqttcY64PYKIt8uqLpS1uNsxhz1lAqM
         /vYQ==
X-Gm-Message-State: AC+VfDyPQY27NAe2RZFhohAz0aXrZs5SmxSFrgEYeRk9xuuvvJKljZzQ
	d0JZlHw6QZOZtPsEz/q1aCcqHJ1B9RE=
X-Google-Smtp-Source: ACHHUZ4HrUSfod/FCUfU2dB6Vdspwif2yF2NsP/CD9hH0XgkMcNEtkQN9at6MCCngZKx2jTE1EdKCA==
X-Received: by 2002:a0d:cad1:0:b0:56d:325c:442 with SMTP id m200-20020a0dcad1000000b0056d325c0442mr13525182ywd.31.1687387801270;
        Wed, 21 Jun 2023 15:50:01 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:dc27:e982:11fd:2a21])
        by smtp.gmail.com with ESMTPSA id y65-20020a817d44000000b00545a08184e0sm1430501ywc.112.2023.06.21.15.50.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 15:50:00 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: bump the number of test that pass
Date: Wed, 21 Jun 2023 18:49:58 -0400
Message-Id: <20230621224958.474722-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 22:50:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60386

Add a eval script.
Lets see how many checks pass out of the box

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../0001-standard.profile-expand-checks.patch | 228 ++++++++++++++++++
 .../scap-security-guide/files/run_eval.sh     |   3 +
 .../scap-security-guide_0.1.67.bb             |  12 +-
 3 files changed, 241 insertions(+), 2 deletions(-)
 create mode 100644 recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
 create mode 100644 recipes-compliance/scap-security-guide/files/run_eval.sh

diff --git a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
new file mode 100644
index 0000000..0621360
--- /dev/null
+++ b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
@@ -0,0 +1,228 @@
+From 7af2da3bbe1d5b4cba89c6dae9ea267717b865ea Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Wed, 21 Jun 2023 07:46:38 -0400
+Subject: [PATCH] standard.profile: expand checks
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+---
+ .../openembedded/profiles/standard.profile    | 206 ++++++++++++++++++
+ 1 file changed, 206 insertions(+)
+
+diff --git a/products/openembedded/profiles/standard.profile b/products/openembedded/profiles/standard.profile
+index 44339d716c..877d1a3971 100644
+--- a/products/openembedded/profiles/standard.profile
++++ b/products/openembedded/profiles/standard.profile
+@@ -9,4 +9,210 @@ description: |-
+ selections:
+     - file_owner_etc_passwd
+     - file_groupowner_etc_passwd
++    - service_crond_enabled
++    - file_groupowner_crontab
++    - file_owner_crontab
++    - file_permissions_crontab
++    - file_groupowner_cron_hourly
++    - file_owner_cron_hourly
++    - file_permissions_cron_hourly
++    - file_groupowner_cron_daily
++    - file_owner_cron_daily
++    - file_permissions_cron_daily
++    - file_groupowner_cron_weekly
++    - file_owner_cron_weekly
++    - file_permissions_cron_weekly
++    - file_groupowner_cron_monthly
++    - file_owner_cron_monthly
++    - file_permissions_cron_monthly
++    - file_groupowner_cron_d
++    - file_owner_cron_d
++    - file_permissions_cron_d
++    - file_groupowner_cron_allow
++    - file_owner_cron_allow
++    - file_cron_deny_not_exist
++    - file_groupowner_at_allow
++    - file_owner_at_allow
++    - file_at_deny_not_exist
++    - file_permissions_at_allow
++    - file_permissions_cron_allow
++    - file_groupowner_sshd_config
++    - file_owner_sshd_config
++    - file_permissions_sshd_config
++    - file_permissions_sshd_private_key
++    - file_permissions_sshd_pub_key
++    - sshd_set_loglevel_verbose
++    - sshd_set_loglevel_info
++    - sshd_max_auth_tries_value=4
++    - sshd_set_max_auth_tries
++    - sshd_disable_rhosts
++    - disable_host_auth
++    - sshd_disable_root_login
++    - sshd_disable_empty_passwords
++    - sshd_do_not_permit_user_env
++    - sshd_idle_timeout_value=15_minutes
++    - sshd_set_idle_timeout
++    - sshd_set_keepalive
++    - var_sshd_set_keepalive=0
++    - sshd_set_login_grace_time
++    - var_sshd_set_login_grace_time=60
++    - sshd_enable_warning_banner
++    - sshd_enable_pam
++    - sshd_set_maxstartups
++    - var_sshd_set_maxstartups=10:30:60
++    - sshd_set_max_sessions
++    - var_sshd_max_sessions=10
++    - accounts_password_pam_minclass
++    - accounts_password_pam_minlen
++    - accounts_password_pam_retry
++    - var_password_pam_minclass=4
++    - var_password_pam_minlen=14
++    - locking_out_password_attempts
++    - accounts_password_pam_pwhistory_remember_password_auth
++    - accounts_password_pam_pwhistory_remember_system_auth
++    - var_password_pam_remember_control_flag=required
++    - var_password_pam_remember=5
++    - set_password_hashing_algorithm_systemauth
++    - accounts_maximum_age_login_defs
++    - var_accounts_maximum_age_login_defs=365
++    - accounts_password_set_max_life_existing
++    - accounts_minimum_age_login_defs
++    - var_accounts_minimum_age_login_defs=7
++    - accounts_password_set_min_life_existing
++    - accounts_password_warn_age_login_defs
++    - var_accounts_password_warn_age_login_defs=7
++    - account_disable_post_pw_expiration
++    - var_account_disable_post_pw_expiration=30
++    - no_shelllogin_for_systemaccounts
++    - accounts_tmout
++    - var_accounts_tmout=15_min
++    - accounts_root_gid_zero
++    - accounts_umask_etc_bashrc
++    - accounts_umask_etc_login_defs
++    - use_pam_wheel_for_su
++    - sshd_allow_only_protocol2
++    - journald_forward_to_syslog
++    - journald_compress
++    - journald_storage
++    - service_auditd_enabled
++    - service_httpd_disabled
++    - service_vsftpd_disabled
++    - service_named_disabled
++    - service_nfs_disabled
++    - service_rpcbind_disabled
++    - service_slapd_disabled
++    - service_dhcpd_disabled
++    - service_cups_disabled
++    - service_ypserv_disabled
++    - service_rsyncd_disabled
++    - service_avahi-daemon_disabled
++    - service_snmpd_disabled
++    - service_squid_disabled
++    - service_smb_disabled
++    - service_dovecot_disabled
++    - banner_etc_motd
++    - login_banner_text=cis_banners
++    - banner_etc_issue
++    - login_banner_text=cis_banners
++    - file_groupowner_etc_motd
++    - file_owner_etc_motd
++    - file_permissions_etc_motd
++    - file_groupowner_etc_issue
++    - file_owner_etc_issue
++    - file_permissions_etc_issue
++    - ensure_gpgcheck_globally_activated
++    - package_aide_installed
++    - aide_periodic_cron_checking
++    - grub2_password
++    - file_groupowner_grub2_cfg
++    - file_owner_grub2_cfg
++    - file_permissions_grub2_cfg
++    - require_singleuser_auth
++    - require_emergency_target_auth
++    - disable_users_coredumps
++    - coredump_disable_backtraces
++    - coredump_disable_storage
++    - configure_crypto_policy
++    - var_system_crypto_policy=default_policy
++    - dir_perms_world_writable_sticky_bits
+     - file_permissions_etc_passwd
++    - file_owner_etc_shadow
++    - file_groupowner_etc_shadow
++    - file_groupowner_etc_group
++    - file_owner_etc_group
++    - file_permissions_etc_group
++    - file_groupowner_etc_gshadow
++    - file_owner_etc_gshadow
++    - file_groupowner_backup_etc_passwd
++    - file_owner_backup_etc_passwd
++    - file_permissions_backup_etc_passwd
++    - file_groupowner_backup_etc_shadow
++    - file_owner_backup_etc_shadow
++    - file_permissions_backup_etc_shadow
++    - file_groupowner_backup_etc_group
++    - file_owner_backup_etc_group
++    - file_permissions_backup_etc_group
++    - file_groupowner_backup_etc_gshadow
++    - file_owner_backup_etc_gshadow
++    - file_permissions_backup_etc_gshadow
++    - file_permissions_unauthorized_world_writable
++    - file_permissions_ungroupowned
++    - accounts_root_path_dirs_no_write
++    - root_path_no_dot
++    - accounts_no_uid_except_zero
++    - file_ownership_home_directories
++    - file_groupownership_home_directories
++    - no_netrc_files
++    - no_rsh_trust_files
++    - account_unique_id
++    - group_unique_id
++    - group_unique_name
++    - kernel_module_sctp_disabled
++    - kernel_module_dccp_disabled
++    - wireless_disable_interfaces
++    - sysctl_net_ipv4_ip_forward
++    - sysctl_net_ipv6_conf_all_forwarding
++    - sysctl_net_ipv6_conf_all_forwarding_value=disabled
++    - sysctl_net_ipv4_conf_all_send_redirects
++    - sysctl_net_ipv4_conf_default_send_redirects
++    - sysctl_net_ipv4_conf_all_accept_source_route
++    - sysctl_net_ipv4_conf_all_accept_source_route_value=disabled
++    - sysctl_net_ipv4_conf_default_accept_source_route
++    - sysctl_net_ipv4_conf_default_accept_source_route_value=disabled
++    - sysctl_net_ipv6_conf_all_accept_source_route
++    - sysctl_net_ipv6_conf_all_accept_source_route_value=disabled
++    - sysctl_net_ipv6_conf_default_accept_source_route
++    - sysctl_net_ipv6_conf_default_accept_source_route_value=disabled
++    - sysctl_net_ipv4_conf_all_accept_redirects
++    - sysctl_net_ipv4_conf_all_accept_redirects_value=disabled
++    - sysctl_net_ipv4_conf_default_accept_redirects
++    - sysctl_net_ipv4_conf_default_accept_redirects_value=disabled
++    - sysctl_net_ipv6_conf_all_accept_redirects
++    - sysctl_net_ipv6_conf_all_accept_redirects_value=disabled
++    - sysctl_net_ipv6_conf_default_accept_redirects
++    - sysctl_net_ipv6_conf_default_accept_redirects_value=disabled
++    - sysctl_net_ipv4_conf_all_secure_redirects
++    - sysctl_net_ipv4_conf_all_secure_redirects_value=disabled
++    - sysctl_net_ipv4_conf_default_secure_redirects
++    - sysctl_net_ipv4_conf_default_secure_redirects_value=disabled
++    - sysctl_net_ipv4_conf_all_log_martians
++    - sysctl_net_ipv4_conf_all_log_martians_value=enabled
++    - sysctl_net_ipv4_conf_default_log_martians
++    - sysctl_net_ipv4_conf_default_log_martians_value=enabled
++    - sysctl_net_ipv4_icmp_echo_ignore_broadcasts
++    - sysctl_net_ipv4_icmp_echo_ignore_broadcasts_value=enabled
++    - sysctl_net_ipv4_icmp_ignore_bogus_error_responses
++    - sysctl_net_ipv4_icmp_ignore_bogus_error_responses_value=enabled
++    - sysctl_net_ipv4_conf_all_rp_filter
++    - sysctl_net_ipv4_conf_all_rp_filter_value=enabled
++    - sysctl_net_ipv4_conf_default_rp_filter
++    - sysctl_net_ipv4_conf_default_rp_filter_value=enabled
++    - sysctl_net_ipv4_tcp_syncookies
++    - sysctl_net_ipv4_tcp_syncookies_value=enabled
++    - sysctl_net_ipv6_conf_all_accept_ra
++    - sysctl_net_ipv6_conf_all_accept_ra_value=disabled
++    - sysctl_net_ipv6_conf_default_accept_ra
++    - sysctl_net_ipv6_conf_default_accept_ra_value=disabled
++    - package_firewalld_installed
++    - service_firewalld_enabled
++    - package_iptables_installed
+-- 
+2.34.1
+
diff --git a/recipes-compliance/scap-security-guide/files/run_eval.sh b/recipes-compliance/scap-security-guide/files/run_eval.sh
new file mode 100644
index 0000000..cc79bac
--- /dev/null
+++ b/recipes-compliance/scap-security-guide/files/run_eval.sh
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+oscap xccdf eval --results results.xml --report report.html --profile xccdf_org.ssgproject.content_profile_standard /usr/share/xml/scap/ssg/content/ssg-openembedded-ds.xml
diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
index 420a6d8..a9023ec 100644
--- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
+++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
@@ -8,7 +8,10 @@ LICENSE = "BSD-3-Clause"
 
 SRCREV = "dad85502ce8da722a6afc391346c41cee61e90a9"
 SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https \
-           file://0001-scap-security-guide-add-openembedded.patch "
+           file://0001-scap-security-guide-add-openembedded.patch \
+           file://0001-standard.profile-expand-checks.patch \
+           file://run_eval.sh \
+           "
 
 
 DEPENDS = "openscap-native python3-pyyaml-native python3-jinja2-native libxml2-native expat-native coreutils-native"
@@ -29,6 +32,11 @@ do_configure:prepend () {
     sed -i -e 's:NAMES\ grep:NAMES\ ${HOSTTOOLS_DIR}/grep:g' ${S}/CMakeLists.txt
 }
 
-FILES:${PN} += "${datadir}/xml"
+do_install:append() {
+    install -d ${D}${datadir}/openscap
+    install  ${WORKDIR}/run_eval.sh ${D}${datadir}/openscap/.
+}
+
+FILES:${PN} += "${datadir}/xml ${datadir}/openscap"
 
 RDEPENDS:${PN} = "openscap"
-- 
2.34.1


