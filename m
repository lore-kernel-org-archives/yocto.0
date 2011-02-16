Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C0CA4C800A5
	for <yocto@yoctoproject.org>; Tue, 15 Feb 2011 20:44:14 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Feb 2011 18:44:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,477,1291622400"; d="scan'208";a="708297460"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.71]) ([10.7.198.71])
	by orsmga001.jf.intel.com with ESMTP; 15 Feb 2011 18:44:14 -0800
Message-ID: <4D5B39FD.1060606@intel.com>
Date: Tue, 15 Feb 2011 18:44:13 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 1/1] Doing uname without subprocess: buildstats.bbclass
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Feb 2011 02:44:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


Instead of using subprocess which is problematic, we should use platform
instead.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 meta/classes/buildstats.bbclass |   11 +++++++----
 1 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/meta/classes/buildstats.bbclass b/meta/classes/buildstats.bbclass
index f042dd3..0acf516 100644
--- a/meta/classes/buildstats.bbclass
+++ b/meta/classes/buildstats.bbclass
@@ -67,7 +67,7 @@ python run_buildstats () {
     import bb.build
     import bb.event
     import bb.data
-    import time, subprocess
+    import time, subprocess, platform

     if isinstance(e, bb.event.BuildStarted):
         ##############################################
@@ -90,9 +90,12 @@ python run_buildstats () {
         build_time = os.path.join(bsdir, "build_stats")
         # write start of build into build_time
         file = open(build_time,"a")
-        # We do this here because subprocess within BuildStarted is messy
-        #host_info = subprocess.Popen(["uname", "-a"], stdout=subprocess.PIPE).stdout.read()
-        #file.write("Host Info: %s" % host_info)
+        host_info = platform.uname()
+        file.write("Host Info: ")
+        for x in host_info:
+            if x:
+                file.write(x + " ")
+        file.write("\n")
         file.write("Build Started: %0.2f \n" % time.time())
         file.close()

-- 
1.7.1

