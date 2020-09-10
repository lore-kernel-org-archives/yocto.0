Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.22166.1599744675283246798
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WSYaFNVn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id m6so6759731wrn.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=9LSuO8C6tBk+fLUf9DJu6i3nrpIXKW6hQdVwBO/Kf5g=;
        b=WSYaFNVno7zJD+JeZq2t3za4kRD9Lf8OKX/nn+xOws+4nsqlFXHlmMeZ1ah3dWXpXZ
         nzXv7JHYjIm/fAm4gsJwShmW0Pmjg4qydXcHgI3hwjF8xXhU+X5uRiZv/q0dQSY3Hzt1
         x4whahnfVjPhFSToBdnHqY0ZvHb3FI9rBLgew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9LSuO8C6tBk+fLUf9DJu6i3nrpIXKW6hQdVwBO/Kf5g=;
        b=LKnr6KA1uVJB5gKAhdpNu5QP9GMwbuAFruDkfcaLlswC5JAbmOjV9fCHBnWas8JxgN
         pANvesklR6aw95d22NjRbjygAqLPhcIHOVrXG7YuOJcEUGnsaUZi94fcFlzUcP1Fgj5N
         hY+LecpC0ga7bO90ve3JjfYB7/sCyNk3kaeqCzi2qUW8VMWVPearlo0MzwVrYVl7+K+s
         12q7SMHlGvXdYJDtMz2Utpq2LTOEl1FnWRFyiwWNAISPNjuxM0ePHlRRSRgadY2iDnnC
         oBo+RBzOSskKbT7hI0WIuvUMpbxqUnh7G1q5tp/xYwFLpyD++GBk9ODr+JYDrpS0/rGY
         0Wgw==
X-Gm-Message-State: AOAM5332fT3tczpwKyVXfT7ltJ+bf+6qqQT9JdcVQhfO7Zc7dKzQZAiC
	diARWG9zMuPXkd/RzhzTTeTTD3KDG4nl0g==
X-Google-Smtp-Source: ABdhPJwiGtAG8sm+eIYwxT4Ltcy9u0KbDzC7M3gr8pGNIFPN1KIBtv0aLV9fuWvfOgS89SGsh1nzow==
X-Received: by 2002:adf:e481:: with SMTP id i1mr8910141wrm.391.1599744673532;
        Thu, 10 Sep 2020 06:31:13 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:12 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 35/40] scripts/utils: Ensure buildtools tarball hash matches any supplied value
Date: Thu, 10 Sep 2020 14:30:30 +0100
Message-Id: <20200910133035.2044355-35-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index ec43832..084f575 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -368,6 +368,25 @@ def getcomparisonbranch(ourconfig, reponame, branchname):
         return branchname, None
     return None, None
 
+def sha256_file(filename):
+    """
+    Return the hex string representation of the 256-bit SHA checksum of
+    filename.
+    """
+    import hashlib
+    import mmap
+
+    method = hashlib.sha256()
+    with open(filename, "rb") as f:
+        try:
+            with mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_READ) as mm:
+                for chunk in iter(lambda: mm.read(8192), b''):
+                    method.update(chunk)
+        except ValueError:
+            # You can't mmap() an empty file so silence this exception
+            pass
+    return method.hexdigest()
+
 def setup_buildtools_tarball(ourconfig, workername, btdir):
     bttarball = None
     if "buildtools" in ourconfig and workername:
@@ -379,6 +398,9 @@ def setup_buildtools_tarball(ourconfig, workername, btdir):
 
     btenv = None
     if bttarball:
+        sha256 = None
+        if ";" in bttarball:
+            bttarball, sha256 = bttarball.split(";")
         btdir = os.path.abspath(btdir)
         if not os.path.exists(btdir):
             btdlpath = getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
@@ -391,6 +413,10 @@ def setup_buildtools_tarball(ourconfig, workername, btdir):
                     with open(btlock, 'a+') as lf:
                         fileno = lf.fileno()
                         fcntl.flock(fileno, fcntl.LOCK_EX)
+                        if sha256 and os.path.exists(btdlpath):
+                            dl_sha256 = sha256_file(btdlpath)
+                            if dl_sha256 != sha256:
+                                os.unlink(btdlpath)
                         if not os.path.exists(btdlpath):
                             if bttarball.startswith("/"):
                                 subprocess.check_call(["cp", bttarball, btdlpath])
-- 
2.25.1

