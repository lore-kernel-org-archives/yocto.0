Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F857E00C44; Sun, 14 Apr 2019 20:26:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1165FE00C37
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2019 20:26:02 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x3F3Q2LJ004387
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2019 20:26:02 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Sun, 14 Apr 2019 20:26:01 -0700
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 15 Apr 2019 11:16:07 +0800
Message-ID: <1555298167-15160-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] audit: change to use ${WORKDIR} instead ${S}/../
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
X-List-Received-Date: Mon, 15 Apr 2019 03:26:03 -0000
Content-Type: text/plain

The do_install function is assuming that ${S}/../ is ${WORKDIR},
but this is not true when using `devtool modify audit'.

So change to use ${WORKDIR}.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 recipes-security/audit/audit_2.8.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/audit/audit_2.8.4.bb b/recipes-security/audit/audit_2.8.4.bb
index c29bb74..594786a 100644
--- a/recipes-security/audit/audit_2.8.4.bb
+++ b/recipes-security/audit/audit_2.8.4.bb
@@ -82,7 +82,7 @@ do_install_append() {
 	rmdir ${D}/etc/sysconfig/
 
 	# replace init.d
-	install -D -m 0755 ${S}/../auditd ${D}/etc/init.d/auditd
+	install -D -m 0755 ${WORKDIR}/auditd ${D}/etc/init.d/auditd
 	rm -rf ${D}/etc/rc.d
 
 	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
-- 
2.7.4


