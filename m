Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CBFBE00A1D
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 00:02:59 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3O72wsF006067
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 00:02:58 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Thu, 24 Apr 2014 00:02:58 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Thu, 24 Apr 2014 03:02:52 -0400
Message-ID: <af4069707309ea5d7398ceec2248d1d4b0da5643.1398322678.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1398322678.git.wenzong.fan@windriver.com>
References: <cover.1398322678.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/1] refpolicy: add setrans.conf for mcs/mls policy
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
X-List-Received-Date: Thu, 24 Apr 2014 07:03:02 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Add initial version for setrans.conf:
- setrans-mls.conf: copied from \
  policycoreutils/mcstrans/share/examples/default/setrans.conf
- setrans-mcs.conf: copied from radhat policy.

This fixes below issue:
  $ chcat -L
  IOError: No such file or directory: \
    '/etc/selinux/$POLICY_NAME/setrans.conf'

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/refpolicy/files/setrans-mcs.conf |   17 +++++++
 recipes-security/refpolicy/files/setrans-mls.conf |   52 +++++++++++++++++++++
 recipes-security/refpolicy/refpolicy_common.inc   |    8 ++++
 3 files changed, 77 insertions(+)
 create mode 100644 recipes-security/refpolicy/files/setrans-mcs.conf
 create mode 100644 recipes-security/refpolicy/files/setrans-mls.conf

diff --git a/recipes-security/refpolicy/files/setrans-mcs.conf b/recipes-security/refpolicy/files/setrans-mcs.conf
new file mode 100644
index 0000000..0ac9c90
--- /dev/null
+++ b/recipes-security/refpolicy/files/setrans-mcs.conf
@@ -0,0 +1,17 @@
+#
+# Multi-Category Security translation table for SELinux
+# 
+#
+# Objects can be categorized with 0-1023 categories defined by the admin.
+# Objects can be in more than one category at a time.
+# Categories are stored in the system as c0-c1023.  Users can use this
+# table to translate the categories into a more meaningful output.
+# Examples:
+# s0:c0=CompanyConfidential
+# s0:c1=PatientRecord
+# s0:c2=Unclassified
+# s0:c3=TopSecret
+# s0:c1,c3=CompanyConfidentialRedHat
+s0=SystemLow
+s0-s0:c0.c1023=SystemLow-SystemHigh
+s0:c0.c1023=SystemHigh
diff --git a/recipes-security/refpolicy/files/setrans-mls.conf b/recipes-security/refpolicy/files/setrans-mls.conf
new file mode 100644
index 0000000..eb181d2
--- /dev/null
+++ b/recipes-security/refpolicy/files/setrans-mls.conf
@@ -0,0 +1,52 @@
+#
+# Multi-Level Security translation table for SELinux
+# 
+# Uncomment the following to disable translation libary
+# disable=1
+#
+# Objects can be labeled with one of 16 levels and be categorized with 0-1023 
+# categories defined by the admin.
+# Objects can be in more than one category at a time.
+# Users can modify this table to translate the MLS labels for different purpose.
+#
+# Assumptions: using below MLS labels.
+#  SystemLow
+#  SystemHigh
+#  Unclassified 
+#  Secret with compartments A and B.
+# 
+# SystemLow and SystemHigh
+s0=SystemLow
+s15:c0.c1023=SystemHigh
+s0-s15:c0.c1023=SystemLow-SystemHigh
+
+# Unclassified level
+s1=Unclassified
+
+# Secret level with compartments
+s2=Secret
+s2:c0=A
+s2:c1=B
+
+# ranges for Unclassified
+s0-s1=SystemLow-Unclassified
+s1-s2=Unclassified-Secret
+s1-s15:c0.c1023=Unclassified-SystemHigh
+
+# ranges for Secret with compartments
+s0-s2=SystemLow-Secret
+s0-s2:c0=SystemLow-Secret:A
+s0-s2:c1=SystemLow-Secret:B
+s0-s2:c0,c1=SystemLow-Secret:AB
+s1-s2:c0=Unclassified-Secret:A
+s1-s2:c1=Unclassified-Secret:B
+s1-s2:c0,c1=Unclassified-Secret:AB
+s2-s2:c0=Secret-Secret:A
+s2-s2:c1=Secret-Secret:B
+s2-s2:c0,c1=Secret-Secret:AB
+s2-s15:c0.c1023=Secret-SystemHigh
+s2:c0-s2:c0,c1=Secret:A-Secret:AB
+s2:c0-s15:c0.c1023=Secret:A-SystemHigh
+s2:c1-s2:c0,c1=Secret:B-Secret:AB
+s2:c1-s15:c0.c1023=Secret:B-SystemHigh
+s2:c0,c1-s15:c0.c1023=Secret:AB-SystemHigh
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index fbf9441..76c3efb 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -7,6 +7,8 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 # Specific config files for Poky
 SRC_URI += "file://customizable_types \
+            file://setrans-mls.conf \
+            file://setrans-mcs.conf \
 	   "
 
 S = "${WORKDIR}/refpolicy"
@@ -109,6 +111,12 @@ EOF
 	cat ${WORKDIR}/customizable_types >> \
 		${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/customizable_types
 
+	# install setrans.conf for mls/mcs policy
+	if [ -f ${WORKDIR}/setrans-${POLICY_TYPE}.conf ]; then
+		install -m 0644 ${WORKDIR}/setrans-${POLICY_TYPE}.conf \
+			${D}${sysconfdir}/selinux/${POLICY_NAME}/setrans.conf
+	fi
+
 	# install policy headers
 	oe_runmake install-headers DESTDIR=${D}
 
-- 
1.7.9.5


