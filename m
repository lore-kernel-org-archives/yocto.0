Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 752D8E00CB7; Fri, 14 Dec 2018 08:07:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DF9CE00C4E
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Dec 2018 08:07:50 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id m1so6190894wml.2
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Dec 2018 08:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=5rqB+Dbno8FOvaCti34YNfapKWKRmxicD3/wuTaawYk=;
	b=PdBOSgcpzAf8JTOuFUFF4TpJhvpRJQdzGxMZY6DbaXrC4B7Th3Eo98wkvgXOCkiTdT
	yXAQVMydP2oBbrYwa0xsa7QH6pxyfiUuuz/0+JUNp07LJ093ZEVvo2mjemxDRY+acgLB
	upOSpmRppzVy1KG4w9rgX531C2kEw5ZymPRws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=5rqB+Dbno8FOvaCti34YNfapKWKRmxicD3/wuTaawYk=;
	b=XisWt0t0FE33ox4jLi4qlcrg8Ctdbh9EP81yFZ9NkNT/xJAWisOHlwcU5DcBYLLhOA
	Rs441104t193jAT0Fm49NL4CHGn6VBk+mRsXKU38sTlnoC5ZkEvl4+VEQiYG8cwtx/2w
	9sRIoEykbdAWqkUQC+pwmwhp+FEw+zSD0cRGdJ2M4OdyVYU/6yYEXQJhEkn2/18m076w
	kP0XsnLTzySI1eti19F4pePEtjFfgc0dmVABzsJq+xRrL4utmigkJdzmxQFJgbHsuq2o
	SDydYOPzlrG2seX6c7D7G+2WA6o7L6IwrvHXXoYfydHcVItdd2nrAaG8xy8ZuQtUQub3
	pBfg==
X-Gm-Message-State: AA+aEWauvKi0KMJOaduL+Iym9lZL1Z/chaVL8TDljeLw4BknRRG/m2jM
	64PFHEXdhijfLTlDEnjpxO72GCFASZv0TQ==
X-Google-Smtp-Source: AFSGD/XO6sVJEskMqrLmr7bTHsKXd3WIlbSc1dzQq0C1nN4W71jtBaLR13K2JmP78EvC6vs0x5CU3w==
X-Received: by 2002:a1c:83c8:: with SMTP id f191mr3745134wmd.134.1544803669709;
	Fri, 14 Dec 2018 08:07:49 -0800 (PST)
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	y185sm3939576wmg.34.2018.12.14.08.07.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Dec 2018 08:07:48 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Date: Fri, 14 Dec 2018 16:07:47 +0000
Message-Id: <20181214160747.4732-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [PATCH][auh] upgradehelper: Replace do_checkpkg usage with direct tinfoil calls
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
X-List-Received-Date: Fri, 14 Dec 2018 16:07:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The code in distrodata.bbclass related to the do_checkpkg task is rather
dated, has holes in it (ignoring some recipes) and has horrible locking
and csv related issues.

We should use modern APIs such as tinfoil to make the calls we need directly
against bitbake, cutting out the middleman and clarifing the code.

This change imports the bits of distrodata.bbclass this code needs in their
current form. Its likely it can be further improved from here but this is a
good start and appears to function as before, with slightly wider recipe
coverage as some things skipped by distrodata are not skipped here (images,
pieces of gcc, nativesdk only recipes).

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 upgradehelper.py | 148 ++++++++++++++++++++++++++---------------------
 1 file changed, 82 insertions(+), 66 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 8fb27d3..7ad4917 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -59,6 +59,25 @@ from statistics import Statistics
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
+import bb.tinfoil
+import oe.recipeutils
+from bb.utils import vercmp_string
+
+
 help_text = """Usage examples:
 * To upgrade xmodmap recipe to the latest available version:
     $ upgrade-helper.py xmodmap
@@ -599,59 +618,6 @@ class UniverseUpdater(Updater):
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
@@ -688,16 +654,71 @@ class UniverseUpdater(Updater):
         return True
 
     def _get_packages_to_upgrade(self, packages=None):
-        self._check_upstream_versions()
-        last_checkpkg_file = os.path.realpath(self.base_env['TMPDIR'] + "/log/checkpkg.csv")
 
         pkgs_list = []
-        for pkg in self._parse_checkpkg_file(last_checkpkg_file):
-            # Always do the upgrade if recipes are specified
-            if self.recipes and pkg[0] in self.recipes:
-                pkgs_list.append(pkg)
-            elif self._pkg_upgradable(pkg[0], pkg[2], pkg[3]):
-                pkgs_list.append(pkg)
+        with bb.tinfoil.Tinfoil() as tinfoil:
+            tinfoil.prepare(config_only=False)
+            recipes = self.recipes
+            if not recipes:
+                recipes = tinfoil.all_recipe_files(variants=False)
+
+            for fn in recipes:
+                try:
+                    if fn.startswith("/"):
+                        data = tinfoil.parse_recipe_file(fn)
+                    else:
+                        data = tinfoil.parse_recipe(fn)
+                except bb.providers.NoProvider:
+                    I(" No provider for %s" % fn)
+                    continue
+
+                unreliable = data.getVar('UPSTREAM_CHECK_UNRELIABLE')
+                if unreliable == "1":
+                    I(" Skip package %s as upstream check unreliable" % pn)
+                    continue
+
+                uv = oe.recipeutils.get_recipe_upstream_version(data)
+
+                pn = data.getVar('PN')
+                cur_ver = uv['current_version']
+
+
+                upstream_version_unknown = data.getVar('UPSTREAM_VERSION_UNKNOWN')
+                if not uv['version']:
+                    status = "UNKNOWN" if upstream_version_unknown else "UNKNOWN_BROKEN"
+                else:
+                    cmp = vercmp_string(uv['current_version'], uv['version'])
+                    if cmp == -1:
+                        status = "UPDATE" if not upstream_version_unknown else "KNOWN_BROKEN"
+                    elif cmp == 0:
+                        status = "MATCH" if not upstream_version_unknown else "KNOWN_BROKEN"
+                    else:
+                        status = "UNKNOWN" if upstream_version_unknown else "UNKNOWN_BROKEN"
+
+                if self.args.to_version:
+                    next_ver = self.args.to_version
+                else:
+                    next_ver = uv['version'] if uv['version'] else "N/A"
+                revision = uv['revision'] if uv['revision'] else "N/A"
+                maintainer = data.getVar('RECIPE_MAINTAINER')
+                no_upgrade_reason = data.getVar('RECIPE_NO_UPDATE_REASON')
+
+                if status == 'UPDATE' and not no_upgrade_reason:
+                    # Always do the upgrade if recipes are specified
+                    if self.recipes and pn in self.recipes:
+                        pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
+
+                    elif self._pkg_upgradable(pn, next_ver, maintainer):
+                        pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
+                else:
+                    if no_upgrade_reason:
+                        I(" Skip package %s (status = %s, current version = %s," \
+                            " next version = %s, no upgrade reason = %s)" %
+                            (pn, status, cur_ver, next_ver, no_upgrade_reason))
+                    else:
+                        I(" Skip package %s (status = %s, current version = %s," \
+                            " next version = %s)" %
+                            (pn, status, cur_ver, next_ver))
 
         return pkgs_list
 
@@ -716,11 +737,6 @@ if __name__ == "__main__":
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


