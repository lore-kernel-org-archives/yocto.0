Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.6459.1599511838968155142
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PcW63pPQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id k15so16913267wrn.10
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Od1rX6Ci0Q8ganA+dWQY9YERBwi3R4no27O61wwdPuo=;
        b=PcW63pPQvwKSN2DJOXbzV99tXlWiGD+LWYYJHRfHz029+XWo/sB9DkbiVYqAeeWbwB
         azSwOEgZd/v0TZDi2vFOBu7yl4OiOCdPLloEWHr2OrWIOPCfJwwyH96ZmVoeJHPCbqZ7
         JxjCY6SZrZT2KQcetnGrPZvwEjnHzTllP7EUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Od1rX6Ci0Q8ganA+dWQY9YERBwi3R4no27O61wwdPuo=;
        b=UzTHNFPmdw+0r7axWNEjj9SSSL+Kbky4BI1Ml3lLhwa/MoocfoKuv01tWAD227J4gw
         8n9BeohTqKl07SmIf98zOTMwYCJuhbAouToIT7gEjGILTARzeIrCm/JNsLJMvNDjtZkh
         j8QG6tn7AsoozXnnymjRuKqTwEQdoTLfNnQ0ryRtUPFnumAarTaMYpvpkpiHIcpVTYqK
         lJJeCZWmGVSMBapAggUHg7T0NYIEDRWyV8NaOIMOmV33oIb3EsGd2/AQeYEnRZDynKu1
         Fs2A3o8X7h6sIzv4s9kEFgHfZyT08ZLtk2icBRFp/8u57Ui6tiltcnNKrQe4+UexoMjr
         iYpA==
X-Gm-Message-State: AOAM532qndqdmk0BxF8lHaZAfFLzmt9w0DxIsXQp2ShemlAJPORrrkCO
	amhg7ndCI3YFyC3G4QXbFZx65u2Y9jSUkg==
X-Google-Smtp-Source: ABdhPJzKp0NGYw0o+BnSttsH+m2T0Q3mK7u8eOXaFn6XjDXC/f6D5Ht2SQ8dunBb2rFu2b52tzBQsA==
X-Received: by 2002:adf:9d44:: with SMTP id o4mr23572670wre.361.1599511837169;
        Mon, 07 Sep 2020 13:50:37 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:36 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 02/32] run-config: Add support for wrapping builds in a buildtools tarball
Date: Mon,  7 Sep 2020 21:50:04 +0100
Message-Id: <20200907205034.1941516-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/scripts/run-config b/scripts/run-config
index a0e0204..161cca4 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -8,6 +8,8 @@ import os
 import sys
 import subprocess
 import errno
+import fnmatch
+import glob
 
 import utils
 
@@ -92,6 +94,34 @@ if args.target in ourconfig['overrides']:
 
 hp.printheader("Target task %s has %d steps" % (args.target, maxsteps))
 
+bttarball = None
+if "buildtools" in ourconfig and args.workername:
+    btcfg = utils.getconfig("buildtools", ourconfig)
+    for entry in btcfg:
+        if fnmatch.fnmatch(args.workername, entry):
+            bttarball = btcfg[entry]
+            break
+
+btenv = None
+if bttarball:
+    btdir = args.builddir + "../buildtools"
+    if not os.path.exists(btdir):
+        btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
+        if not os.path.exists(btdlpath):
+            os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
+            subprocess.check_call(["wget", "-O", btdlpath, bttarball])
+            os.chmod(btdlpath, 0o775)
+        subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
+    btenv = glob.glob(btdir + "/environment-setup*")
+    # We either parse or wrap all our execution calls, rock and a hard place :(
+    with open(btenv[0], "r") as f:
+        for line in f.readlines():
+            if line.startswith("export "):
+                line = line.split(" ", 1)[1].split("=", 1)
+                if "$PATH" in line[1]:
+                    line[1] = line[1].replace("$PATH", os.environ["PATH"])
+                os.environ[line[0]] = line[1]
+
 finalret = 0
 
 def flush():
-- 
2.25.1

