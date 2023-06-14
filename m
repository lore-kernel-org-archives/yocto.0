Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B74EB64DB
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 12:08:25 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web11.9965.1686744504378553144
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 05:08:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=JexAKaAN;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-56d3d7a5b84so6577057b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 05:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686744503; x=1689336503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KbzeEE88q3TqA4MeXO/okVsgU6EoQgnQZaI1+V2VUiw=;
        b=JexAKaANxiUZFLDgvIzxrTMntF/Jn4iwIfNVjbBugT5KscWBfdroyuy3HtSQ+fpqm1
         tDMA2RtbZrR9kMoxnZMbRhsx/cbvY7QBN2asdyFcCpLdetl4wjffMkW5BSc4gUo6L9Zc
         K8iNEEm3HhBsLVxYNg9npMnit3ryUSzStVcwbPCvFmPzU+GEz04jGH3p3jSuAQuyKaTM
         lIdMTO2H3kd++/6+lPqdx9d/g/t4BDiZUmUm4TEpNdjL0Qusigqx6SbOibbQLbbGuBEY
         dZnd9TuM+KSeUHVyl9MC0LqDE3nHn+80fQQ+kuZpUPWLVyqW7mYzocFc56bAzNv6pWox
         pwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686744503; x=1689336503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KbzeEE88q3TqA4MeXO/okVsgU6EoQgnQZaI1+V2VUiw=;
        b=ITyPEQp1SHmwREpDqnIYhpM2CDWCM+trLX0cDpRmA7dDgjCLpAJJpfr7nN8gsjzKiG
         tV2jbTbW25tfegMw1T2LJLq/7MrU+2e/9QAl+7z26HlcIbYQ3WuT6m0DvE+tdbMFig9W
         oT+q9OYzSOXlsXrQN7mQ3+giAC3XPPhLfLKoM4Ce+yMK9GTeM1OGMhnALXXemckXGIFC
         Y0kxI5nlfgvlhBgoNGv1PxCNGi3IbUf8rP704VS01pQtw3pnptmzshk6goU7uVkyVDjH
         9wIAYcZ4cslcYyHQst38UhCSU0rPXSKhTuA9AqeGel3LTDiP5UBU806BgX1flYoqtsFU
         AUHA==
X-Gm-Message-State: AC+VfDy11XcyvxYW5fytxawteumn1/b7KiVFQNmFHbUUZ4rFIPs2Aet8
	RM2M2dbIBLCaC/VISBAvHSejGRQZFi0=
X-Google-Smtp-Source: ACHHUZ5m3dHDU26k7KWfW8TcYqM+QN6pzFDygABtkZxVwEU9dPtEcKxULPpU6/XQV4WF1VIOoZyhQA==
X-Received: by 2002:a81:9283:0:b0:565:cef7:92e3 with SMTP id j125-20020a819283000000b00565cef792e3mr1213860ywg.51.1686744502872;
        Wed, 14 Jun 2023 05:08:22 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:5ba9:9ead:a276:1e7c])
        by smtp.gmail.com with ESMTPSA id z14-20020a81a24e000000b005461671a79csm638634ywg.138.2023.06.14.05.08.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 05:08:22 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] scap-security-guide: add OE support
Date: Wed, 14 Jun 2023 08:08:20 -0400
Message-Id: <20230614120820.119607-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230614120820.119607-1-akuster808@gmail.com>
References: <20230614120820.119607-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 12:08:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60299

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...scap-security-guide-add-openembedded.patch | 231 ++++++++++++++++++
 .../scap-security-guide_0.1.67.bb             |  13 +-
 2 files changed, 235 insertions(+), 9 deletions(-)
 create mode 100644 recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded.patch

diff --git a/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded.patch b/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded.patch
new file mode 100644
index 0000000..f003f72
--- /dev/null
+++ b/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-openembedded.patch
@@ -0,0 +1,231 @@
+From f6287d146762b8360bd7099f4724a58eedba7d2a Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Wed, 14 Jun 2023 07:46:55 -0400
+Subject: [PATCH] scap-security-guide: add openembedded
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ CMakeLists.txt                                |  5 +++
+ build_product                                 |  1 +
+ products/openembedded/CMakeLists.txt          |  6 ++++
+ products/openembedded/product.yml             | 19 +++++++++++
+ .../openembedded/profiles/standard.profile    | 12 +++++++
+ .../openembedded/transforms/constants.xslt    | 10 ++++++
+ .../oval/installed_OS_is_openembedded.xml     | 33 +++++++++++++++++++
+ .../oval/sysctl_kernel_ipv6_disable.xml       |  1 +
+ ssg/constants.py                              |  5 ++-
+ 9 files changed, 91 insertions(+), 1 deletion(-)
+ create mode 100644 products/openembedded/CMakeLists.txt
+ create mode 100644 products/openembedded/product.yml
+ create mode 100644 products/openembedded/profiles/standard.profile
+ create mode 100644 products/openembedded/transforms/constants.xslt
+ create mode 100644 shared/checks/oval/installed_OS_is_openembedded.xml
+
+diff --git a/CMakeLists.txt b/CMakeLists.txt
+index 85ec289644..09ac96784e 100644
+--- a/CMakeLists.txt
++++ b/CMakeLists.txt
+@@ -95,6 +95,7 @@ option(SSG_PRODUCT_UBUNTU1804 "If enabled, the Ubuntu 18.04 SCAP content will be
+ option(SSG_PRODUCT_UBUNTU2004 "If enabled, the Ubuntu 20.04 SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
+ option(SSG_PRODUCT_UBUNTU2204 "If enabled, the Ubuntu 22.04 SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
+ option(SSG_PRODUCT_UOS20 "If enabled, the Uos 20 SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
++option(SSG_PRODUCT_OE "If enabled, the OpenEmbedded SCAP content will be built" ${SSG_PRODUCT_DEFAULT})
+ 
+ 
+ option(SSG_CENTOS_DERIVATIVES_ENABLED "If enabled, CentOS derivative content will be built from the RHEL content" TRUE)
+@@ -289,6 +290,7 @@ message(STATUS "Ubuntu 18.04: ${SSG_PRODUCT_UBUNTU1804}")
+ message(STATUS "Ubuntu 20.04: ${SSG_PRODUCT_UBUNTU2004}")
+ message(STATUS "Ubuntu 22.04: ${SSG_PRODUCT_UBUNTU2204}")
+ message(STATUS "Uos 20: ${SSG_PRODUCT_UOS20}")
++message(STATUS "OpenEmbedded nodistro: ${SSG_PRODUCT_OE}")
+ 
+ 
+ 
+@@ -410,6 +412,9 @@ endif()
+ if (SSG_PRODUCT_UOS20)
+     add_subdirectory("products/uos20" "uos20")
+ endif()
++if (SSG_PRODUCT_OE)
++    add_subdirectory("products/openembedded" "openembedded")
++endif()
+ 
+ # ZIP only contains source datastreams and kickstarts, people who
+ # want sources to build from should get the tarball instead.
+diff --git a/build_product b/build_product
+index fc793cbe70..197d925b7e 100755
+--- a/build_product
++++ b/build_product
+@@ -333,6 +333,7 @@ all_cmake_products=(
+ 	UBUNTU2204
+ 	UOS20
+ 	MACOS1015
++    OPENEMBEDDED
+ )
+ 
+ DEFAULT_OVAL_MAJOR_VERSION=5
+diff --git a/products/openembedded/CMakeLists.txt b/products/openembedded/CMakeLists.txt
+new file mode 100644
+index 0000000000..1981adf53e
+--- /dev/null
++++ b/products/openembedded/CMakeLists.txt
+@@ -0,0 +1,6 @@
++# Sometimes our users will try to do: "cd openembedded; cmake ." That needs to error in a nice way.
++if ("${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_CURRENT_SOURCE_DIR}")
++    message(FATAL_ERROR "cmake has to be used on the root CMakeLists.txt, see the Building ComplianceAsCode section in the Developer Guide!")
++endif()
++
++ssg_build_product("openembedded")
+diff --git a/products/openembedded/product.yml b/products/openembedded/product.yml
+new file mode 100644
+index 0000000000..9f2f12d737
+--- /dev/null
++++ b/products/openembedded/product.yml
+@@ -0,0 +1,19 @@
++product: openembedded
++full_name: OpemEmbedded 
++type: platform
++
++benchmark_id: OPENEMBEDDED
++benchmark_root: "../../linux_os/guide"
++
++profiles_root: "./profiles"
++
++pkg_manager: "dnf"
++
++init_system: "systemd"
++
++cpes_root: "../../shared/applicability"
++cpes:
++  - openembedded:
++      name: "cpe:/o:openembedded"
++      title: "OpenEmbedded nodistro"
++      check_id: installed_OS_is_openembedded
+diff --git a/products/openembedded/profiles/standard.profile b/products/openembedded/profiles/standard.profile
+new file mode 100644
+index 0000000000..44339d716c
+--- /dev/null
++++ b/products/openembedded/profiles/standard.profile
+@@ -0,0 +1,12 @@
++documentation_complete: true
++
++title: 'Sample Security Profile for OpenEmbedded Distros'
++
++description: |-
++    This profile is an sample for use in documentation and example content.
++    The selected rules are standard and should pass quickly on most systems.
++
++selections:
++    - file_owner_etc_passwd
++    - file_groupowner_etc_passwd
++    - file_permissions_etc_passwd
+diff --git a/products/openembedded/transforms/constants.xslt b/products/openembedded/transforms/constants.xslt
+new file mode 100644
+index 0000000000..85e812a7c1
+--- /dev/null
++++ b/products/openembedded/transforms/constants.xslt
+@@ -0,0 +1,10 @@
++<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
++
++<xsl:include href="../../../shared/transforms/shared_constants.xslt"/>
++
++<xsl:variable name="product_long_name">OpenEmbedded nodistro</xsl:variable>
++<xsl:variable name="product_short_name">OE nodistro</xsl:variable>
++<xsl:variable name="product_stig_id_name">empty</xsl:variable>
++<xsl:variable name="prod_type">openembedded</xsl:variable>
++
++</xsl:stylesheet>
+diff --git a/shared/checks/oval/installed_OS_is_openembedded.xml b/shared/checks/oval/installed_OS_is_openembedded.xml
+new file mode 100644
+index 0000000000..17c2873686
+--- /dev/null
++++ b/shared/checks/oval/installed_OS_is_openembedded.xml
+@@ -0,0 +1,33 @@
++<def-group>
++  <definition class="inventory" id="installed_OS_is_openembedded" version="1">
++    <metadata>
++      <title>OpenEmbedded</title>
++      <affected family="unix">
++        <platform>multi_platform_all</platform>
++      </affected>
++      <description>The operating system installed is an OpenEmbedded System</description>
++    </metadata>
++    <criteria comment="System is OpenEmbedded" operator="AND">
++      <extend_definition comment="Installed OS is part of the Unix family" definition_ref="installed_OS_is_part_of_Unix_family" />
++      <criterion comment="OpenEmbedded distro" test_ref="test_os_release" />
++      <criterion comment="OpenEmbedded is installed" test_ref="test_openembedded" />
++    </criteria>
++  </definition>
++
++  <unix:file_test check="all" check_existence="all_exist" comment="/etc/os-release exists" id="test_os_release" version="1">
++    <unix:object object_ref="obj_os_release" />
++  </unix:file_test>
++  <unix:file_object comment="check /etc/os-release file" id="obj_os_release" version="1">
++    <unix:filepath>/etc/os-release</unix:filepath>
++  </unix:file_object>
++
++  <ind:textfilecontent54_test check="all" check_existence="at_least_one_exists" comment="Check OpenEmbedded" id="test_openembedded" version="1">
++    <ind:object object_ref="obj_openembedded" />
++  </ind:textfilecontent54_test>
++  <ind:textfilecontent54_object id="obj_openembedded" version="1" comment="Check OpenEmbedded">
++    <ind:filepath>/etc/os-release</ind:filepath>
++    <ind:pattern operation="pattern match">^ID=nodistro$</ind:pattern>
++    <ind:instance datatype="int">1</ind:instance>
++  </ind:textfilecontent54_object>
++
++</def-group>
+diff --git a/shared/checks/oval/sysctl_kernel_ipv6_disable.xml b/shared/checks/oval/sysctl_kernel_ipv6_disable.xml
+index affb9770cb..4f22df262c 100644
+--- a/shared/checks/oval/sysctl_kernel_ipv6_disable.xml
++++ b/shared/checks/oval/sysctl_kernel_ipv6_disable.xml
+@@ -8,6 +8,7 @@
+ 	<platform>multi_platform_debian</platform>
+ 	<platform>multi_platform_example</platform>
+ 	<platform>multi_platform_fedora</platform>
++	<platform>multi_platform_openembedded</platform>
+ 	<platform>multi_platform_opensuse</platform>
+ 	<platform>multi_platform_ol</platform>
+ 	<platform>multi_platform_rhcos</platform>
+diff --git a/ssg/constants.py b/ssg/constants.py
+index f66ba008fa..630fbdfcb9 100644
+--- a/ssg/constants.py
++++ b/ssg/constants.py
+@@ -219,6 +219,7 @@ FULL_NAME_TO_PRODUCT_MAPPING = {
+     "Ubuntu 20.04": "ubuntu2004",
+     "Ubuntu 22.04": "ubuntu2204",
+     "UnionTech OS Server 20": "uos20",
++    "OpenEmbedded": "openembedded",
+     "Not Applicable" : "example"
+ }
+ 
+@@ -267,7 +268,7 @@ REFERENCES = dict(
+ 
+ MULTI_PLATFORM_LIST = ["rhel", "fedora", "rhv", "debian", "ubuntu",
+                        "opensuse", "sle", "ol", "ocp", "rhcos",
+-                       "example", "eks", "alinux", "uos", "anolis"]
++                       "example", "eks", "alinux", "uos", "anolis", "openembedded"]
+ 
+ MULTI_PLATFORM_MAPPING = {
+     "multi_platform_alinux": ["alinux2", "alinux3"],
+@@ -285,6 +286,7 @@ MULTI_PLATFORM_MAPPING = {
+     "multi_platform_sle": ["sle12", "sle15"],
+     "multi_platform_ubuntu": ["ubuntu1604", "ubuntu1804", "ubuntu2004", "ubuntu2204"],
+     "multi_platform_uos": ["uos20"],
++    "multi_platform_openembedded": ["openembedded"],
+ }
+ 
+ RHEL_CENTOS_CPE_MAPPING = {
+@@ -454,6 +456,7 @@ MAKEFILE_ID_TO_PRODUCT_MAP = {
+     'ocp': 'Red Hat OpenShift Container Platform',
+     'rhcos': 'Red Hat Enterprise Linux CoreOS',
+     'eks': 'Amazon Elastic Kubernetes Service',
++    'openembedded': 'OpenEmbedded',
+ }
+ 
+ # References that can not be used with product-qualifiers
+-- 
+2.34.1
+
diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
index 53ee03e..420a6d8 100644
--- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
+++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
@@ -7,25 +7,20 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=9bfa86579213cb4c6adaffface6b2820"
 LICENSE = "BSD-3-Clause"
 
 SRCREV = "dad85502ce8da722a6afc391346c41cee61e90a9"
-SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https"
+SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https \
+           file://0001-scap-security-guide-add-openembedded.patch "
 
 
 DEPENDS = "openscap-native python3-pyyaml-native python3-jinja2-native libxml2-native expat-native coreutils-native"
 
 S = "${WORKDIR}/git"
+B = "${S}/build"
 
 inherit cmake pkgconfig python3native python3targetconfig
 
-STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
-export OSCAP_CPE_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe"
-export OSCAP_SCHEMA_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas"
-export OSCAP_XSLT_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl"
-
 OECMAKE_GENERATOR = "Unix Makefiles"
 
-EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF -DSSG_PRODUCT_DEFAULT=OFF -DSSG_PRODUCT_EXAMPLE=ON"
-
-B = "${S}/build"
+EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF -DSSG_PRODUCT_DEFAULT=OFF -DSSG_PRODUCT_OE=ON"
 
 do_configure[depends] += "openscap-native:do_install"
 
-- 
2.34.1


