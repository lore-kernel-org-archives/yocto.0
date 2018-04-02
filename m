Return-Path: <kai.kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D0F2E00D0E; Sun,  1 Apr 2018 23:11:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71E38E008E4
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2018 23:11:13 -0700 (PDT)
Received: from ala-blade48.wrs.com (ala-blade48.wrs.com [147.11.105.68])
	by mail.windriver.com (8.15.2/8.15.1) with SMTP id w326BBoA023928;
	Sun, 1 Apr 2018 23:11:11 -0700 (PDT)
Received: by ala-blade48.wrs.com (sSMTP sendmail emulation);
	Sun, 01 Apr 2018 23:11:11 -0700
From: Kai Kang <kai.kang@windriver.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Apr 2018 23:11:06 -0700
Message-Id: <20180402061106.17749-3-kai.kang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180402061106.17749-1-kai.kang@windriver.com>
References: <20180402061106.17749-1-kai.kang@windriver.com>
Subject: [PATCH 2/2] audit: fix pkgconfigdir
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
X-List-Received-Date: Mon, 02 Apr 2018 06:11:14 -0000

Because 'libdir' is set with ${base_libdir} in recipe file of audit,
package config files(.pc) are installed to ${base_libdir}/pkgconfig that
variable pkgconfigdir is set with ${libdir}/pkgconfig in makefile.

Set pkgconfigdir directly to install .pc files to right directory.

And remove setting of FILES_${PN}-dev which has been done in
bitbake.conf in oe-core.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-security/audit/audit_2.7.6.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/audit/audit_2.7.6.bb b/recipes-security/audit/audit_2.7.6.bb
index 5bfda7b..d655e64 100644
--- a/recipes-security/audit/audit_2.7.6.bb
+++ b/recipes-security/audit/audit_2.7.6.bb
@@ -45,6 +45,7 @@ EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
 	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
 	pyexecdir=${libdir}/python${PYTHON_BASEVERSION}/site-packages \
 	STDINC='${STAGING_INCDIR}' \
+	pkgconfigdir=${libdir}/pkgconfig \
 	"
 
 SUMMARY_audispd-plugins = "Plugins for the audit event dispatcher"
@@ -64,7 +65,6 @@ FILES_audispd-plugins += "${sysconfdir}/audisp/audisp-remote.conf \
 	"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
-FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la ${base_libdir}/pkgconfig/*"
 
 CONFFILES_auditd += "${sysconfdir}/audit/audit.rules"
 RDEPENDS_auditd += "bash"
-- 
2.11.0


