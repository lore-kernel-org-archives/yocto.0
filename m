Return-Path: <kai.kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 063E3E00C9C; Tue, 27 Mar 2018 23:55:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8578AE00BF8
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 23:55:29 -0700 (PDT)
Received: from ala-blade48.wrs.com (ala-blade48.wrs.com [147.11.105.68])
	by mail.windriver.com (8.15.2/8.15.1) with SMTP id w2S6tSHQ013679
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 23:55:28 -0700 (PDT)
Received: by ala-blade48.wrs.com (sSMTP sendmail emulation);
	Tue, 27 Mar 2018 23:55:28 -0700
From: Kai Kang <kai.kang@windriver.com>
To: yocto@yoctoproject.org
Date: Tue, 27 Mar 2018 23:55:17 -0700
Message-Id: <20180328065517.13807-3-kai.kang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180328065517.13807-1-kai.kang@windriver.com>
References: <20180328065517.13807-1-kai.kang@windriver.com>
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
X-List-Received-Date: Wed, 28 Mar 2018 06:55:31 -0000

Because 'libdir' is set with ${base_libdir} in recipe file of audit,
package config files(.pc) are installed to ${base_libdir}/pkgconfig that
variable pkgconfigdir is set with ${libdir}/pkgconfig in makefile.

Set pkgconfigdir directly to install .pc files to right directory.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-security/audit/audit_2.7.6.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/audit/audit_2.7.6.bb b/recipes-security/audit/audit_2.7.6.bb
index 5bfda7b..33b49c9 100644
--- a/recipes-security/audit/audit_2.7.6.bb
+++ b/recipes-security/audit/audit_2.7.6.bb
@@ -45,6 +45,7 @@ EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
 	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
 	pyexecdir=${libdir}/python${PYTHON_BASEVERSION}/site-packages \
 	STDINC='${STAGING_INCDIR}' \
+	pkgconfigdir=${libdir}/pkgconfig \
 	"
 
 SUMMARY_audispd-plugins = "Plugins for the audit event dispatcher"
@@ -64,7 +65,7 @@ FILES_audispd-plugins += "${sysconfdir}/audisp/audisp-remote.conf \
 	"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
-FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la ${base_libdir}/pkgconfig/*"
+FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la"
 
 CONFFILES_auditd += "${sysconfdir}/audit/audit.rules"
 RDEPENDS_auditd += "bash"
-- 
2.11.0


