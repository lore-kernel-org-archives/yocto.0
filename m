Return-Path: <v.vogelhuber@digitalendoscopy.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DBE5E00BA0; Fri, 29 Jan 2016 02:56:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [94.100.134.233 listed in list.dnswl.org]
X-Greylist: delayed 86 seconds by postgrey-1.32 at yocto-www;
	Fri, 29 Jan 2016 02:56:03 PST
Received: from mx-relay33-dus.antispameurope.com
	(mx-relay33-dus.antispameurope.com [94.100.134.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B3F2E00A92
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 02:56:02 -0800 (PST)
Received: from host-80-81-19-29.customer.m-online.net ([80.81.19.29]) by
	mx-gate33-dus.antispameurope.com; Fri, 29 Jan 2016 11:54:33 +0100
Received: from [192.168.10.111] (192.168.10.111) by SRV-MSX01.digitendos.local
	(192.168.10.14) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Fri, 29 Jan 2016 11:54:28 +0100
To: <yocto@yoctoproject.org>
From: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
Message-ID: <56AB44E5.6090507@digitalendoscopy.de>
Date: Fri, 29 Jan 2016 11:54:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
X-Originating-IP: [192.168.10.111]
X-TM-AS-Product-Ver: SMEX-10.1.0.2244-8.000.1202-22098.005
X-TM-AS-Result: No--9.423100-0.000000-31
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-cloud-security-sender: v.vogelhuber@digitalendoscopy.de
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-gate33-dus with 449592018014
X-cloud-security-connect: host-80-81-19-29.customer.m-online.net[80.81.19.29],
	TLS=1, IP=80.81.19.29
X-cloud-security: scantime:.2444
Subject: Mercurial Authorization and Fetch with AUTOREV
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
X-List-Received-Date: Fri, 29 Jan 2016 10:56:07 -0000
X-Groupsio-MsgNum: 28147
Content-Type: multipart/mixed; boundary="------------010100020900050409020506"

--------------010100020900050409020506
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Due to the change in commit 9e24bde011479d9f22830080720510e52e9923d8
within the hg.py fetcher that it calls runfetchmd with "up" instead of 
"update" there's a
problem when handling username and password access in _buildhgcommand.

Another problem in the hg.py is when we use AUTOREV for fetching the 
latest revision.
In this case the call to setup_revisons in urldata_init results in an 
access to ud.moddir that
is not yet populated. So the block for creating ud.pkgdir, ud.moddir and 
ud.basecmd has
to be moved to the top.

Following patch should fix both issues.



--------------010100020900050409020506
Content-Type: text/x-patch; name="hg.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="hg.patch"

diff --git a/bitbake/lib/bb/fetch2/hg.py b/bitbake/lib/bb/fetch2/hg.py
index 3b743ff..06b305c 100644
--- a/bitbake/lib/bb/fetch2/hg.py
+++ b/bitbake/lib/bb/fetch2/hg.py
@@ -67,13 +67,6 @@ class Hg(FetchMethod):
         else:
             ud.proto = "hg"
 
-        ud.setup_revisons(d)
-
-        if 'rev' in ud.parm:
-            ud.revision = ud.parm['rev']
-        elif not ud.revision:
-            ud.revision = self.latest_revision(ud, d)
-
         # Create paths to mercurial checkouts
         hgsrcname = '%s_%s_%s' % (ud.module.replace('/', '.'), \
                             ud.host, ud.path.replace('/', '.'))
@@ -86,6 +79,13 @@ class Hg(FetchMethod):
         ud.localfile = ud.moddir
         ud.basecmd = data.getVar("FETCHCMD_hg", d, True) or "/usr/bin/env hg"
 
+        ud.setup_revisons(d)
+
+        if 'rev' in ud.parm:
+            ud.revision = ud.parm['rev']
+        elif not ud.revision:
+            ud.revision = self.latest_revision(ud, d)
+
         ud.write_tarballs = d.getVar("BB_GENERATE_MIRROR_TARBALLS", True)
 
     def need_update(self, ud, d):
@@ -151,7 +151,7 @@ class Hg(FetchMethod):
                 cmd = "%s --config auth.default.prefix=* --config auth.default.username=%s --config auth.default.password=%s --config \"auth.default.schemes=%s\" pull" % (ud.basecmd, ud.user, ud.pswd, proto)
             else:
                 cmd = "%s pull" % (ud.basecmd)
-        elif command == "update":
+        elif command == "update" or command == "up":
             if ud.user and ud.pswd:
                 cmd = "%s --config auth.default.prefix=* --config auth.default.username=%s --config auth.default.password=%s --config \"auth.default.schemes=%s\" update -C %s" % (ud.basecmd, ud.user, ud.pswd, proto, " ".join(options))
             else:
@@ -265,13 +265,20 @@ class Hg(FetchMethod):
 
         scmdata = ud.parm.get("scmdata", "")
         if scmdata != "nokeep":
+            proto = ud.parm.get('protocol', 'http')
             if not os.access(os.path.join(codir, '.hg'), os.R_OK):
                 logger.debug(2, "Unpack: creating new hg repository in '" + codir + "'")
                 runfetchcmd("%s init %s" % (ud.basecmd, codir), d)
             logger.debug(2, "Unpack: updating source in '" + codir + "'")
             os.chdir(codir)
-            runfetchcmd("%s pull %s" % (ud.basecmd, ud.moddir), d)
-            runfetchcmd("%s up -C %s" % (ud.basecmd, revflag), d)
+            if ud.user and ud.pswd:
+                runfetchcmd("%s --config auth.default.prefix=* --config auth.default.username=%s --config auth.default.password=%s --config \"auth.default.schemes=%s\" pull %s" % (ud.basecmd, ud.user, ud.pswd, proto, ud.moddir), d)
+            else:
+                runfetchcmd("%s pull %s" % (ud.basecmd, ud.moddir), d)
+            if ud.user and ud.pswd:
+                runfetchcmd("%s --config auth.default.prefix=* --config auth.default.username=%s --config auth.default.password=%s --config \"auth.default.schemes=%s\" up -C %s" % (ud.basecmd, ud.user, ud.pswd, proto, revflag), d)
+            else:
+                runfetchcmd("%s up -C %s" % (ud.basecmd, revflag), d)
         else:
             logger.debug(2, "Unpack: extracting source to '" + codir + "'")
             os.chdir(ud.moddir)

--------------010100020900050409020506--
