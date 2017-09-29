Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4D17E00D8F; Thu, 28 Sep 2017 21:26:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E661E00D85
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:52 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id r68so128279pfj.3
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=U6qEeCUi7/B7wtC+mprlN7NrtARTQgwvTfPUHG4CQAs=;
	b=IJfcoaZRoKsJHf943R07tQVQ6/5yCEqG18uXXTHkAY9XX0tJJXFEe+dyiF3D3/M4VF
	vEH1umUMVr99kHuwEj9VspiwCPGBIY2v/fPwZYbtjlYBqjnBHPdAFeEaL4emV6PXF3h/
	ogVMKvr/dROlpC/E5SfyvN+w8mc21hTNqJCE4d7dy8yuE2N75brgk0doo3u3JIB7TKuU
	V+FudG7BMfmiyf1JExtvN8PgrewscXQ2Vwj3DiWfU7gsX2GIXdZsHrY74JRtdymZfWSU
	ukC6j7fyAGW3q+QLDUXrnlnQlbx5kbPuZoarD24yFB+14FBB6BoWXPyMHT2uLnoZO1zC
	0wOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=U6qEeCUi7/B7wtC+mprlN7NrtARTQgwvTfPUHG4CQAs=;
	b=bgD8kUasEoWe7rjfpHTYsJbA+A6F0vP5Uzlssg75qyRRoJ9AoDbPXslNmpNjpk985k
	EPUMinU8OmNAK2SzDWienCorQfTHnpN1M9yKRSAGXD5x5YFTi8nSW5y26BckDTLrBnMz
	PeJInHB4PlJg2FYh0xHkVY11Qvye2AL5JzfhSTI4SsMZ5PJuT5g2UftPcUuUZeQm876y
	0ZEK6emN30+XyPcYKsQD9oL0hqaWD5PK3utDdlOQOy9f/tpk4u67Bcp3He7pwLqmuRrT
	poDlPXrHs4mAJCmJShaKxYqMDei7m2wozlI5MdF+wVu2L/wO50LkJ7tqPc84ph8E4OXk
	L0jA==
X-Gm-Message-State: AHPjjUjkly9ITgUmIhxh5XdYnnoBe0+m8VtGhURxgHYn4jUqtRldmpw/
	pfniJqNoOqg+xkJsNZ0nB8nrKQ==
X-Google-Smtp-Source: AOwi7QDEM9IpGi8W1jMMz3IOnOgxqOdM41wFtxPZ01z+R6gRRw3m8HgvpSHvrtAeKcpQMVolfR2ttw==
X-Received: by 10.99.55.85 with SMTP id g21mr6122158pgn.306.1506659211863;
	Thu, 28 Sep 2017 21:26:51 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r66sm5060330pfl.15.2017.09.28.21.26.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 21:26:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 21:26:39 -0700
Message-Id: <1506659201-21501-7-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
References: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 6/8] openscap: Add oe specific files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Sep 2017 04:26:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/OpenEmbedded_nodistro_0.xccdf.xml        | 14 ++++
 .../oe-scap/files/OpenEmbedded_nodistro_0.xml      | 83 ++++++++++++++++++++++
 .../oe-scap/files/oval-to-xccdf.xslt               | 72 +++++++++++++++++++
 .../recipes-openscap/oe-scap/files/run_cve.sh      |  7 ++
 .../recipes-openscap/oe-scap/files/run_test.sh     |  5 ++
 .../recipes-openscap/oe-scap/oe-scap_1.0.bb        | 34 +++++++++
 6 files changed, 215 insertions(+)
 create mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xccdf.xml
 create mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xml
 create mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/oval-to-xccdf.xslt
 create mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/run_cve.sh
 create mode 100644 meta-security-compliance/recipes-openscap/oe-scap/files/run_test.sh
 create mode 100644 meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb

diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xccdf.xml b/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xccdf.xml
new file mode 100644
index 0000000..d3b2c9a
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xccdf.xml
@@ -0,0 +1,14 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<xccdf:Benchmark xmlns:xccdf="http://checklists.nist.gov/xccdf/1.1" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" id="generated-xccdf" resolved="1">
+  <xccdf:status>incomplete</xccdf:status>
+  <xccdf:title>Automatically generated XCCDF from OVAL file: OpenEmbedded_nodistro_0.xml</xccdf:title>
+  <xccdf:description>This file has been generated automatically from oval definitions file.</xccdf:description>
+  <xccdf:version time="2017-06-07T04:05:05">None, generated from OVAL file.</xccdf:version>
+  <xccdf:Rule selected="true" id="oval-com.redhat.rhsa-def-20171365">
+    <xccdf:title>CPE-2017:1365: nss security and bug fix update (Important)</xccdf:title>
+    <xccdf:ident system="http://cve.mitre.org">CVE-2017-7502</xccdf:ident>
+    <xccdf:check system="http://oval.mitre.org/XMLSchema/oval-definitions-5">
+      <xccdf:check-content-ref href="OpenEmbedded_nodistro_0.xml" name="oval:com.redhat.rhsa:def:20171365"/>
+    </xccdf:check>
+  </xccdf:Rule>
+</xccdf:Benchmark>
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xml b/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xml
new file mode 100644
index 0000000..a9bf2a0
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/oe-scap/files/OpenEmbedded_nodistro_0.xml
@@ -0,0 +1,83 @@
+<?xml version="1.0" encoding="utf-8"?>
+<oval_definitions xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:red-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://oval.mitre.org/XMLSchema/oval-common-5 oval-common-schema.xsd http://oval.mitre.org/XMLSchema/oval-definitions-5 oval-definitions-schema.xsd http://oval.mitre.org/XMLSchema/oval-definitions-5#unix unix-definitions-schema.xsd http://oval.mitre.org/XMLSchema/oval-definitions-5#linux linux-definitions-schema.xsd">
+  <generator>
+    <oval:product_name>OpenEmbedded Errata Test System</oval:product_name>
+    <oval:schema_version>5.10.1</oval:schema_version>
+    <oval:timestamp>2017-06-07T04:05:05</oval:timestamp>
+  </generator>
+
+  <definitions>
+    <definition class="patch" id="oval:com.redhat.rhsa:def:20171365" version="604">
+      <metadata>
+        <title>CPE-2017:1365: nss security and bug fix update (Important)</title>
+    <affected family="unix">
+      <platform>OpenEmbedded Nodistro</platform>
+    </affected>
+    <reference ref_id="RHSA-2017:1365-03" ref_url="https://access.redhat.com/errata/RHSA-2017:1365" source="RHSA"/>
+      <reference ref_id="CVE-2017-7502" ref_url="https://access.redhat.com/security/cve/CVE-2017-7502" source="CVE"/>
+    <description>Network Security Services (NSS) is a set of libraries designed to support the cross-platform development of security-enabled client and server applications.
+
+Security Fix(es):
+
+* A null pointer dereference flaw was found in the way NSS handled empty SSLv2 messages. An attacker could use this flaw to crash a server application compiled against the NSS library. (CVE-2017-7502)
+
+Bug Fix(es):
+
+* The Network Security Services (NSS) code and Certificate Authority (CA) list have been updated to meet the recommendations as published with the latest Mozilla Firefox Extended Support Release (ESR). The updated CA list improves compatibility with the certificates that are used in the Internet Public Key Infrastructure (PKI). To avoid certificate validation refusals, Red Hat recommends installing the updated CA list on June 12, 2017. (BZ#1451421)</description>
+
+<!-- ~~~~~~~~~~~~~~~~~~~~   advisory details   ~~~~~~~~~~~~~~~~~~~ -->
+
+<advisory from="example.com">
+        <severity>Important</severity>
+        <rights>NA</rights>
+        <issued date="2017-05-30"/>
+        <updated date="2017-05-30"/>
+        <cve cvss3="7.5/CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H" cwe="CWE-476" href="https://access.redhat.com/security/cve/CVE-2017-7502">CVE-2017-7502</cve>
+        <bugzilla href="https://bugzilla.redhat.com/1446631" id="1446631">CVE-2017-7502 nss: Null pointer dereference when handling empty SSLv2 messages</bugzilla>
+    <affected_cpe_list>
+        <cpe>cpe:/o:openembedded:nodistro:0</cpe>
+    </affected_cpe_list>
+</advisory>
+      </metadata>
+
+<criteria operator="AND">
+  <criterion comment="Red Hat Enterprise Linux 7 Client is installed" test_ref="oval:com.redhat.rhsa:tst:20171365001"/>
+  <criterion comment="nss is earlier than 0:3.28.4-r0" test_ref="oval:com.redhat.rhsa:tst:20171365007"/>
+</criteria>
+
+    </definition>
+  </definitions>
+  <tests>
+    <!-- ~~~~~~~~~~~~~~~~~~~~~   rpminfo tests   ~~~~~~~~~~~~~~~~~~~~~ -->
+    <rpminfo_test check="at least one" comment="Red Hat Enterprise Linux 7 Client is installed" id="oval:com.redhat.rhsa:tst:20171365001" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
+  <object object_ref="oval:com.redhat.rhsa:obj:20171365001"/>
+  <state state_ref="oval:com.redhat.rhsa:ste:20171365002"/>
+</rpminfo_test>
+<rpminfo_test check="at least one" comment="nss is earlier than 0:3.31.4-r0" id="oval:com.redhat.rhsa:tst:20171365007" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
+  <object object_ref="oval:com.redhat.rhsa:obj:20171365006"/>
+  <state state_ref="oval:com.redhat.rhsa:ste:20171365003"/>
+</rpminfo_test>
+
+  </tests>
+
+  <objects>
+    <!-- ~~~~~~~~~~~~~~~~~~~~   rpminfo objects   ~~~~~~~~~~~~~~~~~~~~ -->
+    <rpminfo_object id="oval:com.redhat.rhsa:obj:20171365006" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
+  <name>nss</name>
+</rpminfo_object>
+<rpminfo_object id="oval:com.redhat.rhsa:obj:20171365001" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
+  <name>openembedded-release</name>
+</rpminfo_object>
+
+  </objects>
+  <states>
+    <!-- ~~~~~~~~~~~~~~~~~~~~   rpminfo states   ~~~~~~~~~~~~~~~~~~~~~ -->
+<rpminfo_state id="oval:com.redhat.rhsa:ste:20171365002" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
+  <version operation="pattern match">^1[^\d]</version>
+</rpminfo_state>
+<rpminfo_state id="oval:com.redhat.rhsa:ste:20171365003" version="604" xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux">
+  <evr datatype="evr_string" operation="less than">0:3.31.4-r0</evr>
+</rpminfo_state>
+
+  </states>
+</oval_definitions>
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/oval-to-xccdf.xslt b/meta-security-compliance/recipes-openscap/oe-scap/files/oval-to-xccdf.xslt
new file mode 100644
index 0000000..2243ac4
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/oe-scap/files/oval-to-xccdf.xslt
@@ -0,0 +1,72 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<!-- Copyright 2012 Red Hat Inc., Durham, North Carolina. All Rights Reserved.
+
+This transformation is free software; you can redistribute it and/or modify
+it under the terms of the GNU Lesser General Public License as published by
+the Free Software Foundation; either version 2.1 of the License.
+
+This transformation is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
+or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
+for more details.
+
+You should have received a copy of the GNU Lesser General Public License along
+with this library; if not, write to the Free Software Foundation, Inc., 59
+Temple Place, Suite 330, Boston, MA  02111-1307 USA
+
+Authors:
+     Šimon Lukašík <slukasik@redhat.com>
+-->
+<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
+    xmlns:xccdf="http://checklists.nist.gov/xccdf/1.1"
+    xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5"
+    xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5">
+    <xsl:output method="xml" encoding="UTF-8"/>
+
+    <xsl:template match="/">
+        <xccdf:Benchmark id="generated-xccdf" resolved="1">
+            <xccdf:status>incomplete</xccdf:status>
+            <xccdf:title>
+                <xsl:text>Automatically generated XCCDF from OVAL file: </xsl:text>
+                <xsl:value-of select="$ovalfile"/>
+            </xccdf:title>
+            <xccdf:description>This file has been generated automatically from oval definitions file.</xccdf:description>
+            <xccdf:version>
+                <xsl:attribute name="time">
+                    <xsl:value-of select="normalize-space(oval-def:oval_definitions/oval-def:generator/oval:timestamp[1]/text())"/>
+                </xsl:attribute>
+                <xsl:text>None, generated from OVAL file.</xsl:text>
+            </xccdf:version>
+            <xsl:apply-templates select="oval-def:oval_definitions/oval-def:definitions/oval-def:definition"/>
+        </xccdf:Benchmark>
+    </xsl:template>
+
+    <xsl:template match="oval-def:definition">
+        <xccdf:Rule selected="true">
+            <xsl:attribute name="id">
+                <xsl:value-of select="translate(@id,':','-')"/>
+            </xsl:attribute>
+            <xccdf:title>
+                <xsl:copy-of select="oval-def:metadata/oval-def:title/text()"/>
+            </xccdf:title>
+            <xsl:apply-templates select="oval-def:metadata/oval-def:advisory/oval-def:cve"/>
+                <xccdf:check system="http://oval.mitre.org/XMLSchema/oval-definitions-5">
+                    <xccdf:check-content-ref href="file">
+                        <xsl:attribute name="name">
+                            <xsl:value-of select="@id"/>
+                        </xsl:attribute>
+                        <xsl:attribute name="href">
+                            <xsl:value-of select="$ovalfile"/>
+                        </xsl:attribute>
+                    </xccdf:check-content-ref>
+                </xccdf:check>
+        </xccdf:Rule>
+    </xsl:template>
+
+    <xsl:template match="oval-def:cve">
+        <xccdf:ident system="http://cve.mitre.org">
+            <xsl:copy-of select="text()"/>
+        </xccdf:ident>
+    </xsl:template>
+</xsl:stylesheet>
+
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/run_cve.sh b/meta-security-compliance/recipes-openscap/oe-scap/files/run_cve.sh
new file mode 100644
index 0000000..48a7485
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/oe-scap/files/run_cve.sh
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+oscap oval eval \
+--report oval.html \
+--verbose-log-file filedevel.log \
+--verbose DEVEL \
+/usr/share/xml/scap/ssg/content/ssg-openembedded-ds.xml
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/files/run_test.sh b/meta-security-compliance/recipes-openscap/oe-scap/files/run_test.sh
new file mode 100644
index 0000000..70cd82c
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/oe-scap/files/run_test.sh
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+#oscap oval eval --result-file ./myresults.xml ./OpenEmbedded_nodistro_0.xml
+
+oscap xccdf eval --results results.xml --report report.html OpenEmbedded_nodistro_0.xccdf.xml
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb b/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
new file mode 100644
index 0000000..5b61375
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
@@ -0,0 +1,34 @@
+# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SUMARRY = "OE SCAP files"
+LIC_FILES_CHKSUM = "file://README.md;md5=46dec9f167b6e05986cb4023df6d92f4"
+LICENSE = "MIT"
+
+SRCREV = "7147871d7f37d408c0dd7720ef0fd3ec1b54ad98"
+SRC_URI = "git://github.com/akuster/oe-scap.git"
+SRC_URI += " \
+	file://run_cve.sh \
+	file://run_test.sh \
+	file://OpenEmbedded_nodistro_0.xml \
+        file://OpenEmbedded_nodistro_0.xccdf.xml \
+"
+	
+
+S = "${WORKDIR}/git"
+
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+
+do_install () {
+	install -d ${D}/${datadir}/oe-scap
+	install ${WORKDIR}/run_cve.sh ${D}/${datadir}/oe-scap/.
+	install ${WORKDIR}/run_test.sh ${D}/${datadir}/oe-scap/.
+	install ${WORKDIR}/OpenEmbedded_nodistro_0.xml ${D}/${datadir}/oe-scap/.
+	install ${WORKDIR}/OpenEmbedded_nodistro_0.xccdf.xml ${D}/${datadir}/oe-scap/.
+	cp ${S}/* ${D}/${datadir}/oe-scap/.
+}
+
+FILES_${PN} += "${datadir}/oe-scap"
+
+RDEPENDS_${PN} = "openscap"
-- 
2.7.4


