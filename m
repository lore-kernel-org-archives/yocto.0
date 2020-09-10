Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.22176.1599744659861607539
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PbUwhRmi;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id k15so6694561wrn.10
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/xvEIiNhBm5ed113n4YQWxINxFNCc5lkQ1TK38s45dU=;
        b=PbUwhRmi+TCerHQQLBPDYHn4pEqr5ZsjVgs8f8ZSQHURdYoHD0QDzmaPFOhsOkRsHS
         PhfKC+ndB7RIV33xlm0pAsvdx8M28Xc7ILvdrLkECx2mnm5KOZDwY8D4QDQsp7CInelF
         aySMNKpies9ysmE4zjEk4yAmaEGSUUINJit8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/xvEIiNhBm5ed113n4YQWxINxFNCc5lkQ1TK38s45dU=;
        b=XlBWMduIUspQPpUFlKb5dIaZR3r4gGRiqFHsSGXJtMGZpTuvDYqlnTE9aq/g9pHpF/
         RAiI7i5Z5X65h5GHv21CRicV/l56H20Rl0e9tXXfW0jLqqhyz1uGjIQ64nmE+ZlzUN3L
         6Zo9q70c1zrjgt9Q2fJT73LaauleFR8eRt6jBuzKckzyUBw8DlHDOYLgU69ttq2eebdT
         Xae6bWr+XcjZS5D8ZsWXeBt7ip24j0N1MZb6zHkCgFNrfC0IrZsH3a0uGKG4/X5Ntgl7
         1L67SFeXzjgElPLPxWGF5KsXj9Lh8RGMc9IkArZc2XYIAbsIoWx6zfhRs7cTtTqfCWQ7
         MjWw==
X-Gm-Message-State: AOAM531HKVUiuVl0SzTBRh1ATk4usnNkfBxALh5iEbXT2ttLVX4X7geR
	CPQY6voBB2mT18YU0mNtNEiN5+PoGZPAvw==
X-Google-Smtp-Source: ABdhPJydyA1gObvsGPKrfSEzGJ/21aR4+toy/m/hkqYrOYBmVNgFryMdlvRTdDsC1hHN1sKguxO5Fw==
X-Received: by 2002:a5d:6a42:: with SMTP id t2mr8580555wrw.425.1599744658086;
        Thu, 10 Sep 2020 06:30:58 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:57 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 21/40] scripts/run-config: Handle multiple builds racing with lockfile for buildtools
Date: Thu, 10 Sep 2020 14:30:16 +0100
Message-Id: <20200910133035.2044355-21-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
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

