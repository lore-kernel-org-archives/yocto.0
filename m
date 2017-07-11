Return-Path: <tom.rini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F5EBE00C3E; Tue, 11 Jul 2017 05:35:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.178 listed in dnsbl.sorbs.net]
Received: from mail-yb0-f178.google.com (mail-yb0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7FB9E00B31
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 05:35:35 -0700 (PDT)
Received: by mail-yb0-f178.google.com with SMTP id e201so37437105ybb.1
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 05:35:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=AW8AISTJbgnfJzs22nkIqArkOlJO2KwXGE7sTJz6Kyg=;
	b=poofXf/5yqoL32l3Sc/vFpqt1v384v0zqF39fK9XmcupyejkOZS4alF5eAo+9H9M9F
	NL0kODmu3JboNusHixwOuMMmniTcvur1rH4rQuJyFXRPfPgm377qjDIbcL9eGYL7AnIF
	SFTsObhHhWi2JHH5h83F8cU14/+3Muvwb24mP0lrls7izHacJepAoUhBwQdn3Zks+rX8
	apevE8+wvv7O5SyN2m/0HDZkEw0gVkANiIl9MB/yOlNPT1lRPXYKjVDCd/J//hKFBBBS
	7ZHPWeZKFN7HYYxFnDtDqwrmOpBhVP7lIJQqFm+ZBE19nAY0E+rcZvOO+UIkOjuwvWro
	57Pw==
X-Gm-Message-State: AIVw110dedcSoj4t7P0C+gsWXkB0rVIv8Nh/u2lr26bKHTQj+IORygdG
	/lQJU0yeDxNxeUGz
X-Received: by 10.37.188.66 with SMTP id d2mr18855849ybk.85.1499776534537;
	Tue, 11 Jul 2017 05:35:34 -0700 (PDT)
Received: from localhost.localdomain (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	w74sm5961785yww.21.2017.07.11.05.35.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 11 Jul 2017 05:35:33 -0700 (PDT)
From: Tom Rini <trini@konsulko.com>
To: yocto@yoctoproject.org
Date: Tue, 11 Jul 2017 08:36:29 -0400
Message-Id: <1499776589-7362-1-git-send-email-trini@konsulko.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] apparmor: Additional runtime fixes
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
X-List-Received-Date: Tue, 11 Jul 2017 12:35:38 -0000

- We need various python3 modules and we can only really solve this
  problem by including all python3-modules.
- aa-easyprof needs to have its shebang corrected, do so.
- The apparmor initscript depends on functions that LSB does not require
  so we must provide them.  In some cases it's using non-standard
  function, so we just use more appropriate names.
- The apparmor sysvinit-style initscript assumes that
  systemd-detect-virt will exist on the filesystem.  Change this to
  check that it does before trying to execute it.

[for aa-easyprof:]
Reported-by: Anders Montonen <Anders.Montonen@iki.fi>
Signed-off-by: Tom Rini <trini@konsulko.com>
---
 recipes-security/AppArmor/apparmor_2.11.0.bb |  6 +++++-
 recipes-security/AppArmor/files/apparmor     | 30 +++++++++++++++++++++-------
 2 files changed, 28 insertions(+), 8 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.11.0.bb b/recipes-security/AppArmor/apparmor_2.11.0.bb
index 647ab124f115..d9572e4e626f 100644
--- a/recipes-security/AppArmor/apparmor_2.11.0.bb
+++ b/recipes-security/AppArmor/apparmor_2.11.0.bb
@@ -79,6 +79,10 @@ do_install () {
 		oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR="${D}" install
 	fi
 
+	# aa-easyprof is installed by python-tools-setup.py, fix it up
+	sed -i -e 's:/usr/bin/env.*:/usr/bin/python3:' ${D}${bindir}/aa-easyprof
+	chmod 0755 ${D}${bindir}/aa-easyprof
+
 	install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
 	install ${WORKDIR}/functions ${D}/lib/apparmor
 }
@@ -124,6 +128,6 @@ FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
 RDEPENDS_${PN} += "bash lsb"
-RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3 python3-argparse python3-json','', d)}"
+RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3 python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "coreutils dbus-lib"
diff --git a/recipes-security/AppArmor/files/apparmor b/recipes-security/AppArmor/files/apparmor
index c73c1cec94e9..ac3ab9a4acb5 100644
--- a/recipes-security/AppArmor/files/apparmor
+++ b/recipes-security/AppArmor/files/apparmor
@@ -32,6 +32,20 @@
 # Description: AppArmor init script. This script loads all AppArmor profiles.
 ### END INIT INFO
 
+log_daemon_msg() {
+    echo $*
+}
+
+log_end_msg () {
+    retval=$1
+    if [ $retval -eq 0 ]; then
+        echo "."
+    else
+        echo " failed!"
+    fi
+    return $retval
+}
+
 . /lib/apparmor/functions
 . /lib/lsb/init-functions
 
@@ -47,20 +61,19 @@ securityfs() {
 	# Need securityfs for any mode
 	if [ ! -d "${AA_SFS}" ]; then
 		if cut -d" " -f2,3 /proc/mounts | grep -q "^${SECURITYFS} securityfs"'$' ; then
-			log_action_msg "AppArmor not available as kernel LSM."
+			log_daemon_msg "AppArmor not available as kernel LSM."
 			log_end_msg 1
 			exit 1
 		else
-			log_action_begin_msg "Mounting securityfs on ${SECURITYFS}"
+			log_daemon_msg "Mounting securityfs on ${SECURITYFS}"
 			if ! mount -t securityfs none "${SECURITYFS}"; then
-				log_action_end_msg 1
 				log_end_msg 1
 				exit 1
 			fi
 		fi
 	fi
 	if [ ! -w "$AA_SFS"/.load ]; then
-		log_action_msg "Insufficient privileges to change profiles."
+		log_daemon_msg "Insufficient privileges to change profiles."
 		log_end_msg 1
 		exit 1
 	fi
@@ -127,7 +140,8 @@ test -d /rofs/etc/apparmor.d && exit 0
 rc=255
 case "$1" in
 	start)
-		if systemd-detect-virt --quiet --container && \
+		if test -x /sbin/systemd-detect-virt && \
+		   systemd-detect-virt --quiet --container && \
 		   ! is_container_with_internal_policy; then
 			log_daemon_msg "Not starting AppArmor in container"
 			log_end_msg 0
@@ -161,7 +175,8 @@ with the 'teardown' option."
 EOM
 		;;
 	teardown)
-		if systemd-detect-virt --quiet --container && \
+		if test -x /sbin/systemd-detect-virt && \
+		   systemd-detect-virt --quiet --container && \
 		   ! is_container_with_internal_policy; then
 			log_daemon_msg "Not tearing down AppArmor in container"
 			log_end_msg 0
@@ -179,7 +194,8 @@ EOM
 		log_end_msg $rc
 		;;
 	restart|reload|force-reload)
-		if systemd-detect-virt --quiet --container && \
+		if test -x /sbin/systemd-detect-virt && \
+		   systemd-detect-virt --quiet --container && \
 		   ! is_container_with_internal_policy; then
 			log_daemon_msg "Not reloading AppArmor in container"
 			log_end_msg 0
-- 
1.9.1


