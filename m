Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32E16E00B71; Thu, 18 May 2017 14:21:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56A41E00B67
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 14:21:38 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 May 2017 14:21:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,360,1491289200"; d="scan'208";a="103906760"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.129])
	by fmsmga005.fm.intel.com with ESMTP; 18 May 2017 14:21:31 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 May 2017 16:21:46 -0500
Message-Id: <1495142506-11581-7-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1495142506-11581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1495142506-11581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH][PATCH] 6/6] upgradehelper.py: Add _get_recipes_by_layer method
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
X-List-Received-Date: Thu, 18 May 2017 21:21:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When the layer mode is enabled and the upgradehelper is run
with all, there is a need to discover what recipes are provides
the layer to only try to upgrade those.

[YOCTO #8962]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index be4282f..5ce2575 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -663,7 +663,13 @@ class UniverseUpdater(Updater):
         Updater.__init__(self, True, True)
 
         # to filter recipes in upgrade
-        self.recipes = recipes
+        if not recipes and self.opts['layer_mode'] == 'yes':
+            # when layer mode is enabled and no recipes are specified
+            # we need to figure out what recipes are provided by the
+            # layer to try upgrade
+            self.recipes = self._get_recipes_by_layer()
+        else:
+            self.recipes = recipes
 
         # read history file
         self.history_file = os.path.join(get_build_dir(), "upgrade-helper", "history.uh")
@@ -676,6 +682,30 @@ class UniverseUpdater(Updater):
                                                         line.split(',')[2],
                                                         line.split(',')[3],
                                                         line.split(',')[4]]
+    def _get_recipes_by_layer(self):
+        recipes = []
+
+        recipe_regex = re.compile('^(?P<name>.*):$')
+        layer_regex = re.compile('^  (?P<name>.*) +')
+
+        layers = False
+        name = ''
+
+        output = subprocess.check_output('bitbake-layers show-recipes',
+                shell=True)
+        for line in output.decode("utf-8") .split('\n'):
+            s = recipe_regex.search(line)
+            if s:
+                name = s.group('name')
+                continue
+
+            if not 'skipped' in line:
+                s = layer_regex.search(line)
+                if s:
+                    if s.group('name').strip() == self.opts['layer_name']:
+                        recipes.append(name)
+
+        return recipes
 
     def _update_master(self):
         if self.opts['layer_mode'] == 'yes':
-- 
2.1.4


