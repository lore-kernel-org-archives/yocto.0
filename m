Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1DF2E00B6F; Thu, 30 Jul 2015 06:38:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bobadeshrikant[at]gmail.com)
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3560E00AF9
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:36:42 -0700 (PDT)
Received: by pabkd10 with SMTP id kd10so23772473pab.2
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=RvFY7gZKz4ZUYqibpUd5pzjjPfiv6sRA7FwP8Z7Ae7o=;
	b=mrkumx7nfuigVqYllwAE5ox6xNscmhTPrfQGez5iGRoEzhKhtY9JCfTyaiFuF4VYNu
	6cV1qjGDQo6zFG7HbCPUHHAtqCSeeXdfDZJh+Xc+cm6UmU5IDBWl9Z2ngh1EARIER3vm
	20NrOI9ReG7z5CI2Aa0Rrx8+snf3yuErKSAFAcmBx4GG6+eufCYc75z5wdsY+pYefLDY
	DHYhUI30PN6hdKb5EICAofQffbNw9Mg6xd6TxCK/sU2Yi2AeQFMybXFVV4ErGHiHEA66
	xYJWN4XRiDFNq43nivEwJZ9sgrhkS/qktaUjK4R2zl4HPsTr2fS1fkaxSLlZc/uaQvB7
	iPyQ==
X-Received: by 10.66.66.166 with SMTP id g6mr107944471pat.157.1438263402140;
	Thu, 30 Jul 2015 06:36:42 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id f1sm2344127pdp.39.2015.07.30.06.36.40
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 06:36:41 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 19:07:23 +0530
Message-Id: <1438263443-14547-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 7/7] refpolicy-minimum: update base refpolicy 20141203
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
X-List-Received-Date: Thu, 30 Jul 2015 13:38:34 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-minimum to use the 20141203
base refpolicy.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../refpolicy/refpolicy-minimum_2.20141203.bb      |   48 ++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20141203.bb

diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20141203.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20141203.bb
new file mode 100644
index 0000000..b275821
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20141203.bb
@@ -0,0 +1,48 @@
+include refpolicy-targeted_${PV}.bb
+
+SUMMARY = "SELinux minimum policy"
+DESCRIPTION = "\
+This is a minimum reference policy with just core policy modules, and \
+could be used as a base for customizing targeted policy. \
+Pretty much everything runs as initrc_t or unconfined_t so all of the \
+domains are unconfined. \
+"
+
+POLICY_NAME = "minimum"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:${THISDIR}/refpolicy-${PV}:${THISDIR}/refpolicy-targeted:"
+
+CORE_POLICY_MODULES = "unconfined \
+	selinuxutil storage sysnetwork \
+	application libraries miscfiles logging userdomain \
+	init mount modutils getty authlogin locallogin \
+	"
+
+# nscd caches libc-issued requests to the name service.
+# Without nscd.pp, commands want to use these caches will be blocked.
+EXTRA_POLICY_MODULES += "nscd"
+
+# pam_mail module enables checking and display of mailbox status upon
+# "login", so "login" process will access to /var/spool/mail.
+EXTRA_POLICY_MODULES += "mta"
+
+POLICY_MODULES_MIN = "${CORE_POLICY_MODULES} ${EXTRA_POLICY_MODULES}"
+
+# re-write the same func from refpolicy_common.inc
+prepare_policy_store () {
+	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
+
+	# Prepare to create policy store
+	mkdir -p ${D}${sysconfdir}/selinux/
+	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/policy
+	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
+	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
+	touch ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_contexts.local
+	for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
+		bzip2 -f $i && mv -f $i.bz2 $i
+	done
+	cp base.pp ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
+	for i in ${POLICY_MODULES_MIN}; do
+		cp ${i}.pp ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i.pp`
+	done
+}
-- 
1.7.9.5


