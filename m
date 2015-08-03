Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD9FEE00AC8; Mon,  3 Aug 2015 06:37:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF3B3E009E4
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 06:36:03 -0700 (PDT)
Received: by pawu10 with SMTP id u10so13161117paw.1
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 06:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=ldw1YmUmQTzbmedYbq1NJKjq18Qs/cp2q5YMutJCplQ=;
	b=cl9MBp+OguDV2KWHpsxr3rqRFK0PQdPcKGeFyy2L3AmChqvf8IQ6jXva2yP3MA+VTC
	q5+hZshQPGFytMemHJ0PSjDRk8EtW3j21tOkbWzn0oOJy8lm4SDszPRcPJYamXwsxDs0
	WbMBvuhAOP5tr1kOnH5vKcdCZ+VoxhX0Nhn4JeC6tmWogC9xQgpwDQsPVqcGYe++J+b/
	u22X2eMWrbWdSjyWDVxngOaHCX4HBdiUrqH6vrb2mjxcncbv4ZSWNj9m/KC3/6dqqVBV
	UJa89y7foy6wF3xeKI5R46lftByfZRt3k0QWfHn+9f3tzieyA1rD81jj8f3nP6ZNp8W+
	ZMow==
X-Received: by 10.68.195.231 with SMTP id ih7mr24037308pbc.26.1438608963751;
	Mon, 03 Aug 2015 06:36:03 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id nk1sm30461pdb.70.2015.08.03.06.36.01
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Aug 2015 06:36:03 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 19:07:07 +0530
Message-Id: <1438609027-10081-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 7/8] refpolicy-minimum: update base refpolicy to git repo
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
X-List-Received-Date: Mon, 03 Aug 2015 13:37:27 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-minimum to use the
refpolicy from git repository.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../refpolicy/refpolicy-minimum_git.bb             |   48 ++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum_git.bb

diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb b/recipes-security/refpolicy/refpolicy-minimum_git.bb
new file mode 100644
index 0000000..b275821
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
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


