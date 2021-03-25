Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web12.1363.1616632823348421463
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=CDS9u23Y;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.170, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f170.google.com with SMTP id m7so87495pgj.8
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=28NqjFVZb85b4fI+XYM35i2bXbpxI911Znln/S2RQKg=;
        b=CDS9u23YyUrR1zAWFp0IcSuFjTj91fb8SqholLJJAapL92I8dfEuA9+EXRMR1VhGH/
         YrNcv9k8BQVo2IBy3xhdduzcXUF61cpG35uY3Kj1LiJPWCmUluB0l2mrqaNFbWsFHgkU
         P6UdxfAJLvh9p8QTB5MV65uMqwaRzht9PUGrffndZa40XY8qxkqDv00ujSzbvoc5HOad
         Elo4SWknjQsqNkschNRlEOWoQbFWNcMtQuRafxisUafdZN0Vks/JRkjw6/GzRqPmd57j
         yuZO2MOthcVyjz95oZLk0p8jHRfknyCrRXk3UZglMvD99Pfod+YDdQCjKMnp7Inw2nqI
         WyPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=28NqjFVZb85b4fI+XYM35i2bXbpxI911Znln/S2RQKg=;
        b=RZlASz8VtwyhhgfWuG0QnvOOYKn1QQmMmwdt3ZJmDKO7CBptP8W5/lL1eYAeD3RzRB
         wKJfxBJ3TgIZjs/BEVzujyBJ3moNwNIhKubhLS0MHnujSremINUzYmevPJNgiue2w72f
         WugxKI95jBMmX4Hz4wmyxfa1rqGsuoF6IFyfJzYT8NDjT7WVLuMNGItaqWxeO7vRuEoP
         tb7bhzJlBBDrAV4XhhwJbCoZSlBer+A+G7aFMufMZfYKeaeLfx/11vGmYf+FU25dw8uN
         bfI2IUVDNZa2N/VxXLNyA5Y/N3ZKeIy5BgiSNcOg+W0E0YXm9X/AYYIQr4A6GMnqWP4N
         ygOA==
X-Gm-Message-State: AOAM5334n9qr4XPJyaw0kgnIkAPCHVx+qNW+LHQ8P25p5cUtN0rAkeiu
	dL9jCrcOtoQq/1h5ZX2KBnRENFM1+BclwkM1
X-Google-Smtp-Source: ABdhPJxCBmLs/tgOp/8jZqk4Og/G/SbV6XA3zJWVk4uSnbnfwfKmxXxdFANdVQhjgyyM+q0yGLVu0g==
X-Received: by 2002:a17:903:182:b029:e6:839d:fbda with SMTP id z2-20020a1709030182b02900e6839dfbdamr6445478plg.29.1616632822310;
        Wed, 24 Mar 2021 17:40:22 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:21 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 13/23] scripts/run-config: Ensure logging to both logfile and stdout
Date: Wed, 24 Mar 2021 14:39:22 -1000
Message-Id: <5a8c8a741be9fb7a56cf7d88e1d0dbfe2033a73b.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit b1bc4d64c2d0a7e61aea154635996b6b4a4d04c2)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index 25a4296..05c0579 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -153,6 +153,10 @@ def bitbakecmd(builddir, cmd, report, stepnum, stepname, oeenv=True):
     except FileNotFoundError:
         numreports = 0
 
+    def writelog(msg, a, b):
+        a.write(msg)
+        b.write(msg)
+
     if oeenv:
         cmd = ". ./oe-init-build-env; %s" % cmd
 
@@ -160,21 +164,22 @@ def bitbakecmd(builddir, cmd, report, stepnum, stepname, oeenv=True):
         print("Would run '%s'" % cmd)
         return
 
-    print("Running '%s' with output to %s" % (cmd, log))
-    flush()
+    with open(log, "a") as outf:
+        writelog("Running '%s' with output to %s\n" % (cmd, log), outf, sys.stdout)
 
-    autoconf = builddir + "/conf/auto.conf"
-    if os.path.exists(autoconf):
-        with open(autoconf, "r") as inf, open(log, "a") as outf:
-            outf.write("auto.conf settings:\n")
-            for line in inf.readlines():
-                outf.write(line)
-            outf.write("\n")
+        autoconf = builddir + "/conf/auto.conf"
+        if os.path.exists(autoconf):
+            with open(autoconf, "r") as inf, open(log, "a") as outf:
+                writelog("auto.conf settings:\n", outf, sys.stdout)
+                for line in inf.readlines():
+                    writelog(line, outf, sys.stdout)
+                writelog("\n", outf, sys.stdout)
+
+    flush()
 
     with subprocess.Popen(cmd, shell=True, cwd=builddir + "/..", stdout=subprocess.PIPE, stderr=subprocess.STDOUT, bufsize=1) as p, open(log, 'ab') as f:
         for line in p.stdout:
-            sys.stdout.buffer.write(line)
-            f.write(line)
+            writelog(line, f, sys.stdout.buffer)
             sys.stdout.flush()
             f.flush()
         ret = p.wait()
-- 
2.25.1

