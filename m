Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6638BE00E3D; Mon, 28 Oct 2019 15:08:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.4 KHOP_HELO_FCRDNS Relay HELO differs from its IP's reverse DNS
Received: from tulikuusama2.dnainternet.net (tulikuusama3.dnainternet.net
	[83.102.40.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95463E00EB0
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 15:08:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tulikuusama2.dnainternet.net (Postfix) with ESMTP id BE43E29B39;
	Tue, 29 Oct 2019 00:00:12 +0200 (EET)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from tulikuusama2.dnainternet.net ([83.102.40.155])
	by localhost (tulikuusama2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041)
	with ESMTP id 7jJ_QGYBtv-Y; Tue, 29 Oct 2019 00:00:12 +0200 (EET)
Received: from omenapuu2.dnainternet.net (omenapuu2.dnainternet.net
	[83.102.40.54])
	by tulikuusama2.dnainternet.net (Postfix) with ESMTP id 37FFB29602;
	Tue, 29 Oct 2019 00:00:12 +0200 (EET)
Received: from localhost.localdomain (178-75-137-78.bb.dnainternet.fi
	[178.75.137.78])
	by omenapuu2.dnainternet.net (Postfix) with ESMTP id 691822CE;
	Tue, 29 Oct 2019 00:00:07 +0200 (EET)
From: Anders Montonen <Anders.Montonen@iki.fi>
To: yocto@yoctoproject.org
Date: Mon, 28 Oct 2019 23:59:26 +0200
Message-Id: <20191028215927.25625-3-Anders.Montonen@iki.fi>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028215927.25625-1-Anders.Montonen@iki.fi>
References: <20191028215927.25625-1-Anders.Montonen@iki.fi>
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][thud][PATCH 2/3] apparmor: fix systemd support so it works
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
X-List-Received-Date: Mon, 28 Oct 2019 22:09:05 -0000

From: Armin Kuster <akuster808@gmail.com>

[Yocto # 13568]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 5d049e7ef8a0a0a811e2ea1353521c6898e54e4d)
Signed-off-by: Anders Montonen <Anders.Montonen@iki.fi>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index 377d918..ad7f94e 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -43,7 +43,6 @@ PACKAGECONFIG[apache2] = ",,apache2,"
 PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
 HTTPD="${@bb.utils.contains('PACKAGECONFIG', 'apache2', '1', '0', d)}"
 
-
 python() {
     if 'apache2' in d.getVar('PACKAGECONFIG').split() and \
             'webserver' not in d.getVar('BBFILE_COLLECTIONS').split():
@@ -83,7 +82,6 @@ do_compile () {
 do_install () {
 	install -d ${D}/${INIT_D_DIR}
 	install -d ${D}/lib/apparmor
-		
 	oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
 	oe_runmake -C ${B}/binutils DESTDIR="${D}" install
 	oe_runmake -C ${B}/utils DESTDIR="${D}" install
@@ -104,10 +102,12 @@ do_install () {
 
 	install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
 	install ${WORKDIR}/functions ${D}/lib/apparmor
-	if [ "${VIRTUAL-RUNTIME_init_manager}" = "systemd" ]; then
+	sed -i -e 's/getconf _NPROCESSORS_ONLN/nproc/' ${D}/lib/apparmor/functions
+	sed -i -e 's/ls -AU/ls -A/' ${D}/lib/apparmor/functions
+
+	if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
 		install -d ${D}${systemd_system_unitdir}
-		install ${WORKDIR}/apparmor.service \
-			${D}${systemd_system_unitdir}
+		install ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
 	fi
 }
 
@@ -156,13 +156,19 @@ do_install_ptest_arm() {
   :
 }
 
+# We need the init script so don't rm it
+python() {
+    postfuncs = d.getVarFlags('do_install')['postfuncs'].replace('rm_sysvinit_initddir', '')
+    d.setVarFlags('do_install', { 'postfuncs': postfuncs })
+}
+
 INITSCRIPT_PACKAGES = "${PN}"
 INITSCRIPT_NAME = "apparmor"
 INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
 
 SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE_${PN} = "apparmor.service"
-SYSTEMD_AUTO_ENABLE = "disable"
+SYSTEMD_AUTO_ENABLE ?= "enable"
 
 PACKAGES += "${@bb.utils.contains('PACKAGECONFIG', 'apache2', 'mod-${PN}', '', d)}"
 
-- 
2.17.1


