Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B466FE007CE; Tue, 26 Aug 2014 07:21:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88B5EE0078F
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 07:21:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Aug 2014 07:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,404,1406617200"; d="scan'208";a="593495642"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2014 07:21:45 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 26 Aug 2014 17:24:52 +0300
Message-Id: <1409063092-17040-2-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1409063092-17040-1-git-send-email-marius.avram@intel.com>
References: <1409063092-17040-1-git-send-email-marius.avram@intel.com>
Subject: [PATCH] Fix USB not mounted in file manager
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
X-List-Received-Date: Tue, 26 Aug 2014 14:21:49 -0000

Currently a USB stick gets mounted on /run/media/sdX, where X is the
letter corresponding to a certain drive. In older builds of core-image-sato
it got mounted in /media/sdX. This change made the drives to not be
displayed in graphical applications which use glib-2.0 such as the
File Manager (pcmanfm). The reason is that the gio component of glib-2.0
which handles mounts contains a function which determines if a mount
is worthy to be displayed in the UI or not. The function is called
g_unix_mount_guess_should_display().

It expects a drive to be mounted in /run/media/<username>/sdX, but
in the current build the username part is missing in case a root user
is authenticated in the system.

The easiest solution is to allow the display of drives mounted in the
path used by the current configuration and that is /run/media/sdX.

[YOCTO #6492]

Signed-off-by: Marius Avram <marius.avram@intel.com>
---
 ...un-media-sdX-drive-mount-if-username-root.patch |   44 ++++++++++++++++++++
 meta/recipes-core/glib-2.0/glib-2.0_2.40.0.bb      |    2 +-
 2 files changed, 45 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-core/glib-2.0/glib-2.0/allow-run-media-sdX-drive-mount-if-username-root.patch

diff --git a/meta/recipes-core/glib-2.0/glib-2.0/allow-run-media-sdX-drive-mount-if-username-root.patch b/meta/recipes-core/glib-2.0/glib-2.0/allow-run-media-sdX-drive-mount-if-username-root.patch
new file mode 100644
index 0000000..3285a54
--- /dev/null
+++ b/meta/recipes-core/glib-2.0/glib-2.0/allow-run-media-sdX-drive-mount-if-username-root.patch
@@ -0,0 +1,44 @@
+From: Marius Avram <marius.avram@intel.com>
+Date: Tue, 26 Aug 2014 16:31:51 +0300
+Subject: [PATCH] Allow /run/media/sdX drive mount if username root
+
+In case that the username logged in the system is root
+the drives are directly mounted in /run/media/sdX and
+not /run/media/<username>/sdX as the function
+g_unix_mount_guess_should_display() expects.
+
+Without this change USB stick mounts are not accesible from
+graphical applications such as the File Manager (pcmanfm).
+
+Upstream-Status: Upstream-Status: Inappropriate
+
+Signed-off-by: Marius Avram <marius.avram@intel.com>
+---
+ gio/gunixmounts.c |    6 ++++++
+ 1 file changed, 6 insertions(+)
+
+diff --git a/gio/gunixmounts.c b/gio/gunixmounts.c
+index 4999354..5053f5e 100644
+--- a/gio/gunixmounts.c
++++ b/gio/gunixmounts.c
+@@ -2131,11 +2131,17 @@ g_unix_mount_guess_should_display (GUnixMountEntry *mount_entry)
+       /* Check /run/media/$USER/ */
+       user_name = g_get_user_name ();
+       user_name_len = strlen (user_name);
++
+       if (strncmp (mount_path, "/run/media/", sizeof ("/run/media/") - 1) == 0 &&
+           strncmp (mount_path + sizeof ("/run/media/") - 1, user_name, user_name_len) == 0 &&
+           mount_path[sizeof ("/run/media/") - 1 + user_name_len] == '/')
+         is_in_runtime_dir = TRUE;
+ 
++      /* Allow no username in path in /run/media if current user is root */
++      if (strcmp(user_name, "root") == 0 &&
++          strncmp (mount_path, "/run/media/", sizeof("run/media")) == 0)
++        is_in_runtime_dir = TRUE;
++
+       if (is_in_runtime_dir || g_str_has_prefix (mount_path, "/media/"))
+         {
+           char *path;
+-- 
+1.7.9.5
+
diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.40.0.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.40.0.bb
index ff1fb87..211bc32 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0_2.40.0.bb
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.40.0.bb
@@ -12,7 +12,7 @@ SRC_URI = "${GNOME_MIRROR}/glib/${SHRT_VER}/glib-${PV}.tar.xz \
            file://run-ptest \
            file://ptest-paths.patch \
            file://uclibc.patch \
-           file://0001-configure.ac-Do-not-use-readlink-when-cross-compilin.patch \
+           file://allow-run-media-sdX-drive-mount-if-username-root.patch \
           "
 
 SRC_URI_append_class-native = " file://glib-gettextize-dir.patch"
-- 
1.7.9.5


