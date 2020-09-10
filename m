Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.22178.1599744663116733291
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Pz0fOogf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id a17so6722184wrn.6
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CJr/ZZQCnYuId+gTZ5YJiilLtz8vymYaBPd+e0WEQZE=;
        b=Pz0fOogfC/w8wUzrdLe77FBAl+EWPY6p4XcuV7EbIG+tZhHaiPkeLSMcSl9OJ30/Ek
         EqVxqCOPdr8hzZTHARj9h7J4gy9dJYbbis71wTPDDGYqukvrrLZ0d0WC3c+BTYANGM24
         ZZchSm5SvSE28DJyncXSJF5z6dEfZjOi7KeN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CJr/ZZQCnYuId+gTZ5YJiilLtz8vymYaBPd+e0WEQZE=;
        b=Tz8/N+I40d19pMN0fHEEoPl0AHylqB2t3GOt9J/zIATejt8Oj5F3awbBlpnFijyBY/
         Nj+rESYaYuZgtO01SWELgpcteLpBmFgVfxvYEwfuStx3KCDq54J5+EldyTGI1p75wfpy
         496OgDsO5UO6/m77H4nP6Q39xXNs9Wf0/JSlrefz7HiPNPNDLTm+22zIHj3pqRaQQKwB
         QD5ibvluXs/+Qb4DS3Ocm3S5Qps5UY38NESBNrDzTpWDpXxppS1pAqxu0E3IA3lkfHcJ
         M9xrUJ0nY8Ggng1K5tmi9uyyeE12KqfggeTyw2iougyqr79G7xcJd/HOdv3F9OeA/tMZ
         sPhQ==
X-Gm-Message-State: AOAM533JkZ9lD8MtZp1XvjUmOpCgqCII7qcVcD2fNjjYVfG9oV6t1uvG
	njc6FMteELvukxs2mH/WOMt8uC9DaTVb0g==
X-Google-Smtp-Source: ABdhPJyHTjKZjPYmWAdRpWq6DK38l1oRo9Bdve4AnrLu1WCAcXq2M1g4Rvh8Lnm/gA87U2hE/nKytQ==
X-Received: by 2002:adf:e4cc:: with SMTP id v12mr8946920wrm.216.1599744661414;
        Thu, 10 Sep 2020 06:31:01 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:00 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 24/40] scripts/run-config: Ensure racing for the lockfile doesn't traceback
Date: Thu, 10 Sep 2020 14:30:19 +0100
Message-Id: <20200910133035.2044355-24-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
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
index d4ff6b3..55287c3 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -99,15 +99,20 @@ if bttarball:
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

