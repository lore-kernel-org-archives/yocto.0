Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web10.317.1588131475713438592
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 20:37:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: otobiruda08.png.intel.com, ip: 134.134.136.31, mailfrom: pokybuild@otobiruda08.png.intel.com)
IronPort-SDR: Xk6D34icPNxTycv4beuTv0wfpm6iMBQDC/BIJ9uQGtazN+oDuLJL9HzDEbCKb33vByaXvKv9ml
 Yc4UKa0/Kp4w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2020 20:37:54 -0700
IronPort-SDR: KT2zCWS957TJj+v4RGYyto9yjoCsVhXn5xiMt3awAsx15T5iCn4iDp7U7Z4QvCT011FyMQwGoO
 E4tW0tXIo+fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,329,1583222400"; 
   d="scan'208";a="302887985"
Received: from otobiruda08.png.intel.com ([10.221.183.17])
  by FMSMGA003.fm.intel.com with ESMTP; 28 Apr 2020 20:37:53 -0700
Received: by otobiruda08.png.intel.com (Postfix, from userid 9003)
	id 7C7BF81C103B; Wed, 29 Apr 2020 11:37:52 +0800 (+08)
From: "Aaron Chan" <aaron.chun.yew.chan@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] builders: Add Build Steps to get worker information
Date: Wed, 29 Apr 2020 11:37:52 +0800
Message-Id: <20200429033752.2279-1-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.17.1

BUG#9917: https://bugzilla.yoctoproject.org/show_bug.cgi?id=9917
          autobuilder: Add ability to get worker information

BUILBOT: http://docs.buildbot.net/current/manual/configuration/buildsteps.html#setpropertyfromcommand

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 builders.py | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/builders.py b/builders.py
index 13bfe18..a5bde1c 100644
--- a/builders.py
+++ b/builders.py
@@ -133,6 +133,32 @@ def get_buildlogs(maxsteps):
             logfiles["step" + str(i) + str(j)] = "build/command.log." + str(i) + str(j)
     return logfiles
 
+def get_lsbrelease(rc, stdout, stderr):
+    strdict={}
+    lstr = [ l.strip() for l in stdout.split('\n') ]
+    del lstr[-1]
+    for lsbStr in lstr:
+        lsbStr=list(lsbStr.split(':\t'))
+        for i in lsbStr:
+            if lsbStr.index(i) == 0:
+                strdict['worker_' + i.strip().lower().replace(' ', '_')]=""
+            else:
+                strdict["worker_" + lsbStr[0].strip().lower().replace(' ','_')]=i
+    return strdict
+
+def get_uname(rc, stdout, stderr):
+    strdict={'worker_kernel_release': '', 'worker_hardware_platform': '', 'worker_operating_system': ''}
+    uname=stdout.split(' ')
+    for i in uname:
+        if uname.index(i) == 0:
+            strdict['worker_kernel_release'] = i
+        elif uname.index(i) == 1:
+            strdict['worker_hardware_platform'] = i
+        elif uname.index(i) == 2:
+            strdict['worker_operating_system'] = i
+        else: continue
+    return strdict
+
 def create_builder_factory():
     f = util.BuildFactory()
 
@@ -151,6 +177,14 @@ def create_builder_factory():
         haltOnFailure=True,
         name='Fetch yocto-autobuilder-helper'))
     f.addStep(steps.SetProperties(properties=ensure_props_set))
+    f.addStep(steps.SetPropertyFromCommand(
+         command="lsb_release -irc",
+         extract_fn=get_lsbrelease,
+         name='Retrieve worker information_1'))
+    f.addStep(steps.SetPropertyFromCommand(
+         command="uname -rio",
+         extract_fn=get_uname,
+         name='Retrieve worker information_2'))
     f.addStep(WriteLayerInfo(name='Write main layerinfo.json', haltOnFailure=True))
     f.addStep(steps.ShellCommand(
         command=[util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper/scripts/shared-repo-unpack"),
-- 
2.17.1

