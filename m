Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2C6FE00B6C; Thu, 18 May 2017 14:21:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8793E00B45
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 14:21:29 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 May 2017 14:21:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,360,1491289200"; d="scan'208";a="103906731"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.129])
	by fmsmga005.fm.intel.com with ESMTP; 18 May 2017 14:21:27 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 May 2017 16:21:41 -0500
Message-Id: <1495142506-11581-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1495142506-11581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1495142506-11581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH][PATCH] 1/6] upgradehelper.py: Add support to load layer settings
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
X-List-Received-Date: Thu, 18 May 2017 21:21:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Those settings are to support layer recipe upgrades runs
into the AUH.

[YOCTO #8962]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 42 ++++++++++++++++++++++++++++++++++--------
 1 file changed, 34 insertions(+), 8 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index df7d36d..f7b87c6 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -131,10 +131,6 @@ class Updater(object):
     def __init__(self, auto_mode=False, send_email=False, skip_compilation=False):
         build_dir = get_build_dir()
 
-        self._make_dirs(build_dir)
-
-        self._add_file_logger()
-
         self.bb = Bitbake(build_dir)
 
         try:
@@ -145,18 +141,43 @@ class Updater(object):
             E( " Bitbake output:\n%s" % (e.stdout))
             exit(1)
 
+        self._set_options(auto_mode, send_email, skip_compilation)
+
+        self._make_dirs(build_dir)
+
+        self._add_file_logger()
+
         self.email_handler = Email(settings)
         self.statistics = Statistics()
-        # XXX: assume that the poky directory is the first entry in the PATH
-        self.git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
 
+    def _set_options(self, auto_mode, send_email, skip_compilation):
         self.opts = {}
+        self.opts['layer_mode'] = settings.get('layer_mode', '')
+        if self.opts['layer_mode'] == 'yes':
+            def _layer_settings_error(setting):
+                E(" In layer mode enable you need to specify %s.\n" % setting)
+                exit(1)
+
+            layer_settings = ('layer_name', 'layer_dir', 'layer_machines')
+            for s in layer_settings:
+                self.opts[s] = settings.get(s, '')
+                if not self.opts[s]:
+                    _layer_settings_error(s)
+
+            self.git = Git(self.opts['layer_dir'])
+            self.poky_git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
+            self.opts['machines'] = self.opts['layer_machines'].split()
+        else:
+            # XXX: assume that the poky directory is the first entry in the PATH
+            self.git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
+            self.poky_git = None
+            self.opts['machines'] = settings.get('machines',
+                'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
+
         self.opts['interactive'] = not auto_mode
         self.opts['send_email'] = send_email
         self.opts['author'] = "Upgrade Helper <%s>" % \
                 settings.get('from', 'uh@not.set')
-        self.opts['machines'] = settings.get('machines',
-                'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
         self.opts['skip_compilation'] = skip_compilation
         self.opts['buildhistory'] = self._buildhistory_is_enabled()
         self.opts['testimage'] = self._testimage_is_enabled()
@@ -168,6 +189,11 @@ class Updater(object):
         self.uh_base_work_dir = settings.get('workdir', '')
         if not self.uh_base_work_dir:
             self.uh_base_work_dir = self.uh_dir
+        if self.opts['layer_mode'] == 'yes':
+            self.uh_base_work_dir = os.path.join(self.uh_base_work_dir,
+                    self.opts['layer_name'])
+        if not os.path.exists(self.uh_base_work_dir):
+            os.mkdir(self.uh_base_work_dir)
         self.uh_work_dir = os.path.join(self.uh_base_work_dir, "%s" % \
                 datetime.now().strftime("%Y%m%d%H%M%S"))
         os.mkdir(self.uh_work_dir)
-- 
2.1.4


