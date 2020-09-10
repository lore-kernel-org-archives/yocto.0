Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.20796.1599740792216233369
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Kzd9Sq4+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id x14so6450049wrl.12
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CBl1Oe2AKpoKDbQ/Z/q3f6irbVijIm6D5lFnxsdUed4=;
        b=Kzd9Sq4+gyfF/9JQ+QZd7Y1zjR96SGay/MAigTqM31u/2BkrBBp6D6HhELE5uw/qo5
         K5AJr/fPDNflem9u4D3hVH0SKd+N0q2xX3gYKR7wqzcKigJ10cPRf7n8VKMe/PH/IzZd
         q0SnZSVo2tjBffP4e00dj4QAGopZEkKZKnBJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CBl1Oe2AKpoKDbQ/Z/q3f6irbVijIm6D5lFnxsdUed4=;
        b=tGpsVYbMq4o/mINsLxOLr3F4y5loo2lWr6Rk8JOs8bJKHnT9wj9gGzZ92yg4nGRxjV
         A3BFYluojZP+SdC6+pYAvKry8KT6q4fDwCKBOL095vBpzJaiWieWw9bQ32LNxpEA/Dzr
         qW4XRpVVPHWwtKwBStkxeJpLp1DdcYsYhPfKVjEAHG7kkaqG940yeQ0bWHNmpwu+xBdD
         Akm+bqDsxJVoBwGWAhO8Se/gxpqWZFnsudYngNy9Ke/vgcd+G6jgLJW8Vjt34V6qACT7
         izZaIR1u8rzBF14LcnxdAJZt+/3G7uCefrjZnCWxDdjYRWvuTvLfSfhW7/ljCSzWNwfX
         1a6w==
X-Gm-Message-State: AOAM532JEpCuBA8lnkRnNXg2g9aMoy8nmJ5Rj9g0S9CXPQOZ44PqsX+6
	QQR3ZwEFeIbYqFQPvvo97n1I6BW/CmRntw==
X-Google-Smtp-Source: ABdhPJyg6kNyqHf5LnVYPyT7NIy+Z8rLjyXfT8AnyIZqY7/UUwY8RRPIAz/X90Or54VQ7m2I1ONoJw==
X-Received: by 2002:adf:db52:: with SMTP id f18mr8644446wrj.397.1599740790462;
        Thu, 10 Sep 2020 05:26:30 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:30 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 38/41] scripts/utils: Ensure buildtools tarball hash matches any supplied value
Date: Thu, 10 Sep 2020 13:25:50 +0100
Message-Id: <20200910122553.2040430-38-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index 10e3cc1..46346fb 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -378,6 +378,25 @@ def getcomparisonbranch(ourconfig, reponame, branchname):
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
@@ -389,6 +408,9 @@ def setup_buildtools_tarball(ourconfig, workername, btdir):
 
     btenv = None
     if bttarball:
+        sha256 = None
+        if ";" in bttarball:
+            bttarball, sha256 = bttarball.split(";")
         btdir = os.path.abspath(btdir)
         if not os.path.exists(btdir):
             btdlpath = getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
@@ -401,6 +423,10 @@ def setup_buildtools_tarball(ourconfig, workername, btdir):
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

