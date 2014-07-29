Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E900CE007DF; Tue, 29 Jul 2014 00:30:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 657BBE007D2
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 00:30:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6T7UCsj021023
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 00:30:12 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Tue, 29 Jul 2014 00:30:11 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Tue, 29 Jul 2014 03:30:07 -0400
Message-ID: <ba895006715ef1a9a23ab7f771e90a2acca30f08.1406618541.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1406618541.git.wenzong.fan@windriver.com>
References: <cover.1406618541.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/2] refpolicy: split do_install to three steps
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
X-List-Received-Date: Tue, 29 Jul 2014 07:30:47 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Split do_install() to:
  + prepare_policy_store()
  + rebuild_policy()
  + install_misc_files()

This allows to make partial change to do_install() instead of re-write
it totally from specific refpolicy bb file.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/refpolicy/refpolicy_common.inc |   39 +++++++++++++++--------
 1 file changed, 25 insertions(+), 14 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 54a0168..fd205cf 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -60,24 +60,11 @@ do_compile() {
 	oe_runmake policy
 }
 
-do_install() {
+prepare_policy_store () {
 	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
 
 	# Prepare to create policy store
 	mkdir -p ${D}${sysconfdir}/selinux/
-	cat <<-EOF > ${D}${sysconfdir}/selinux/semanage.conf
-module-store = direct
-[setfiles]
-path = ${STAGING_DIR_NATIVE}${base_sbindir_native}/setfiles
-args = -q -c \$@ \$<
-[end]
-[sefcontext_compile]
-path = ${STAGING_DIR_NATIVE}${sbindir_native}/sefcontext_compile
-args = \$@
-[end]
-
-policy-version = 28
-EOF
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/policy
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
@@ -100,11 +87,29 @@ EOF
 			fi
 		done
 	fi
+}
+
+rebuild_policy () {
+	cat <<-EOF > ${D}${sysconfdir}/selinux/semanage.conf
+module-store = direct
+[setfiles]
+path = ${STAGING_DIR_NATIVE}${base_sbindir_native}/setfiles
+args = -q -c \$@ \$<
+[end]
+[sefcontext_compile]
+path = ${STAGING_DIR_NATIVE}${sbindir_native}/sefcontext_compile
+args = \$@
+[end]
+
+policy-version = 28
+EOF
 
 	# Create policy store and build the policy
 	semodule -p ${D} -s ${POLICY_NAME} -n -B
 	rm -f ${D}${sysconfdir}/selinux/semanage.conf
+}
 
+install_misc_files () {
 	cat ${WORKDIR}/customizable_types >> \
 		${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/customizable_types
 
@@ -121,3 +126,9 @@ EOF
 	link_path=`readlink -f ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/policy.kern`
 	ln -sf ../../policy/`basename $link_path` ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/policy.kern
 }
+
+do_install () {
+	prepare_policy_store
+	rebuild_policy
+	install_misc_files
+}
-- 
1.7.9.5


