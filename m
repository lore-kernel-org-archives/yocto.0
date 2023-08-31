Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12B2DC88CB2
	for <webhook@archiver.kernel.org>; Thu, 31 Aug 2023 21:02:42 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web10.6069.1693515752734947995
 for <yocto@lists.yoctoproject.org>;
 Thu, 31 Aug 2023 14:02:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=qVMkKCv1;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-58d9ba95c78so14259677b3.1
        for <yocto@lists.yoctoproject.org>; Thu, 31 Aug 2023 14:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693515752; x=1694120552; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=YyQXGV08S7gSeA5g7hytIJBGdMZiunwN0ZyuNt3ahxc=;
        b=qVMkKCv1uLRJPzS3UrjZALKBk+D2DQzPlH128Paf/p+J+Ld6ktl0kr/sb/h9Lv9PF0
         mHy5FooYNtCVOm20TSBHCgqxxf6FacEttTKHG63sxWRe7Ge3+FDKfg4ewZ5jRvY92/hi
         ewZmA6ohyQCYV3Zs/B/nQ6Iz0pfkeTVv1wbWr7Q8IHsa2oWFNe1My1m6TWU3O3zSJo+j
         RiCw0O7q3Z3MirfQa7j2MK2ouZYSAhWWzP49h3ih3AVabe4DnXTv5UB0dD/sdC5SQvTo
         8cuLqIvVHHZqId26k2UWAZ89Yzu4T2fDGVAtBEs/bH+j2tYQI0A0pJBVAKOpteiKTf41
         P9jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693515752; x=1694120552;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YyQXGV08S7gSeA5g7hytIJBGdMZiunwN0ZyuNt3ahxc=;
        b=MhljDS3s/z6LpRVVlBcMbthsGB+r7XjDDb8UbUfZAUQqt4r05hKgltvZJ91/RGRKim
         Zln5XA8B+lE1yjAHgAI7jdrBPzvnPIMfPbADXZwb8ODi8fkn7SJblqrmg7uLOqP1TIxu
         7bty+i/IVkmacoPLcNgD0tEKeX6WsW5KdZRbCn6Uxd0Cl9A0n1tJwk3+DplYkzC/54ML
         VpSMW8D3LwWc0OabyMtbIlmMaj3At+Gg1lp+l3FAjjSUZKyFaUns8UFxEIc6dfw0vLDT
         NObkCx3CgCHi0RbIz5EP9NaQMSYqIn7ElVVa1VcBCvdZgBgeIaj8htRKFaRR5BnZzamI
         mytw==
X-Gm-Message-State: AOJu0YzDiWNdaE9JsiOEcj2bolU3r/8j679Qm0bR5PAmfJjuKwNerAX/
	8DYpn9R3C101TdqZbWR3H8VgSW7C5Lc=
X-Google-Smtp-Source: AGHT+IEQMhmhlCUKdLh6bNSL35taBtpyHdpADvNySzDCpJgEbqwB425bVEzDrBMW54wErgvPubV/6Q==
X-Received: by 2002:a0d:cb4e:0:b0:570:7b4d:f694 with SMTP id n75-20020a0dcb4e000000b005707b4df694mr692139ywd.3.1693515751376;
        Thu, 31 Aug 2023 14:02:31 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:1be8:12b8:a9f1:944c])
        by smtp.gmail.com with ESMTPSA id v184-20020a8185c1000000b005843155e284sm674253ywf.49.2023.08.31.14.02.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Aug 2023 14:02:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: update to 0.1.69+
Date: Thu, 31 Aug 2023 17:02:30 -0400
Message-Id: <20230831210230.3654574-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Aug 2023 21:02:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60920

Update to tip of branch

Drop 0001-scap-security-guide-add-openembedded-distro-support.patch is now included in tip

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...uide-add-openembedded-distro-support.patch | 388 ------------------
 ....1.67.bb => scap-security-guide_0.1.69.bb} |   5 +-
 2 files changed, 2 insertions(+), 391 deletions(-)
 delete mode 100644 recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded-distro-support.patch
 rename recipes-compliance/scap-security-guide/{scap-security-guide_0.1.67.bb => scap-security-guide_0.1.69.bb} (94%)

diff --git a/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded-distro-support.patch b/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded-distro-support.patch
deleted file mode 100644
index 0db2b12..0000000
--- a/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded-distro-support.patch
+++ /dev/null
@@ -1,388 +0,0 @@
-From 826dd5b109f79270819703a23cc8066895d68042 Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster808@gmail.com>
-Date: Wed, 14 Jun 2023 07:46:55 -0400
-Subject: [PATCH 1/2] scap-security-guide: add openembedded distro support
-
-includes a standard profile for out-of-the-box checks
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Upstream-Status: Pending
-https://github.com/ComplianceAsCode/content/pull/10793
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
----
- CMakeLists.txt                                |   5 +
- build_product                                 |   1 +
- products/openembedded/CMakeLists.txt          |   6 +
- products/openembedded/product.yml             |  19 ++
- .../openembedded/profiles/standard.profile    | 166 ++++++++++++++++++
- .../openembedded/transforms/constants.xslt    |  10 ++
- .../oval/installed_OS_is_openembedded.xml     |  33 ++++
- .../oval/sysctl_kernel_ipv6_disable.xml       |   1 +
- ssg/constants.py                              |   5 +-
- 9 files changed, 245 insertions(+), 1 deletion(-)
- create mode 100644 products/openembedded/CMakeLists.txt
- create mode 100644 products/openembedded/product.yml
- create mode 100644 products/openembedded/profiles/standard.profile
- create mode 100644 products/openembedded/transforms/constants.xslt
- create mode 100644 shared/checks/oval/installed_OS_is_openembedded.xml
-
-diff --git a/CMakeLists.txt b/CMakeLists.txt
-index 6b1ac00ff9..e4191f2cef 100644
---- a/CMakeLists.txt
-+++ b/CMakeLists.txt
-@@ -97,6 +97,7 @@ option(SSG_PRODUCT_UBUNTU1804 "If enabled, the Ubuntu 18.04 SCAP content will be
- option(SSG_PRODUCT_UBUNTU2004 "If enabled, the Ubuntu 20.04 SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
- option(SSG_PRODUCT_UBUNTU2204 "If enabled, the Ubuntu 22.04 SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
- option(SSG_PRODUCT_UOS20 "If enabled, the Uos 20 SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
-+option(SSG_PRODUCT_OE "If enabled, the OpenEmbedded SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
- 
- 
- option(SSG_CENTOS_DERIVATIVES_ENABLED "If enabled, CentOS derivative content will be built from the RHEL content" TRUE)
-@@ -291,6 +292,7 @@ message(STATUS "Ubuntu 18.04: ${SSG_PRODUCT_UBUNTU1804}")
- message(STATUS "Ubuntu 20.04: ${SSG_PRODUCT_UBUNTU2004}")
- message(STATUS "Ubuntu 22.04: ${SSG_PRODUCT_UBUNTU2204}")
- message(STATUS "Uos 20: ${SSG_PRODUCT_UOS20}")
-+message(STATUS "OpenEmbedded: ${SSG_PRODUCT_OE}")
- 
- 
- message(STATUS " ")
-@@ -409,6 +411,9 @@ endif()
- if(SSG_PRODUCT_UOS20)
-     add_subdirectory("products/uos20" "uos20")
- endif()
-+if (SSG_PRODUCT_OE)
-+    add_subdirectory("products/openembedded" "openembedded")
-+endif()
- 
- # ZIP only contains source datastreams and kickstarts, people who
- # want sources to build from should get the tarball instead.
-diff --git a/build_product b/build_product
-index fc793cbe70..7bdc03edfe 100755
---- a/build_product
-+++ b/build_product
-@@ -333,6 +333,7 @@ all_cmake_products=(
- 	UBUNTU2204
- 	UOS20
- 	MACOS1015
-+	OPENEMBEDDED
- )
- 
- DEFAULT_OVAL_MAJOR_VERSION=5
-diff --git a/products/openembedded/CMakeLists.txt b/products/openembedded/CMakeLists.txt
-new file mode 100644
-index 0000000000..1981adf53e
---- /dev/null
-+++ b/products/openembedded/CMakeLists.txt
-@@ -0,0 +1,6 @@
-+# Sometimes our users will try to do: "cd openembedded; cmake ." That needs to error in a nice way.
-+if ("${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_CURRENT_SOURCE_DIR}")
-+    message(FATAL_ERROR "cmake has to be used on the root CMakeLists.txt, see the Building ComplianceAsCode section in the Developer Guide!")
-+endif()
-+
-+ssg_build_product("openembedded")
-diff --git a/products/openembedded/product.yml b/products/openembedded/product.yml
-new file mode 100644
-index 0000000000..debf6870ef
---- /dev/null
-+++ b/products/openembedded/product.yml
-@@ -0,0 +1,19 @@
-+product: openembedded
-+full_name: OpemEmbedded 
-+type: platform
-+
-+benchmark_id: OPENEMBEDDED
-+benchmark_root: "../../linux_os/guide"
-+
-+profiles_root: "./profiles"
-+
-+pkg_manager: "dnf"
-+
-+init_system: "systemd"
-+
-+cpes_root: "../../shared/applicability"
-+cpes:
-+  - openembedded:
-+      name: "cpe:/o:openembedded:nodistro:"
-+      title: "OpenEmbedded nodistro"
-+      check_id: installed_OS_is_openembedded
-diff --git a/products/openembedded/profiles/standard.profile b/products/openembedded/profiles/standard.profile
-new file mode 100644
-index 0000000000..fcb9e0e5c2
---- /dev/null
-+++ b/products/openembedded/profiles/standard.profile
-@@ -0,0 +1,166 @@
-+documentation_complete: true
-+
-+title: 'Sample Security Profile for OpenEmbedded Distros'
-+
-+description: |-
-+    This profile is an sample for use in documentation and example content.
-+    The selected rules are standard and should pass quickly on most systems.
-+
-+selections:
-+    - file_owner_etc_passwd
-+    - file_groupowner_etc_passwd
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
-+    - var_accounts_maximum_age_login_defs=365
-+    - accounts_password_set_max_life_existing
-+    - var_accounts_minimum_age_login_defs=7
-+    - accounts_password_set_min_life_existing
-+    - var_accounts_password_warn_age_login_defs=7
-+    - account_disable_post_pw_expiration
-+    - var_account_disable_post_pw_expiration=30
-+    - no_shelllogin_for_systemaccounts
-+    - accounts_tmout
-+    - var_accounts_tmout=15_min
-+    - accounts_root_gid_zero
-+    - accounts_umask_etc_bashrc
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
-+    - configure_crypto_policy
-+    - var_system_crypto_policy=default_policy
-+    - dir_perms_world_writable_sticky_bits
-+    - file_permissions_etc_passwd
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
-+    - wireless_disable_interfaces
-+    - package_firewalld_installed
-+    - service_firewalld_enabled
-+    - package_iptables_installed
-diff --git a/products/openembedded/transforms/constants.xslt b/products/openembedded/transforms/constants.xslt
-new file mode 100644
-index 0000000000..152571e8bb
---- /dev/null
-+++ b/products/openembedded/transforms/constants.xslt
-@@ -0,0 +1,10 @@
-+<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
-+
-+<xsl:include href="../../../shared/transforms/shared_constants.xslt"/>
-+
-+<xsl:variable name="product_long_name">OpenEmbedded</xsl:variable>
-+<xsl:variable name="product_short_name">openembedded</xsl:variable>
-+<xsl:variable name="product_stig_id_name">empty</xsl:variable>
-+<xsl:variable name="prod_type">openembedded</xsl:variable>
-+
-+</xsl:stylesheet>
-diff --git a/shared/checks/oval/installed_OS_is_openembedded.xml b/shared/checks/oval/installed_OS_is_openembedded.xml
-new file mode 100644
-index 0000000000..11ebdca913
---- /dev/null
-+++ b/shared/checks/oval/installed_OS_is_openembedded.xml
-@@ -0,0 +1,33 @@
-+<def-group>
-+  <definition class="inventory" id="installed_OS_is_openembedded" version="1">
-+    <metadata>
-+      <title>OpenEmbedded</title>
-+      <affected family="unix">
-+        <platform>multi_platform_all</platform>
-+      </affected>
-+      <description>The operating system installed is an OpenEmbedded based system</description>
-+    </metadata>
-+    <criteria comment="System is OpenEmbedded based" operator="AND">
-+      <extend_definition comment="Installed OS is part of the Unix family" definition_ref="installed_OS_is_part_of_Unix_family" />
-+      <criterion comment="OpenEmbedded distro" test_ref="test_os_openembedded" />
-+      <criterion comment="OpenEmbedded is installed" test_ref="test_openembedded" />
-+    </criteria>
-+  </definition>
-+
-+  <unix:file_test check="all" check_existence="all_exist" comment="/etc/os-release exists" id="test_os_openembedded" version="1">
-+    <unix:object object_ref="obj_os_openembedded" />
-+  </unix:file_test>
-+  <unix:file_object comment="check /etc/os-release file" id="obj_os_openembedded" version="1">
-+    <unix:filepath>/etc/os-release</unix:filepath>
-+  </unix:file_object>
-+
-+  <ind:textfilecontent54_test check="all" check_existence="at_least_one_exists" comment="Check OpenEmbedded" id="test_openembedded" version="1">
-+    <ind:object object_ref="obj_openembedded" />
-+  </ind:textfilecontent54_test>
-+  <ind:textfilecontent54_object id="obj_openembedded" version="1" comment="Check OpenEmbedded">
-+    <ind:filepath>/etc/os-release</ind:filepath>
-+    <ind:pattern operation="pattern match">^ID=nodistro$</ind:pattern>
-+    <ind:instance datatype="int">1</ind:instance>
-+  </ind:textfilecontent54_object>
-+
-+</def-group>
-diff --git a/shared/checks/oval/sysctl_kernel_ipv6_disable.xml b/shared/checks/oval/sysctl_kernel_ipv6_disable.xml
-index affb9770cb..4f22df262c 100644
---- a/shared/checks/oval/sysctl_kernel_ipv6_disable.xml
-+++ b/shared/checks/oval/sysctl_kernel_ipv6_disable.xml
-@@ -8,6 +8,7 @@
- 	<platform>multi_platform_debian</platform>
- 	<platform>multi_platform_example</platform>
- 	<platform>multi_platform_fedora</platform>
-+	<platform>multi_platform_openembedded</platform>
- 	<platform>multi_platform_opensuse</platform>
- 	<platform>multi_platform_ol</platform>
- 	<platform>multi_platform_rhcos</platform>
-diff --git a/ssg/constants.py b/ssg/constants.py
-index f66ba008fa..630fbdfcb9 100644
---- a/ssg/constants.py
-+++ b/ssg/constants.py
-@@ -219,6 +219,7 @@ FULL_NAME_TO_PRODUCT_MAPPING = {
-     "Ubuntu 20.04": "ubuntu2004",
-     "Ubuntu 22.04": "ubuntu2204",
-     "UnionTech OS Server 20": "uos20",
-+    "OpenEmbedded": "openembedded",
-     "Not Applicable" : "example"
- }
- 
-@@ -267,7 +268,7 @@ REFERENCES = dict(
- 
- MULTI_PLATFORM_LIST = ["rhel", "fedora", "rhv", "debian", "ubuntu",
-                        "opensuse", "sle", "ol", "ocp", "rhcos",
--                       "example", "eks", "alinux", "uos", "anolis"]
-+                       "example", "eks", "alinux", "uos", "anolis", "openembedded"]
- 
- MULTI_PLATFORM_MAPPING = {
-     "multi_platform_alinux": ["alinux2", "alinux3"],
-@@ -285,6 +286,7 @@ MULTI_PLATFORM_MAPPING = {
-     "multi_platform_sle": ["sle12", "sle15"],
-     "multi_platform_ubuntu": ["ubuntu1604", "ubuntu1804", "ubuntu2004", "ubuntu2204"],
-     "multi_platform_uos": ["uos20"],
-+    "multi_platform_openembedded": ["openembedded"],
- }
- 
- RHEL_CENTOS_CPE_MAPPING = {
-@@ -454,6 +456,7 @@ MAKEFILE_ID_TO_PRODUCT_MAP = {
-     'ocp': 'Red Hat OpenShift Container Platform',
-     'rhcos': 'Red Hat Enterprise Linux CoreOS',
-     'eks': 'Amazon Elastic Kubernetes Service',
-+    'openembedded': 'OpenEmbedded',
- }
- 
- # References that can not be used with product-qualifiers
--- 
-2.34.1
-
diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.69.bb
similarity index 94%
rename from recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
rename to recipes-compliance/scap-security-guide/scap-security-guide_0.1.69.bb
index a972c24..ac839de 100644
--- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
+++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.69.bb
@@ -6,11 +6,10 @@ HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=9bfa86579213cb4c6adaffface6b2820"
 LICENSE = "BSD-3-Clause"
 
-SRCREV = "3a1012bc9ec2b01b3b71c6feefd3cff0f52bd64d"
+SRCREV = "d09e81ae00509a9be4b01359166cfbece06e47f4"
 SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https \
            file://run_eval.sh \
            file://run-ptest \
-           file://0001-scap-security-guide-add-openembedded-distro-support.patch \
            file://0002-scap-security-guide-Add-Poky-support.patch \
            "
 
@@ -29,7 +28,7 @@ export OSCAP_XSLT_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl"
 
 OECMAKE_GENERATOR = "Unix Makefiles"
 
-EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF -DSSG_PRODUCT_DEFAULT=OFF -DSSG_PRODUCT_OE=ON"
+EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF -DSSG_PRODUCT_DEFAULT=OFF -DSSG_PRODUCT_OPENEMBEDDED=ON"
 
 do_configure[depends] += "openscap-native:do_install"
 
-- 
2.34.1


