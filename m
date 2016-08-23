Return-Path: <dmitry.rozhkov@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90F65E00D1E; Tue, 23 Aug 2016 00:37:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C32E00D0A
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 00:37:48 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 23 Aug 2016 00:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,564,1464678000"; d="scan'208";a="752346828"
Received: from drozhkov-desk.fi.intel.com ([10.237.72.185])
	by FMSMGA003.fm.intel.com with ESMTP; 23 Aug 2016 00:37:37 -0700
From: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 10:35:49 +0300
Message-Id: <1471937749-25001-1-git-send-email-dmitry.rozhkov@linux.intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [meta-swupd][PATCH] swupd-client_git.bb: Make pinned pubkey configurable
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
X-List-Received-Date: Tue, 23 Aug 2016 07:37:52 -0000

SWUPD server may move to a new location where a different pubkey
needs to be used and the hardcoded one won't work.

This makes pinned pubkey configurable.

Signed-off-by: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
---
 .../Make-pinned-pubkey-configurable.patch          | 118 +++++++++++++++++++++
 recipes-core/swupd-client/swupd-client_git.bb      |   3 +
 2 files changed, 121 insertions(+)
 create mode 100644 recipes-core/swupd-client/swupd-client/Make-pinned-pubkey-configurable.patch

diff --git a/recipes-core/swupd-client/swupd-client/Make-pinned-pubkey-configurable.patch b/recipes-core/swupd-client/swupd-client/Make-pinned-pubkey-configurable.patch
new file mode 100644
index 0000000..4326a58
--- /dev/null
+++ b/recipes-core/swupd-client/swupd-client/Make-pinned-pubkey-configurable.patch
@@ -0,0 +1,118 @@
+From 6792cfef0ebfbe83e41bc81df6bc675604d7c943 Mon Sep 17 00:00:00 2001
+From: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
+Date: Tue, 16 Aug 2016 10:55:15 +0300
+Subject: [PATCH] Make pinned pubkey configurable
+
+The server may move to a new location where a different pubkey
+needs to be used and the hardcoded one won't work.
+
+This patch makes pinned pubkey configurable.
+
+Upstream-Status: Submitted [https://github.com/clearlinux/swupd-client/pull/110]
+
+Signed-off-by: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
+---
+ configure.ac    |  2 ++
+ include/swupd.h |  1 +
+ src/curl.c      |  2 +-
+ src/globals.c   | 14 ++++++++++++++
+ 4 files changed, 18 insertions(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index 83007aa..883553a 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -114,6 +114,7 @@ AH_TEMPLATE([LOCK_DIR],[Directory for lock file])
+ AH_TEMPLATE([BUNDLES_DIR],[Directory to use for bundles])
+ AH_TEMPLATE([UPDATE_CA_CERTS_PATH],[Location of CA certificates])
+ AH_TEMPLATE([MOTD_FILE],[motd file path])
++AH_TEMPLATE([PINNED_PUBKEY_PATH],[Path to pinned public key])
+ 
+ if test "$enable_linux_rootfs_build" = "yes"; then
+ 	AC_DEFINE([SWUPD_LINUX_ROOTFS],1)
+@@ -124,6 +125,7 @@ if test "$enable_linux_rootfs_build" = "yes"; then
+ 	AC_DEFINE([BUNDLES_DIR],["/usr/share/clear/bundles"])
+ 	AC_DEFINE_UNQUOTED([UPDATE_CA_CERTS_PATH],["$certs_path"])
+ 	AC_DEFINE([MOTD_FILE],["/usr/lib/motd.d/001-new-release"])
++	AC_DEFINE_UNQUOTED([PINNED_PUBKEY_PATH],["${certs_path}/425b0f6b.key"])
+ else
+ 	AC_MSG_ERROR([Unknown build variant])
+ fi
+diff --git a/include/swupd.h b/include/swupd.h
+index 5c722d3..3658dc8 100644
+--- a/include/swupd.h
++++ b/include/swupd.h
+@@ -132,6 +132,7 @@ extern void *tm_dlhandle;
+ extern char *bundle_to_add;
+ extern struct timeval start_time;
+ extern char *state_dir;
++extern char *pinned_pubkey_path;
+ 
+ extern char *version_url;
+ extern char *content_url;
+diff --git a/src/curl.c b/src/curl.c
+index 6b6099f..b14193b 100644
+--- a/src/curl.c
++++ b/src/curl.c
+@@ -447,7 +447,7 @@ static CURLcode swupd_curl_set_security_opts(CURL *curl)
+ 		goto exit;
+ 	}
+ 
+-	curl_ret = curl_easy_setopt(curl, CURLOPT_PINNEDPUBLICKEY, "/usr/share/clear/update-ca/425b0f6b.key");
++	curl_ret = curl_easy_setopt(curl, CURLOPT_PINNEDPUBLICKEY, pinned_pubkey_path);
+ 	if (curl_ret != CURLE_OK) {
+ 		goto exit;
+ 	}
+diff --git a/src/globals.c b/src/globals.c
+index f2f1200..d0858df 100644
+--- a/src/globals.c
++++ b/src/globals.c
+@@ -51,6 +51,7 @@ char *mounted_dirs = NULL;
+ char *bundle_to_add = NULL;
+ struct timeval start_time;
+ char *state_dir = NULL;
++char *pinned_pubkey_path = NULL;
+ 
+ /* NOTE: Today the content and version server urls are the same in
+  * all cases.  It is highly likely these will eventually differ, eg:
+@@ -68,6 +69,7 @@ long update_server_port = -1;
+ static const char *default_version_url_path = "/usr/share/defaults/swupd/versionurl";
+ static const char *default_content_url_path = "/usr/share/defaults/swupd/contenturl";
+ static const char *default_format_path = "/usr/share/defaults/swupd/format";
++static const char *default_pinnedpubkey_path = "/usr/share/defaults/swupd/pinnedpubkey";
+ 
+ static int set_default_value(char **global, const char *path)
+ {
+@@ -194,6 +196,16 @@ bool set_state_dir(char *path)
+ 	return true;
+ }
+ 
++void set_pinned_pubkey_path()
++{
++	int ret;
++
++	ret = set_default_value(&pinned_pubkey_path, default_pinnedpubkey_path);
++	if (ret < 0) {
++		string_or_die(&pinned_pubkey_path, "%s", PINNED_PUBKEY_PATH);
++	}
++}
++
+ bool set_format_string(char *userinput)
+ {
+ 	int ret;
+@@ -322,6 +334,7 @@ bool init_globals(void)
+ 	(void)set_format_string(NULL);
+ 	set_version_url(NULL);
+ 	set_content_url(NULL);
++	set_pinned_pubkey_path();
+ 
+ 	/* must set this global after version_url and content_url */
+ 	set_local_download();
+@@ -337,6 +350,7 @@ void free_globals(void)
+ 	free(format_string);
+ 	free(mounted_dirs);
+ 	free(state_dir);
++	free(pinned_pubkey_path);
+ 	if (bundle_to_add != NULL) {
+ 		free(bundle_to_add);
+ 	}
diff --git a/recipes-core/swupd-client/swupd-client_git.bb b/recipes-core/swupd-client/swupd-client_git.bb
index 1815db0..0d16171 100644
--- a/recipes-core/swupd-client/swupd-client_git.bb
+++ b/recipes-core/swupd-client/swupd-client_git.bb
@@ -10,6 +10,7 @@ SRC_URI = "\
     git://github.com/clearlinux/swupd-client.git;protocol=https \
     file://Change-systemctl-path-to-OE-systemctl-path.patch \
     file://0001-Add-configure-option-to-re-enable-updating-of-config.patch \
+    file://Make-pinned-pubkey-configurable.patch \
 "
 SRCREV = "f4000c5b22be47ec1af2f8748fd71a36148b5dc4"
 
@@ -35,6 +36,7 @@ PACKAGECONFIG[stateless] = ",--disable-stateless"
 SWUPD_VERSION_URL ??= "example.com"
 SWUPD_CONTENT_URL ??= "example.com"
 SWUPD_FORMAT ??= "3"
+SWUPD_PINNED_PUBKEY ??= ""
 do_install_append () {
     # TODO: This should be a less os-specific directory and not hard-code datadir
     install -d ${D}$/usr/share/clear/bundles
@@ -44,6 +46,7 @@ do_install_append () {
     echo "${SWUPD_VERSION_URL}" >> ${D}/usr/share/defaults/swupd/versionurl
     echo "${SWUPD_CONTENT_URL}" >> ${D}/usr/share/defaults/swupd/contenturl
     echo "${SWUPD_FORMAT}" >> ${D}/usr/share/defaults/swupd/format
+    test -n "${SWUPD_PINNED_PUBKEY}" && echo "${SWUPD_PINNED_PUBKEY}" > ${D}/usr/share/defaults/swupd/pinnedpubkey
 }
 
 FILES_${PN} += "\
-- 
2.5.5


