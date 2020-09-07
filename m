Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.6494.1599511869760471169
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Hn5YNugZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id e16so16962759wrm.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CBl1Oe2AKpoKDbQ/Z/q3f6irbVijIm6D5lFnxsdUed4=;
        b=Hn5YNugZ08fYAY8xC3thahSTzwQQq3JN3Ad3+nPca+jVF9rsqSUacBGpfYN0PRDFGd
         ayEGdqXyat44MGA33ew8YQpQkmuZbz/8Ii3x1vGx+xVxMii3bAPFgalPXgck5g6iWpfX
         uh3UWobKYlGsmzeiNu+IuTUO099Ra2kRS7aoo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CBl1Oe2AKpoKDbQ/Z/q3f6irbVijIm6D5lFnxsdUed4=;
        b=WM5twiLHEEL0BFSbUFoGZDupcGUc+f/pzEPuyT9AokUm/gtVyw5s2UI5k+2Nc5scMZ
         zS1aVP+dWn/UDG7M+Ueaq8lsS4ZFlLRFGfkgQ+Gt2O0wwwY8Q1lVacW6beoypoDSo2DO
         1B6VSOxrj9lx2JJsr7BRhp9fcdz9V3/vnhsMns2h1QEaevnYUthlKYo7KS539tpQz3gd
         O/7Akpdbq+a95coPfsRSVSVkzgTVq9Kifkf9f6SPNJAy7+ohuV3NlIJ6i65Nzfm4T3MN
         WLVl8xtK6VHz6L23j36Ojgil/fSsGnDOwquHpNOhvYyJxNxttgIX9cAkT+L4YI+avDHo
         u6uw==
X-Gm-Message-State: AOAM531nFn8wrk0UmGwbzWl+GrDBMa0lw98UNUenvVAvti+jHKD+vVUV
	HAwvrXjrzkXAhnejtZxuZiDdfmeNKwHFMg==
X-Google-Smtp-Source: ABdhPJzqPmPRfs31CwUd8GduojcQ7MpI68w+JWPfxmynhBH/hRlq0rWKE5aIzENFo0qp5leNYeFHjQ==
X-Received: by 2002:adf:f50a:: with SMTP id q10mr23036808wro.319.1599511868048;
        Mon, 07 Sep 2020 13:51:08 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.51.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:51:07 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 32/32] scripts/utils: Ensure buildtools tarball hash matches any supplied value
Date: Mon,  7 Sep 2020 21:50:34 +0100
Message-Id: <20200907205034.1941516-33-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
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

