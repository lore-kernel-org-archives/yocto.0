Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 788BBE00D75; Fri, 11 Sep 2015 22:18:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69BCDE00D40
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 22:18:47 -0700 (PDT)
Received: from c-50-137-125-184.hsd1.ma.comcast.net ([50.137.125.184]
	helo=localhost.localdomain)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZadBY-0000yR-SU; Sat, 12 Sep 2015 05:17:14 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Fri, 11 Sep 2015 22:18:26 -0700
Message-Id: <1442035106-9671-9-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1442035106-9671-1-git-send-email-flihp@twobit.us>
References: <1442035106-9671-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.137.125.184
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [PATCH][meta-selinux 8/8] refpolicy: Update policy install and bootstrap process for CIL.
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
X-List-Received-Date: Sat, 12 Sep 2015 05:18:57 -0000

The policy modules are now installed into /var/lib/selinux instead
of /etc/selinux.
Policies now have priorities. This is represented as part of the path
under /var/lib/selinux.
The new intermediate policy representation requires that we install
the policy package as 3 files (hll, cil & lang_ext) instead of just
the *.pp as before. The cil is generated from the hll (the pp file)
using the new 'pp' utility.
The base policy module now lives with all of the other modules.
policy.kern has gone away.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/refpolicy/refpolicy_common.inc | 40 ++++++++++++++++---------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 620e7c0..de38dfc 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -14,6 +14,7 @@ S = "${WORKDIR}/refpolicy"
 FILES_${PN} = " \
 	${sysconfdir}/selinux/${POLICY_NAME}/ \
 	${datadir}/selinux/${POLICY_NAME}/*.pp \
+	${localstatedir}/lib/selinux/${POLICY_NAME}/ \
 	"
 FILES_${PN}-dev =+ " \
         ${datadir}/selinux/${POLICY_NAME}/include/ \
@@ -65,20 +66,33 @@ do_compile() {
 
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
-		if [ "`basename $i`" != "base.pp" ]; then
-			cp $i ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i`
+	mkdir -p ${POL_STORE}
+	mkdir -p ${POL_ACTIVE_MODS}
+
+	# get hll type from suffix on base policy module
+	HLL_TYPE=$(echo ${POL_SRC}/base.* | awk -F . '{if (NF>1) {print $NF}}')
+	HLL_BIN=${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TYPE}
+
+	for i in ${POL_SRC}/*.${HLL_TYPE}; do
+		MOD_NAME=$(basename $i | sed "s/\.${HLL_TYPE}$//")
+		MOD_DIR=${POL_ACTIVE_MODS}/${MOD_NAME}
+		mkdir -p ${MOD_DIR}
+		echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
+		if ! bzip2 -qt $i 2>/dev/null; then
+			${HLL_BIN} $i | bzip2 --stdout > ${MOD_DIR}/cil
+			bzip2 -f $i && mv -f $i.bz2 $i
 		else
-			cp $i ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/`basename $i`
+			bunzip2 --stdout $i | \
+				${HLL_BIN} | \
+				bzip2 --stdout > ${MOD_DIR}/cil
 		fi
+		cp $i ${MOD_DIR}/hll
 	done
 }
 
@@ -100,6 +114,8 @@ EOF
 	# Create policy store and build the policy
 	semodule -p ${D} -s ${POLICY_NAME} -n -B
 	rm -f ${D}${sysconfdir}/selinux/semanage.conf
+	# no need to leave tmp dir created by semanage lanying around
+	rm -rf ${D}${localstatedir}/lib/selinux/tmp
 }
 
 install_misc_files () {
@@ -114,10 +130,6 @@ install_misc_files () {
 
 	# install policy headers
 	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install-headers
-
-	# Fix symbol link policy.kern
-	link_path=`readlink -f ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/policy.kern`
-	ln -sf ../../policy/`basename $link_path` ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/policy.kern
 }
 
 do_install () {
-- 
2.1.4


