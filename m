Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.1296.1600187988405430406
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 09:39:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=le9r7D2n;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id i26so5965520ejb.12
        for <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2020 09:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RL2brByqYmablz10MYjKitRaGXlGhDndcG3+DAWXprk=;
        b=le9r7D2nU/xroaDQNGX2A5H3RWKSQq/LQt1or5RiJvZi8usJgysaEfQdeB41dec7PM
         9QJaP6gNhComkzFr8qj92iN5u26RkhvBEpdKn6e8UDRKJazA7pdUPTv8NsbKEpR117AV
         mR1jqIZtrExtgDSwgVEtXqQxAVYaFMwJRUY1X83RK0kvq/o/VPLKIHNPwiycLfjI1npi
         EOoQK5ObuUNmVG+frz30tncfh7T4OhwayctmLJt6Th2Kq25GnhF9ByjVRzr2fQ7MqdaB
         Zw5hBejq36Naj00DmeYepPaRDgTzIg2CMQEZmhe7i4yQzxwrdEhP55Cp2/HTpRbIjrB0
         vBnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RL2brByqYmablz10MYjKitRaGXlGhDndcG3+DAWXprk=;
        b=oJP1yWkH3+aKBhaMWFVYYcIpvRolfCGCTBme9xmJZr1r9TdkLsJOwRH00NJEEBvFWm
         DrNY0H80OdXuM7nO+UJQ5ewCjBAfCaNOGO/cfEqaSDPJuern3wIS1iVPmCXbbNPzq7Eo
         H7I0Hlzgl1e+vvAqXdvA/ddrBjM5QeWHPArYluwIH8M6Rb1CB8NcaJGcswXcWlvegC6k
         0CH2yJr6lO7tvzQuC1ON14YA+vgH5eZ/OM2NX9yOIlnTDIP3ZtPxAtTOWN/tiQrQubyp
         jh8Bikse2DNlZdx9J4GWWTmL/dbykFqoKFn4bf72ClO+Qa+u26wzIPzXkOuy4QDFy0hY
         s3+Q==
X-Gm-Message-State: AOAM533MihsW2Bi5vXe108JCfTurIv6nfd2G5atVSlGUSrB60BKXCPl7
	06NQBe2cGyFqQY3bVIerZ2Y8n9OCVPXomQ==
X-Google-Smtp-Source: ABdhPJwqXWZP7wbdgQ8kuw6q/55iWQ8AljCGM3wIvN+SzaOe5qGkMOc8ypjHwyoWFNhh+JfBOt5H2Q==
X-Received: by 2002:a17:906:6a54:: with SMTP id n20mr21769633ejs.401.1600187986427;
        Tue, 15 Sep 2020 09:39:46 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.box ([95.168.147.4])
        by smtp.gmail.com with ESMTPSA id e15sm11779664eds.5.2020.09.15.09.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 09:39:44 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [auh][PATCH] buildhistory: simplify the handling of
Date: Tue, 15 Sep 2020 18:39:18 +0200
Message-Id: <20200915163918.19985-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The module was doing a lot of things, none of which are necessary:
- setting up a separate buildhistory repo for each recipe
- running cleansstate before doing initial build
- messing about with buildhisory revisions

Instead just run buildhistory-diff on the defaults right
after building the first target. This should also address
the various buildhistory problems seen on the AB.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/buildhistory.py | 25 ++-----------------------
 modules/steps.py        | 13 +++----------
 2 files changed, 5 insertions(+), 33 deletions(-)

diff --git a/modules/buildhistory.py b/modules/buildhistory.py
index 4fdc36c..edf9ae6 100644
--- a/modules/buildhistory.py
+++ b/modules/buildhistory.py
@@ -37,42 +37,21 @@ class BuildHistory(object):
         self.bb = bb
         self.pn = pn
         self.workdir = workdir
-        self.revs = []
-
-        self.buildhistory_dir = os.path.join(self.workdir, 'buildhistory')
-        if not os.path.exists(self.buildhistory_dir):
-            os.mkdir(self.buildhistory_dir)
-
-        self.git = Git(self.buildhistory_dir)
-
-        os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
-                                    " BUILDHISTORY_DIR"
-        os.environ["BUILDHISTORY_DIR"] = self.buildhistory_dir
 
     def init(self, machines):
-        self.bb.cleansstate(self.pn)
         for machine in machines:
             self.bb.complete(self.pn, machine)
-            self.revs.append(self.git.last_commit("master"))
-
-    def add(self):
-        self.revs.append(self.git.last_commit("master"))
 
     def diff(self):
-        rev_initial = self.revs[0]
-        rev_final = self.revs[-1]
-
         try:
-            cmd = "buildhistory-diff -p %s %s %s"  % (self.buildhistory_dir, 
-                rev_initial, rev_final)
+            cmd = "buildhistory-diff"
             stdout, stderr = bb.process.run(cmd)
             if stdout and os.path.exists(self.workdir):
                 with open(os.path.join(self.workdir, "buildhistory-diff.txt"),
                         "w+") as log:
                     log.write(stdout)
 
-            cmd_full = "buildhistory-diff -a -p %s %s %s"  % (self.buildhistory_dir, 
-                        rev_initial, rev_final)
+            cmd_full = "buildhistory-diff -a"
             stdout, stderr = bb.process.run(cmd_full)
             if stdout and os.path.exists(self.workdir):
                 with open(os.path.join(self.workdir, "buildhistory-diff-full.txt"),
diff --git a/modules/steps.py b/modules/steps.py
index 46d49fe..811b88d 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -126,15 +126,9 @@ def compile(devtool, bb, git, opts, pkg_ctx):
     for machine in opts['machines']:
         I(" %s: compiling upgraded version for %s ..." % (pkg_ctx['PN'], machine))
         _compile(bb, pkg_ctx['PN'], machine, pkg_ctx['workdir'])
-        if opts['buildhistory']:
-            pkg_ctx['buildhistory'].add()
-
-def buildhistory_diff(devtool, bb, git, opts, pkg_ctx):
-    if not opts['buildhistory']:
-        return
-
-    I(" %s: Checking buildhistory ..." % pkg_ctx['PN'])
-    pkg_ctx['buildhistory'].diff()
+        if opts['buildhistory'] and machine == opts['machines'][0]:
+            I(" %s: Checking buildhistory ..." % pkg_ctx['PN'])
+            pkg_ctx['buildhistory'].diff()
 
 def _rm_source_tree(devtool_output):
     for line in devtool_output.split("\n"):
@@ -161,5 +155,4 @@ upgrade_steps = [
     (devtool_upgrade, "Running 'devtool upgrade' ..."),
     (devtool_finish, "Running 'devtool finish' ..."),
     (compile, None),
-    (buildhistory_diff, None),
 ]
-- 
2.28.0

