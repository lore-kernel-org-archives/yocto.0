Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2450E00C72
	for <yocto@yoctoproject.org>; Fri,  4 Apr 2014 16:09:38 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s34N9YLs026613
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 Apr 2014 16:09:34 -0700 (PDT)
Received: from msp-mhatle-lx2.wrs.com (172.25.34.61) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Fri, 4 Apr 2014 16:09:34 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <joe@deserted.net>, <xin.ouyang@windriver.com>, <yocto@yoctoproject.org>
Date: Fri, 4 Apr 2014 18:09:32 -0500
Message-ID: <1396652972-28046-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.8.5.3
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] audit: Fix lack of a default audit.rules
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
X-List-Received-Date: Fri, 04 Apr 2014 23:09:41 -0000
Content-Type: text/plain

Various components were failing, and upon investigation it was noted
that the audit.rules file referenced by the initscript wasn't available.

There was however a copy under the rules.d directory.  Investigating
the audit.spec file (which in the upstream source) showed that it was
expected that the version in the rules.d should be copied into
/etc/audit.

Do this and correct the systemd services file to use the same file.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-security/audit/audit/auditd.service | 2 +-
 recipes-security/audit/audit_2.3.2.bb       | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/recipes-security/audit/audit/auditd.service b/recipes-security/audit/audit/auditd.service
index 6daa056..adf4d3b 100644
--- a/recipes-security/audit/audit/auditd.service
+++ b/recipes-security/audit/audit/auditd.service
@@ -14,7 +14,7 @@ ExecStart=/sbin/auditd -n
 ## Then copy existing rules to /etc/audit/rules.d/
 ## Not doing this last step can cause loss of existing rules
 #ExecStartPost=-/sbin/augenrules --load
-ExecStartPost=-/sbin/auditctl -R /etc/audit/rules.d/audit.rules
+ExecStartPost=-/sbin/auditctl -R /etc/audit/audit.rules
 ExecReload=/bin/kill -HUP $MAINPID
 
 [Install]
diff --git a/recipes-security/audit/audit_2.3.2.bb b/recipes-security/audit/audit_2.3.2.bb
index 4a9c954..ae6556f 100644
--- a/recipes-security/audit/audit_2.3.2.bb
+++ b/recipes-security/audit/audit_2.3.2.bb
@@ -67,6 +67,8 @@ FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
 FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la"
 
+CONFFILES_auditd += "${sysconfdir}/audit/audit.rules"
+
 do_install_append() {
 	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.a
 	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.la
@@ -91,4 +93,7 @@ do_install_append() {
 
 	chmod 750 ${D}/etc/audit ${D}/etc/audit/rules.d
 	chmod 640 ${D}/etc/audit/auditd.conf ${D}/etc/audit/rules.d/audit.rules
+
+	# Based on the audit.spec "Copy default rules into place on new installation"
+	cp ${D}/etc/audit/rules.d/audit.rules ${D}/etc/audit/audit.rules
 }
-- 
1.8.5.3


