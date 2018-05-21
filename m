Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5DEDE00CD7; Sun, 20 May 2018 20:04:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8068EE00CA1
	for <yocto@yoctoproject.org>; Sun, 20 May 2018 20:04:53 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 May 2018 20:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,425,1520924400"; d="scan'208";a="225835591"
Received: from syadandx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.168.242])
	by orsmga005.jf.intel.com with ESMTP; 20 May 2018 20:04:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 May 2018 15:04:11 +1200
Message-Id: <9cad45c795012f71dff6f0c2aded106afa9026ff.1526871767.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1526871767.git.paul.eggleton@linux.intel.com>
References: <cover.1526871767.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/6] update_layer: avoid errors on modified & renamed files
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
X-List-Received-Date: Mon, 21 May 2018 03:04:54 -0000

If a file is modified and renamed it will show up in both
iter_change_type('M') and iter_change_type('R'), however naturally the
file that will exist will be the b path and not the a one, so we should
be looking at the b path or we will get errors.

FYI you can reproduce this with OE-Core (in a scratch database) using
the following procedure:
1) (in the OE-Core layer directory):
   git checkout 59285b324f6d9ed270b0bef209ef5da22a620a83
2) update.py -l openembedded-core -b master -x --nofetch -r --fullreload
3) (in the OE-Core layer directory):
   git checkout 086308aa2a5e332de6f00ed397c4a55d132f158f
4) update.py -l openembedded-core -b master -x --nofetch

Without this change you'll see the following error:

ERROR: Unable to read /opt/layerindex/layers/git___git_openembedded_org_openembedded-core/meta/recipes-devtools/python-numpy/python-numpy_1.13.1.bb: Traceback (most recent call last):
  File "/opt/layerindex/layers/bitbake/lib/bb/command.py", line 84, in runCommand
    result = command_method(self, commandline)
  File "/opt/layerindex/layers/bitbake/lib/bb/command.py", line 568, in parseRecipeFile
    envdata = bb.cache.parse_recipe(config_data, fn, appendfiles)['']
  File "/opt/layerindex/layers/bitbake/lib/bb/cache.py", line 315, in parse_recipe
    bb_data = bb.parse.handle(bbfile, bb_data)
  File "/opt/layerindex/layers/bitbake/lib/bb/parse/__init__.py", line 117, in handle
    return h['handle'](fn, data, include)
  File "/opt/layerindex/layers/bitbake/lib/bb/parse/parse_py/BBHandler.py", line 132, in handle
    abs_fn = resolve_file(fn, d)
  File "/opt/layerindex/layers/bitbake/lib/bb/parse/__init__.py", line 141, in resolve_file
    raise IOError(errno.ENOENT, "file %s not found" % fn)
FileNotFoundError: [Errno 2] file /opt/layerindex/layers/git___git_openembedded_org_openembedded-core/meta/recipes-devtools/python-numpy/python-numpy_1.13.1.bb not found

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 TODO                       | 1 -
 layerindex/update_layer.py | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/TODO b/TODO
index 96d4feb8..7d522f84 100644
--- a/TODO
+++ b/TODO
@@ -10,7 +10,6 @@ TODO:
 
 Bugs
 * Duplication of first maintainer when editing to add a second?
-* GitPython sometimes reports renamed files as type M but we don't handle that properly e.g. OE-Core 59285b324f6d9ed270b0bef209ef5da22a620a83 086308aa2a5e332de6f00ed397c4a55d132f158f
 
 Other
 * Full-text search on layer contents
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 018d7bcd..272fe51a 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -636,7 +636,7 @@ def main():
                                 bbclass.save()
 
                     for diffitem in diff.iter_change_type('M'):
-                        path = diffitem.a_blob.path
+                        path = diffitem.b_blob.path
                         if path.startswith(subdir_start):
                             skip = False
                             for removedir in removedirs:
-- 
2.14.3


