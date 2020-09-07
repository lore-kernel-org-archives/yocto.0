Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.6474.1599511845506695320
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TV/HNXYb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id o5so16913352wrn.13
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=MvBteE3BHDurqukIf/uS2eqyoUomOVj7CThIkEUlMDM=;
        b=TV/HNXYbF2KiTvMJ1UtrFBvqvwfl3fjtlCmzsMSDJCG3gdhY/AYeJK8lROjIeLKge4
         jrVwO5SdSvww7iOITYAxjYXiT/EBCkj+kUuk92aH1G8pjujEvOFC3wYVhfx/ZF9k9N1Z
         k7YcYtTGdstjVqtzGSqu/XZMXRbTnljhH4kQ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MvBteE3BHDurqukIf/uS2eqyoUomOVj7CThIkEUlMDM=;
        b=oAm53RzyM/4iaOindlsUXPrjpt2u+jYfVPnoCf8uLgz9t9+r4t+mQf5S0zQMIzWK9v
         mirYf8e+2fIQs9LsYPW+lqqkJOtcMQQLE9r0EFVO4tSeLD1EcceTWBdCgcPABcWZbmR+
         UYdkDYpMH83FcOJPdDrq1x5A5ylVxjaJzhQf+naZZq76hl1JlUIZ5OuCfMcWVmC6V0EA
         jCHDgucV4BHDx2Y1sZaoanimM6RiryUAFGZVhXg/yMXKQVPkrlpwFU/3iGmIYu6aMxKC
         S3/qXFmmcIXoEOLv46wA6keOkA24HsZ4EmyfpjZVHTMycCbt9LuNa3KtzPLxeRYyo3V+
         PHRA==
X-Gm-Message-State: AOAM533KmKFmT/vY753hp4cHtg8HkUOWJIMvwC2PkEsG0zHjSE5XXoLA
	kLaK+vQrwhOaX5Li51LyNK7cYwCwQ44qUg==
X-Google-Smtp-Source: ABdhPJyaRqOsCC1mFjKE4od6+dsj35/A5nXCJdCxhNe+FJERqf8ncDQ0pzEnHPeYOVww3lEqw3GK4w==
X-Received: by 2002:adf:f207:: with SMTP id p7mr24812733wro.152.1599511843717;
        Mon, 07 Sep 2020 13:50:43 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:43 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 10/32] scripts/run-config: Ensure racing for the lockfile doesn't traceback
Date: Mon,  7 Sep 2020 21:50:12 +0100
Message-Id: <20200907205034.1941516-11-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Traceback (most recent call last):
  File "yocto-autobuilder-helper/scripts/run-config", line 116, in <module>
    fcntl.flock(fileno, fcntl.LOCK_EX)
OSError: [Errno 22] Invalid argument

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index 9d8d48a..ed13ca0 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -111,15 +111,20 @@ if bttarball:
         btlock = btdlpath + ".lock"
         if not os.path.exists(os.path.dirname(btdlpath)):
             os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
-        with open(btlock, 'a+') as lf:
-            fileno = lf.fileno()
-            fcntl.flock(fileno, fcntl.LOCK_EX)
-            if not os.path.exists(btdlpath):
-                if bttarball.startswith("/"):
-                    subprocess.check_call(["cp", bttarball, btdlpath])
-                else:
-                    subprocess.check_call(["wget", "-O", btdlpath, bttarball])
-                os.chmod(btdlpath, 0o775)
+        while True:
+            try:
+                with open(btlock, 'a+') as lf:
+                    fileno = lf.fileno()
+                    fcntl.flock(fileno, fcntl.LOCK_EX)
+                    if not os.path.exists(btdlpath):
+                        if bttarball.startswith("/"):
+                            subprocess.check_call(["cp", bttarball, btdlpath])
+                        else:
+                            subprocess.check_call(["wget", "-O", btdlpath, bttarball])
+                        os.chmod(btdlpath, 0o775)
+            except OSError:
+                # We raced with someone else, try again
+                pass
         subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
     btenv = glob.glob(btdir + "/environment-setup*")
     # We either parse or wrap all our execution calls, rock and a hard place :(
-- 
2.25.1

