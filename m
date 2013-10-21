Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10F87E013B7
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 11:07:00 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VYJsZ-0003ii-2E; Mon, 21 Oct 2013 18:06:59 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VYJsT-0001lG-He; Mon, 21 Oct 2013 18:06:53 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Mon, 21 Oct 2013 18:06:52 +0000
Message-Id: <1382378812-6742-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: [meta-selinux][PATCH] bzip SELinux policy modules in ${datadir}
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
X-List-Received-Date: Mon, 21 Oct 2013 18:07:02 -0000

The 'semodule' utility can operate on compresed modules so the only
cost of this change is a slower module load time when invoking
'semodule -i' on a running system (increased CPU load due to bzip2).
That said my tests show more than 100M reduction in ext3 image size
of core-image-selinux. This last metric is a bit skewed as the image
includes two policies. Still, a reduction in the size of the refpolicy
package by 1/2 is significant.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/refpolicy/refpolicy_common.inc |    9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 873d887..0ca0b9d 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -12,7 +12,7 @@ SRC_URI += "file://customizable_types \
 S = "${WORKDIR}/refpolicy"
 
 FILES_${PN} = "${sysconfdir}/selinux/${POLICY_NAME}/ \
-	${datadir}/selinux/${POLICY_NAME}/*.pp"
+	${datadir}/selinux/${POLICY_NAME}/*.pp.bz2"
 FILES_${PN}-dev =+ "${datadir}/selinux/${POLICY_NAME}/include/"
 
 DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
@@ -67,11 +67,12 @@ EOF
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
 	touch ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_contexts.local
-	bzip2 -c ${D}${datadir}/selinux/${POLICY_NAME}/base.pp  > \
-		${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
 	for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
+		bzip2 $i
 		if [ "`basename $i`" != "base.pp" ]; then
-			bzip2 -c $i > ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i`;
+			cp ${i}.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i`
+		else
+			cp ${i}.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/`basename $i`
 		fi
 	done
 
-- 
1.7.10.4


