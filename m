Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5D23E00A48; Wed, 10 Jun 2015 09:30:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACD97E00A25
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 09:30:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 10 Jun 2015 09:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,588,1427785200"; d="scan'208";a="585476981"
Received: from yctb03.ostc.intel.com (HELO yctb03.otcr.jf.intel.com)
	([10.23.219.52])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2015 09:30:14 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jun 2015 16:28:50 +0000
Message-Id: <1433953732-29963-10-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
In-Reply-To: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 09/11][auh] upgradehelper.py: Change policy for send emails and fix error passing
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
X-List-Received-Date: Wed, 10 Jun 2015 16:30:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now send emails almost in all cases this give the maintainer
patches and diff to continue work also if the build isn't
succesful.

[YOCTO #7489]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index b1f075d..a4aa0ab 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -381,8 +381,11 @@ class Updater(object):
                 "Attached are the patch, license diff (if change) and bitbake log.\n\n" \
                 "Regards,\nThe Upgrade Helper"
 
-            # don't bother maintainer with mail if the recipe is already up to date
-            if status == "UpgradeNotNeededError":
+            if status == "Error" or status == "FetchError" or\
+               status == "UpgradeNotNeededError":
+                D( "%s: Don't send email to maintainer because the error was " \
+                   "%s and the information isn't useful, please review it." \
+                    % (self.pn, status))
                 return
 
             if self.maintainer in maintainer_override:
@@ -478,6 +481,7 @@ class Updater(object):
 
         attempted_pkgs = 0
         for self.pn, self.new_ver, self.maintainer in pkgs_to_upgrade:
+            error = None
             self.recipe = None
             attempted_pkgs += 1
             I(" ATTEMPT PACKAGE %d/%d" % (attempted_pkgs, total_pkgs))
@@ -489,12 +493,9 @@ class Updater(object):
                     step()
 
                 I(" %s: Upgrade SUCCESSFUL! Please test!" % self.pn)
-                error = None
-            except UpgradeNotNeededError as e:
-                I(" %s: %s" % (self.pn, e.message))
-                error = e
-            except Error as e:
-                E(" %s: %s" % (self.pn, e.message))
+            except Exception as e:
+                if isinstance(e, Error):
+                    E(" %s: %s" % (self.pn, e.message))
                 E(" %s: Upgrade FAILED! Logs and/or file diffs are available in %s" % (self.pn, self.workdir))
                 error = e
 
@@ -667,7 +668,7 @@ class UniverseUpdater(Updater):
 
     # overriding the base method
     def pkg_upgrade_handler(self, err):
-        super(UniverseUpdater, self).pkg_upgrade_handler(self)
+        super(UniverseUpdater, self).pkg_upgrade_handler(err)
         self.update_history(self.pn, self.new_ver, self.maintainer,
                 self._get_status_msg(err))
 
-- 
1.8.4.5


