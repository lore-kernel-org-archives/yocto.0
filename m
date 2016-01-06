Return-Path: <haris.okanovic@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56EFCE00CDC; Wed,  6 Jan 2016 15:07:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B37E00863
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 15:07:30 -0800 (PST)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u06N7LGJ018029; Wed, 6 Jan 2016 17:07:21 -0600
Received: from harisdt.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016010617072092-1762457 ;
	Wed, 6 Jan 2016 17:07:20 -0600 
From: Haris Okanovic <haris.okanovic@ni.com>
To: yocto@yoctoproject.org
Date: Wed, 6 Jan 2016 17:07:01 -0600
Message-Id: <1452121621-24213-1-git-send-email-haris.okanovic@ni.com>
X-Mailer: git-send-email 2.6.2
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 01/06/2016 05:07:20 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 01/06/2016 05:07:20 PM,
	Serialize complete at 01/06/2016 05:07:20 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-01-06_14:, , signatures=0
Cc: Haris Okanovic <haris.okanovic@ni.com>
Subject: [PATCH] libopkg: Add disable_intercepts option to opkg.conf
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
X-List-Received-Date: Wed, 06 Jan 2016 23:07:32 -0000

When set, this option disables interception and deferral of certain
utilities (E.g. depmod, ldconfig) when called from maintainer scripts
(E.g. postinst). Disabled by default to maintain old behavior.

Append "option disable_intercepts 1" to opkg.conf to set it.

Testing:
 * Installed package containing postinst script and verified
   intercept prep/finalize does not run via DEBUG output.
 * Ran `make check` with option set in the test suite's opkg.conf,
   no additional failures.

Yocto bug: https://bugzilla.yoctoproject.org/show_bug.cgi?id=8837

Signed-off-by: Haris Okanovic <haris.okanovic@ni.com>
Cc: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Cc: Paul Barker <paul@paulbarker.me.uk>
---
 libopkg/opkg_cmd.c  | 22 ++++++++++++++--------
 libopkg/opkg_conf.c |  1 +
 libopkg/opkg_conf.h |  1 +
 3 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/libopkg/opkg_cmd.c b/libopkg/opkg_cmd.c
index 050e6ec..ff3dcc0 100644
--- a/libopkg/opkg_cmd.c
+++ b/libopkg/opkg_cmd.c
@@ -328,7 +328,7 @@ static int opkg_configure_packages(char *pkg_name)
     pkg_vec_t *all, *ordered, *visited;
     unsigned int i;
     pkg_t *pkg;
-    opkg_intercept_t ic;
+    opkg_intercept_t ic = NULL;
     int r, err = 0;
 
     if (opkg_config->offline_root && !opkg_config->force_postinstall) {
@@ -352,10 +352,13 @@ static int opkg_configure_packages(char *pkg_name)
         opkg_recurse_pkgs_in_order(pkg, all, visited, ordered);
     }
 
-    ic = opkg_prep_intercepts();
-    if (ic == NULL) {
-        err = -1;
-        goto error;
+    if (!opkg_config->disable_intercepts) {
+        ic = opkg_prep_intercepts();
+        if (ic == NULL) {
+            err = -1;
+            goto error;
+        }
+        opkg_msg(DEBUG, "Intercepts enabled; statedir=\"%s\"\n", ic->statedir);
     }
 
     for (i = 0; i < ordered->len; i++) {
@@ -379,9 +382,12 @@ static int opkg_configure_packages(char *pkg_name)
         }
     }
 
-    r = opkg_finalize_intercepts(ic);
-    if (r != 0)
-        err = -1;
+    if (!opkg_config->disable_intercepts) {
+        opkg_msg(DEBUG, "Finalizing intercepts\n");
+        r = opkg_finalize_intercepts(ic);
+        if (r != 0)
+            err = -1;
+    }
 
  error:
     pkg_vec_free(all);
diff --git a/libopkg/opkg_conf.c b/libopkg/opkg_conf.c
index f52a4db..2d2f4f7 100644
--- a/libopkg/opkg_conf.c
+++ b/libopkg/opkg_conf.c
@@ -85,6 +85,7 @@ static opkg_option_t options[] = {
     {"overwrite_no_owner", OPKG_OPT_TYPE_BOOL, &_conf.overwrite_no_owner},
     {"combine", OPKG_OPT_TYPE_BOOL, &_conf.combine},
     {"cache_local_files", OPKG_OPT_TYPE_BOOL, &_conf.cache_local_files},
+    {"disable_intercepts", OPKG_OPT_TYPE_BOOL, &_conf.disable_intercepts},
 #if defined(HAVE_OPENSSL)
     {"signature_ca_file", OPKG_OPT_TYPE_STRING, &_conf.signature_ca_file},
     {"signature_ca_path", OPKG_OPT_TYPE_STRING, &_conf.signature_ca_path},
diff --git a/libopkg/opkg_conf.h b/libopkg/opkg_conf.h
index 7460ca2..5421044 100644
--- a/libopkg/opkg_conf.h
+++ b/libopkg/opkg_conf.h
@@ -107,6 +107,7 @@ typedef struct opkg_conf {
     int volatile_cache;
     int combine;
     int cache_local_files;
+    int disable_intercepts;
     int host_cache_dir;
 
     /* ssl options: used only when opkg is configured with '--enable-curl',
-- 
2.6.2


