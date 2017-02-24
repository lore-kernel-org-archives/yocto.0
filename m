Return-Path: <joe.slater@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83DFFE00839; Fri, 24 Feb 2017 14:44:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F2D4E0052B
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 14:43:59 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v1OMhwvM020344
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 14:43:58 -0800 (PST)
Received: from ala-jslater-lx3.wrs.com (147.11.152.42) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Fri, 24 Feb 2017 14:43:57 -0800
From: Joe Slater <jslater@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 24 Feb 2017 14:43:57 -0800
Message-ID: <1487976237-16873-1-git-send-email-jslater@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-selinux][PATCH 1/1] selinux-initsh.inc: provide source for archiver
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
X-List-Received-Date: Fri, 24 Feb 2017 22:44:01 -0000
Content-Type: text/plain

Also remove never used default assignment to S.

Signed-off-by: Joe Slater <jslater@windriver.com>
---
 recipes-security/selinux/selinux-initsh.inc |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-security/selinux/selinux-initsh.inc
index bcdd449..dd733de 100644
--- a/recipes-security/selinux/selinux-initsh.inc
+++ b/recipes-security/selinux/selinux-initsh.inc
@@ -1,4 +1,3 @@
-S ?= "${WORKDIR}"
 SECTION ?= "base"
 
 # Default is for script name to be the same as the recipe name.
@@ -17,6 +16,11 @@ inherit update-rc.d systemd
 
 SYSTEMD_SERVICE_${PN} = "${SELINUX_SCRIPT_SRC}.service"
 
+do_patch () {
+	# Put stuff in S for the archiver
+	cp ${WORKDIR}/*.sh ${WORKDIR}/*.service ${S}
+}
+
 do_install () {
 	install -d ${D}${sysconfdir}/init.d/
 	install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
-- 
1.7.9.5


