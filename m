Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D51CEEB64DA
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 00:34:16 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web10.10836.1688603653857413088
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jul 2023 17:34:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Rw9tVmD9;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-c5e67d75e0cso81042276.2
        for <yocto@lists.yoctoproject.org>; Wed, 05 Jul 2023 17:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688603653; x=1691195653;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=CLXsMOqksG9qjwjYiv3Qhyt2Nm+xQHzEBRUuQcTfoWY=;
        b=Rw9tVmD93QQqUvdshfiIVYsuy6UnGqMC9jcbuW2tTJQeVD1AbYzOgEKRwpFQjLCAsV
         wmt/TenHp2tOYFgCmD55cwwVkSp0hOQHjo4S+XdnvI8Oresrud6KHPOQrkuz+8E+hr3Q
         O8RMgcjGcifZVkBsVLXoqjR+GYFNanrP3Yc2t7XJSleOIdERrChDfFaTfIxYsPJl27Ei
         tp5ru2G+bK4KxznBfk/G2AMVnMO3jD2pGfHP+Y6Q/W530b1j/2f1mqnagAKI+nMGRcOt
         h4dSEGJDJp6FOpKxnCtey0GhyQx2pqA1vhLrYBp+lvBJoRd00EGOsgN3aEbuHM37xNvE
         +0aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688603653; x=1691195653;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CLXsMOqksG9qjwjYiv3Qhyt2Nm+xQHzEBRUuQcTfoWY=;
        b=NQALoau8XktlgO72nsAD55QQfq3AOQasF5PPwcOWrIp4y8xK5uzYsjQOgf1p5w5uxx
         uUT28e2kaIbJrhn6mYZe5HobtF4QrzoBB+EMKB6oBKHwpHR4inw84g+FDUuONdxwiW3L
         B6nZ3e9MJKhF3Du/Hs+bSMDSEHDZSOmDOc8El3cPJCRXsmOfmeljBCxrVVYAcTh9k+A6
         QGLPZ7DMT7PiqB4igm6uQqQy1fJbl6uI/skaU2jpfSOoN2Hi71nXmbxpmzhBwZJpQXLf
         V078BYUDj27Z9z4rtoVTUU4eupCAxH20qS0eOx/GXgk7VhSL/ikjsMOS5EEBsoZKDII9
         vOUQ==
X-Gm-Message-State: ABy/qLYNRCWMyYSoNyIS5La5GTlfs5HnGAY9QvP4j4RgvwWG7ZFWPJ6N
	Sf5vSO1+ED3DNHtI2yvBruLu9wKNpGE=
X-Google-Smtp-Source: APBJJlHw0ALStgsP/ABWpwBIiO6LkebpdTeuxYTC1aBFOX2AOgJcCSZEcwQjGKH8yq4Y/FfAMfooEg==
X-Received: by 2002:a25:abe4:0:b0:c5c:616:39cb with SMTP id v91-20020a25abe4000000b00c5c061639cbmr424624ybi.14.1688603652317;
        Wed, 05 Jul 2023 17:34:12 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:8e4e:f4a2:968a:a93d])
        by smtp.gmail.com with ESMTPSA id g8-20020a05690203c800b00c4d8c48d7c0sm42702ybs.7.2023.07.05.17.34.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 17:34:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: refactor patches
Date: Wed,  5 Jul 2023 20:34:10 -0400
Message-Id: <20230706003410.3621824-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 00:34:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60521

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...ide-add-openembedded-distro-support.patch} | 227 ++++++++++++++---
 .../0001-standard.profile-expand-checks.patch | 231 ------------------
 ...cap-security-guide-Add-Poky-support.patch} |  57 ++---
 .../scap-security-guide_0.1.67.bb             |   7 +-
 4 files changed, 215 insertions(+), 307 deletions(-)
 rename recipes-compliance/scap-security-guide/files/{0001-scap-security-guide-add-openembedded.patch => 0001-scap-security-guide-add-openembedded-distro-support.patch} (52%)
 delete mode 100644 recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
 rename recipes-compliance/scap-security-guide/files/{0001-scap-security-guide-add-Poky-support.patch => 0002-scap-security-guide-Add-Poky-support.patch} (52%)

diff --git a/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded.patch b/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded-distro-support.patch
similarity index 52%
rename from recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded.patch
rename to recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded-distro-support.patch
index f003f72..0db2b12 100644
--- a/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded.patch
+++ b/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded-distro-support.patch
@@ -1,24 +1,27 @@
-From f6287d146762b8360bd7099f4724a58eedba7d2a Mon Sep 17 00:00:00 2001
+From 826dd5b109f79270819703a23cc8066895d68042 Mon Sep 17 00:00:00 2001
 From: Armin Kuster <akuster808@gmail.com>
 Date: Wed, 14 Jun 2023 07:46:55 -0400
-Subject: [PATCH] scap-security-guide: add openembedded
+Subject: [PATCH 1/2] scap-security-guide: add openembedded distro support
+
+includes a standard profile for out-of-the-box checks
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
 Upstream-Status: Pending
+https://github.com/ComplianceAsCode/content/pull/10793
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
 ---
- CMakeLists.txt                                |  5 +++
- build_product                                 |  1 +
- products/openembedded/CMakeLists.txt          |  6 ++++
- products/openembedded/product.yml             | 19 +++++++++++
- .../openembedded/profiles/standard.profile    | 12 +++++++
- .../openembedded/transforms/constants.xslt    | 10 ++++++
- .../oval/installed_OS_is_openembedded.xml     | 33 +++++++++++++++++++
- .../oval/sysctl_kernel_ipv6_disable.xml       |  1 +
- ssg/constants.py                              |  5 ++-
- 9 files changed, 91 insertions(+), 1 deletion(-)
+ CMakeLists.txt                                |   5 +
+ build_product                                 |   1 +
+ products/openembedded/CMakeLists.txt          |   6 +
+ products/openembedded/product.yml             |  19 ++
+ .../openembedded/profiles/standard.profile    | 166 ++++++++++++++++++
+ .../openembedded/transforms/constants.xslt    |  10 ++
+ .../oval/installed_OS_is_openembedded.xml     |  33 ++++
+ .../oval/sysctl_kernel_ipv6_disable.xml       |   1 +
+ ssg/constants.py                              |   5 +-
+ 9 files changed, 245 insertions(+), 1 deletion(-)
  create mode 100644 products/openembedded/CMakeLists.txt
  create mode 100644 products/openembedded/product.yml
  create mode 100644 products/openembedded/profiles/standard.profile
@@ -26,10 +29,10 @@ Signed-off-by: Armin Kuster <akuster808@gmail.com>
  create mode 100644 shared/checks/oval/installed_OS_is_openembedded.xml
 
 diff --git a/CMakeLists.txt b/CMakeLists.txt
-index 85ec289644..09ac96784e 100644
+index 6b1ac00ff9..e4191f2cef 100644
 --- a/CMakeLists.txt
 +++ b/CMakeLists.txt
-@@ -95,6 +95,7 @@ option(SSG_PRODUCT_UBUNTU1804 "If enabled, the Ubuntu 18.04 SCAP content will be
+@@ -97,6 +97,7 @@ option(SSG_PRODUCT_UBUNTU1804 "If enabled, the Ubuntu 18.04 SCAP content will be
  option(SSG_PRODUCT_UBUNTU2004 "If enabled, the Ubuntu 20.04 SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
  option(SSG_PRODUCT_UBUNTU2204 "If enabled, the Ubuntu 22.04 SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
  option(SSG_PRODUCT_UOS20 "If enabled, the Uos 20 SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
@@ -37,16 +40,16 @@ index 85ec289644..09ac96784e 100644
  
  
  option(SSG_CENTOS_DERIVATIVES_ENABLED "If enabled, CentOS derivative content will be built from the RHEL content" TRUE)
-@@ -289,6 +290,7 @@ message(STATUS "Ubuntu 18.04: ${SSG_PRODUCT_UBUNTU1804}")
+@@ -291,6 +292,7 @@ message(STATUS "Ubuntu 18.04: ${SSG_PRODUCT_UBUNTU1804}")
  message(STATUS "Ubuntu 20.04: ${SSG_PRODUCT_UBUNTU2004}")
  message(STATUS "Ubuntu 22.04: ${SSG_PRODUCT_UBUNTU2204}")
  message(STATUS "Uos 20: ${SSG_PRODUCT_UOS20}")
-+message(STATUS "OpenEmbedded nodistro: ${SSG_PRODUCT_OE}")
- 
++message(STATUS "OpenEmbedded: ${SSG_PRODUCT_OE}")
  
  
-@@ -410,6 +412,9 @@ endif()
- if (SSG_PRODUCT_UOS20)
+ message(STATUS " ")
+@@ -409,6 +411,9 @@ endif()
+ if(SSG_PRODUCT_UOS20)
      add_subdirectory("products/uos20" "uos20")
  endif()
 +if (SSG_PRODUCT_OE)
@@ -56,14 +59,14 @@ index 85ec289644..09ac96784e 100644
  # ZIP only contains source datastreams and kickstarts, people who
  # want sources to build from should get the tarball instead.
 diff --git a/build_product b/build_product
-index fc793cbe70..197d925b7e 100755
+index fc793cbe70..7bdc03edfe 100755
 --- a/build_product
 +++ b/build_product
 @@ -333,6 +333,7 @@ all_cmake_products=(
  	UBUNTU2204
  	UOS20
  	MACOS1015
-+    OPENEMBEDDED
++	OPENEMBEDDED
  )
  
  DEFAULT_OVAL_MAJOR_VERSION=5
@@ -81,7 +84,7 @@ index 0000000000..1981adf53e
 +ssg_build_product("openembedded")
 diff --git a/products/openembedded/product.yml b/products/openembedded/product.yml
 new file mode 100644
-index 0000000000..9f2f12d737
+index 0000000000..debf6870ef
 --- /dev/null
 +++ b/products/openembedded/product.yml
 @@ -0,0 +1,19 @@
@@ -101,15 +104,15 @@ index 0000000000..9f2f12d737
 +cpes_root: "../../shared/applicability"
 +cpes:
 +  - openembedded:
-+      name: "cpe:/o:openembedded"
++      name: "cpe:/o:openembedded:nodistro:"
 +      title: "OpenEmbedded nodistro"
 +      check_id: installed_OS_is_openembedded
 diff --git a/products/openembedded/profiles/standard.profile b/products/openembedded/profiles/standard.profile
 new file mode 100644
-index 0000000000..44339d716c
+index 0000000000..fcb9e0e5c2
 --- /dev/null
 +++ b/products/openembedded/profiles/standard.profile
-@@ -0,0 +1,12 @@
+@@ -0,0 +1,166 @@
 +documentation_complete: true
 +
 +title: 'Sample Security Profile for OpenEmbedded Distros'
@@ -121,10 +124,164 @@ index 0000000000..44339d716c
 +selections:
 +    - file_owner_etc_passwd
 +    - file_groupowner_etc_passwd
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
++    - var_accounts_maximum_age_login_defs=365
++    - accounts_password_set_max_life_existing
++    - var_accounts_minimum_age_login_defs=7
++    - accounts_password_set_min_life_existing
++    - var_accounts_password_warn_age_login_defs=7
++    - account_disable_post_pw_expiration
++    - var_account_disable_post_pw_expiration=30
++    - no_shelllogin_for_systemaccounts
++    - accounts_tmout
++    - var_accounts_tmout=15_min
++    - accounts_root_gid_zero
++    - accounts_umask_etc_bashrc
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
++    - configure_crypto_policy
++    - var_system_crypto_policy=default_policy
++    - dir_perms_world_writable_sticky_bits
 +    - file_permissions_etc_passwd
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
++    - wireless_disable_interfaces
++    - package_firewalld_installed
++    - service_firewalld_enabled
++    - package_iptables_installed
 diff --git a/products/openembedded/transforms/constants.xslt b/products/openembedded/transforms/constants.xslt
 new file mode 100644
-index 0000000000..85e812a7c1
+index 0000000000..152571e8bb
 --- /dev/null
 +++ b/products/openembedded/transforms/constants.xslt
 @@ -0,0 +1,10 @@
@@ -132,15 +289,15 @@ index 0000000000..85e812a7c1
 +
 +<xsl:include href="../../../shared/transforms/shared_constants.xslt"/>
 +
-+<xsl:variable name="product_long_name">OpenEmbedded nodistro</xsl:variable>
-+<xsl:variable name="product_short_name">OE nodistro</xsl:variable>
++<xsl:variable name="product_long_name">OpenEmbedded</xsl:variable>
++<xsl:variable name="product_short_name">openembedded</xsl:variable>
 +<xsl:variable name="product_stig_id_name">empty</xsl:variable>
 +<xsl:variable name="prod_type">openembedded</xsl:variable>
 +
 +</xsl:stylesheet>
 diff --git a/shared/checks/oval/installed_OS_is_openembedded.xml b/shared/checks/oval/installed_OS_is_openembedded.xml
 new file mode 100644
-index 0000000000..17c2873686
+index 0000000000..11ebdca913
 --- /dev/null
 +++ b/shared/checks/oval/installed_OS_is_openembedded.xml
 @@ -0,0 +1,33 @@
@@ -151,19 +308,19 @@ index 0000000000..17c2873686
 +      <affected family="unix">
 +        <platform>multi_platform_all</platform>
 +      </affected>
-+      <description>The operating system installed is an OpenEmbedded System</description>
++      <description>The operating system installed is an OpenEmbedded based system</description>
 +    </metadata>
-+    <criteria comment="System is OpenEmbedded" operator="AND">
++    <criteria comment="System is OpenEmbedded based" operator="AND">
 +      <extend_definition comment="Installed OS is part of the Unix family" definition_ref="installed_OS_is_part_of_Unix_family" />
-+      <criterion comment="OpenEmbedded distro" test_ref="test_os_release" />
++      <criterion comment="OpenEmbedded distro" test_ref="test_os_openembedded" />
 +      <criterion comment="OpenEmbedded is installed" test_ref="test_openembedded" />
 +    </criteria>
 +  </definition>
 +
-+  <unix:file_test check="all" check_existence="all_exist" comment="/etc/os-release exists" id="test_os_release" version="1">
-+    <unix:object object_ref="obj_os_release" />
++  <unix:file_test check="all" check_existence="all_exist" comment="/etc/os-release exists" id="test_os_openembedded" version="1">
++    <unix:object object_ref="obj_os_openembedded" />
 +  </unix:file_test>
-+  <unix:file_object comment="check /etc/os-release file" id="obj_os_release" version="1">
++  <unix:file_object comment="check /etc/os-release file" id="obj_os_openembedded" version="1">
 +    <unix:filepath>/etc/os-release</unix:filepath>
 +  </unix:file_object>
 +
diff --git a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
deleted file mode 100644
index 061c5f0..0000000
--- a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
+++ /dev/null
@@ -1,231 +0,0 @@
-From 7af2da3bbe1d5b4cba89c6dae9ea267717b865ea Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster808@gmail.com>
-Date: Wed, 21 Jun 2023 07:46:38 -0400
-Subject: [PATCH] standard.profile: expand checks
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Upstream-status: Pending
----
- .../openembedded/profiles/standard.profile    | 206 ++++++++++++++++++
- 1 file changed, 206 insertions(+)
-
-diff --git a/products/openembedded/profiles/standard.profile b/products/openembedded/profiles/standard.profile
-index 44339d716c..877d1a3971 100644
---- a/products/openembedded/profiles/standard.profile
-+++ b/products/openembedded/profiles/standard.profile
-@@ -9,4 +9,210 @@ description: |-
- selections:
-     - file_owner_etc_passwd
-     - file_groupowner_etc_passwd
-+    - service_crond_enabled
-+    - file_groupowner_crontab
-+    - file_owner_crontab
-+    - file_permissions_crontab
-+    - file_groupowner_cron_hourly
-+    - file_owner_cron_hourly
-+    - file_permissions_cron_hourly
-+    - file_groupowner_cron_daily
-+    - file_owner_cron_daily
-+    - file_permissions_cron_daily
-+    - file_groupowner_cron_weekly
-+    - file_owner_cron_weekly
-+    - file_permissions_cron_weekly
-+    - file_groupowner_cron_monthly
-+    - file_owner_cron_monthly
-+    - file_permissions_cron_monthly
-+    - file_groupowner_cron_d
-+    - file_owner_cron_d
-+    - file_permissions_cron_d
-+    - file_groupowner_cron_allow
-+    - file_owner_cron_allow
-+    - file_cron_deny_not_exist
-+    - file_groupowner_at_allow
-+    - file_owner_at_allow
-+    - file_at_deny_not_exist
-+    - file_permissions_at_allow
-+    - file_permissions_cron_allow
-+    - file_groupowner_sshd_config
-+    - file_owner_sshd_config
-+    - file_permissions_sshd_config
-+    - file_permissions_sshd_private_key
-+    - file_permissions_sshd_pub_key
-+    - sshd_set_loglevel_verbose
-+    - sshd_set_loglevel_info
-+    - sshd_max_auth_tries_value=4
-+    - sshd_set_max_auth_tries
-+    - sshd_disable_rhosts
-+    - disable_host_auth
-+    - sshd_disable_root_login
-+    - sshd_disable_empty_passwords
-+    - sshd_do_not_permit_user_env
-+    - sshd_idle_timeout_value=15_minutes
-+    - sshd_set_idle_timeout
-+    - sshd_set_keepalive
-+    - var_sshd_set_keepalive=0
-+    - sshd_set_login_grace_time
-+    - var_sshd_set_login_grace_time=60
-+    - sshd_enable_warning_banner
-+    - sshd_enable_pam
-+    - sshd_set_maxstartups
-+    - var_sshd_set_maxstartups=10:30:60
-+    - sshd_set_max_sessions
-+    - var_sshd_max_sessions=10
-+    - accounts_password_pam_minclass
-+    - accounts_password_pam_minlen
-+    - accounts_password_pam_retry
-+    - var_password_pam_minclass=4
-+    - var_password_pam_minlen=14
-+    - locking_out_password_attempts
-+    - accounts_password_pam_pwhistory_remember_password_auth
-+    - accounts_password_pam_pwhistory_remember_system_auth
-+    - var_password_pam_remember_control_flag=required
-+    - var_password_pam_remember=5
-+    - set_password_hashing_algorithm_systemauth
-+    - accounts_maximum_age_login_defs
-+    - var_accounts_maximum_age_login_defs=365
-+    - accounts_password_set_max_life_existing
-+    - accounts_minimum_age_login_defs
-+    - var_accounts_minimum_age_login_defs=7
-+    - accounts_password_set_min_life_existing
-+    - accounts_password_warn_age_login_defs
-+    - var_accounts_password_warn_age_login_defs=7
-+    - account_disable_post_pw_expiration
-+    - var_account_disable_post_pw_expiration=30
-+    - no_shelllogin_for_systemaccounts
-+    - accounts_tmout
-+    - var_accounts_tmout=15_min
-+    - accounts_root_gid_zero
-+    - accounts_umask_etc_bashrc
-+    - accounts_umask_etc_login_defs
-+    - use_pam_wheel_for_su
-+    - sshd_allow_only_protocol2
-+    - journald_forward_to_syslog
-+    - journald_compress
-+    - journald_storage
-+    - service_auditd_enabled
-+    - service_httpd_disabled
-+    - service_vsftpd_disabled
-+    - service_named_disabled
-+    - service_nfs_disabled
-+    - service_rpcbind_disabled
-+    - service_slapd_disabled
-+    - service_dhcpd_disabled
-+    - service_cups_disabled
-+    - service_ypserv_disabled
-+    - service_rsyncd_disabled
-+    - service_avahi-daemon_disabled
-+    - service_snmpd_disabled
-+    - service_squid_disabled
-+    - service_smb_disabled
-+    - service_dovecot_disabled
-+    - banner_etc_motd
-+    - login_banner_text=cis_banners
-+    - banner_etc_issue
-+    - login_banner_text=cis_banners
-+    - file_groupowner_etc_motd
-+    - file_owner_etc_motd
-+    - file_permissions_etc_motd
-+    - file_groupowner_etc_issue
-+    - file_owner_etc_issue
-+    - file_permissions_etc_issue
-+    - ensure_gpgcheck_globally_activated
-+    - package_aide_installed
-+    - aide_periodic_cron_checking
-+    - grub2_password
-+    - file_groupowner_grub2_cfg
-+    - file_owner_grub2_cfg
-+    - file_permissions_grub2_cfg
-+    - require_singleuser_auth
-+    - require_emergency_target_auth
-+    - disable_users_coredumps
-+    - coredump_disable_backtraces
-+    - coredump_disable_storage
-+    - configure_crypto_policy
-+    - var_system_crypto_policy=default_policy
-+    - dir_perms_world_writable_sticky_bits
-     - file_permissions_etc_passwd
-+    - file_owner_etc_shadow
-+    - file_groupowner_etc_shadow
-+    - file_groupowner_etc_group
-+    - file_owner_etc_group
-+    - file_permissions_etc_group
-+    - file_groupowner_etc_gshadow
-+    - file_owner_etc_gshadow
-+    - file_groupowner_backup_etc_passwd
-+    - file_owner_backup_etc_passwd
-+    - file_permissions_backup_etc_passwd
-+    - file_groupowner_backup_etc_shadow
-+    - file_owner_backup_etc_shadow
-+    - file_permissions_backup_etc_shadow
-+    - file_groupowner_backup_etc_group
-+    - file_owner_backup_etc_group
-+    - file_permissions_backup_etc_group
-+    - file_groupowner_backup_etc_gshadow
-+    - file_owner_backup_etc_gshadow
-+    - file_permissions_backup_etc_gshadow
-+    - file_permissions_unauthorized_world_writable
-+    - file_permissions_ungroupowned
-+    - accounts_root_path_dirs_no_write
-+    - root_path_no_dot
-+    - accounts_no_uid_except_zero
-+    - file_ownership_home_directories
-+    - file_groupownership_home_directories
-+    - no_netrc_files
-+    - no_rsh_trust_files
-+    - account_unique_id
-+    - group_unique_id
-+    - group_unique_name
-+    - kernel_module_sctp_disabled
-+    - kernel_module_dccp_disabled
-+    - wireless_disable_interfaces
-+    - sysctl_net_ipv4_ip_forward
-+    - sysctl_net_ipv6_conf_all_forwarding
-+    - sysctl_net_ipv6_conf_all_forwarding_value=disabled
-+    - sysctl_net_ipv4_conf_all_send_redirects
-+    - sysctl_net_ipv4_conf_default_send_redirects
-+    - sysctl_net_ipv4_conf_all_accept_source_route
-+    - sysctl_net_ipv4_conf_all_accept_source_route_value=disabled
-+    - sysctl_net_ipv4_conf_default_accept_source_route
-+    - sysctl_net_ipv4_conf_default_accept_source_route_value=disabled
-+    - sysctl_net_ipv6_conf_all_accept_source_route
-+    - sysctl_net_ipv6_conf_all_accept_source_route_value=disabled
-+    - sysctl_net_ipv6_conf_default_accept_source_route
-+    - sysctl_net_ipv6_conf_default_accept_source_route_value=disabled
-+    - sysctl_net_ipv4_conf_all_accept_redirects
-+    - sysctl_net_ipv4_conf_all_accept_redirects_value=disabled
-+    - sysctl_net_ipv4_conf_default_accept_redirects
-+    - sysctl_net_ipv4_conf_default_accept_redirects_value=disabled
-+    - sysctl_net_ipv6_conf_all_accept_redirects
-+    - sysctl_net_ipv6_conf_all_accept_redirects_value=disabled
-+    - sysctl_net_ipv6_conf_default_accept_redirects
-+    - sysctl_net_ipv6_conf_default_accept_redirects_value=disabled
-+    - sysctl_net_ipv4_conf_all_secure_redirects
-+    - sysctl_net_ipv4_conf_all_secure_redirects_value=disabled
-+    - sysctl_net_ipv4_conf_default_secure_redirects
-+    - sysctl_net_ipv4_conf_default_secure_redirects_value=disabled
-+    - sysctl_net_ipv4_conf_all_log_martians
-+    - sysctl_net_ipv4_conf_all_log_martians_value=enabled
-+    - sysctl_net_ipv4_conf_default_log_martians
-+    - sysctl_net_ipv4_conf_default_log_martians_value=enabled
-+    - sysctl_net_ipv4_icmp_echo_ignore_broadcasts
-+    - sysctl_net_ipv4_icmp_echo_ignore_broadcasts_value=enabled
-+    - sysctl_net_ipv4_icmp_ignore_bogus_error_responses
-+    - sysctl_net_ipv4_icmp_ignore_bogus_error_responses_value=enabled
-+    - sysctl_net_ipv4_conf_all_rp_filter
-+    - sysctl_net_ipv4_conf_all_rp_filter_value=enabled
-+    - sysctl_net_ipv4_conf_default_rp_filter
-+    - sysctl_net_ipv4_conf_default_rp_filter_value=enabled
-+    - sysctl_net_ipv4_tcp_syncookies
-+    - sysctl_net_ipv4_tcp_syncookies_value=enabled
-+    - sysctl_net_ipv6_conf_all_accept_ra
-+    - sysctl_net_ipv6_conf_all_accept_ra_value=disabled
-+    - sysctl_net_ipv6_conf_default_accept_ra
-+    - sysctl_net_ipv6_conf_default_accept_ra_value=disabled
-+    - package_firewalld_installed
-+    - service_firewalld_enabled
-+    - package_iptables_installed
--- 
-2.34.1
-
diff --git a/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-Poky-support.patch b/recipes-compliance/scap-security-guide/files/0002-scap-security-guide-Add-Poky-support.patch
similarity index 52%
rename from recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-Poky-support.patch
rename to recipes-compliance/scap-security-guide/files/0002-scap-security-guide-Add-Poky-support.patch
index 355f954..1639264 100644
--- a/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-Poky-support.patch
+++ b/recipes-compliance/scap-security-guide/files/0002-scap-security-guide-Add-Poky-support.patch
@@ -1,30 +1,27 @@
-From 23a224203a73688567f500380644e5cf30c8ed99 Mon Sep 17 00:00:00 2001
+From 2be977a60c944a54594d5786b2d8869ed72a9a06 Mon Sep 17 00:00:00 2001
 From: Armin Kuster <akuster808@gmail.com>
-Date: Thu, 22 Jun 2023 06:19:26 -0400
-Subject: [PATCH] scap-security-guide: add Poky support
+Date: Wed, 5 Jul 2023 12:57:52 -0400
+Subject: [PATCH 2/2] scap-security-guide: Add Poky support
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
 Upstream-Status: Pending
+Waiting to see if OE changes get merged.
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
+
 ---
- products/openembedded/product.yml             |  7 +++-
- .../openembedded/transforms/constants.xslt    |  4 +--
- shared/checks/oval/installed_OS_is_poky.xml   | 33 +++++++++++++++++++
- 3 files changed, 41 insertions(+), 3 deletions(-)
+ products/openembedded/product.yml           |  6 ++++
+ shared/checks/oval/installed_OS_is_poky.xml | 33 +++++++++++++++++++++
+ 2 files changed, 39 insertions(+)
  create mode 100644 shared/checks/oval/installed_OS_is_poky.xml
 
 diff --git a/products/openembedded/product.yml b/products/openembedded/product.yml
-index 9f2f12d737..a495e197c0 100644
+index debf6870ef..d63479d5d3 100644
 --- a/products/openembedded/product.yml
 +++ b/products/openembedded/product.yml
-@@ -14,6 +14,11 @@ init_system: "systemd"
- cpes_root: "../../shared/applicability"
- cpes:
-   - openembedded:
--      name: "cpe:/o:openembedded"
-+      name: "cpe:/o:openembedded:nodistro:"
+@@ -17,3 +17,9 @@ cpes:
+       name: "cpe:/o:openembedded:nodistro:"
        title: "OpenEmbedded nodistro"
        check_id: installed_OS_is_openembedded
 +
@@ -32,24 +29,10 @@ index 9f2f12d737..a495e197c0 100644
 +      name: "cpe:/o:openembedded:poky:"
 +      title: "OpenEmbedded Poky reference distribution"
 +      check_id: installed_OS_is_poky
-diff --git a/products/openembedded/transforms/constants.xslt b/products/openembedded/transforms/constants.xslt
-index 85e812a7c1..8901def2f9 100644
---- a/products/openembedded/transforms/constants.xslt
-+++ b/products/openembedded/transforms/constants.xslt
-@@ -2,8 +2,8 @@
- 
- <xsl:include href="../../../shared/transforms/shared_constants.xslt"/>
- 
--<xsl:variable name="product_long_name">OpenEmbedded nodistro</xsl:variable>
--<xsl:variable name="product_short_name">OE nodistro</xsl:variable>
-+<xsl:variable name="product_long_name">OpenEmbedded based distribution</xsl:variable>
-+<xsl:variable name="product_short_name">OE distros</xsl:variable>
- <xsl:variable name="product_stig_id_name">empty</xsl:variable>
- <xsl:variable name="prod_type">openembedded</xsl:variable>
- 
++
 diff --git a/shared/checks/oval/installed_OS_is_poky.xml b/shared/checks/oval/installed_OS_is_poky.xml
 new file mode 100644
-index 0000000000..9c41acd786
+index 0000000000..b8805cf31b
 --- /dev/null
 +++ b/shared/checks/oval/installed_OS_is_poky.xml
 @@ -0,0 +1,33 @@
@@ -60,19 +43,19 @@ index 0000000000..9c41acd786
 +      <affected family="unix">
 +        <platform>multi_platform_all</platform>
 +      </affected>
-+      <description>The operating system installed is a Poky referenece based System</description>
++      <description>The operating system installed is a Poky based System</description>
 +    </metadata>
-+    <criteria comment="System is Poky reference distribution" operator="AND">
++    <criteria comment="System is Poky based distribution" operator="AND">
 +      <extend_definition comment="Installed OS is part of the Unix family" definition_ref="installed_OS_is_part_of_Unix_family" />
-+      <criterion comment="Poky based distro" test_ref="test_os_release_poky" />
-+      <criterion comment="Poky referenece distribution is installed" test_ref="test_poky" />
++      <criterion comment="Poky based distro" test_ref="test_os_poky" />
++      <criterion comment="Poky based distribution is installed" test_ref="test_poky" />
 +    </criteria>
 +  </definition>
 +
-+  <unix:file_test check="all" check_existence="all_exist" comment="/etc/os-release exists" id="test_os_release_poky" version="1">
-+    <unix:object object_ref="obj_os_release_poky" />
++  <unix:file_test check="all" check_existence="all_exist" comment="/etc/os-release exists" id="test_os_poky" version="1">
++    <unix:object object_ref="obj_os_poky" />
 +  </unix:file_test>
-+  <unix:file_object comment="check /etc/os-release file" id="obj_os_release_poky" version="1">
++  <unix:file_object comment="check /etc/os-release file" id="obj_os_poky" version="1">
 +    <unix:filepath>/etc/os-release</unix:filepath>
 +  </unix:file_object>
 +
diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
index 31ab96e..6e62f22 100644
--- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
+++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
@@ -6,12 +6,11 @@ HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=9bfa86579213cb4c6adaffface6b2820"
 LICENSE = "BSD-3-Clause"
 
-SRCREV = "dad85502ce8da722a6afc391346c41cee61e90a9"
+SRCREV = "3a1012bc9ec2b01b3b71c6feefd3cff0f52bd64d"
 SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https \
-           file://0001-scap-security-guide-add-openembedded.patch \
-           file://0001-standard.profile-expand-checks.patch \
-           file://0001-scap-security-guide-add-Poky-support.patch \
            file://run_eval.sh \
+           file://0001-scap-security-guide-add-openembedded-distro-support.patch \
+           file://0002-scap-security-guide-Add-Poky-support.patch \
            "
 
 
-- 
2.34.1


