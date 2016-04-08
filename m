Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEE4FE00C76; Fri,  8 Apr 2016 01:19:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00, URI_HEX autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.1 URI_HEX URI: URI hostname has long hexadecimal
	sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD884E00B8B
	for <yocto@yoctoproject.org>; Fri,  8 Apr 2016 01:19:35 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u388JYuc026656
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 8 Apr 2016 01:19:34 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 8 Apr 2016 01:19:33 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 Apr 2016 04:19:32 -0400
Message-ID: <1460103572-63539-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] refpolicy-minimum: port changes for prepare_policy_store
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
X-List-Received-Date: Fri, 08 Apr 2016 08:19:36 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Apply the changes to refpolicy-minimum_2.20151208.bb:

  commit bfaf278116e6c3a04bb82c9f8a4f8629a0a85df8
  Author: Wenzong Fan <wenzong.fan@windriver.com>
  Date:   Tue Oct 27 06:25:04 2015 -0400

    refpolicy-minimum: update prepare_policy_store

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
    Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../refpolicy/refpolicy-minimum_2.20151208.bb      | 41 ++++++++++++++++------
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index b275821..47ed558 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
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


