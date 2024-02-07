Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98927C4828D
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 12:15:51 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.19031.1707308144348726469
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 04:15:44 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 265001FB
	for <yocto@lists.yoctoproject.org>; Wed,  7 Feb 2024 04:16:26 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6B9413F5A1
	for <yocto@lists.yoctoproject.org>; Wed,  7 Feb 2024 04:15:43 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper 1/2] run-config: generalise auto.conf logging and only show when changed
Date: Wed,  7 Feb 2024 12:15:40 +0000
Message-Id: <20240207121541.1720874-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 12:15:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62416

From: Ross Burton <ross.burton@arm.com>

Extract the logging of auto.conf to a new log_file_contents() function,
and instead of calling it before _every_ call of bitbake, only show it wh=
en
actually writing the auto.conf.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/run-config | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index 308e954..1c3fb45 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -167,6 +167,19 @@ utils.mkdir(errordir)
=20
 errorlogs =3D set()
=20
+def log_file_contents(filename, builddir, stepnum, stepname):
+    logfile =3D logname(builddir, stepnum, stepname)
+    with open(logfile, "a") as outf, open(filename, "r") as f:
+        def log(s):
+            outf.write(s)
+            sys.stdout.write(s)
+
+        log("Contents of %s:\n" % filename)
+        for line in f:
+            log(line)
+        log("\n")
+
+
 def bitbakecmd(builddir, cmd, report, stepnum, stepname, oeenv=3DTrue):
     global finalret
     flush()
@@ -191,16 +204,6 @@ def bitbakecmd(builddir, cmd, report, stepnum, stepn=
ame, oeenv=3DTrue):
     with open(log, "a") as outf:
         writelog("Running '%s' with output to %s\n" % (cmd, log), outf, =
sys.stdout)
=20
-        autoconf =3D builddir + "/conf/auto.conf"
-        if os.path.exists(autoconf):
-            with open(autoconf, "r") as inf, open(log, "a") as outf:
-                writelog("auto.conf settings:\n", outf, sys.stdout)
-                for line in inf.readlines():
-                    writelog(line, outf, sys.stdout)
-                writelog("\n", outf, sys.stdout)
-
-    flush()
-
     with subprocess.Popen(cmd, shell=3DTrue, cwd=3Dbuilddir + "/..", std=
out=3Dsubprocess.PIPE, stderr=3Dsubprocess.STDOUT, bufsize=3D0) as p, ope=
n(log, 'ab') as f:
         for line in p.stdout:
             writelog(line, f, sys.stdout.buffer)
@@ -259,6 +262,7 @@ def handle_stepnum(stepnum):
             addstepentry("write-config", "Write config", shortdesc, desc=
, None, str(stepnum))
         elif args.stepname =3D=3D "write-config":
             runcmd([scriptsdir + "/setup-config", args.target, str(stepn=
um - 1), args.builddir, args.branchname, args.reponame, "-s", args.sstate=
prefix, "-b", args.buildappsrcrev])
+            log_file_contents(args.builddir + "/conf/auto.conf", args.bu=
ilddir, stepnum, args.stepname)
=20
     # Execute the targets for this configuration
     targets =3D utils.getconfigvar("BBTARGETS", ourconfig, args.target, =
stepnum)
--=20
2.34.1


