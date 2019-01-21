Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4009FE00BCC; Mon, 21 Jan 2019 01:10:04 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EF37E006F1
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 01:10:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x0L9A2Ad015297
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 01:10:02 -0800 (PST)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Mon, 21 Jan 2019 01:10:01 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 21 Jan 2019 17:09:36 +0800
Message-ID: <1548061778-253354-2-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
References: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH V2 1/2] update-rc.d.bbclass: remove preinst and remove -f for postinst
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
X-List-Received-Date: Mon, 21 Jan 2019 09:10:04 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

*preinst use "-f remove" to remove any links in the /etc/rcrunlevel.d
  but this will make user cannot keep previous init script link
  after upgrade

  eg: user disable one service before upgrade, after upgrade, service
  could be started since during preinst, all link have been deleted, so
  postinst may create the link to start service.

  remove preinst to keep previous links, so that after upgrade, if any
  link existed for the package, postinst will not create new start/stop
  links.

  (note: patch of support enable/disable function of update-rc.d send
  to yocto mail list today)

*remove -f for postinst, previously, recipe keepalived use remove during
  postinst, so need this -f, but remove in postinst is not proper, recipe
  keepalived have fixed this problem, so remove -f.

[Yocto #12955]

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 meta/classes/update-rc.d.bbclass | 28 ++++------------------------
 1 file changed, 4 insertions(+), 24 deletions(-)

diff --git a/meta/classes/update-rc.d.bbclass b/meta/classes/update-rc.d.bbclass
index 265c4be..1366fee 100644
--- a/meta/classes/update-rc.d.bbclass
+++ b/meta/classes/update-rc.d.bbclass
@@ -20,28 +20,14 @@ def use_updatercd(d):
         return '[ -n "$D" -o ! -d /run/systemd/system ]'
     return 'true'
 
-updatercd_preinst() {
-if ${@use_updatercd(d)} && [ -z "$D" -a -f "${INIT_D_DIR}/${INITSCRIPT_NAME}" ]; then
-	${INIT_D_DIR}/${INITSCRIPT_NAME} stop || :
-fi
-if ${@use_updatercd(d)} && type update-rc.d >/dev/null 2>/dev/null; then
-	if [ -n "$D" ]; then
-		OPT="-f -r $D"
-	else
-		OPT="-f"
-	fi
-	update-rc.d $OPT ${INITSCRIPT_NAME} remove
-fi
-}
-
 PACKAGE_WRITE_DEPS += "update-rc.d-native"
 
 updatercd_postinst() {
 if ${@use_updatercd(d)} && type update-rc.d >/dev/null 2>/dev/null; then
 	if [ -n "$D" ]; then
-		OPT="-f -r $D"
+		OPT="-r $D"
 	else
-		OPT="-f -s"
+		OPT="-s"
 	fi
 	update-rc.d $OPT ${INITSCRIPT_NAME} ${INITSCRIPT_PARAMS}
 fi
@@ -79,7 +65,7 @@ python __anonymous() {
 PACKAGESPLITFUNCS_prepend = "${@bb.utils.contains('DISTRO_FEATURES', 'sysvinit', 'populate_packages_updatercd ', '', d)}"
 PACKAGESPLITFUNCS_remove_class-nativesdk = "populate_packages_updatercd "
 
-populate_packages_updatercd[vardeps] += "updatercd_prerm updatercd_postrm updatercd_preinst updatercd_postinst"
+populate_packages_updatercd[vardeps] += "updatercd_prerm updatercd_postrm updatercd_postinst"
 populate_packages_updatercd[vardepsexclude] += "OVERRIDES"
 
 python populate_packages_updatercd () {
@@ -95,7 +81,7 @@ python populate_packages_updatercd () {
             d.appendVar('RDEPENDS_' + pkg, ' %sinitd-functions' % (mlprefix))
 
     def update_rcd_package(pkg):
-        bb.debug(1, 'adding update-rc.d calls to preinst/postinst/prerm/postrm for %s' % pkg)
+        bb.debug(1, 'adding update-rc.d calls to postinst/prerm/postrm for %s' % pkg)
 
         localdata = bb.data.createCopy(d)
         overrides = localdata.getVar("OVERRIDES")
@@ -103,12 +89,6 @@ python populate_packages_updatercd () {
 
         update_rcd_auto_depend(pkg)
 
-        preinst = d.getVar('pkg_preinst_%s' % pkg)
-        if not preinst:
-            preinst = '#!/bin/sh\n'
-        preinst += localdata.getVar('updatercd_preinst')
-        d.setVar('pkg_preinst_%s' % pkg, preinst)
-
         postinst = d.getVar('pkg_postinst_%s' % pkg)
         if not postinst:
             postinst = '#!/bin/sh\n'
-- 
2.7.4


