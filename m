Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C379EB64D9
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 12:08:25 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web11.9964.1686744503619090167
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 05:08:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=CfjUJ9GX;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-56d1ca11031so6713617b3.2
        for <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 05:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686744502; x=1689336502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=9MHaTipuIKR8nuD1WDzZBYd1BYytWKHHV6v0ll5BYRg=;
        b=CfjUJ9GX5oKIW1LZbOGWD61Knl5/hO7Nlgsr0YvJyFctkkTXWePMI6aGb4+9NjVjei
         qXM75rF08f44zZerkSHNG0cU+SzC2n6nulzJmn4biqGXFZbAYcxlH0Og6BPNGCKZrOGj
         1s5ktmHIZsW3bX4misFN2hsNFvT/wabslyjhR6doOoecKnXwAczt5Id5+PXh11FfeoUb
         biKzQO7EkwkmM7CeGZUkkp1+tRat3HUj6e+udJtGtPc0pa6yFIgojS75DE161tX46azG
         1jqlDdEkPpaoPgD6CumAYlyTxMiQGjw3a2l6K2NIINHDT+wpoPlwWkCQjZmcguUzGMFX
         7+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686744502; x=1689336502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9MHaTipuIKR8nuD1WDzZBYd1BYytWKHHV6v0ll5BYRg=;
        b=Mik7uxX50RLBhd52SPlzmUgpF7ZYzow/fuOttxGryQp+rS5pxSQK7KifgrnnUVl3Ea
         lWGtknO9xBkHH38zGAX1jJp6qjmHt+NDz4E0L0HRiwRNMp2C+n84NeSvbmSXgongw7Jm
         5wICiPkJJj7mnT/oPmh1a8EBjFezDTQiX/+o8ej1jgDaVlstBea/Cjg9B6jE5Bap82BZ
         v6llF/TicesOpn9TfsGoTBOjD0VXFfnQUIqwIHcHWkBKcwDaavTLJTgTFe+WB4kmf68w
         P6nE3jEcXa3WZYw2wXr7PpE1RF3Ud6SFQKe33w/CT//msrU3gVtMSGzHYFa16qOf9y4y
         jYVA==
X-Gm-Message-State: AC+VfDwmqr1x80MlaoEMNXBNXSE8Zs3z+tsYAkSVh6E3uR7WGLSCanZZ
	VNb9Ut7RkCsE7uEpiN3BxShbLVoKE0g=
X-Google-Smtp-Source: ACHHUZ7lcS9Vi0wtqd5LOpZcFJ7axd+IX+Yilqp9w979fmZdnC8Qkjlnsg6ff0O/ReeB1FXOmqYmlw==
X-Received: by 2002:a0d:d844:0:b0:56c:f0c7:90cf with SMTP id a65-20020a0dd844000000b0056cf0c790cfmr1612606ywe.48.1686744502258;
        Wed, 14 Jun 2023 05:08:22 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:5ba9:9ead:a276:1e7c])
        by smtp.gmail.com with ESMTPSA id z14-20020a81a24e000000b005461671a79csm638634ywg.138.2023.06.14.05.08.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 05:08:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] openscap: add support for OpenEmbedded nodistro and Poky
Date: Wed, 14 Jun 2023 08:08:19 -0400
Message-Id: <20230614120820.119607-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 12:08:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60298

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../0001-openscap-Add-openembedded.patch      | 128 ++++++++++++++++++
 .../0002-openembedded-add-Poky-distro.patch   |  80 +++++++++++
 recipes-compliance/openscap/openscap_1.3.7.bb |   9 +-
 3 files changed, 215 insertions(+), 2 deletions(-)
 create mode 100644 recipes-compliance/openscap/files/0001-openscap-Add-openembedded.patch
 create mode 100644 recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch

diff --git a/recipes-compliance/openscap/files/0001-openscap-Add-openembedded.patch b/recipes-compliance/openscap/files/0001-openscap-Add-openembedded.patch
new file mode 100644
index 0000000..1af72bb
--- /dev/null
+++ b/recipes-compliance/openscap/files/0001-openscap-Add-openembedded.patch
@@ -0,0 +1,128 @@
+From 8f8b580a882e9584e2b3726dab2c3f8e01cb885f Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Sun, 4 Jun 2023 20:16:12 -0400
+Subject: [PATCH 1/2] openscap: Add openembedded
+
+Signed-off-by: Armin Kuster <akuste808r@gmail.com>
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuste808r@gmail.com>
+
+---
+ cpe/openscap-cpe-dict.xml             |  5 +++
+ cpe/openscap-cpe-oval.xml             | 45 +++++++++++++++++++++------
+ src/OVAL/probes/unix/runlevel_probe.c |  8 ++++-
+ 3 files changed, 47 insertions(+), 11 deletions(-)
+
+diff --git a/cpe/openscap-cpe-dict.xml b/cpe/openscap-cpe-dict.xml
+index 02d536189..3338a9e55 100644
+--- a/cpe/openscap-cpe-dict.xml
++++ b/cpe/openscap-cpe-dict.xml
+@@ -53,4 +53,9 @@
+             <title xml:lang="en-us">Fedora 35</title>
+             <check system="http://oval.mitre.org/XMLSchema/oval-definitions-5" href="openscap-cpe-oval.xml">oval:org.open-scap.cpe.fedora:def:35</check>
+       </cpe-item>
++      <cpe-item name="cpe:/o:openembedded:nodistro">
++            <title xml:lang="en-us">OpenEmbedded all versions</title>
++            <check system="http://oval.mitre.org/XMLSchema/oval-definitions-5" href="openscap-cpe-oval.xml">oval:org.open-scap.cpe.openembedded:def:1</check>
++      </cpe-item>
++
+ </cpe-list>
+diff --git a/cpe/openscap-cpe-oval.xml b/cpe/openscap-cpe-oval.xml
+index 64099400b..2f3e25419 100644
+--- a/cpe/openscap-cpe-oval.xml
++++ b/cpe/openscap-cpe-oval.xml
+@@ -821,6 +821,20 @@
+                         <criterion comment="Microsoft Windows Server 2016 is installed" test_ref="oval:org.open-scap.cpe.windows:tst:2016" />
+                   </criteria>
+             </definition>
++            <definition class="inventory" id="oval:org.open-scap.cpe.openembedded:def:1" version="1" >
++                  <metadata>
++                        <title>OpenEmbedded Org</title>
++                        <affected family="unix">
++                            <platform>OpenEmbedded Nodistro</platform>
++                        </affected>
++                        <reference ref_id="cpe:/o:openembedded:nodistro" source="CPE"/>
++                        <description>OpenEmbedded No Distro is installed</description>
++                  </metadata>
++                  <criteria>
++                        <criterion comment="Installed operating system is part of the unix family." test_ref="oval:org.open-scap.cpe.openembedded:tst:1" />
++                        <criterion comment="OpenEmbedded is installed." test_ref="oval:org.open-scap.cpe.openembedded:tst:1" />
++                  </criteria>
++            </definition>
+       </definitions>
+       <tests>
+             <rpmverifyfile_test check_existence="at_least_one_exists" id="oval:org.open-scap.cpe.rhel:tst:2" version="1" check="at least one" comment="/etc/redhat-release is provided by redhat-release package"
+@@ -1228,16 +1242,19 @@
+                   <key>SOFTWARE\Microsoft\Windows NT\CurrentVersion</key>
+                   <name>ProductName</name>
+             </registry_object>
+-            <textfilecontent54_object id="oval:org.open-scap.cpe.centos:obj:8" version="1" comment="Check os-release ID" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent">
+-                  <filepath>/etc/os-release</filepath>
+-                  <pattern operation="pattern match">^ID=&quot;(\w+)&quot;$</pattern>
+-                  <instance datatype="int">1</instance>
+-            </textfilecontent54_object>
+-            <textfilecontent54_object id="oval:org.open-scap.cpe.centos:obj:8000" version="1" comment="Check os-release VERSION_ID" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent">
+-                  <filepath>/etc/os-release</filepath>
+-                  <pattern operation="pattern match">^VERSION_ID=&quot;(\d)&quot;$</pattern>
+-                  <instance datatype="int">1</instance>
+-            </textfilecontent54_object>
++            <file_object xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" version="1" id="oval:org.open-scap.cpe.openembedded-release:obj:1" >
++                <filepath>/etc/os-release</filepath>
++            </file_object>
++            <textfilecontent54_object
++                            id="oval:org.open-scap.cpe.openembedded-release:obj:1"
++                            comment="Check specification in /etc/os-release."
++                            version="1"
++                            xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent"
++                            >
++                <path>/etc</path>
++                <filename>os-release</filename>
++                <pattern operation="pattern match">^VERSION=.(\d*.\d*)</pattern>
++                <instance operation="greater than or equal" datatype="int">1</instance>
+       </objects>
+       <states>
+             <family_state id="oval:org.open-scap.cpe.unix:ste:1" version="1" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent">
+@@ -1455,5 +1472,13 @@
+             <registry_state id="oval:org.open-scap.cpe.windows:ste:2016" version="1" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows">
+                   <value operation="pattern match">^.*2016.*$</value>
+             </registry_state>
++            <textfilecontent54_state
++                            id="oval:org.open-scap.cpe.openembedded-release:ste:1"
++                            comment="Check the /etc/os-release file for VERSION 4.2 specification."
++                            version="1"
++                            xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent"
++                            >
++                  <subexpression operation="pattern match">4.2</subexpression>
++            </textfilecontent54_state>
+       </states>
+ </oval_definitions>
+diff --git a/src/OVAL/probes/unix/runlevel_probe.c b/src/OVAL/probes/unix/runlevel_probe.c
+index 7a94b23fc..00a5b85f6 100644
+--- a/src/OVAL/probes/unix/runlevel_probe.c
++++ b/src/OVAL/probes/unix/runlevel_probe.c
+@@ -403,6 +403,11 @@ static int is_wrlinux(void)
+ 	return parse_os_release("cpe:/o:windriver:wrlinux");
+ }
+ 
++static int is_openembedded(void)
++{
++	return parse_os_release("cpe:/o:openembedded:nodistro");
++}
++
+ static int is_common (void)
+ {
+         return (1);
+@@ -424,7 +429,8 @@ const distro_tbl_t distro_tbl[] = {
+         { &is_suse,     &get_runlevel_suse     },
+         { &is_solaris,  &get_runlevel_redhat   },
+         { &is_wrlinux,  &get_runlevel_wrlinux  },
+-        { &is_common,   &get_runlevel_common   }
++        { &is_common,   &get_runlevel_common   },
++        { &is_openembedded,  &get_runlevel_common  }
+ };
+ 
+ #define DISTRO_TBL_SIZE ((sizeof distro_tbl)/sizeof (distro_tbl_t))
+-- 
+2.25.1
+
diff --git a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
new file mode 100644
index 0000000..182d9ec
--- /dev/null
+++ b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
@@ -0,0 +1,80 @@
+From eb3865f2603fff2cc5d39d2379ba9f3857affca9 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster@mvista.com>
+Date: Sun, 4 Jun 2023 20:51:50 -0400
+Subject: [PATCH 2/2] openembedded: add Poky distro
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+---
+ cpe/openscap-cpe-dict.xml             |  4 ++++
+ cpe/openscap-cpe-oval.xml             | 14 ++++++++++++++
+ src/OVAL/probes/unix/runlevel_probe.c |  8 +++++++-
+ 3 files changed, 25 insertions(+), 1 deletion(-)
+
+diff --git a/cpe/openscap-cpe-dict.xml b/cpe/openscap-cpe-dict.xml
+index 3338a9e55..f86b55864 100644
+--- a/cpe/openscap-cpe-dict.xml
++++ b/cpe/openscap-cpe-dict.xml
+@@ -57,5 +57,9 @@
+             <title xml:lang="en-us">OpenEmbedded all versions</title>
+             <check system="http://oval.mitre.org/XMLSchema/oval-definitions-5" href="openscap-cpe-oval.xml">oval:org.open-scap.cpe.openembedded:def:1</check>
+       </cpe-item>
++      <cpe-item name="cpe:/o:openembedded:poky">
++            <title xml:lang="en-us">Poky all versions</title>
++            <check system="http://oval.mitre.org/XMLSchema/oval-definitions-5" href="openscap-cpe-oval.xml">oval:org.open-scap.cpe.poky:def:1</check>
++      </cpe-item>
+ 
+ </cpe-list>
+diff --git a/cpe/openscap-cpe-oval.xml b/cpe/openscap-cpe-oval.xml
+index 2f3e25419..03d192333 100644
+--- a/cpe/openscap-cpe-oval.xml
++++ b/cpe/openscap-cpe-oval.xml
+@@ -835,6 +835,20 @@
+                         <criterion comment="OpenEmbedded is installed." test_ref="oval:org.open-scap.cpe.openembedded:tst:1" />
+                   </criteria>
+             </definition>
++            <definition class="inventory" id="oval:org.open-scap.cpe.poky:def:1" version="1" >
++                  <metadata>
++                        <title>Yocto Project Reference Distro</title>
++                        <affected family="unix">
++                            <platform>Poky Distro</platform>
++                        </affected>
++                        <reference ref_id="cpe:/o:openembedded:poky" source="CPE"/>
++                        <description>Yocto Project Reference Distro is installed</description>
++                  </metadata>
++                  <criteria>
++                        <criterion comment="Installed operating system is part of the unix family." test_ref="oval:org.open-scap.cpe.poky:tst:1" />
++                        <criterion comment="Yocto Project Reference Distro is installed." test_ref="oval:org.open-scap.cpe.poky:tst:1" />
++                  </criteria>
++            </definition>
+       </definitions>
+       <tests>
+             <rpmverifyfile_test check_existence="at_least_one_exists" id="oval:org.open-scap.cpe.rhel:tst:2" version="1" check="at least one" comment="/etc/redhat-release is provided by redhat-release package"
+diff --git a/src/OVAL/probes/unix/runlevel_probe.c b/src/OVAL/probes/unix/runlevel_probe.c
+index 00a5b85f6..ae6fc0c19 100644
+--- a/src/OVAL/probes/unix/runlevel_probe.c
++++ b/src/OVAL/probes/unix/runlevel_probe.c
+@@ -408,6 +408,11 @@ static int is_openembedded(void)
+ 	return parse_os_release("cpe:/o:openembedded:nodistro");
+ }
+ 
++static int is_poky(void)
++{
++	return parse_os_release("cpe:/o:openembedded:poky");
++}
++
+ static int is_common (void)
+ {
+         return (1);
+@@ -430,7 +435,8 @@ const distro_tbl_t distro_tbl[] = {
+         { &is_solaris,  &get_runlevel_redhat   },
+         { &is_wrlinux,  &get_runlevel_wrlinux  },
+         { &is_common,   &get_runlevel_common   },
+-        { &is_openembedded,  &get_runlevel_common  }
++        { &is_openembedded,  &get_runlevel_common  },
++        { &is_poky,     &get_runlevel_common  }
+ };
+ 
+ #define DISTRO_TBL_SIZE ((sizeof distro_tbl)/sizeof (distro_tbl_t))
+-- 
+2.25.1
+
diff --git a/recipes-compliance/openscap/openscap_1.3.7.bb b/recipes-compliance/openscap/openscap_1.3.7.bb
index a422f9c..14adaf9 100644
--- a/recipes-compliance/openscap/openscap_1.3.7.bb
+++ b/recipes-compliance/openscap/openscap_1.3.7.bb
@@ -11,7 +11,10 @@ DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native
 
 
 SRCREV = "55efbfda0f617e05862ab6ed4862e10dbee52b03"
-SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https"
+SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
+           file://0001-openscap-Add-openembedded.patch  \
+           file://0002-openembedded-add-Poky-distro.patch \
+           "
 
 S = "${WORKDIR}/git"
 
@@ -63,5 +66,7 @@ SYSTEMD_SERVICE:${PN} = "oscap-remediate.service"
 
 FILES:${PN} += "${PYTHON_SITEPACKAGES_DIR}"
 
-RDEPENDS:${PN} += "libxml2 python3-core libgcc bash"
+
+RDEPENDS:${PN} = "libxml2 python3-core libgcc bash"
+RDEPENDS:${PN}-class-target = "libxml2 python3-core libgcc bash os-release"
 BBCLASSEXTEND = "native"
-- 
2.34.1


