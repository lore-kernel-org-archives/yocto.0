Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6585E009B8; Tue, 27 Oct 2015 04:00:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 2105 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Oct 2015 04:00:01 PDT
Received: from mail5.wrs.com (unknown [64.129.254.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58770E0088C
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 04:00:01 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id t9RAP5fj014265
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 03:25:06 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 27 Oct 2015 03:25:05 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 27 Oct 2015 06:25:04 -0400
Message-ID: <1445941504-241779-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] refpolicy-minimum: update prepare_policy_store
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
X-List-Received-Date: Tue, 27 Oct 2015 11:00:03 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* update prepare_policy_store() for supporting SELinux 2.4 & CIL, the
  logic is from refpolicy_common.inc but with minimum set of policy
  modules;

* add extra policy modules that required by sysnetwork, without those
  modules the install process will fail with error:

    | Failed to resolve roletype statement at 62 of \
      .../image/var/lib/selinux/minimum/tmp/modules/100/sysnetwork/cil
    | Failed to resolve ast
    | semodule:  Failed!

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../refpolicy/refpolicy-minimum_git.bb             | 41 ++++++++++++++++------
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb b/recipes-security/refpolicy/refpolicy-minimum_git.bb
index b275821..47ed558 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_git.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
@@ -26,23 +26,42 @@ EXTRA_POLICY_MODULES += "nscd"
 # "login", so "login" process will access to /var/spool/mail.
 EXTRA_POLICY_MODULES += "mta"
 
+# sysnetwork requires type definitions (insmod_t, consoletype_t,
+# hostname_t, ping_t, netutils_t) from modules:
+EXTRA_POLICY_MODULES += "modutils consoletype hostname netutils"
+
 POLICY_MODULES_MIN = "${CORE_POLICY_MODULES} ${EXTRA_POLICY_MODULES}"
 
 # re-write the same func from refpolicy_common.inc
 prepare_policy_store () {
 	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
+	POL_PRIORITY=100
+	POL_SRC=${D}${datadir}/selinux/${POLICY_NAME}
+	POL_STORE=${D}${localstatedir}/lib/selinux/${POLICY_NAME}
+	POL_ACTIVE_MODS=${POL_STORE}/active/modules/${POL_PRIORITY}
 
 	# Prepare to create policy store
-	mkdir -p ${D}${sysconfdir}/selinux/
-	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/policy
-	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
-	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
-	touch ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_contexts.local
-	for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
-		bzip2 -f $i && mv -f $i.bz2 $i
-	done
-	cp base.pp ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
-	for i in ${POLICY_MODULES_MIN}; do
-		cp ${i}.pp ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i.pp`
+	mkdir -p ${POL_STORE}
+	mkdir -p ${POL_ACTIVE_MODS}
+
+	# get hll type from suffix on base policy module
+	HLL_TYPE=$(echo ${POL_SRC}/base.* | awk -F . '{if (NF>1) {print $NF}}')
+	HLL_BIN=${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TYPE}
+
+	for i in base ${POLICY_MODULES_MIN}; do
+		MOD_FILE=${POL_SRC}/${i}.${HLL_TYPE}
+		MOD_DIR=${POL_ACTIVE_MODS}/${i}
+		mkdir -p ${MOD_DIR}
+		echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
+
+		if ! bzip2 -t ${MOD_FILE} >/dev/null 2>&1; then
+			${HLL_BIN} ${MOD_FILE} | bzip2 --stdout > ${MOD_DIR}/cil
+			bzip2 -f ${MOD_FILE} && mv -f ${MOD_FILE}.bz2 ${MOD_FILE}
+		else
+			bunzip2 --stdout ${MOD_FILE} | \
+				${HLL_BIN} | \
+				bzip2 --stdout > ${MOD_DIR}/cil
+		fi
+		cp ${MOD_FILE} ${MOD_DIR}/hll
 	done
 }
-- 
1.9.1


