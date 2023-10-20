Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E719CC001DF
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 14:02:08 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.55269.1697810526156455333
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 07:02:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=ZMeWniHu;
 spf=pass (domain: smile.fr, ip: 209.85.167.44, mailfrom: david.pierret@smile.fr)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-507962561adso1191613e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 07:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1697810524; x=1698415324; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vSLANkCtWX5nd6s3dp8mA0HGqiCOka5LGOFCdQXuzMY=;
        b=ZMeWniHuMV3L8f6ZDRJb5hTIQbSOk2R3lb1EsnhuQdsi85NEe9z2qc2xzYZNND/7oV
         XNjNVgShf+RfufRgfzTKFiry1Yz0deQYVup1vTgIF5z8Nn4Qv6+Lk3BP4gBtAy8LfVcB
         RYTQFIuV1GPS1dc3uUp+0Iet8V143ciYwh5X1NMN8LEirgXQGPeZjlm9Ot24qVZPIUBV
         fLR98tbcBWj9G3puHrFzxnfvvfUIHJPI29alWwna2t3X6DXRlbOD0OjLt6RsbI3EXgcP
         gyu4lF/Z0lBP3FewxUefAZ5ATlpjTi4ljo94MtErs902uR8M8/rq33x8Oc9Ns0xqgQ7M
         er+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697810524; x=1698415324;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vSLANkCtWX5nd6s3dp8mA0HGqiCOka5LGOFCdQXuzMY=;
        b=VsghMHil0X8+wEcph+m7z5ZGDKifKmLSYEVOq20Akab5kga/ndptRG+1aUzH7TQbre
         BjQZKRZvSpueVoZHU5EZd8cLaDQYOt2w5a5TtvxQsd53VLy/55FL3XNPZSkB2hbEbbJq
         gOPKDcLwANZn6/98UROGB9hYL8kaBGx1OfisfCNiXqt524HANRnrsako6Jo4t1XUVGQg
         hgTbounoHx+5rGJWa43dJkggU6cEdBIho4lddp1NtejgPRwWhPd0Mpv9UextVhUIAw9b
         PReDSajnNCiSxHumxcedgLRfdTa10lTNxececkEXP4w/z86VIruxymktBIhd0wBDRq3u
         sEIQ==
X-Gm-Message-State: AOJu0YzfRGmjwJHCyIUn7jiBT1UkivYoO5392uT6E7xTQa4tOVdpSN6V
	doT4s3iv0Xs0JqRZCorTda0TCqAWrjFipPhRuwI=
X-Google-Smtp-Source: AGHT+IEgUQbIGzgIZOqCWqDnQtMWHoi0Rab0qWIXTM7qa4Qun79MRq0luN79OAeGWCUHa4dALmXeMg==
X-Received: by 2002:ac2:47e7:0:b0:504:3c1f:cbd1 with SMTP id b7-20020ac247e7000000b005043c1fcbd1mr1453674lfp.12.1697810523553;
        Fri, 20 Oct 2023 07:02:03 -0700 (PDT)
Received: from P-TOU-PARSEC.tailace47.ts.net ([2a01:cb19:9313:2700:7490:fa4a:1f26:167f])
        by smtp.gmail.com with ESMTPSA id r5-20020a056000014500b0032db4825495sm1750091wrx.22.2023.10.20.07.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 07:02:03 -0700 (PDT)
From: David Pierret <david.pierret@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>,
	David Pierret <david.pierret@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [auh][PATCH v2] upgrade-helper.py: Add layer command line option
Date: Fri, 20 Oct 2023 16:02:18 +0200
Message-Id: <20231020140218.10688-1-david.pierret@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 14:02:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61435

- Layer options can be defined as command line arguments
- multiple layers can be defined in a single command

each layer is analyzed 1 by 1 to check if upgrades are available.

Signed-off-by: David Pierret <david.pierret@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---
 upgrade-helper.py | 75 +++++++++++++++++++++++++++++------------------
 weeklyjob-oe.sh   | 55 ++++++++++++++++++++++++++++++++++
 2 files changed, 101 insertions(+), 29 deletions(-)
 create mode 100755 weeklyjob-oe.sh

diff --git a/upgrade-helper.py b/upgrade-helper.py
index 4f0b6b7..5093ff9 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -105,6 +105,12 @@ def parse_cmdline():
                         help="do not compile, just change the checksums, remove PR, and commit")
     parser.add_argument("-c", "--config-file", default=None,
                         help="Path to the configuration file. Default is $BUILDDIR/upgrade-helper/upgrade-helper.conf")
+    parser.add_argument("-l", "--layer-names", nargs='*', action="store", default='',
+                        help="layers to include in the upgrade research")
+    parser.add_argument("-L", "--layer-dir", action="store", default='',
+                        help="the layers root directory")
+    parser.add_argument("-m", "--layer-machines", nargs='*', action="store", default='',
+                        help="machine to build for the layers")
     return parser.parse_args()
 
 def parse_config_file(config_file):
@@ -440,8 +446,8 @@ class Updater(object):
         pkgs_ctx = {}
 
         I(" ########### The list of recipes to be upgraded #############")
-        for p, ov, nv, m, r in pkgs_to_upgrade:
-            I(" %s, %s, %s, %s, %s" % (p, ov, nv, m, r))
+        for l, p, ov, nv, m, r in pkgs_to_upgrade:
+            I(" %s, %s, %s, %s, %s, %s" % (l, p, ov, nv, m, r))
 
             pkgs_ctx[p] = {}
             pkgs_ctx[p]['PN'] = p
@@ -471,7 +477,7 @@ class Updater(object):
         succeeded_pkgs_ctx = []
         failed_pkgs_ctx = []
         attempted_pkgs = 0
-        for pn, _, _, _, _ in pkgs_to_upgrade:
+        for l, pn, _, _, _, _ in pkgs_to_upgrade:
             pkg_ctx = pkgs_ctx[pn]
             pkg_ctx['error'] = None
 
@@ -577,21 +583,24 @@ class UniverseUpdater(Updater):
         if len(args.recipe) == 1 and args.recipe[0] == "all":
             self.recipes = []
         else:
-            self.recipes = args.recipe
+            self.recipes = ('', args.recipe)
 
         # to filter recipes in upgrade
         if not self.recipes and self.opts['layer_mode'] == 'yes':
             # when layer mode is enabled and no recipes are specified
             # we need to figure out what recipes are provided by the
             # layer to try upgrade
-            self.recipes = self._get_recipes_by_layer()
+            for layer in self.opts['layer_name'].split(' '):
+                recipes_for_layer = self._get_recipes_by_layer(layer)
+                I("layer %s => Receipes %s", layer, recipes_for_layer)
+                self.recipes.append((layer, recipes_for_layer))
 
         if args.to_version:
             if len(self.recipes) != 1:
                 E(" -t is only supported when upgrade one recipe\n")
                 exit(1)
 
-    def _get_recipes_by_layer(self):
+    def _get_recipes_by_layer(self, layer=''):
         recipes = []
 
         recipe_regex = re.compile('^(?P<name>.*):$')
@@ -611,7 +620,7 @@ class UniverseUpdater(Updater):
             if not 'skipped' in line:
                 s = layer_regex.search(line)
                 if s:
-                    if s.group('name').strip() == self.opts['layer_name']:
+                    if s.group('name').strip() == layer:
                         recipes.append(name)
 
         return recipes
@@ -662,31 +671,31 @@ class UniverseUpdater(Updater):
         return True
 
     def _get_packages_to_upgrade(self, packages=None):
+        pkgs_list = []
+        for layer_name, layer_recipes in self.recipes:
+            pkgs = oe.recipeutils.get_recipe_upgrade_status(layer_recipes)
 
-        pkgs = oe.recipeutils.get_recipe_upgrade_status(self.recipes)
+            for pkg in pkgs:
+                pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason = pkg
 
-        pkgs_list = []
-        for pkg in pkgs:
-            pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason = pkg
-
-            if self.args.to_version:
-                 next_ver = self.args.to_version
-
-            if status == 'UPDATE' and not no_upgrade_reason:
-                # Always do the upgrade if recipes are specified
-                if self.recipes and pn in self.recipes:
-                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
-                elif self._pkg_upgradable(pn, next_ver, maintainer):
-                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
-            else:
-                if no_upgrade_reason:
-                    I(" Skip package %s (status = %s, current version = %s," \
-                        " next version = %s, no upgrade reason = %s)" %
-                         (pn, status, cur_ver, next_ver, no_upgrade_reason))
+                if self.args.to_version:
+                     next_ver = self.args.to_version
+
+                if status == 'UPDATE' and not no_upgrade_reason:
+                    # Always do the upgrade if recipes are specified
+                    if layer_recipes and pn in layer_recipes:
+                        pkgs_list.append((layer_name, pn, cur_ver, next_ver, maintainer, revision))
+                    elif self._pkg_upgradable(pn, next_ver, maintainer):
+                        pkgs_list.append((layer_name, pn, cur_ver, next_ver, maintainer, revision))
                 else:
-                    I(" Skip package %s (status = %s, current version = %s," \
-                        " next version = %s)" %
-                        (pn, status, cur_ver, next_ver))
+                    if no_upgrade_reason:
+                        I(" Skip package %s/%s (status = %s, current version = %s," \
+                            " next version = %s, no upgrade reason = %s)" %
+                             (layer_name, pn, status, cur_ver, next_ver, no_upgrade_reason))
+                    else:
+                        I(" Skip package %s/%s (status = %s, current version = %s," \
+                            " next version = %s)" %
+                            (layer_name, pn, status, cur_ver, next_ver))
 
         return pkgs_list
 
@@ -731,6 +740,14 @@ if __name__ == "__main__":
     log.basicConfig(format='%(levelname)s:%(message)s',
                     level=debug_levels[args.debug_level - 1])
     settings, maintainer_override = parse_config_file(args.config_file)
+    if args.layer_names != '' and args.layer_dir == '':
+        E("layer-dir is mandatory if layers are defined")
+        exit(1)
+    elif args.layer_names != '':
+        settings['layer_mode'] = 'yes'
+        settings['layer_dir'] = args.layer_dir
+        settings['layer_name'] = ' '.join(args.layer_names)
+        settings['layer_machines'] = ' '.join(args.layer_machines)
 
     updater = UniverseUpdater(args)
     updater.run()
diff --git a/weeklyjob-oe.sh b/weeklyjob-oe.sh
new file mode 100755
index 0000000..53dc850
--- /dev/null
+++ b/weeklyjob-oe.sh
@@ -0,0 +1,55 @@
+#!/bin/bash
+
+# Cronjob which can be run weekly to run the upgrade helper script.
+# Add the job in /etc/crontab like below.
+#
+# It will execute weekly at the same hour (8 AM).
+#
+# 00 8   * * 6   auh  /home/auh/bin/weeklyjob-oe.sh
+
+# Re-assign these to match your setup!
+auh_dir=~/auto-upgrade-helper
+poky_dir=~/poky
+openembedded_dir=~/meta-openembedded
+build_dir=~/build-tmp-auh-upgrades
+sstate_dir=~/sstate-cache
+
+meta_list="${openembedded_dir}/meta-*"
+machine_list="qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl"
+
+pushd $poky_dir
+# Base the upgrades on meta_openembedded master
+git fetch origin
+git checkout -B tmp-auh-upgrades origin/master
+popd
+
+pushd $openembedded_dir || exit 1
+# Base the upgrades on meta_openembedded master
+git fetch origin
+git checkout -B tmp-auh-upgrades origin/master
+
+# enter the build environment
+source $poky_dir/oe-init-build-env $build_dir
+
+# upgrade helper need to use ?= for MACHINE
+sed -i.bak -E 's|^(MACHINE[[:space:]]*)[?+=]+([[:space:]]*.*)$|\1?=\2|' $build_dir/conf/local.conf
+
+mkdir -p $build_dir/upgrade-helper/
+
+# Add all the meta to the current build
+bitbake-layers add-layer ${meta_list}
+
+# build the layer_names variable to be used in the command line
+layer_names=""
+for m in $meta_list; do
+  layer_names+=" $(basename ${m})"
+done
+
+python3 $auh_dir/upgrade-helper.py -e --layer-dir ${openembedded_dir} --layer-names ${layer_names} --layer-machines ${machine_list} -- all
+
+# clean up to avoid the disk filling up
+rm -rf $build_dir/tmp/
+rm -rf $build_dir/workspace/sources/*
+find $sstate_dir -atime +10 -delete
+
+popd || exit 1
-- 
2.39.2


