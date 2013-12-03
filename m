Return-Path: <joe@deserted.net>
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79777E0078C
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 13:35:47 -0800 (PST)
Received: by mail-qa0-f42.google.com with SMTP id k4so6002768qaq.15
	for <yocto@yoctoproject.org>; Tue, 03 Dec 2013 13:35:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=+fyfiaVG9sVojDTpA+k0vjF2tOoP5zFYZ8iGrBnD2E4=;
	b=XWMuwJNghwX+1ofzdEpVnuXaEeW/4pa+KVdzh/ZjMCpTYR7eUBRSAQXuVx2kwI+iSh
	Tiz+uYzkYgkXk4fIN7Zu4NdmmOPQJhsw+3BNbAeSMLvL79+209Q4PjrPdkOt14TAmtxB
	6SH7Hw6bL+uWurDx8ffNCOsIVDoQRkPlAa3R0bSkdgP/l9J39j7Mbfd1f+D4WTGoOlpS
	ewwwirGF1v5rb3v95A8RNUI154Nprzk1rtMKeUxviHqqKIgeOF7vCMEJHMUeMMM1sm+Z
	wQWOsR1RCc+x4nODHzlmJZqKkKFIMrPZI+3r4vnDTK3q8fvPdD6WsR1EeRF3SyS8Z/Sf
	/ldA==
X-Gm-Message-State: ALoCoQna8ANteDOcFc9J6eEoYWCoO7hwPSrQS+ZS5QukmnTJ9thAY2iAnv5S0iT1WygOR5LyITKs
X-Received: by 10.224.120.10 with SMTP id b10mr129871039qar.64.1386106546335; 
	Tue, 03 Dec 2013 13:35:46 -0800 (PST)
Received: from yow-asskicker.wrs.com ([128.224.252.2])
	by mx.google.com with ESMTPSA id w5sm40696231qat.10.2013.12.03.13.35.45
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Dec 2013 13:35:45 -0800 (PST)
From: Joe MacDonald <joe@deserted.net>
To: flihp@twobit.us
Date: Tue,  3 Dec 2013 16:35:40 -0500
Message-Id: <1386106541-28801-2-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1386106541-28801-1-git-send-email-joe@deserted.net>
References: <20131021201510.GB27412@deserted.net>
	<1386106541-28801-1-git-send-email-joe@deserted.net>
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH 1/2] bzip SELinux policy modules in ${datadir}
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
X-List-Received-Date: Tue, 03 Dec 2013 21:35:47 -0000

From: Philip Tricca <flihp@twobit.us>

The 'semodule' utility can operate on compresed modules so the only
cost of this change is a slower module load time when invoking
'semodule -i' on a running system (increased CPU load due to bzip2).
That said my tests show more than 100M reduction in ext3 image size
of core-image-selinux. This last metric is a bit skewed as the image
includes two policies. Still, a reduction in the size of the refpolicy
package by 1/2 is significant.

Signed-off-by: Philip Tricca <flihp@twobit.us>
Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/refpolicy/refpolicy_common.inc |    9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 2ee42e1..b46903f 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -12,7 +12,7 @@ SRC_URI += "file://customizable_types \
 S = "${WORKDIR}/refpolicy"
 
 FILES_${PN} = "${sysconfdir}/selinux/${POLICY_NAME}/ \
-	${datadir}/selinux/${POLICY_NAME}/*.pp"
+	${datadir}/selinux/${POLICY_NAME}/*.pp.bz2"
 FILES_${PN}-dev =+ "${datadir}/selinux/${POLICY_NAME}/include/"
 
 DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
@@ -79,11 +79,12 @@ EOF
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


