Return-Path: <joe@deserted.net>
Received: from mail-qe0-f46.google.com (mail-qe0-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8C54E007A1
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 13:35:48 -0800 (PST)
Received: by mail-qe0-f46.google.com with SMTP id a11so15602253qen.33
	for <yocto@yoctoproject.org>; Tue, 03 Dec 2013 13:35:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=A3vs/0uSbLVwsrG5dOh0MNpbgQn5jUy2tbqhZTny4UE=;
	b=RurK/5Wb99RGfVyLWvtpT6flh+ZMKuvbPbjsSnoGfmWvf6X6rE3BX3GZT1gAjOnQdL
	1aLI6oNrXyITbBRDc1pJ1oI8H9oC297IUqMuyIlv1mmE9NVi5Pt5k04Z1dGPg0LSczvM
	7kFDTbac28SCF6HXTCqjK+YPJhyoLSFJotCa/KJ1OPxib4JRV7iXXuHvveUY6v3vqvjV
	UwnQbUKm+WZSEhcHzKeAhCdGmQWcww3DTmvkpe8vBCYede2/Etpb0CHVpHqsOduNeJwv
	HOr7L2T+7UvtY3vLuEU7cqEZxJoOGRFUEdr3Zez5KzNVqP394zr5Dh5rpIl5ncxDCLMS
	OYjA==
X-Gm-Message-State: ALoCoQlXTIfjKEiBGGBhxAS3bh3A0kfuwjepFRHDhzsyeDJxZZFSdH9eXqd8cxy1oa7/WTmWDuzu
X-Received: by 10.49.127.205 with SMTP id ni13mr129443709qeb.40.1386106547996; 
	Tue, 03 Dec 2013 13:35:47 -0800 (PST)
Received: from yow-asskicker.wrs.com ([128.224.252.2])
	by mx.google.com with ESMTPSA id w5sm40696231qat.10.2013.12.03.13.35.46
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Dec 2013 13:35:47 -0800 (PST)
From: Joe MacDonald <joe@deserted.net>
To: flihp@twobit.us
Date: Tue,  3 Dec 2013 16:35:41 -0500
Message-Id: <1386106541-28801-3-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1386106541-28801-1-git-send-email-joe@deserted.net>
References: <20131021201510.GB27412@deserted.net>
	<1386106541-28801-1-git-send-email-joe@deserted.net>
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH 2/2] policy: Create compressed_policy distro feature
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
X-List-Received-Date: Tue, 03 Dec 2013 21:35:50 -0000

There is a small cost to having compressed policy files on the final
image both in terms of memory requirements and load times.  In nearly all
circumstances this is negligible, but this adds a DISTRO_FEATURE that
can be used to enable it, if desired.

The default selinux distros will enable the feature by default.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 conf/distro/oe-selinux.conf                     |    2 +-
 recipes-security/refpolicy/refpolicy_common.inc |   32 ++++++++++++++++-------
 2 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/conf/distro/oe-selinux.conf b/conf/distro/oe-selinux.conf
index 6e55a32..5f4af87 100644
--- a/conf/distro/oe-selinux.conf
+++ b/conf/distro/oe-selinux.conf
@@ -1,4 +1,4 @@
 DISTRO = "oe-selinux"
 DISTROOVERRIDES .= ":selinux"
 
-DISTRO_FEATURES_append = " acl xattr pam selinux"
+DISTRO_FEATURES_append = " acl xattr pam selinux compressed_policy"
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index b46903f..a71c5dd 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -11,8 +11,10 @@ SRC_URI += "file://customizable_types \
 
 S = "${WORKDIR}/refpolicy"
 
-FILES_${PN} = "${sysconfdir}/selinux/${POLICY_NAME}/ \
-	${datadir}/selinux/${POLICY_NAME}/*.pp.bz2"
+FILES_${PN} = " \
+	${sysconfdir}/selinux/${POLICY_NAME}/ \
+	${@base_contains('DISTRO_FEATURES', 'compressed_policy', '${datadir}/selinux/${POLICY_NAME}/*.pp.bz2', '${datadir}/selinux/${POLICY_NAME}/*.pp', d)} \
+	"
 FILES_${PN}-dev =+ "${datadir}/selinux/${POLICY_NAME}/include/"
 
 DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
@@ -79,14 +81,24 @@ EOF
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
 	touch ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_contexts.local
-	for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
-		bzip2 $i
-		if [ "`basename $i`" != "base.pp" ]; then
-			cp ${i}.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i`
-		else
-			cp ${i}.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/`basename $i`
-		fi
-	done
+	if  ${@base_contains('DISTRO_FEATURES','compressed_policy','true','false',d)}; then
+		for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
+			bzip2 $i
+			if [ "`basename $i`" != "base.pp" ]; then
+				cp ${i}.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i`
+			else
+				cp ${i}.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/`basename $i`
+			fi
+		done
+	else
+		bzip2 -c ${D}${datadir}/selinux/${POLICY_NAME}/base.pp  >\
+			${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
+		for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
+			if [ "`basename $i`" != "base.pp" ]; then
+				bzip2 -c $i > ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i`;
+			fi
+		done
+	fi
 
 	# Create policy store and build the policy
 	semodule -p ${D} -s ${POLICY_NAME} -n -B
-- 
1.7.10.4


