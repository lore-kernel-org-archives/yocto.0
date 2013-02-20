Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47DEEE012F3
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 04:07:35 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Feb 2013 04:07:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,701,1355126400"; d="scan'208";a="265029216"
Received: from sorvi.fi.intel.com ([10.237.72.58])
	by orsmga001.jf.intel.com with ESMTP; 20 Feb 2013 04:07:32 -0800
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Feb 2013 14:07:31 +0200
Message-Id: <1361362051-13103-1-git-send-email-jukka.rissanen@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH] meta: Search also FILESEXTRAPATHS for systemd service files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Feb 2013 12:07:35 -0000


Signed-off-by: Jukka Rissanen <jukka.rissanen@linux.intel.com>
---
 meta/classes/systemd.bbclass | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/meta/classes/systemd.bbclass b/meta/classes/systemd.bbclass
index 564cd72..b807d4e 100644
--- a/meta/classes/systemd.bbclass
+++ b/meta/classes/systemd.bbclass
@@ -1,3 +1,5 @@
+inherit utils
+
 # The list of packages that should have systemd packaging scripts added.  For
 # each entry, optionally have a SYSTEMD_SERVICE_[package] that lists the service
 # files in this package.  If this variable isn't set, [package].service is used.
@@ -137,6 +139,7 @@ python systemd_populate_packages() {
             # single service gets also the /dev/null dummies
             keys = 'Also Conflicts'
         # scan for all in SYSTEMD_SERVICE[]
+        extrapaths = base_set_filespath([],d).split(":")
         for pkg_systemd in systemd_packages.split():
             for service in get_package_var(d, 'SYSTEMD_SERVICE', pkg_systemd).split():
                 path_found = ''
@@ -144,6 +147,11 @@ python systemd_populate_packages() {
                     if os.path.exists(oe.path.join(d.getVar("D", True), path, service)):
                         path_found = path
                         break
+                if path_found == '':
+                    for path in extrapaths:
+                        if os.path.exists(oe.path.join(path, service)):
+                            path_found = path
+                            break
                 if path_found != '':
                     systemd_add_files_and_parse(pkg_systemd, path_found, service, keys)
                 else:
-- 
1.7.11.4


