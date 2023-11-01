Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B069BC00142
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 00:06:25 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.11095.1698797177318899010
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 17:06:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=f2de6SxY;
 spf=pass (domain: smile.fr, ip: 209.85.221.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-32dc9ff4a8fso3877500f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 17:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698797175; x=1699401975; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BslftJ30Lrb9cQyRsGzKGEvewlaMB8bQXtMSMqwZ0lY=;
        b=f2de6SxY1rGPcIIcu1aB0/BiFdhGEXIjJmvk6EKcxblhH+GcsY0r1kM8o0Ao2mWHoC
         f99Hg+JVLi3ElobjjFP7+2hHSgU24eIjnaLMh9jrtudqvS6az/ec+1nC7fZRZ3tRnuO9
         vJaQT5fUgRDRWS+Xo8Tne9OXXfnC1NsXZsW3LLK96Wrt34TdYWCzXKds9oeKAqaIq7ls
         uY3VV0XIA2O/cmaUrR3qLSnThzGe2sqZgoRCMfRoo7+pPBU8y8emILQeGa+WIxCwsoIz
         yuVwAPR4J/+F+5t4VVO9gbIyDy5jP1fpi9Uc39rAC46w8Jtb7dthu+llBagzL0Si6Abx
         WfSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698797175; x=1699401975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BslftJ30Lrb9cQyRsGzKGEvewlaMB8bQXtMSMqwZ0lY=;
        b=M8ttg5Pk5bgR/sGzt4e3phn8Y3yrMejX6ZJRnDjgDluOvBGHhX15yGFWT27Zh7trA7
         Fee73sbFchE8PtxN+uU6Z0FM2Lc77F10WZ0gHIdB69kCjQIJczgydWc4eMnZuj8My2nv
         K6z+nSwq819X2d4IrutFnmnj04fR3x8cdzfo7K/gUiinIu+WkxPRYlCyxOH6cq1+i3Kt
         KiQzpvZPdMT8s+Wu7kYTNvFjzELFSpt5k2eNZwyYvSAYOeiceLO9WqziYt4shqSMpUaK
         MldQaVjV9F4tSHZ6EkXFzBsLn+S7fJON8jIUHFVe2AwNyOl2thUchHImM3Juq0IDdosA
         OThA==
X-Gm-Message-State: AOJu0YwcKfUXQfL0ypYzOCJII7uDK2gQ4YP1E8CdKbFGYWss6Obqs35V
	MvHdLOpXUpgWgTrzm5a/XRfJNTUciMZYo9mNDG4=
X-Google-Smtp-Source: AGHT+IHHIAMOacjOGeuO3n+LfpfrTTMJZ6xQdZmk3XFaTtQtN1wVWL/7U3SYYXbHTVNidNHM7YXo9w==
X-Received: by 2002:a5d:5449:0:b0:32d:a376:5cfc with SMTP id w9-20020a5d5449000000b0032da3765cfcmr10766489wrv.57.1698797175173;
        Tue, 31 Oct 2023 17:06:15 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id m5-20020adfe945000000b0032f7cc56509sm2571620wrn.98.2023.10.31.17.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 17:06:13 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>,
	David Pierret <david.pierret@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [auh][PATCH 5/6] upgrade-helper.py: Add layer command line option
Date: Wed,  1 Nov 2023 01:05:33 +0100
Message-Id: <20231101000534.241551-6-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231101000534.241551-1-yoann.congal@smile.fr>
References: <20231101000534.241551-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 00:06:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61543

From: David Pierret <david.pierret@smile.fr>

- Layer options can be defined as command line arguments
- multiple layers can be defined in a single command

each layer is analyzed 1 by 1 to check if upgrades are available.

Signed-off-by: David Pierret <david.pierret@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---
 upgrade-helper.py | 68 ++++++++++++++++++++++++++++++-----------------
 1 file changed, 44 insertions(+), 24 deletions(-)

diff --git a/upgrade-helper.py b/upgrade-helper.py
index 4933a4a..3be6d68 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -105,6 +105,12 @@ def parse_cmdline():
                         help="do not compile, just change the checksums, remove PR, and commit")
     parser.add_argument("-c", "--config-file", default=None,
                         help="Path to the configuration file. Default is $BUILDDIR/upgrade-helper/upgrade-helper.conf")
+    parser.add_argument("--layer-names", nargs='*', action="store", default='',
+                        help="layers to include in the upgrade research")
+    parser.add_argument("--layer-dir", action="store", default='',
+                        help="the layers root directory")
+    parser.add_argument("--layer-machines", nargs='*', action="store", default='',
+                        help="machine to build for the layers")
     return parser.parse_args()
 
 def parse_config_file(config_file):
@@ -441,7 +447,8 @@ class Updater(object):
 
         I(" ########### The list of recipes to be upgraded #############")
         for pkg_to_upgrade in pkgs_to_upgrade:
-            I(" %s, %s, %s, %s, %s" % (
+            I(" %s, %s, %s, %s, %s, %s" % (
+                pkg_to_upgrade["layer_name"],
                 pkg_to_upgrade["pn"],
                 pkg_to_upgrade["cur_ver"],
                 pkg_to_upgrade["next_ver"],
@@ -583,24 +590,26 @@ class UniverseUpdater(Updater):
     def __init__(self, args):
         Updater.__init__(self, args)
 
-        if len(args.recipe) == 1 and args.recipe[0] == "all":
-            self.recipes = []
-        else:
-            self.recipes = args.recipe
-
-        # to filter recipes in upgrade
-        if not self.recipes and self.opts['layer_mode'] == 'yes':
+        if len(args.recipe) == 1 and args.recipe[0] == "all" and self.opts['layer_mode'] != 'yes':
+            self.recipes = [('', [])]
+        elif self.opts['layer_mode'] == 'yes':
             # when layer mode is enabled and no recipes are specified
             # we need to figure out what recipes are provided by the
             # layer to try upgrade
-            self.recipes = self._get_recipes_by_layer()
-
+            self.recipes = []
+            for layer in self.opts['layer_name'].split(' '):
+                recipes_for_layer = self._get_recipes_by_layer(layer)
+                I("layer %s => Recipes %s", layer, recipes_for_layer)
+                self.recipes.append((layer, recipes_for_layer))
+        else:
+            self.recipes = [('', args.recipe)]
+            
         if args.to_version:
             if len(self.recipes) != 1:
                 E(" -t is only supported when upgrade one recipe\n")
                 exit(1)
 
-    def _get_recipes_by_layer(self):
+    def _get_recipes_by_layer(self, layer=''):
         recipes = []
 
         recipe_regex = re.compile('^(?P<name>.*):$')
@@ -620,7 +629,7 @@ class UniverseUpdater(Updater):
             if not 'skipped' in line:
                 s = layer_regex.search(line)
                 if s:
-                    if s.group('name').strip() == self.opts['layer_name']:
+                    if s.group('name').strip() == layer:
                         recipes.append(name)
 
         return recipes
@@ -673,7 +682,7 @@ class UniverseUpdater(Updater):
     def _get_packages_to_upgrade(self, packages=None):
     
         # Prepare a single pkg dict data (or None is not upgradable) from recipeutils.get_recipe_upgrade_status data.
-        def _get_pkg_to_upgrade(self, pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason):
+        def _get_pkg_to_upgrade(self, layer_name, pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason):
             pkg_to_upgrade = None
 
             if self.args.to_version:
@@ -683,6 +692,7 @@ class UniverseUpdater(Updater):
                 # Always do the upgrade if recipes are specified
                 if self.recipes and pn in self.recipes or self._pkg_upgradable(pn, next_ver, maintainer):
                     pkg_to_upgrade = {
+                        "layer_name": layer_name,
                         "pn": pn,
                         "cur_ver": cur_ver,
                         "next_ver": next_ver,
@@ -691,25 +701,27 @@ class UniverseUpdater(Updater):
                     }
             else:
                 if no_upgrade_reason:
-                    I(" Skip package %s (status = %s, current version = %s," \
+                    I(" Skip package %s/%s (status = %s, current version = %s," \
                         " next version = %s, no upgrade reason = %s)" %
-                         (pn, status, cur_ver, next_ver, no_upgrade_reason))
+                        (layer_name, pn, status, cur_ver, next_ver, no_upgrade_reason))
                 else:
-                    I(" Skip package %s (status = %s, current version = %s," \
+                    I(" Skip package %s/%s (status = %s, current version = %s," \
                         " next version = %s)" %
-                        (pn, status, cur_ver, next_ver))
+                        (layer_name, pn, status, cur_ver, next_ver))
 
             return pkg_to_upgrade
 
-        pkgs = oe.recipeutils.get_recipe_upgrade_status(self.recipes)
-
         pkgs_list = []
-        for pkg in pkgs:
-            pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason = pkg
 
-            pkg_to_upgrade = _get_pkg_to_upgrade(self, pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason)
-            if pkg_to_upgrade:
-                pkgs_list.append(pkg_to_upgrade)
+        for layer_name, layer_recipes in self.recipes:
+            pkgs = oe.recipeutils.get_recipe_upgrade_status(layer_recipes)
+
+            for pkg in pkgs:
+                pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason = pkg
+
+                pkg_to_upgrade = _get_pkg_to_upgrade(self, layer_name, pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason)
+                if pkg_to_upgrade:
+                    pkgs_list.append(pkg_to_upgrade)
 
         return pkgs_list
 
@@ -754,6 +766,14 @@ if __name__ == "__main__":
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
-- 
2.30.2


