Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.1461.1616688207804145069
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=WFcjVUPu;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.48, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f48.google.com with SMTP id il9-20020a17090b1649b0290114bcb0d6c2so2927823pjb.0
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=28NqjFVZb85b4fI+XYM35i2bXbpxI911Znln/S2RQKg=;
        b=WFcjVUPuq3qucMCHugILfRzGfz0mqM9raV/KuzEPjSgCsn+imNpJPgrMAG1eRW+1fT
         6pDf3+z6Tp+fjEBWsGA1FEmkntIJjlbdZiFFHzfZjf6uv2l+ZEY0g1aICqBhU+044Xm5
         QgmUZ0sUqUVjaSsxvVET6uY6VGN8lFWaZHYAKh5iCl7+wco7xgv25fxHezFZz4BYCmvE
         0JvXligvm2Kt9NVn9muNlJJ2sDVZM7s7M+ZMqxWD4ANBAY7cmob7zA/eKNch6bYsDY4Q
         HrQxY4ifKwp9iWiCBXUx3h5yTGzAScHloQbGs4HMgMN7iLZ4k90WdeXaqRQPoEgmGiwM
         4Y2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=28NqjFVZb85b4fI+XYM35i2bXbpxI911Znln/S2RQKg=;
        b=tYMEGPatXmPYD1eX/PUToQBxXX/VwG3LdE3xNXDtE6g/+aLpy9TNpHncRAa+qZtxD+
         5DLjufNH96YGiVA97YVhB2vmLXKA09oNRMEVJlGtOsPlZ2vUzQ57waHd+kWsFfF2yh8m
         MKpV6klzjvWD5tqLFpqkjI915B14XXCY16m3rjaBfWPImmoSo+eGJU8C6Ti+FPZszXHa
         GFcRzbBj72kBhX0psFfOVvF8mJVkUk8U+/AFhqBkDCqzzco7W/o9IrA5cq5hcOVNTFlE
         b/DT5+ncBkkInHWzA89/OUvy1IcCBO6/fvPfQsUKYXr82ziryWXx4196V1Gcuj1CdW5p
         sZQA==
X-Gm-Message-State: AOAM530fdMnOP5Yb+QCnyfVsDsVBlesohboE6idmZGIgKROZR1+la2nN
	AToxOne2rkem7IX5ftcFEtxenu5WQnfoiJPE
X-Google-Smtp-Source: ABdhPJyIUgWqI8MFlVUQcXrxhlp1ev3vCu8jZcRJAJr8MYXY7DxrmABGonUp36xaRKHCRp7dHecciA==
X-Received: by 2002:a17:90a:66c2:: with SMTP id z2mr10018940pjl.139.1616688206880;
        Thu, 25 Mar 2021 09:03:26 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:26 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 06/15] scripts/run-config: Ensure logging to both logfile and stdout
Date: Thu, 25 Mar 2021 06:02:12 -1000
Message-Id: <43628b7edfc9b5a41d5abe95c83702dbd64debcf.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
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

