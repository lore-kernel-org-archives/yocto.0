Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91A76E0080F; Wed, 17 Sep 2014 10:44:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SUBJ_OBFU_PUNCT_MANY,URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.1 URI_HEX URI: URI hostname has long hexadecimal
	sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  1.7 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A8FE007A2
	for <yocto@yoctoproject.org>; Wed, 17 Sep 2014 10:44:03 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id y20so2171030ier.5
	for <yocto@yoctoproject.org>; Wed, 17 Sep 2014 10:44:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=AXnUWH9Wy7S9XqUBna68RgR6/Dan/luumZhNqlmidII=;
	b=JhUJoSKL64e9/KK9K/pS1M4mKE90MdNLBNWD30E8Vy9f9b3D20P3SA25qeCB0BrNvP
	sP8I2FqzID+bOq0PedOu2g9eHT1xocAXKxLHpUzEs/pJz1sgvHawKtk+SNyHNUINn8wB
	XbiGrgril6T3fVQhVP53+Ith/7YCc9oLIIyyPCT0dhADy2WF3IILlDNft7VzGJE15808
	n6qI/nBouUsqN/myWCrnSQ/dZo3CklMC/CkzNvIJiDGg7DwH0TuwaZgHE23rccMDVQgc
	JCjb2XbqENPmRHCxhENsVHO0rer+edTKHO2dhhDHRYcPVNIR7mHFKcouUNgqcFIIXZ2T
	nLfA==
X-Gm-Message-State: ALoCoQmqFRtEtAwMPJaOl3SeWZkVGXHIk11aAvQ4ky2FvObZ38hifMmYZDtbpqFQ6QpI0dXC6HQE
X-Received: by 10.50.142.100 with SMTP id rv4mr41227029igb.43.1410975843029;
	Wed, 17 Sep 2014 10:44:03 -0700 (PDT)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id l9sm4850879igu.17.2014.09.17.10.44.02
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Sep 2014 10:44:02 -0700 (PDT)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Sep 2014 13:44:18 -0400
Message-Id: <1410975858-6713-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-selinux][PATCH] Globally replace 'base_contains' calls with 'bb.utils.contains'
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
X-List-Received-Date: Wed, 17 Sep 2014 17:44:10 -0000

Based on oe-core commit:

   commit 1528e596d4906c33e4be83fcf691cfe76d340ff3
   Author: Otavio Salvador <otavio@ossystems.com.br>
   Date:   Thu Apr 24 15:59:20 2014 -0300

   Globally replace 'base_contains' calls with 'bb.utils.contains'

   The base_contains is kept as a compatibility method and we ought to not
   use it in OE-Core so we can remove it from base metadata in future.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 classes/selinux.bbclass                            |    2 +-
 recipes-extended/tar/tar_1.27.1.bbappend           |    2 +-
 recipes-kernel/linux/linux-yocto_3.14.bbappend     |    4 ++--
 recipes-security/audit/audit_2.3.2.bb              |    2 +-
 .../refpolicy/refpolicy-minimum_2.20130424.bb      |    2 +-
 recipes-security/refpolicy/refpolicy_common.inc    |    4 ++--
 recipes-security/selinux/policycoreutils.inc       |    6 +++---
 7 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/classes/selinux.bbclass b/classes/selinux.bbclass
index f9db49c..fb0df27 100644
--- a/classes/selinux.bbclass
+++ b/classes/selinux.bbclass
@@ -1,5 +1,5 @@
 def target_selinux(d, truevar = 'selinux', falsevar = ''):
-    if not base_contains("DISTRO_FEATURES", "selinux", True, False, d):
+    if not bb.utils.contains("DISTRO_FEATURES", "selinux", True, False, d):
         return falsevar
 
     pn = d.getVar("PN", True) 
diff --git a/recipes-extended/tar/tar_1.27.1.bbappend b/recipes-extended/tar/tar_1.27.1.bbappend
index 8e45037..a1dc99c 100644
--- a/recipes-extended/tar/tar_1.27.1.bbappend
+++ b/recipes-extended/tar/tar_1.27.1.bbappend
@@ -5,7 +5,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 inherit with-selinux
 
 
-PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
 
 # configure has no acl enable/disable options!
 #
diff --git a/recipes-kernel/linux/linux-yocto_3.14.bbappend b/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 4118cc0..65c79ef 100644
--- a/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 # Enable selinux support in the kernel if the feature is enabled
-SRC_URI += "${@base_contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
 
 # For inconsistent kallsyms data bug on ARM
 # http://lists.infradead.org/pipermail/linux-arm-kernel/2012-March/thread.html#89718 
-EXTRA_OEMAKE += "${@base_contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
+EXTRA_OEMAKE += "${@bb.utils.contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
diff --git a/recipes-security/audit/audit_2.3.2.bb b/recipes-security/audit/audit_2.3.2.bb
index 4baf7a0..96b19c8 100644
--- a/recipes-security/audit/audit_2.3.2.bb
+++ b/recipes-security/audit/audit_2.3.2.bb
@@ -84,7 +84,7 @@ do_install_append() {
 	install -D -m 0755 ${S}/../auditd ${D}/etc/init.d/auditd
 	rm -rf ${D}/etc/rc.d
 
-	if ${@base_contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
 		install -d ${D}${sysconfdir}/tmpfiles.d/
 		install -m 0644 ${WORKDIR}/audit-volatile.conf ${D}${sysconfdir}/tmpfiles.d/
 	fi
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
index d9539f3..fc83fd5 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
@@ -40,7 +40,7 @@ prepare_policy_store () {
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
 	touch ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_contexts.local
-	if  ${@base_contains('DISTRO_FEATURES','compressed_policy','true','false',d)}; then
+	if  ${@bb.utils.contains('DISTRO_FEATURES','compressed_policy','true','false',d)}; then
 		bzip2 base.pp
 		cp base.pp.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
 		for i in ${POLICY_MODULES_MIN}; do
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index fd205cf..abadb2a 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -13,7 +13,7 @@ S = "${WORKDIR}/refpolicy"
 
 FILES_${PN} = " \
 	${sysconfdir}/selinux/${POLICY_NAME}/ \
-	${@base_contains('DISTRO_FEATURES', 'compressed_policy', '${datadir}/selinux/${POLICY_NAME}/*.pp.bz2', '${datadir}/selinux/${POLICY_NAME}/*.pp', d)} \
+	${@bb.utils.contains('DISTRO_FEATURES', 'compressed_policy', '${datadir}/selinux/${POLICY_NAME}/*.pp.bz2', '${datadir}/selinux/${POLICY_NAME}/*.pp', d)} \
 	"
 FILES_${PN}-dev =+ "${datadir}/selinux/${POLICY_NAME}/include/"
 
@@ -69,7 +69,7 @@ prepare_policy_store () {
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
 	touch ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_contexts.local
-	if  ${@base_contains('DISTRO_FEATURES','compressed_policy','true','false',d)}; then
+	if  ${@bb.utils.contains('DISTRO_FEATURES','compressed_policy','true','false',d)}; then
 		for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
 			bzip2 $i
 			if [ "`basename $i`" != "base.pp" ]; then
diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index a4d174c..153b688 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -7,7 +7,7 @@ context."
 SECTION = "base"
 LICENSE = "GPLv2+"
 
-SRC_URI += "${@base_contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)}"
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)}"
 
 PAM_SRC_URI = "file://pam.d/newrole \
                file://pam.d/run_init \
@@ -154,7 +154,7 @@ FILES_${PN}-loadpolicy += "\
 "
 FILES_${PN}-newrole += "\
 	${bindir}/newrole \
-	${@base_contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/newrole', '', d)} \
+	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/newrole', '', d)} \
 "
 FILES_${PN}-python = "\
 	${libdir}/python${PYTHON_BASEVERSION}/site-packages/seobject.py* \
@@ -164,7 +164,7 @@ FILES_${PN}-python = "\
 FILES_${PN}-runinit += "\
 	${sbindir}/run_init \
 	${sbindir}/open_init_pty \
-	${@base_contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_init', '', d)} \
+	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_init', '', d)} \
 "
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/.debug/*"
 FILES_${PN}-sandbox += "\
-- 
1.7.9.5


