Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DF47E006C6; Tue,  7 Feb 2017 08:23:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.6 required=5.0 tests=BAYES_00,
	FILL_THIS_FORM_FRAUD_PHISH,RCVD_IN_DNSWL_HI,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
	*  0.3 FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1332E00566
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 08:23:40 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Feb 2017 08:23:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="1104231188"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by fmsmga001.fm.intel.com with ESMTP; 07 Feb 2017 08:23:39 -0800
From: leonardo.sandoval.gonzalez@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue,  7 Feb 2017 10:30:58 -0600
Message-Id: <1486485058-2743-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [patchwork][PATCH] git-pw: include bundle sub-command
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
X-List-Received-Date: Tue, 07 Feb 2017 16:23:44 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

This new command allows to fetch bundles (set of selected patches by the user)
and print them into the stdout. For the moment, bundles must be public (otherwise
these wont be found)

Command line example:

openembedded-core$ git pw bundle newbundle --username lsandov1

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 git-pw/git-pw | 52 ++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 48 insertions(+), 4 deletions(-)

diff --git a/git-pw/git-pw b/git-pw/git-pw
index f5fbdcb..554dfae 100755
--- a/git-pw/git-pw
+++ b/git-pw/git-pw
@@ -126,6 +126,11 @@ class Command(object):
             'need_project' : False,
             'need_auth'    : False,
         },
+        'bundle': {
+            'need_git_repo': True,
+            'need_project' : False,
+            'need_auth'    : False,
+        },
         'list': {
             'need_git_repo': True,
             'need_project' : True,
@@ -295,13 +300,25 @@ class Patch(RestObject):
     def url(self, url='/'):
         return '/patches/' + str(self.id) + url
 
+class Bundle(RestObject):
+
+    def __init__(self, patchwork, bundle_name, user):
+        super(Bundle, self).__init__(patchwork)
+        self.bundle_name = str(bundle_name)
+        self.user = str(user)
+
+    def url(self, url='/'):
+        return '/bundle/' + self.user + '/' + self.bundle_name + url
+
 
 class Patchwork(object):
 
+    api_version= 'api/1.0'
+
     def __init__(self, web_root, project_linkname, user):
         if not web_root.endswith('/'):
             web_root += '/'
-        self.api_base = web_root + 'api/1.0'
+        self.api_base = web_root + self.api_version
         self.web_root = web_root
         self.project = Project(self, project_linkname)
         self.user = user
@@ -372,6 +389,9 @@ class Patchwork(object):
     def get_patch(self, patch_id):
         return Patch(self, patch_id)
 
+    def get_bundle(self, bundle_name, name):
+        return Bundle(self, bundle_name, name)
+
 
 class Terminal(object):
     DEFAULT_WIDTH = 80
@@ -578,15 +598,13 @@ class GitPatchwork(object):
         # auth mechanism. In any case, using HTTPS is a must.
         username = None
         password = None
-        user = None
         try:
             username = config.get(section, 'user')
             password = config.get(section, 'password')
-            user = User(username, password)
         except:
             pass
 
-        if not user and self.cmd.need_auth:
+        if not password and self.cmd.need_auth:
             die('No authentication configured.\n\n'
                 "Please set up credentials, e.g.:\n\n"
                 "   git config patchwork.%(config)s.user myusername\n"
@@ -594,6 +612,8 @@ class GitPatchwork(object):
                     'config': self.cmd.config,
                 })
 
+        user = User(username, password)
+
         self.pw = Patchwork(web_root, project, user)
         self.pw.setup()
 
@@ -679,6 +699,20 @@ class GitPatchwork(object):
                 raise
             die('No patch with id %d.' % self.cmd.patch_id)
 
+    def do_bundle(self):
+        user = self.cmd.username or self.pw.user.username
+        if not user:
+            die('Either define a patchwork user at .git/config or set it through --username')
+
+        bundle = self.pw.get_bundle(self.cmd.bundle_name, user)
+
+        try:
+            return self._print_mbox(bundle.absolute_url('/mbox/').replace(self.pw.api_version,''))
+        except HttpError as e:
+            if e.status_code != 404:
+                raise
+            die('No user %s bundle with name %s.' % (self.cmd.user, self.cmd.bundle_name))
+
     def do_list(self):
         project = self.pw.get_project()
         params = {
@@ -973,6 +1007,16 @@ if __name__ == '__main__':
 
     parser_add_mbox_options(mbox_patch_parser)
 
+    # bundle
+    bundle_parser = subparsers.add_parser('bundle',
+        help='retrieve a mbox file of a bundle and print it on stdout')
+    bundle_parser.add_argument('--username', '-u', metavar='username',
+        type=str, help='the patchwork\'s user that created the bundle, use git\'s configured if omitted')
+    bundle_parser.add_argument('bundle_name', metavar='bundle_name',
+        type=str, help='the bundle to retrieve')
+
+    parser_add_mbox_options(bundle_parser)
+
     # poll-events
     poll_events_parser = subparsers.add_parser('poll-events',
         help='list events since the last invocation')
-- 
2.1.4


