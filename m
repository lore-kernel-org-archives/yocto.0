Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2261EB64DA
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 19:12:51 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web11.27.1686683570080910140
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 12:12:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=bME7sx58;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-56d2b7a9465so30338897b3.3
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 12:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686683569; x=1689275569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ATTYX2bhgWd81ogSRMokaXfOYbI957M/fYByUmaCM8=;
        b=bME7sx58otD6dg4SpahHTCO75BQluZsxR6ryBdvvA/l3rlrxR9ciYatAP4lddZkcLk
         YjTiieCXwGn7z+xPD+JOmkw6BVMsBzFbNXVTKC7rDoAjoZpg+y+6oi4jQhhuZEDZ+eka
         CDMbMmyhzD7rYlZMcUQK6zmAKq/DogWipOawk1PQJc2mWE+fCOkuLtf24PllM8Nh/bPQ
         tkHeinVytYOLDBTEqntRA+Mg4T3bdZ3425x3BTQwxx/MD7B3nfxWkRnEA/UscIXlHXmR
         OwOvehpNGkp59D7RRZLA0XPUcUGOq/FUslmJjE3FgOI6TUQEoTxt62pLobLJs9pKxVgK
         N0PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683569; x=1689275569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ATTYX2bhgWd81ogSRMokaXfOYbI957M/fYByUmaCM8=;
        b=cO75J/vxX+eCvz4LF8iktLn/C/Tu117OKcGxaWDf4GVixX6RHt9yEVDavE0225eL/t
         vBc7bq95cX9CkbdnufEf4qgMnVYuZTZzFYXBZ45IreY4SIFNyEoiBVy34KWQV8HWBbPa
         2F2GWVLBmdOXcfssW3KgXb/Dw8wJlBjDfvRskRmjBBlR8FgPCJmeBz+B+hhKwLwn3R0m
         lBPuCthSVAVkG4qi0T2HQEIB0rwr9pH0vfM6ZxxTMP1QafC/1yqYDF4ZJ64fF1UjqN68
         k8QYV6NL/tEwySmA7zv6AO6yBOqPqRxVBY9BCIufmLrdBhvmldifuYwdkKTOUW+2XMBq
         0UAA==
X-Gm-Message-State: AC+VfDxFHDgASUvzyGc1MOPmrI6HDhpgQsbUy76XQr2rP3TJjo2oJJvF
	FiEixpwPiw7PYK4p8mHj90dq5ihn0bQ=
X-Google-Smtp-Source: ACHHUZ6agzLpLp+Rqo6hVFl5FfvoW2Tz2Q61qNZIy4itfaq9AoQOJoI+CKIFRyRkDR8YvKRhAcvSgA==
X-Received: by 2002:a81:8506:0:b0:561:d21d:8ce3 with SMTP id v6-20020a818506000000b00561d21d8ce3mr3085905ywf.3.1686683568673;
        Tue, 13 Jun 2023 12:12:48 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:be62:56a:860e:4129])
        by smtp.gmail.com with ESMTPSA id q133-20020a815c8b000000b005569567aac1sm1971786ywb.106.2023.06.13.12.12.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 12:12:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/7] oe-scap: Not maintained nor upstreamed
Date: Tue, 13 Jun 2023 15:12:42 -0400
Message-Id: <20230613191247.18732-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613191247.18732-1-akuster808@gmail.com>
References: <20230613191247.18732-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 19:12:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60275

drop

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/OpenEmbedded_nodistro_0.xccdf.xml   | 14 ----
 .../oe-scap/files/OpenEmbedded_nodistro_0.xml | 83 -------------------
 .../oe-scap/files/oval-to-xccdf.xslt          | 72 ----------------
 .../recipes-openscap/oe-scap/files/run_cve.sh |  7 --
 .../oe-scap/files/run_test.sh                 |  5 --
 .../recipes-openscap/oe-scap/oe-scap_1.0.bb   | 33 --------
 6 files changed, 214 deletions(-)
 delete mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xccdf.xml
 delete mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xml
 delete mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/oval-to-xccdf.xslt
 delete mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/run_cve.sh
 delete mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/run_test.sh
 delete mode 100644 meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb

diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xccdf.xml b/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xccdf.xml
deleted file mode 100644
index d3b2c9a..0000000
--- a/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xccdf.xml
+++ /dev/null
@@ -1,14 +0,0 @@
-<?xml version="1.0" encoding="UTF-8"?>
-<xccdf:Benchmark xmlns:xccdf="http://checklists.nist.gov/xccdf/1.1" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" id="generated-xccdf" resolved="1">
-  <xccdf:status>incomplete</xccdf:status>
-  <xccdf:title>Automatically generated XCCDF from OVAL file: OpenEmbedded_nodistro_0.xml</xccdf:title>
-  <xccdf:description>This file has been generated automatically from oval definitions file.</xccdf:description>
-  <xccdf:version time="2017-06-07T04:05:05">None, generated from OVAL file.</xccdf:version>
-  <xccdf:Rule selected="true" id="oval-com.redhat.rhsa-def-20171365">
-    <xccdf:title>CPE-2017:1365: nss security and bug fix update (Important)</xccdf:title>
-    <xccdf:ident system="http://cve.mitre.org">CVE-2017-7502</xccdf:ident>
-    <xccdf:check system="http://oval.mitre.org/XMLSchema/oval-definitions-5">
-      <xccdf:check-content-ref href="OpenEmbedded_nodistro_0.xml" name="oval:com.redhat.rhsa:def:20171365"/>
-    </xccdf:check>
-  </xccdf:Rule>
-</xccdf:Benchmark>
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xml b/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xml
deleted file mode 100644
index a9bf2a0..0000000
--- a/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xml
+++ /dev/null
@@ -1,83 +0,0 @@
-<?xml version="1.0" encoding="utf-8"?>
-<oval_definitions xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:red-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://oval.mitre.org/XMLSchema/oval-common-5 oval-common-schema.xsd http://oval.mitre.org/XMLSchema/oval-definitions-5 oval-definitions-schema.xsd http://oval.mitre.org/XMLSchema/oval-definitions-5#unix unix-definitions-schema.xsd http://oval.mitre.org/XMLSchema/oval-definitions-5#linux linux-definitions-schema.xsd">
-  <generator>
-    <oval:product_name>OpenEmbedded Errata Test System</oval:product_name>
-    <oval:schema_version>5.10.1</oval:schema_version>
-    <oval:timestamp>2017-06-07T04:05:05</oval:timestamp>
-  </generator>
-
-  <definitions>
-    <definition class="patch" id="oval:com.redhat.rhsa:def:20171365" version="604">
-      <metadata>
-        <title>CPE-2017:1365: nss security and bug fix update (Important)</title>
-    <affected family="unix">
-      <platform>OpenEmbedded Nodistro</platform>
-    </affected>
-    <reference ref_id="RHSA-2017:1365-03" ref_url="https://access.redhat.com/errata/RHSA-2017:1365" source="RHSA"/>
-      <reference ref_id="CVE-2017-7502" ref_url="https://access.redhat.com/security/cve/CVE-2017-7502" source="CVE"/>
-    <description>Network Security Services (NSS) is a set of libraries designed to support the cross-platform development of security-enabled client and server applications.
-
-Security Fix(es):
-
-* A null pointer dereference flaw was found in the way NSS handled empty SSLv2 messages. An attacker could use this flaw to crash a server application compiled against the NSS library. (CVE-2017-7502)
-
-Bug Fix(es):
-
-* The Network Security Services (NSS) code and Certificate Authority (CA) list have been updated to meet the recommendations as published with the latest Mozilla Firefox Extended Support Release (ESR). The updated CA list improves compatibility with the certificates that are used in the Internet Public Key Infrastructure (PKI). To avoid certificate validation refusals, Red Hat recommends installing the updated CA list on June 12, 2017. (BZ#1451421)</description>
-
-<!-- ~~~~~~~~~~~~~~~~~~~~   advisory details   ~~~~~~~~~~~~~~~~~~~ -->
-
-<advisory from="example.com">
-        <severity>Important</severity>
-        <rights>NA</rights>
-        <issued date="2017-05-30"/>
-        <updated date="2017-05-30"/>
-        <cve cvss3="7.5/CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H" cwe="CWE-476" href="https://access.redhat.com/security/cve/CVE-2017-7502">CVE-2017-7502</cve>
-        <bugzilla href="https://bugzilla.redhat.com/1446631" id="1446631">CVE-2017-7502 nss: Null pointer dereference when handling empty SSLv2 messages</bugzilla>
-    <affected_cpe_list>
-        <cpe>cpe:/o:openembedded:nodistro:0</cpe>
-    </affected_cpe_list>
-</advisory>
-      </metadata>
-
-<criteria operator="AND">
-  <criterion comment="Red Hat Enterprise Linux 7 Client is installed" test_ref="oval:com.redhat.rhsa:tst:20171365001"/>
-  <criterion comment="nss is earlier than 0:3.28.4-r0" test_ref="oval:com.redhat.rhsa:tst:20171365007"/>
-</criteria>
-
-    </definition>
-  </definitions>
-  <tests>
-    <!-- ~~~~~~~~~~~~~~~~~~~~~   rpminfo tests   ~~~~~~~~~~~~~~~~~~~~~ -->
-    <rpminfo_test check="at least one" comment="Red Hat Enterprise Linux 7 Client is installed" id="oval:com.redhat.rhsa:tst:20171365001" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
-  <object object_ref="oval:com.redhat.rhsa:obj:20171365001"/>
-  <state state_ref="oval:com.redhat.rhsa:ste:20171365002"/>
-</rpminfo_test>
-<rpminfo_test check="at least one" comment="nss is earlier than 0:3.31.4-r0" id="oval:com.redhat.rhsa:tst:20171365007" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
-  <object object_ref="oval:com.redhat.rhsa:obj:20171365006"/>
-  <state state_ref="oval:com.redhat.rhsa:ste:20171365003"/>
-</rpminfo_test>
-
-  </tests>
-
-  <objects>
-    <!-- ~~~~~~~~~~~~~~~~~~~~   rpminfo objects   ~~~~~~~~~~~~~~~~~~~~ -->
-    <rpminfo_object id="oval:com.redhat.rhsa:obj:20171365006" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
-  <name>nss</name>
-</rpminfo_object>
-<rpminfo_object id="oval:com.redhat.rhsa:obj:20171365001" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
-  <name>openembedded-release</name>
-</rpminfo_object>
-
-  </objects>
-  <states>
-    <!-- ~~~~~~~~~~~~~~~~~~~~   rpminfo states   ~~~~~~~~~~~~~~~~~~~~~ -->
-<rpminfo_state id="oval:com.redhat.rhsa:ste:20171365002" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
-  <version operation="pattern match">^1[^\d]</version>
-</rpminfo_state>
-<rpminfo_state id="oval:com.redhat.rhsa:ste:20171365003" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
-  <evr datatype="evr_string" operation="less than">0:3.31.4-r0</evr>
-</rpminfo_state>
-
-  </states>
-</oval_definitions>
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/oval-to-xccdf.xslt b/meta-security-compliance/recipes-openscap/oe-scap/files/oval-to-xccdf.xslt
deleted file mode 100644
index 2243ac4..0000000
--- a/meta-security-compliance/recipes-openscap/oe-scap/files/oval-to-xccdf.xslt
+++ /dev/null
@@ -1,72 +0,0 @@
-<?xml version="1.0" encoding="UTF-8"?>
-<!-- Copyright 2012 Red Hat Inc., Durham, North Carolina. All Rights Reserved.
-
-This transformation is free software; you can redistribute it and/or modify
-it under the terms of the GNU Lesser General Public License as published by
-the Free Software Foundation; either version 2.1 of the License.
-
-This transformation is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
-or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
-for more details.
-
-You should have received a copy of the GNU Lesser General Public License along
-with this library; if not, write to the Free Software Foundation, Inc., 59
-Temple Place, Suite 330, Boston, MA  02111-1307 USA
-
-Authors:
-     Šimon Lukašík <slukasik@redhat.com>
--->
-<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
-    xmlns:xccdf="http://checklists.nist.gov/xccdf/1.1"
-    xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5"
-    xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5">
-    <xsl:output method="xml" encoding="UTF-8"/>
-
-    <xsl:template match="/">
-        <xccdf:Benchmark id="generated-xccdf" resolved="1">
-            <xccdf:status>incomplete</xccdf:status>
-            <xccdf:title>
-                <xsl:text>Automatically generated XCCDF from OVAL file: </xsl:text>
-                <xsl:value-of select="$ovalfile"/>
-            </xccdf:title>
-            <xccdf:description>This file has been generated automatically from oval definitions file.</xccdf:description>
-            <xccdf:version>
-                <xsl:attribute name="time">
-                    <xsl:value-of select="normalize-space(oval-def:oval_definitions/oval-def:generator/oval:timestamp[1]/text())"/>
-                </xsl:attribute>
-                <xsl:text>None, generated from OVAL file.</xsl:text>
-            </xccdf:version>
-            <xsl:apply-templates select="oval-def:oval_definitions/oval-def:definitions/oval-def:definition"/>
-        </xccdf:Benchmark>
-    </xsl:template>
-
-    <xsl:template match="oval-def:definition">
-        <xccdf:Rule selected="true">
-            <xsl:attribute name="id">
-                <xsl:value-of select="translate(@id,':','-')"/>
-            </xsl:attribute>
-            <xccdf:title>
-                <xsl:copy-of select="oval-def:metadata/oval-def:title/text()"/>
-            </xccdf:title>
-            <xsl:apply-templates select="oval-def:metadata/oval-def:advisory/oval-def:cve"/>
-                <xccdf:check system="http://oval.mitre.org/XMLSchema/oval-definitions-5">
-                    <xccdf:check-content-ref href="file">
-                        <xsl:attribute name="name">
-                            <xsl:value-of select="@id"/>
-                        </xsl:attribute>
-                        <xsl:attribute name="href">
-                            <xsl:value-of select="$ovalfile"/>
-                        </xsl:attribute>
-                    </xccdf:check-content-ref>
-                </xccdf:check>
-        </xccdf:Rule>
-    </xsl:template>
-
-    <xsl:template match="oval-def:cve">
-        <xccdf:ident system="http://cve.mitre.org">
-            <xsl:copy-of select="text()"/>
-        </xccdf:ident>
-    </xsl:template>
-</xsl:stylesheet>
-
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/run_cve.sh b/meta-security-compliance/recipes-openscap/oe-scap/files/run_cve.sh
deleted file mode 100644
index 48a7485..0000000
--- a/meta-security-compliance/recipes-openscap/oe-scap/files/run_cve.sh
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-oscap oval eval \
---report oval.html \
---verbose-log-file filedevel.log \
---verbose DEVEL \
-/usr/share/xml/scap/ssg/content/ssg-openembedded-ds.xml
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/run_test.sh b/meta-security-compliance/recipes-openscap/oe-scap/files/run_test.sh
deleted file mode 100644
index 70cd82c..0000000
--- a/meta-security-compliance/recipes-openscap/oe-scap/files/run_test.sh
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-#oscap oval eval --result-file ./myresults.xml ./OpenEmbedded_nodistro_0.xml
-
-oscap xccdf eval --results results.xml --report report.html OpenEmbedded_nodistro_0.xccdf.xml
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb b/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
deleted file mode 100644
index 7e9f214..0000000
--- a/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
+++ /dev/null
@@ -1,33 +0,0 @@
-# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-SUMARRY = "OE SCAP files"
-LIC_FILES_CHKSUM = "file://README.md;md5=46dec9f167b6e05986cb4023df6d92f4"
-LICENSE = "MIT"
-
-SRCREV = "7147871d7f37d408c0dd7720ef0fd3ec1b54ad98"
-SRC_URI = "git://github.com/akuster/oe-scap.git;branch=master;protocol=https"
-SRC_URI += " \
-            file://run_cve.sh \
-            file://run_test.sh \
-            file://OpenEmbedded_nodistro_0.xml \
-            file://OpenEmbedded_nodistro_0.xccdf.xml \
-           "
-
-S = "${WORKDIR}/git"
-
-do_configure[noexec] = "1"
-do_compile[noexec] = "1"
-
-do_install () {
-	install -d ${D}/${datadir}/oe-scap
-	install ${WORKDIR}/run_cve.sh ${D}/${datadir}/oe-scap/.
-	install ${WORKDIR}/run_test.sh ${D}/${datadir}/oe-scap/.
-	install ${WORKDIR}/OpenEmbedded_nodistro_0.xml ${D}/${datadir}/oe-scap/.
-	install ${WORKDIR}/OpenEmbedded_nodistro_0.xccdf.xml ${D}/${datadir}/oe-scap/.
-	cp ${S}/* ${D}/${datadir}/oe-scap/.
-}
-
-FILES:${PN} += "${datadir}/oe-scap"
-
-RDEPENDS:${PN} = "openscap bash"
-- 
2.34.1


