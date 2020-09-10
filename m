Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web12.20505.1599740774538288844
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DR1iN2fN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id m6so6521707wrn.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CJr/ZZQCnYuId+gTZ5YJiilLtz8vymYaBPd+e0WEQZE=;
        b=DR1iN2fNq4C7/Vwm8wwVzOVvrYjQ05TcBohyVBoCEoqTZ+kDcH/Ke2ImS51z7NtWrc
         TZH4z0xaRo04u0UcO1/fXo10qU6aE2+mfA5tr7ZpYXi5y27sqQHx3xH7XT+INJM7K3Ay
         dvP6Hs5epm3rE6S5a9mWGV7SZV3kDtVj1SO60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CJr/ZZQCnYuId+gTZ5YJiilLtz8vymYaBPd+e0WEQZE=;
        b=kpkJYzaqXOMFP/Gru/jqv+lzl47+T4FrA1lb9R/+6kXHzHUM/RUb2XWHhrhzFVuMdw
         ov+oNwRKs03pMSNVnLaR+jDjaizqmDNCZgOeg3Pqrco1YjNHaCahoS3OZ4J8XDuOhCIk
         zaOS2cK58YYiksq8TskgNp0PMnYGt7A++q6fidhGK/2ZY+3HvcQe5033CcD97OOy71Ke
         9SE2oWqe45Mc1qCzSxq+GJ1fS66ArZVc87HLbQjinselBUgmKzYc7cp7DP4g3lBou/os
         Z2fR6linjgx8xADZ6xMh+KwKTk2bEGJ197qCJbKuJ/PhMTtPfCJjhyUnX0/TsiHvQ7lZ
         sN+Q==
X-Gm-Message-State: AOAM530sfiV7S8BeqmLX6x7uAaLKwuU2BsM21V52vy4ekgZ6F0O//RzM
	AEHpMwV7rhE5S6WTLST1GXsL7JP5ilUKZA==
X-Google-Smtp-Source: ABdhPJxX6oIEB/PLG6ejrQD0oDN63wYREyRqEUKVfBrBWOZuwEI6MX8kIPqU02QI6ZLnRT4ZZSEb1w==
X-Received: by 2002:a5d:574c:: with SMTP id q12mr8615588wrw.253.1599740772800;
        Thu, 10 Sep 2020 05:26:12 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:11 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 20/41] scripts/run-config: Ensure racing for the lockfile doesn't traceback
Date: Thu, 10 Sep 2020 13:25:32 +0100
Message-Id: <20200910122553.2040430-20-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

