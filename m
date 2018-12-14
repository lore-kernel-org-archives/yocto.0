Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A38D0E00BB5; Fri, 14 Dec 2018 10:19:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83B51E00B45
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Dec 2018 10:18:59 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id g67so6702114wmd.2
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Dec 2018 10:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=aytxhcSyFk4SyvYDHyr4EEw1jYBakaKqE4C+bi7qUxc=;
	b=d9nDeIrGMaqPxM74t38N1ZDdXCPXNYVkFvcJR6JZWcLZ/PZxFj/tN+rE8p1q3zOYt1
	nvdRFpBTSQRIWBblACsdS3tNcj5VzkLUpZiei4rXK2SqnbU+o7m1eVKOzbe9UbFu4GOE
	DkkkN3bGITaBQMu7cnlO1I9bx++EKwEqkCDRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=aytxhcSyFk4SyvYDHyr4EEw1jYBakaKqE4C+bi7qUxc=;
	b=kNREtS4jNnrtL2KyTwrLfeP/Y4DvMCyC5f+Hfikg2Xf/G5U0srLpMFA2zsq912jl7S
	3jkFWHeuqiuI8VRUEuPhqZNmUYDFNDzMrmVrIo0MTDvM0nbLJEqUYr+1BslBodr5AGty
	91rAyE3ByS01wBIie3iOwgSQ1AOMcE6y/j3PWogsy/0FtEaODUVdudkXWhUFUBCr39cp
	/2WDBFMW4Xa82wUh+cWAsK+8tZF81Hu8udw/PNevfvWcbXaYBxY1zkGNWrecm+HEkTx7
	vHQRHHOmEuXz2SdV/2S4R2NqGiTievTsJ24o7504neeI8U2zdncA+K1mNtesQ6uXJY7o
	dUdw==
X-Gm-Message-State: AA+aEWbaDGHOmrAeII7mkNK/pJQ5GOFR/7ptFe3V7P8p9Mq1e7U3sACB
	5tQkDiEpvUncRLEywuie3GXyv+ZiYyRieg==
X-Google-Smtp-Source: AFSGD/WkTN5zimzmTXa/CNSTuVb06Oujaw5FNMBOeQdFW2bQSR3eLu898NfUO2NykU4LA7XBl4kvRg==
X-Received: by 2002:a1c:cec1:: with SMTP id e184mr4232649wmg.75.1544811538179; 
	Fri, 14 Dec 2018 10:18:58 -0800 (PST)
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	p14sm4622310wrt.37.2018.12.14.10.18.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Dec 2018 10:18:57 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Date: Fri, 14 Dec 2018 18:18:56 +0000
Message-Id: <20181214181856.9412-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [PATCH][auh] upgradehelper: Replace do_checkpkg usage with oe.recipeutils function call
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
X-List-Received-Date: Fri, 14 Dec 2018 18:19:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The code in distrodata.bbclass related to the do_checkpkg task is rather
dated, has holes in it (ignoring some recipes) and has horrible locking
and csv related issues.

We should use modern APIs such as tinfoil to make the calls we need directly
against bitbake, cutting out the middleman and clarifing the code.

This change uses a lib/oe/recipeutils function call to remove the need
to use checkpkg at all.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 upgradehelper.py | 105 ++++++++++++++++++-----------------------------
 1 file changed, 39 insertions(+), 66 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 8fb27d3..bdd6d4e 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -59,6 +59,22 @@ from statistics import Statistics
 from steps import upgrade_steps
 from testimage import TestImage
 
+if not os.getenv('BUILDDIR', False):
+    E(" You must source oe-init-build-env before running this script!\n")
+    E(" It is recommended to create a fresh build directory with it:\n")
+    E(" $ . oe-init-build-env build-auh\n")
+    exit(1)
+
+import shutil
+# Use the location of devtool to find scriptpath and hence bb/oe libs
+scripts_path = os.path.abspath(os.path.dirname(shutil.which("devtool")))
+sys.path = sys.path + [scripts_path + '/lib']
+import scriptpath
+scriptpath.add_bitbake_lib_path()
+scriptpath.add_oe_lib_path()
+
+import oe.recipeutils
+
 help_text = """Usage examples:
 * To upgrade xmodmap recipe to the latest available version:
     $ upgrade-helper.py xmodmap
@@ -599,59 +615,6 @@ class UniverseUpdater(Updater):
             I(" Removing tmp directory ...")
             shutil.rmtree(self.base_env['TMPDIR'])
 
-    def _check_upstream_versions(self):
-        I(" Fetching upstream version(s) ...")
-
-        if self.recipes:
-            recipe = " ".join(self.recipes)
-        else:
-            recipe = 'universe'
-
-        try:
-            self.bb.checkpkg(recipe)
-        except Error as e:
-            for line in e.stdout.split('\n'):
-                if line.find("ERROR: Task do_checkpkg does not exist") != -1:
-                    C(" \"distrodata.bbclass\" not inherited. Consider adding "
-                      "the following to your local.conf:\n\n"
-                      "INHERIT =+ \"distrodata\"\n")
-                    exit(1)
-
-    def _parse_checkpkg_file(self, file_path):
-        import csv
-
-        pkgs_list = []
-
-        with open(file_path, "r") as f:
-            reader = csv.reader(f, delimiter='\t')
-            for row in reader:
-                if reader.line_num == 1: # skip header line
-                    continue
-
-                pn = row[0]
-                cur_ver = row[1]
-                if self.args.to_version:
-                    next_ver = self.args.to_version
-                else:
-                    next_ver = row[2]
-                status = row[11]
-                revision = row[12]
-                maintainer = row[14]
-                no_upgrade_reason = row[15]
-
-                if status == 'UPDATE' and not no_upgrade_reason:
-                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
-                else:
-                    if no_upgrade_reason:
-                        I(" Skip package %s (status = %s, current version = %s," \
-                            " next version = %s, no upgrade reason = %s)" %
-                            (pn, status, cur_ver, next_ver, no_upgrade_reason))
-                    else:
-                        I(" Skip package %s (status = %s, current version = %s," \
-                            " next version = %s)" %
-                            (pn, status, cur_ver, next_ver))
-        return pkgs_list
-
     # checks if maintainer is in whitelist and that the recipe itself is not
     # blacklisted: python, gcc, etc. Also, check the history if the recipe
     # hasn't already been tried
@@ -688,16 +651,31 @@ class UniverseUpdater(Updater):
         return True
 
     def _get_packages_to_upgrade(self, packages=None):
-        self._check_upstream_versions()
-        last_checkpkg_file = os.path.realpath(self.base_env['TMPDIR'] + "/log/checkpkg.csv")
+
+        pkgs = oe.recipeutils.get_recipe_upgrade_status(self.recipes)
 
         pkgs_list = []
-        for pkg in self._parse_checkpkg_file(last_checkpkg_file):
-            # Always do the upgrade if recipes are specified
-            if self.recipes and pkg[0] in self.recipes:
-                pkgs_list.append(pkg)
-            elif self._pkg_upgradable(pkg[0], pkg[2], pkg[3]):
-                pkgs_list.append(pkg)
+        for pkg in pkgs:
+            pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason = pkg
+
+            if self.args.to_version:
+                 next_ver = self.args.to_version
+
+            if status == 'UPDATE' and not no_upgrade_reason:
+                # Always do the upgrade if recipes are specified
+                if self.recipes and pn in self.recipes:
+                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
+                elif self._pkg_upgradable(pn, next_ver, maintainer):
+                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
+            else:
+                if no_upgrade_reason:
+                    I(" Skip package %s (status = %s, current version = %s," \
+                        " next version = %s, no upgrade reason = %s)" %
+                         (pn, status, cur_ver, next_ver, no_upgrade_reason))
+                else:
+                    I(" Skip package %s (status = %s, current version = %s," \
+                        " next version = %s)" %
+                        (pn, status, cur_ver, next_ver))
 
         return pkgs_list
 
@@ -716,11 +694,6 @@ if __name__ == "__main__":
     global settings
     global maintainer_override
 
-    if not os.getenv('BUILDDIR', False):
-        E(" You must source oe-init-build-env before running this script!\n")
-        E(" It is recommended to create a fresh build directory with it:\n")
-        E(" $ . oe-init-build-env build-auh\n")
-        exit(1)
 
     devnull = open(os.devnull, 'wb')
     if subprocess.call(["git", "config", "user.name"], stdout=devnull,stderr=devnull) or \
-- 
2.17.1


