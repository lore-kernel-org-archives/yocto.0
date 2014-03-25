Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 435BBE00B00
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:08:01 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2P180wA006792
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:08:01 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Mon, 24 Mar 2014 18:08:00 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>, <Joe.MacDonald@windriver.com>
Date: Mon, 24 Mar 2014 21:07:50 -0400
Message-ID: <73fd7c4e1b04087735ac838eb3f91c03f191705b.1395709062.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1395709062.git.wenzong.fan@windriver.com>
References: <cover.1395709062.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 4/4] refpolicy: add minimum targeted policy
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
X-List-Received-Date: Tue, 25 Mar 2014 01:08:01 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

This is a minimum targeted policy with just core policy modules, and
could be used as a base for customizing targeted policy.
Pretty much everything runs as initrc_t or unconfined_t so all of the
domains are unconfined.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../refpolicy/refpolicy-minimum_2.20130424.bb      |   46 ++++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb

diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
new file mode 100644
index 0000000..e904810
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
@@ -0,0 +1,46 @@
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
+prepare_policy_store () {
+	oe_runmake install \
+		DESTDIR=${D}
+
+	# Prepare to create policy store
+	mkdir -p ${D}${sysconfdir}/selinux/
+	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/policy
+	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
+	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
+	bzip2 -c ${D}${datadir}/selinux/${POLICY_NAME}/base.pp  > \
+		${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
+	for i in ${POLICY_MODULES_MIN}; do
+		bzip2 -c ${D}${datadir}/selinux/${POLICY_NAME}/$i.pp > \
+			${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/$i.pp
+	done
+}
-- 
1.7.9.5


