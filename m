Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BC3AE00CAA; Mon, 29 Apr 2019 23:56:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADDCBE00CAA
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 23:56:30 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x3U6uSRp025920
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 23:56:28 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Mon, 29 Apr 2019 23:56:27 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 30 Apr 2019 14:56:25 +0800
Message-ID: <1556607386-98960-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <b36da33b-df9e-2991-5444-cd45a4c3e2d1@windriver.com>
References: <b36da33b-df9e-2991-5444-cd45a4c3e2d1@windriver.com>
MIME-Version: 1.0
Subject: [PATCH V3] update-rc.d: support enable/disable options
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
X-List-Received-Date: Tue, 30 Apr 2019 06:56:32 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

* update-rc.d has added support of enable/disable options, which are
  expected to keep the previous configuration even after upgrade the packages.
  With support for these options, it will only create start/stop link
  when there are none, or it will keep the previous configuration.

  Our preinst uses "-f remove" to remove any links under the /etc/rcrunlevel.d
  which is conflicting behavior with disable/enable options, so remove it.

  For example, if a user disabled one service before upgrade,
  then after upgrade the service could be started. This happens because during preinst,
  all links have been deleted, then postinst may create the link to start service.

  With this change, we remove preinst and therefore keep the previous links
  so that after upgrade, if a link existed for the package, then the postinst
  will not create new start/stop links.

* remove '-f' for postinst. Previously, the keepalived recipe used 'remove'
  during postinst, so we needed the -f, but now the keepalived recipe has fixed
  this problem, so it's safe to remove '-f'.

[Yocto #12955]

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 documentation/ref-manual/ref-variables.xml |  2 +-
 meta/classes/update-rc.d.bbclass           | 28 ++++------------------------
 2 files changed, 5 insertions(+), 25 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 536bd15..8fc48c3 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -7243,7 +7243,7 @@
                     to the <filename>update-rc.d</filename> command.
                     For more information on valid parameters, please see the
                     <filename>update-rc.d</filename> manual page at
-                    <ulink url='http://www.tin.org/bin/man.cgi?section=8&amp;topic=update-rc.d'></ulink>.
+                    <ulink url='https://manpages.debian.org/wheezy/sysv-rc/update-rc.d.8.en.html'></ulink>.
                 </para>
             </glossdef>
         </glossentry>
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


