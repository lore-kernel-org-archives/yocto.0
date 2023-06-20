Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA4FEB64D7
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 23:14:29 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.4146.1687302861280190066
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jun 2023 16:14:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=mn7YInPs;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5703d12ab9aso56547117b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 16:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687302860; x=1689894860;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=XdrQESU49o8AM7qfitRE4C8xw7VCc/m9CgEAsg6pwy4=;
        b=mn7YInPsJYX/0uWqONMuwke6wwQ+YwPLAVY6cpHrNyM8cGEZyVVuHTBY19GHHHQ0rz
         k8elpA+YU3fdouAtvOvP2/duOnadjByoyNvbpfKYGemZ51yh2qZhOcOsNqEcnpZg1Fsd
         8HKa4s7HJjqgCrqydAoyyWKxhVbI/2WyTisPuLMVgtHfjRwrf3CHEL2KHcvCkODFMLzt
         KVxLrLmZd8AvknFxrjMz1G7hey5QerOAaQajyjyICV/L28EiA/7LrrcZ++sAeR9W3VMv
         k4wmmdRowdeW2v2kSqWCqZGExXiUHKCs5WxGjK5JnwhppVzZSGUZN0pSvY0OZ08QoxdW
         o+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687302860; x=1689894860;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XdrQESU49o8AM7qfitRE4C8xw7VCc/m9CgEAsg6pwy4=;
        b=bhhNvPBQiFkZ0vPUK5zPwaR2zRnfWEUo4YnVlhWEFCXtKMm/JhWgO9P7Wr85ATPDG2
         aNOYXvI5mpIHo7wZMBhe+D0Su44GDt27LGtTX0X1NT8DIPP2jM5aUFY4JTdFKIlixpMy
         brYmjd/aidwdFaunIXZO6fo+p20/9UoraCMzfps/6he5tpov/c9kPRD08q4PzJyA5z+A
         +4jo29blj0coU8bVukqOQsPgVy6LDKb7WFbxNcfaW+C1p1NWXBQriW6Px6IeFsonuxYx
         9zIOO1GRjWQKm5m0gChLKnJXPb7SUZHovEZjPUJIPSqGfu+M2svzCJ+846tAHGZwRsrC
         iIrw==
X-Gm-Message-State: AC+VfDwIugUsyX0xkcg+vBpVZneAh99fce06SC44vwcHFldFcorrUZnF
	cuvXdifc6qDG23xt2kowe8YHKZ4yxZo=
X-Google-Smtp-Source: ACHHUZ4CkzdcvzBEyPTnEQcUDj4zlhVI0HOIC7sBWUTuKQWVNN0ghyWNo+TlSR7yMB8oUi3W6IMCnQ==
X-Received: by 2002:a0d:cc0e:0:b0:56c:f68f:d824 with SMTP id o14-20020a0dcc0e000000b0056cf68fd824mr12680295ywd.45.1687302859746;
        Tue, 20 Jun 2023 16:14:19 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:bf5b:b37f:dd8a:d315])
        by smtp.gmail.com with ESMTPSA id y65-20020a817d44000000b00545a08184e0sm753817ywc.112.2023.06.20.16.14.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 16:14:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] openscap: Update to tip to get OE/Poky support
Date: Tue, 20 Jun 2023 19:14:17 -0400
Message-Id: <20230620231417.322296-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 23:14:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60367

Drop changes now in upstream.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../0001-openscap-Add-openembedded.patch      | 128 ------------------
 .../0002-openembedded-add-Poky-distro.patch   |  80 -----------
 recipes-compliance/openscap/openscap_1.3.7.bb |   6 +-
 3 files changed, 2 insertions(+), 212 deletions(-)
 delete mode 100644 recipes-compliance/openscap/files/0001-openscap-Add-openembedded.patch
 delete mode 100644 recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch

diff --git a/recipes-compliance/openscap/files/0001-openscap-Add-openembedded.patch b/recipes-compliance/openscap/files/0001-openscap-Add-openembedded.patch
deleted file mode 100644
index 1af72bb..0000000
--- a/recipes-compliance/openscap/files/0001-openscap-Add-openembedded.patch
+++ /dev/null
@@ -1,128 +0,0 @@
-From 8f8b580a882e9584e2b3726dab2c3f8e01cb885f Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster808@gmail.com>
-Date: Sun, 4 Jun 2023 20:16:12 -0400
-Subject: [PATCH 1/2] openscap: Add openembedded
-
-Signed-off-by: Armin Kuster <akuste808r@gmail.com>
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuste808r@gmail.com>
-
----
- cpe/openscap-cpe-dict.xml             |  5 +++
- cpe/openscap-cpe-oval.xml             | 45 +++++++++++++++++++++------
- src/OVAL/probes/unix/runlevel_probe.c |  8 ++++-
- 3 files changed, 47 insertions(+), 11 deletions(-)
-
-diff --git a/cpe/openscap-cpe-dict.xml b/cpe/openscap-cpe-dict.xml
-index 02d536189..3338a9e55 100644
---- a/cpe/openscap-cpe-dict.xml
-+++ b/cpe/openscap-cpe-dict.xml
-@@ -53,4 +53,9 @@
-             <title xml:lang="en-us">Fedora 35</title>
-             <check system="http://oval.mitre.org/XMLSchema/oval-definitions-5" href="openscap-cpe-oval.xml">oval:org.open-scap.cpe.fedora:def:35</check>
-       </cpe-item>
-+      <cpe-item name="cpe:/o:openembedded:nodistro">
-+            <title xml:lang="en-us">OpenEmbedded all versions</title>
-+            <check system="http://oval.mitre.org/XMLSchema/oval-definitions-5" href="openscap-cpe-oval.xml">oval:org.open-scap.cpe.openembedded:def:1</check>
-+      </cpe-item>
-+
- </cpe-list>
-diff --git a/cpe/openscap-cpe-oval.xml b/cpe/openscap-cpe-oval.xml
-index 64099400b..2f3e25419 100644
---- a/cpe/openscap-cpe-oval.xml
-+++ b/cpe/openscap-cpe-oval.xml
-@@ -821,6 +821,20 @@
-                         <criterion comment="Microsoft Windows Server 2016 is installed" test_ref="oval:org.open-scap.cpe.windows:tst:2016" />
-                   </criteria>
-             </definition>
-+            <definition class="inventory" id="oval:org.open-scap.cpe.openembedded:def:1" version="1" >
-+                  <metadata>
-+                        <title>OpenEmbedded Org</title>
-+                        <affected family="unix">
-+                            <platform>OpenEmbedded Nodistro</platform>
-+                        </affected>
-+                        <reference ref_id="cpe:/o:openembedded:nodistro" source="CPE"/>
-+                        <description>OpenEmbedded No Distro is installed</description>
-+                  </metadata>
-+                  <criteria>
-+                        <criterion comment="Installed operating system is part of the unix family." test_ref="oval:org.open-scap.cpe.openembedded:tst:1" />
-+                        <criterion comment="OpenEmbedded is installed." test_ref="oval:org.open-scap.cpe.openembedded:tst:1" />
-+                  </criteria>
-+            </definition>
-       </definitions>
-       <tests>
-             <rpmverifyfile_test check_existence="at_least_one_exists" id="oval:org.open-scap.cpe.rhel:tst:2" version="1" check="at least one" comment="/etc/redhat-release is provided by redhat-release package"
-@@ -1228,16 +1242,19 @@
-                   <key>SOFTWARE\Microsoft\Windows NT\CurrentVersion</key>
-                   <name>ProductName</name>
-             </registry_object>
--            <textfilecontent54_object id="oval:org.open-scap.cpe.centos:obj:8" version="1" comment="Check os-release ID" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent">
--                  <filepath>/etc/os-release</filepath>
--                  <pattern operation="pattern match">^ID=&quot;(\w+)&quot;$</pattern>
--                  <instance datatype="int">1</instance>
--            </textfilecontent54_object>
--            <textfilecontent54_object id="oval:org.open-scap.cpe.centos:obj:8000" version="1" comment="Check os-release VERSION_ID" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent">
--                  <filepath>/etc/os-release</filepath>
--                  <pattern operation="pattern match">^VERSION_ID=&quot;(\d)&quot;$</pattern>
--                  <instance datatype="int">1</instance>
--            </textfilecontent54_object>
-+            <file_object xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" version="1" id="oval:org.open-scap.cpe.openembedded-release:obj:1" >
-+                <filepath>/etc/os-release</filepath>
-+            </file_object>
-+            <textfilecontent54_object
-+                            id="oval:org.open-scap.cpe.openembedded-release:obj:1"
-+                            comment="Check specification in /etc/os-release."
-+                            version="1"
-+                            xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent"
-+                            >
-+                <path>/etc</path>
-+                <filename>os-release</filename>
-+                <pattern operation="pattern match">^VERSION=.(\d*.\d*)</pattern>
-+                <instance operation="greater than or equal" datatype="int">1</instance>
-       </objects>
-       <states>
-             <family_state id="oval:org.open-scap.cpe.unix:ste:1" version="1" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent">
-@@ -1455,5 +1472,13 @@
-             <registry_state id="oval:org.open-scap.cpe.windows:ste:2016" version="1" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows">
-                   <value operation="pattern match">^.*2016.*$</value>
-             </registry_state>
-+            <textfilecontent54_state
-+                            id="oval:org.open-scap.cpe.openembedded-release:ste:1"
-+                            comment="Check the /etc/os-release file for VERSION 4.2 specification."
-+                            version="1"
-+                            xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent"
-+                            >
-+                  <subexpression operation="pattern match">4.2</subexpression>
-+            </textfilecontent54_state>
-       </states>
- </oval_definitions>
-diff --git a/src/OVAL/probes/unix/runlevel_probe.c b/src/OVAL/probes/unix/runlevel_probe.c
-index 7a94b23fc..00a5b85f6 100644
---- a/src/OVAL/probes/unix/runlevel_probe.c
-+++ b/src/OVAL/probes/unix/runlevel_probe.c
-@@ -403,6 +403,11 @@ static int is_wrlinux(void)
- 	return parse_os_release("cpe:/o:windriver:wrlinux");
- }
- 
-+static int is_openembedded(void)
-+{
-+	return parse_os_release("cpe:/o:openembedded:nodistro");
-+}
-+
- static int is_common (void)
- {
-         return (1);
-@@ -424,7 +429,8 @@ const distro_tbl_t distro_tbl[] = {
-         { &is_suse,     &get_runlevel_suse     },
-         { &is_solaris,  &get_runlevel_redhat   },
-         { &is_wrlinux,  &get_runlevel_wrlinux  },
--        { &is_common,   &get_runlevel_common   }
-+        { &is_common,   &get_runlevel_common   },
-+        { &is_openembedded,  &get_runlevel_common  }
- };
- 
- #define DISTRO_TBL_SIZE ((sizeof distro_tbl)/sizeof (distro_tbl_t))
--- 
-2.25.1
-
diff --git a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
deleted file mode 100644
index 182d9ec..0000000
--- a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
+++ /dev/null
@@ -1,80 +0,0 @@
-From eb3865f2603fff2cc5d39d2379ba9f3857affca9 Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster@mvista.com>
-Date: Sun, 4 Jun 2023 20:51:50 -0400
-Subject: [PATCH 2/2] openembedded: add Poky distro
-
-Signed-off-by: Armin Kuster <akuster@mvista.com>
----
- cpe/openscap-cpe-dict.xml             |  4 ++++
- cpe/openscap-cpe-oval.xml             | 14 ++++++++++++++
- src/OVAL/probes/unix/runlevel_probe.c |  8 +++++++-
- 3 files changed, 25 insertions(+), 1 deletion(-)
-
-diff --git a/cpe/openscap-cpe-dict.xml b/cpe/openscap-cpe-dict.xml
-index 3338a9e55..f86b55864 100644
---- a/cpe/openscap-cpe-dict.xml
-+++ b/cpe/openscap-cpe-dict.xml
-@@ -57,5 +57,9 @@
-             <title xml:lang="en-us">OpenEmbedded all versions</title>
-             <check system="http://oval.mitre.org/XMLSchema/oval-definitions-5" href="openscap-cpe-oval.xml">oval:org.open-scap.cpe.openembedded:def:1</check>
-       </cpe-item>
-+      <cpe-item name="cpe:/o:openembedded:poky">
-+            <title xml:lang="en-us">Poky all versions</title>
-+            <check system="http://oval.mitre.org/XMLSchema/oval-definitions-5" href="openscap-cpe-oval.xml">oval:org.open-scap.cpe.poky:def:1</check>
-+      </cpe-item>
- 
- </cpe-list>
-diff --git a/cpe/openscap-cpe-oval.xml b/cpe/openscap-cpe-oval.xml
-index 2f3e25419..03d192333 100644
---- a/cpe/openscap-cpe-oval.xml
-+++ b/cpe/openscap-cpe-oval.xml
-@@ -835,6 +835,20 @@
-                         <criterion comment="OpenEmbedded is installed." test_ref="oval:org.open-scap.cpe.openembedded:tst:1" />
-                   </criteria>
-             </definition>
-+            <definition class="inventory" id="oval:org.open-scap.cpe.poky:def:1" version="1" >
-+                  <metadata>
-+                        <title>Yocto Project Reference Distro</title>
-+                        <affected family="unix">
-+                            <platform>Poky Distro</platform>
-+                        </affected>
-+                        <reference ref_id="cpe:/o:openembedded:poky" source="CPE"/>
-+                        <description>Yocto Project Reference Distro is installed</description>
-+                  </metadata>
-+                  <criteria>
-+                        <criterion comment="Installed operating system is part of the unix family." test_ref="oval:org.open-scap.cpe.poky:tst:1" />
-+                        <criterion comment="Yocto Project Reference Distro is installed." test_ref="oval:org.open-scap.cpe.poky:tst:1" />
-+                  </criteria>
-+            </definition>
-       </definitions>
-       <tests>
-             <rpmverifyfile_test check_existence="at_least_one_exists" id="oval:org.open-scap.cpe.rhel:tst:2" version="1" check="at least one" comment="/etc/redhat-release is provided by redhat-release package"
-diff --git a/src/OVAL/probes/unix/runlevel_probe.c b/src/OVAL/probes/unix/runlevel_probe.c
-index 00a5b85f6..ae6fc0c19 100644
---- a/src/OVAL/probes/unix/runlevel_probe.c
-+++ b/src/OVAL/probes/unix/runlevel_probe.c
-@@ -408,6 +408,11 @@ static int is_openembedded(void)
- 	return parse_os_release("cpe:/o:openembedded:nodistro");
- }
- 
-+static int is_poky(void)
-+{
-+	return parse_os_release("cpe:/o:openembedded:poky");
-+}
-+
- static int is_common (void)
- {
-         return (1);
-@@ -430,7 +435,8 @@ const distro_tbl_t distro_tbl[] = {
-         { &is_solaris,  &get_runlevel_redhat   },
-         { &is_wrlinux,  &get_runlevel_wrlinux  },
-         { &is_common,   &get_runlevel_common   },
--        { &is_openembedded,  &get_runlevel_common  }
-+        { &is_openembedded,  &get_runlevel_common  },
-+        { &is_poky,     &get_runlevel_common  }
- };
- 
- #define DISTRO_TBL_SIZE ((sizeof distro_tbl)/sizeof (distro_tbl_t))
--- 
-2.25.1
-
diff --git a/recipes-compliance/openscap/openscap_1.3.7.bb b/recipes-compliance/openscap/openscap_1.3.7.bb
index 14adaf9..a8757f3 100644
--- a/recipes-compliance/openscap/openscap_1.3.7.bb
+++ b/recipes-compliance/openscap/openscap_1.3.7.bb
@@ -9,11 +9,9 @@ LICENSE = "LGPL-2.1-only"
 DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig libpcre  xmlsec1"
 DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native libpcre-native xmlsec1-native"
 
-
-SRCREV = "55efbfda0f617e05862ab6ed4862e10dbee52b03"
+#Jun 20th, 2023
+SRCREV = "c99fc854ff566fac9d130622fe9fd434484eb13d"
 SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
-           file://0001-openscap-Add-openembedded.patch  \
-           file://0002-openembedded-add-Poky-distro.patch \
            "
 
 S = "${WORKDIR}/git"
-- 
2.34.1


