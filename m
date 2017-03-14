Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C3EAE00839; Mon, 13 Mar 2017 19:20:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6A14E00839
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 19:20:08 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Mar 2017 19:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,162,1486454400"; d="scan'208";a="75056761"
Received: from nuritamo-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.160.31])
	by orsmga005.jf.intel.com with ESMTP; 13 Mar 2017 19:20:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Mar 2017 15:19:58 +1300
Message-Id: <20170314021959.12676-2-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170314021959.12676-1-paul.eggleton@linux.intel.com>
References: <20170314021959.12676-1-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/3] update_layer.py: use DISTRO_NAME as primary distro short description
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
X-List-Received-Date: Tue, 14 Mar 2017 02:20:11 -0000

When reading conf/distro/*.conf to create distro records, attempt to
parse the config file and use DISTRO_NAME (if set) to populate the
description field for the record. If that's not set then fall back to
the less commonly used meta-comment that we supported previously.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update_layer.py | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 705227b..9fe96fb 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -133,7 +133,7 @@ def update_machine_conf_file(path, machine):
                 break
     machine.description = desc
 
-def update_distro_conf_file(path, distro):
+def update_distro_conf_file(path, distro, d):
     logger.debug('Updating distro %s' % path)
     desc = ""
     with open(path, 'r') as f:
@@ -144,7 +144,18 @@ def update_distro_conf_file(path, distro):
                 desc = line[14:].strip()
                 desc = re.sub(r'Distribution configuration for( running)*( an)*( the)*', '', desc)
                 break
-    distro.description = desc
+
+    distro_name = ''
+    try:
+        d = utils.parse_conf(path, d)
+        distro_name = d.getVar('DISTRO_NAME', True)
+    except Exception as e:
+        logger.warn('Error parsing distro configuration file %s: %s' % (path, str(e)))
+
+    if distro_name:
+        distro.description = distro_name
+    else:
+        distro.description = desc
 
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
@@ -531,7 +542,7 @@ def main():
                                 distro = Distro()
                                 distro.layerbranch = layerbranch
                                 distro.name = filename
-                                update_distro_conf_file(os.path.join(repodir, path), distro)
+                                update_distro_conf_file(os.path.join(repodir, path), distro, config_data_copy)
                                 distro.save()
                             elif typename == 'bbclass':
                                 bbclass = BBClass()
@@ -568,7 +579,7 @@ def main():
                                 results = layerdistros.filter(name=filename)
                                 if results:
                                     distro = results[0]
-                                    update_distro_conf_file(os.path.join(repodir, path), distro)
+                                    update_distro_conf_file(os.path.join(repodir, path), distro, config_data_copy)
                                     distro.save()
 
                             deps = RecipeFileDependency.objects.filter(layerbranch=layerbranch).filter(path=path)
@@ -642,7 +653,7 @@ def main():
                                 distro = Distro()
                                 distro.layerbranch = layerbranch
                                 distro.name = filename
-                                update_distro_conf_file(fullpath, distro)
+                                update_distro_conf_file(fullpath, distro, config_data_copy)
                                 distro.save()
                             elif typename == 'bbclass':
                                 bbclass = BBClass()
-- 
2.9.3


