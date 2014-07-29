Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BEC6E007DF; Tue, 29 Jul 2014 00:30:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F892E007DD
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 00:30:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s6T7UHkC000700
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 00:30:17 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Tue, 29 Jul 2014 00:30:13 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Tue, 29 Jul 2014 03:30:08 -0400
Message-ID: <ddef98a7e6e40ececba1d38d01b793b4e181fe3e.1406618541.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1406618541.git.wenzong.fan@windriver.com>
References: <cover.1406618541.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] refpolicy / minimum: support compressed policy
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
X-List-Received-Date: Tue, 29 Jul 2014 07:30:49 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../refpolicy/refpolicy-minimum_2.20130424.bb      |   26 ++++++++++++++------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
index ae9cb43..d9539f3 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
@@ -30,19 +30,29 @@ EXTRA_POLICY_MODULES += "mta"
 
 POLICY_MODULES_MIN = "${CORE_POLICY_MODULES} ${EXTRA_POLICY_MODULES}"
 
+# re-write the same func from refpolicy_common.inc
 prepare_policy_store () {
-	oe_runmake install \
-		DESTDIR=${D}
+	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
 
 	# Prepare to create policy store
 	mkdir -p ${D}${sysconfdir}/selinux/
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/policy
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
-	bzip2 -c ${D}${datadir}/selinux/${POLICY_NAME}/base.pp  > \
-		${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
-	for i in ${POLICY_MODULES_MIN}; do
-		bzip2 -c ${D}${datadir}/selinux/${POLICY_NAME}/$i.pp > \
-			${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/$i.pp
-	done
+	touch ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_contexts.local
+	if  ${@base_contains('DISTRO_FEATURES','compressed_policy','true','false',d)}; then
+		bzip2 base.pp
+		cp base.pp.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
+		for i in ${POLICY_MODULES_MIN}; do
+			bzip2 $i
+			cp ${i}.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i`
+		done
+	else
+		bzip2 -c ${D}${datadir}/selinux/${POLICY_NAME}/base.pp  > \
+			${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
+		for i in ${POLICY_MODULES_MIN}; do
+			bzip2 -c ${D}${datadir}/selinux/${POLICY_NAME}/$i.pp > \
+				${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/$i.pp
+		done
+	fi
 }
-- 
1.7.9.5


