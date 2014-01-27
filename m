Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF6BCE0059B
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 22:52:07 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0R6q7pH029438
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 22:52:07 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Sun, 26 Jan 2014 22:52:05 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 27 Jan 2014 01:52:01 -0500
Message-ID: <e157f92680f756218368a8d0147b0bed6a8ae8a7.1390805261.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390805261.git.wenzong.fan@windriver.com>
References: <cover.1390805261.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/1] selinux: set policy-version to 28
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
X-List-Received-Date: Mon, 27 Jan 2014 06:52:08 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The default policy version of new selinux toolchains is 29, to
fit kernel 3.10.x, set it to 28.
---
 recipes-security/refpolicy/refpolicy_common.inc |    2 ++
 recipes-security/selinux/libsemanage.inc        |    3 +++
 2 files changed, 5 insertions(+)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 6bf7830..fbf9441 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -76,6 +76,8 @@ args = -q -c \$@ \$<
 path = ${STAGING_DIR_NATIVE}${sbindir_native}/sefcontext_compile
 args = \$@
 [end]
+
+policy-version = 28
 EOF
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/policy
 	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index 5e90c26..799d864 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -41,6 +41,9 @@ do_install() {
             DESTDIR=${D} \
             PYLIBVER='python${PYTHON_BASEVERSION}' \
             PYLIBDIR='${D}/${libdir}/$(PYLIBVER)'
+
+    # Update "policy-version" for semanage.conf
+    echo "policy-version = 28" >> "${D}/etc/selinux/semanage.conf"
 }
 
 BBCLASSEXTEND = "native"
-- 
1.7.9.5


