Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.20783.1599740771078240598
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JHUDmOxI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id k15so6458544wrn.10
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/xvEIiNhBm5ed113n4YQWxINxFNCc5lkQ1TK38s45dU=;
        b=JHUDmOxIgYBdIvXgur36TEsYMnQpmYTwDnxmQhz6awUMNWq6YV6ElIP+W5Lstq9798
         aPf//eEBYFoLSUOW+yhc1zNe673mKEM808mrqv9TsdTT2JxnFJAiiGsGabR6X4GZ8tqU
         +kcMOQSxePRlJjw/SSSdFNYB8BeMOU1Q9xDJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/xvEIiNhBm5ed113n4YQWxINxFNCc5lkQ1TK38s45dU=;
        b=Rdxw0spNKPL+/HYolAt7hlN5pPtdT26B7uCmNCBaH8ycWFKkJGUKCW4VKDCl69KshB
         JD4IodWrQQ/yWYCmQBvD0RVbLqP2oRWiVwgVqwHCuYBbJQX9XZOv1bZf2CAvKf41VBq0
         6Y8cC856M22gxS3+f2CBElGL4ROoP1+pUeTUSdmF3XAInKNgWo1iupXNkjitz1lr/iRB
         haigd4AZ0hLjQUkKnLyCEh6NeqwzRS/t7CH3a+FiarTSM6PjPKqXaVgPtHbIfF6OjQtJ
         I3hVGplNqOzgQ7+Wv9cq7RhSy6hJCOT8iMQR5g/s96RyjlAka8BkPqM5VSHq7BYW2Ce3
         0vow==
X-Gm-Message-State: AOAM531j4Mydjfn9wzvTOGwxkX9xNbCJkNq1K5kvZPZtUItQbqYv8sfu
	vLh5t8Oq0QCct+hthLIRiVuG0uLJ/Dpe5Q==
X-Google-Smtp-Source: ABdhPJwZ2K415Gpbkz8Ifsx3JewAH/lY8GCPwwP5qteKFqG6siKeLxxeAkyw9IUCk/gMPf4VrXLBgg==
X-Received: by 2002:adf:fd01:: with SMTP id e1mr8305725wrr.44.1599740769285;
        Thu, 10 Sep 2020 05:26:09 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:08 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 17/41] scripts/run-config: Handle multiple builds racing with lockfile for buildtools
Date: Thu, 10 Sep 2020 13:25:29 +0100
Message-Id: <20200910122553.2040430-17-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index cbfe073..ce1f36f 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -10,6 +10,7 @@ import subprocess
 import errno
 import fnmatch
 import glob
+import fcntl
 
 import utils
 
@@ -95,10 +96,15 @@ if bttarball:
     btdir = args.builddir + "/../buildtools"
     if not os.path.exists(btdir):
         btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
-        if not os.path.exists(btdlpath):
+        btlock = btdlpath + ".lock"
+        if not os.path.exists(os.path.dirname(btdlpath)):
             os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
-            subprocess.check_call(["wget", "-O", btdlpath, bttarball])
-            os.chmod(btdlpath, 0o775)
+        with open(btlock, 'a+') as lf:
+            fileno = lf.fileno()
+            fcntl.flock(fileno, fcntl.LOCK_EX)
+            if not os.path.exists(btdlpath):
+                subprocess.check_call(["wget", "-O", btdlpath, bttarball])
+                os.chmod(btdlpath, 0o775)
         subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
     btenv = glob.glob(btdir + "/environment-setup*")
     # We either parse or wrap all our execution calls, rock and a hard place :(
-- 
2.25.1

