Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web12.20519.1599740791064659018
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=D0vLEBJ7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id k18so5589474wmj.5
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=zbJIrX1PELu/eBcsrWiR+FI9FLX9Imwx+FhdZ3lMAhY=;
        b=D0vLEBJ7FB04oOtHiKyMYWN+ylF1VFDeiXGGK/SrGyzOV+V4GlMiRj6PCx8z9ky/rr
         YbSflCUgULyAj61at1mTXKsFxeLdkk2rNqgKw22Enu0Tys5X0iRaMFMCQaGNnoV6z2zI
         WZel0Ziev8XU9KpKOHxuXeuq+NjJ0UaWILctk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zbJIrX1PELu/eBcsrWiR+FI9FLX9Imwx+FhdZ3lMAhY=;
        b=e8hIi1Ye2W4iHAuOFR0Pi+8t4iJObdLvhOAoUR6n+09E5lB/kKo2f8KXkC/bomYjL0
         9h1E7okHo4laAkPvp7E+EUt80e1CfEEI3sTz16N0tYcffeRbaUBnJD6aC+AN0ZEpY5QN
         0WzQr+lQEbmyPPovLc5skiTRilbTo45REGIf9750REL6nNYcrKYQl3XDVmVrjxJW9y8t
         Vy5iCtfG6eR05Ag3/o5iCBmRKatEQWLCvMIuiyzX81Wque/c5UU8UJ13Sy/0ZlY++Lbd
         DVBGhonOwt8SyB/10LpbM5oyzkRhO2FpKJZGAKem2KYxpwcl0FZnWbPXvtupfuPG3tF4
         4i3Q==
X-Gm-Message-State: AOAM53037Mi+i8E0aJOlxfPfFEvsmbLx/W3yfPjoxZXXAhlBR8hP2RRv
	TDviIbtFX72g7XZ44C/wAPuiant3M8C4Nw==
X-Google-Smtp-Source: ABdhPJxzbhHvo3HBSTNx4pj4PAcd2t2l/2ln7UrwUveXZsOf98j8/dbXC+WXc4GWgs+T6HXk6b2o4Q==
X-Received: by 2002:a1c:8185:: with SMTP id c127mr7834949wmd.184.1599740789350;
        Thu, 10 Sep 2020 05:26:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:28 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 37/41] scripts/utils: Ensuring new logging is flushed from buffers
Date: Thu, 10 Sep 2020 13:25:49 +0100
Message-Id: <20200910122553.2040430-37-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index 1dfc9a2..10e3cc1 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -233,18 +233,24 @@ def fetchgitrepo(clonedir, repo, params, stashdir):
     branch = params["branch"]
     revision = params["revision"]
     print("Checking for stash at: " + stashdir + "/" + repo)
+    flush()
     if os.path.exists(stashdir + "/" + repo):
         print("Cloning from stash to %s..." % sharedrepo)
+        flush()
         subprocess.check_call(["git", "clone", "file://%s/%s" % (stashdir, repo), "%s/%s" % (clonedir, repo)])
         subprocess.check_call(["git", "remote", "rm", "origin"], cwd=sharedrepo)
         subprocess.check_call(["git", "remote", "add", "origin", params["url"]], cwd=sharedrepo)
         print("Updating from origin...")
+        flush()
         subprocess.check_call(["git", "fetch", "origin"], cwd=sharedrepo)
         subprocess.check_call(["git", "fetch", "origin", "-t"], cwd=sharedrepo)
     else:
         print("Cloning from origin to %s..." % sharedrepo)
+        flush()
         subprocess.check_call(["git", "clone", params["url"], sharedrepo])
 
+    print("Updating checkout...")
+    flush()
     subprocess.check_call(["git", "checkout", branch], cwd=sharedrepo)
     # git reset revision==HEAD won't help, we need to reset onto the potentially fetched origin branch
     subprocess.check_call(["git", "reset", "origin/" + branch, "--hard"], cwd=sharedrepo)
-- 
2.25.1

