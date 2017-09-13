Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC7C4E00CB0; Tue, 12 Sep 2017 19:43:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86210E00CDF
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8D2hAim012531
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 12 Sep 2017 19:43:11 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:09 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:42:52 -0700
Message-ID: <32dcc01da65e633fb3b0964ebdb0fdcf4936b1fc.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <cover.1505270194.git.wenzong.fan@windriver.com>
References: <cover.1505270194.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 10/20] restorecond: add package 2.7 (20170804)
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
X-List-Received-Date: Wed, 13 Sep 2017 02:43:19 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Move policycoreutils/restorecond to restorecond:

* Move and rebase patch:
  - policycoreutils-make-O_CLOEXEC-optional.patch

* Cleanup policycoreutils_2.7.bb.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/policycoreutils_2.7.bb    |  1 -
 recipes-security/selinux/restorecond.inc           | 28 ++++++++++++++++++++++
 .../policycoreutils-make-O_CLOEXEC-optional.patch  |  8 +++----
 recipes-security/selinux/restorecond_2.7.bb        |  7 ++++++
 4 files changed, 39 insertions(+), 5 deletions(-)
 create mode 100644 recipes-security/selinux/restorecond.inc
 rename recipes-security/selinux/{policycoreutils => restorecond}/policycoreutils-make-O_CLOEXEC-optional.patch (90%)
 create mode 100644 recipes-security/selinux/restorecond_2.7.bb

diff --git a/recipes-security/selinux/policycoreutils_2.7.bb b/recipes-security/selinux/policycoreutils_2.7.bb
index d407ac3..54ec69a 100644
--- a/recipes-security/selinux/policycoreutils_2.7.bb
+++ b/recipes-security/selinux/policycoreutils_2.7.bb
@@ -8,7 +8,6 @@ SRC_URI[sha256sum] = "0a1b8a4a323b854981c6755ff025fe98a0f1cff307f109abb260f0490f
 
 SRC_URI += "\
 	file://policycoreutils-fix-sepolicy-install-path.patch \
-	file://policycoreutils-make-O_CLOEXEC-optional.patch \
 	file://policycoreutils-loadpolicy-symlink.patch \
 	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
 	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
diff --git a/recipes-security/selinux/restorecond.inc b/recipes-security/selinux/restorecond.inc
new file mode 100644
index 0000000..6f12d23
--- /dev/null
+++ b/recipes-security/selinux/restorecond.inc
@@ -0,0 +1,28 @@
+SUMMARY = "Daemon to watch for file creation and set default file context"
+DESCRIPTION = "\
+The restorecond daemon uses inotify to watch files listed in the \
+/etc/selinux/restorecond.conf, when they are created, this daemon \
+will make sure they have the correct file context associated with \
+the policy."
+
+SECTION = "base"
+LICENSE = "GPLv2+"
+
+SRC_URI += "file://policycoreutils-make-O_CLOEXEC-optional.patch \
+"
+
+inherit systemd update-rc.d
+
+DEPENDS += "libsepol libselinux libpcre dbus-glib glib-2.0 pkgconfig-native"
+
+FILES_${PN} += "${datadir}/dbus-1/services/org.selinux.Restorecond.service \
+"
+
+do_install_prepend() {
+        export SYSTEMDDIR=${D}/${systemd_unitdir}
+}
+
+SYSTEMD_SERVICE_restorecond = "restorecond.service"
+INITSCRIPT_PACKAGES = "restorecond"
+INITSCRIPT_NAME_restorecond = "restorecond"
+INITSCRIPT_PARAMS_restorecond = "defaults"
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-make-O_CLOEXEC-optional.patch b/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch
similarity index 90%
rename from recipes-security/selinux/policycoreutils/policycoreutils-make-O_CLOEXEC-optional.patch
rename to recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch
index d50356e..ab1a10a 100644
--- a/recipes-security/selinux/policycoreutils/policycoreutils-make-O_CLOEXEC-optional.patch
+++ b/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch
@@ -16,13 +16,13 @@ Uptream-Status: Inappropriate [O_CLOEXEC has been in Linux since 2007 and POSIX
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- restorecond/user.c |    8 +++++++-
+ user.c |    8 +++++++-
  1 file changed, 7 insertions(+), 1 deletion(-)
 
-diff --git a/restorecond/user.c b/restorecond/user.c
+diff --git a/user.c b/user.c
 index 2c28676..6235772 100644
---- a/restorecond/user.c
-+++ b/restorecond/user.c
+--- a/user.c
++++ b/user.c
 @@ -202,7 +202,13 @@ static int local_server() {
  			perror("asprintf");
  		return -1;
diff --git a/recipes-security/selinux/restorecond_2.7.bb b/recipes-security/selinux/restorecond_2.7.bb
new file mode 100644
index 0000000..1f9a70c
--- /dev/null
+++ b/recipes-security/selinux/restorecond_2.7.bb
@@ -0,0 +1,7 @@
+include selinux_20170804.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "46f8ad0a37f955ef148d4e19b8cc8b1f"
+SRC_URI[sha256sum] = "cb8e0a8d706cb2c1f105125f3514dffffefcbcfb49199183a7f91ab0bdf1f24d"
-- 
2.13.0


