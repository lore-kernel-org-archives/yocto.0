Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 670CCE00C9B; Wed, 21 Mar 2018 09:26:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B499E00E8C
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 09:25:58 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Mar 2018 09:25:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,340,1517904000"; d="scan'208";a="26380082"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 21 Mar 2018 09:25:56 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Mar 2018 18:19:16 +0200
Message-Id: <20180321161917.13028-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.16.1
Subject: [PATCH 1/2] Do not skip packages that were attempted recently.
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
X-List-Received-Date: Wed, 21 Mar 2018 16:26:03 -0000

This was undocumented and made a number of hardcoded assumptions.
The options were to make it configurable, or just remove the logic,
and I chose the latter.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 upgradehelper.py | 40 ----------------------------------------
 1 file changed, 40 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index b5e696e..8fb27d3 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -564,17 +564,6 @@ class UniverseUpdater(Updater):
                 E(" -t is only supported when upgrade one recipe\n")
                 exit(1)
 
-        # read history file
-        self.history_file = os.path.join(get_build_dir(), "upgrade-helper", "history.uh")
-        self.history = dict()
-        if os.path.exists(self.history_file):
-            with open(self.history_file) as history_file:
-                for line in history_file:
-                    line = line.strip()
-                    self.history[line.split(',')[0]] = [line.split(',')[1],
-                                                        line.split(',')[2],
-                                                        line.split(',')[3],
-                                                        line.split(',')[4]]
     def _get_recipes_by_layer(self):
         recipes = []
 
@@ -689,21 +678,6 @@ class UniverseUpdater(Updater):
                         (pn, maintainer))
                 return False
 
-        if pn in self.history:
-            # did we already try this version?
-            if next_ver == self.history[pn][0]:
-                retry_delta = \
-                    date.toordinal(date.today()) - \
-                    date.toordinal(datetime.strptime(self.history[pn][2], '%Y-%m-%d'))
-                # retry recipes that had fetch errors or other errors after
-                # more than 30 days
-                if (self.history[pn][3] == str(FetchError()) or
-                        self.history[pn][3] == str(Error())) and retry_delta > 30:
-                    return True
-
-                D(" Skipping upgrade of %s: is in history and not 30 days passed" % pn)
-                return False
-
         # drop native/cross/cross-canadian recipes. We deal with native
         # when upgrading the main recipe but we keep away of cross* pkgs...
         # for now
@@ -727,22 +701,8 @@ class UniverseUpdater(Updater):
 
         return pkgs_list
 
-    def _update_history(self, pn, new_ver, maintainer, upgrade_status):
-        with open(self.history_file + ".tmp", "w+") as tmp_file:
-            if os.path.exists(self.history_file):
-                with open(self.history_file) as history:
-                    for line in history:
-                        if not line.startswith(pn):
-                            tmp_file.write(line)
-            tmp_file.write(pn + "," + new_ver + "," + maintainer +
-                           "," + date.isoformat(date.today()) + "," +
-                           upgrade_status + "\n")
-        os.rename(self.history_file + ".tmp", self.history_file)
-
     def pkg_upgrade_handler(self, pkg_ctx):
         super(UniverseUpdater, self).pkg_upgrade_handler(pkg_ctx)
-        self._update_history(pkg_ctx['PN'], pkg_ctx['NPV'], pkg_ctx['MAINTAINER'],
-                self._get_status_msg(pkg_ctx['error']))
 
     def run(self):
         self._prepare()
-- 
2.16.1


