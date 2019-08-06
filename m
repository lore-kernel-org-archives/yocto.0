Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A97D4E00D77; Tue,  6 Aug 2019 10:25:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1823E00C5C
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 10:25:58 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id w17so4728154qto.10
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 10:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=9XoUuMB8L5RFI+522twiAaoZQmkRX+Bq6AFrHBlmES4=;
	b=UgRXYcDvbIA319aINzcxVfc5fLRfAyJV+GBGrwfytztAS7DNl4DoNQfSdDa11K/uDp
	lyHSxliAUQBMqZkNxzW88UOdFti9Hk5jfsWdffgdHOcnyzUmaudolC1LcEITIlX6MKV3
	qBhoeZTKJu8awNrLgTGJu+sSlKUL7IjChlq8wMTHR7Z9TZ9UtegJe6bOfCJDGvt+sS20
	Hpjx4RPuJGi6OWWpkEsXrBYkBA3knVLJU71SFcH5moKIk5ostTj/yUHV3HQzHolgvU43
	u7dk3y2/SkSWkiwZDQbJQdYNGWkfcIm4Gd2Mu6M/8j114gGT2oDAzu5jA+QpG/D3CuqZ
	+Dlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9XoUuMB8L5RFI+522twiAaoZQmkRX+Bq6AFrHBlmES4=;
	b=hOkS/sJwDm/EcpZHpraUUIeuU0xYtA8TG10LsaDJhjB3MMM/dI/qfS68wBxvYgICE9
	suuNRYAuZWE9WrSbzbQUUE7+u+Idq19q12OiUsTfTwMiS7R9Ez4cLo3MJVsriZdoeVmJ
	y2jdC/2Fv5856yU8uOqK05BQ9d8FtJuCPbFhr896YwRSaVASQSFzgAi6eJOq/Xa960gm
	XgEEF6BPUN90LXiGnTR4U4h1w75Npw9wpmw55MWOOzDdQfm1DHg4DP29MYK46Wjk/OrQ
	0lHJbaoePc3w9dViLCiPMTrqXK8/bnsOy8HPCNncpLLVWIHne/gSj3CXz7n1UCT6qTyV
	ubyA==
X-Gm-Message-State: APjAAAX3KbUe70n246/LBTv45N33Wq1uOamXnLW9VQCtYQKPZ5Ko8YMH
	YJlTVLKGySqd3eIQUQWpRx32U7XVojIuKQ==
X-Google-Smtp-Source: APXvYqxjxb1MEe5tNjC4h97jxzkcWvXylQSQxvVCxZRQieKAa8WMCQ/GGDcFOGNm2l69+gE6i97HyA==
X-Received: by 2002:ac8:22ad:: with SMTP id f42mr4114391qta.271.1565112357724; 
	Tue, 06 Aug 2019 10:25:57 -0700 (PDT)
Received: from intrepid.geontech.local
	(static-108-40-78-74.bltmmd.fios.verizon.net. [108.40.78.74])
	by smtp.gmail.com with ESMTPSA id
	g13sm36154216qkm.17.2019.08.06.10.25.56
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 06 Aug 2019 10:25:57 -0700 (PDT)
From: Thomas Goodwin <btgoodwin@geontech.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Aug 2019 13:25:51 -0400
Message-Id: <20190806172551.22053-1-btgoodwin@geontech.com>
X-Mailer: git-send-email 2.17.1
Subject: [yocto-autobuilder-helper][PATCH]] checkvnc, run-config, config.json: DISPLAY=:1
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
X-List-Received-Date: Tue, 06 Aug 2019 17:25:59 -0000

The original check of /proc/net/tcp did not work on
a headless Ubuntu 18.04.02 server.  This new check-
-and-reset routine should be equivalent if the script
is executed.  The assumption of DISPLAY=:1 was also
troublesome in an environment where multiple VNC
servers are running.

Changes:

If the user sources this script, it will perform the
new check-and-reset function as well as set DISPLAY to
the instance found.  This means EXTRACMD on certain
builds can now be, e.g.:

   source ${SCRIPTSDIR}/checkvnc; oe-selftest ...

This change has been added to run-config and config.json.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
---
 config.json        |  8 ++++----
 scripts/checkvnc   | 35 +++++++++++++++++++++++++++++------
 scripts/run-config |  2 +-
 3 files changed, 34 insertions(+), 11 deletions(-)

diff --git a/config.json b/config.json
index 2252b83..3d13720 100644
--- a/config.json
+++ b/config.json
@@ -67,7 +67,7 @@
             },
             "step3" : {
                 "BUILDHISTORY" : false,
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -r runqemu meta_ide -j 15"],
+                "EXTRACMDS" : ["source ${SCRIPTSDIR}/checkvnc; oe-selftest -r runqemu meta_ide -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             }
         },
@@ -149,7 +149,7 @@
                 "EXTRACMDS" : ["bitbake-selftest"]
             },
             "step2" : {
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror -j 15"],
+                "EXTRACMDS" : ["source ${SCRIPTSDIR}/checkvnc; oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             },
             "step3" : {
@@ -166,7 +166,7 @@
                 ]
             },
             "step2" : {
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -r buildoptions.SourceMirroring.test_yocto_source_mirror"],
+                "EXTRACMDS" : ["source ${SCRIPTSDIR}/checkvnc; oe-selftest -r buildoptions.SourceMirroring.test_yocto_source_mirror"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             }
         }
@@ -280,7 +280,7 @@
                 "extravars" : [
                     "RPM_GPG_SIGN_CHUNK = '1'"
                 ],
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror -j 15"],
+                "EXTRACMDS" : ["source ${SCRIPTSDIR}/checkvnc; oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             }
         },
diff --git a/scripts/checkvnc b/scripts/checkvnc
index 11e03bb..3935213 100755
--- a/scripts/checkvnc
+++ b/scripts/checkvnc
@@ -1,10 +1,33 @@
 #!/bin/sh
 #
-# check if vnc server is running, and if not, cleanup and restart
+# Description: checks if vnc server is running, and if not, cleanup and restart
+# 
+# Source this file if you want DISPLAY set to the result
+# Execute this file if you only want the "check and restart" behavior.
 #
-grep ':170D' /proc/net/tcp > /dev/null
-if [ $? != 0 ]; then
-    echo "Xvnc not running, attempting restart"
-    vncserver -kill :1
+unset DISPLAY
+
+checkvnc() {
+    for pid_file in ~/.vnc/*.pid; do
+        [ -f "$pid_file" ] || break
+        vnc_display=$(echo $(basename "$pid_file") | cut -f 1 -d '.')
+
+        # Test if running
+        kill -0 $(cat "$pid_file") > /dev/null
+        if [ $? == 0 ]; then
+            echo "Found running Xvnc server at $vnc_display"
+            DISPLAY=":$(echo $vnc_display | cut -d ':' -f 2)"
+            break
+        else
+            echo "Cleaning up display: $vnc_display"
+            vncserver -kill "$vnc_display"
+        fi
+    done
+}
+
+checkvnc
+if [ -z "$DISPLAY" ]; then
+    echo "Starting Xvnc"
     vncserver
-fi
+    checkvnc
+fi
\ No newline at end of file
diff --git a/scripts/run-config b/scripts/run-config
index fe89163..2b39822 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -168,7 +168,7 @@ for stepnum in range(1, maxsteps + 1):
     sanitytargets = utils.getconfigvar("SANITYTARGETS", ourconfig, args.target, stepnum)
     if sanitytargets:
         hp.printheader("Step %s/%s: Running bitbake %s" % (stepnum, maxsteps, sanitytargets))
-        bitbakecmd(args.builddir, "%s/checkvnc; DISPLAY=:1 bitbake %s -k" % (scriptsdir, sanitytargets), report, stepnum, 'c')
+        bitbakecmd(args.builddir, "source %s/checkvnc; bitbake %s -k" % (scriptsdir, sanitytargets), report, stepnum, 'c')
 
     # Run any extra commands specified
     cmds = utils.getconfiglist("EXTRACMDS", ourconfig, args.target, stepnum)
-- 
2.17.1


