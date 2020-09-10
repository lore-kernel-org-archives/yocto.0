Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.20823.1599740780363930242
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZM+4sFCf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id m6so6522070wrn.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=GAb7yE/Ur0WVdNVw9l2b4jXdAmbSseEvvoduLJKa7mk=;
        b=ZM+4sFCficGJNBjCP9nDRH4GDHnVBhExfXUib2LBZPIhaVzlyiyICchve6S4NetVve
         xslD4WNemYWRUjCyhpQA8jQbIMpl7JzOGSdw5iYe1LcFmx5vVtwG9eNwA95pQu4xAzh1
         C5SzG9IHZT1yiOTkd8CGcoJkAs1mhr3Is2kwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GAb7yE/Ur0WVdNVw9l2b4jXdAmbSseEvvoduLJKa7mk=;
        b=YwK6TsIuexiCJkf1N0mJFvYA4XFYWUx50lS1sh/XhRwS5e7FuX6aH/22iDL9vOWWd+
         T7/Ak2t7l+Bs22CgNCf6pkhwp/0SM2P1FNO33uqwHKBbtzeicKUTZLUemhlLBwFrc1R4
         4ZX9szbGmtdIG5e2sdyWy43ftSuBHAOcnGr4YjtmKm9YFlX1tCBwtv7YZYOBhoMEonRl
         4zlI+I1lE2m0wFwov6PGWbh4rwY9Lxkl+s4mHUriG48htojKeuPj6PgO+NV06QrWgHOr
         nSYabJ+xAbT2OmBRutsOqdAANR4jpxEPy+1deqhS52vvd9avdHNo6yK0JrLjgxFujSh2
         h8gw==
X-Gm-Message-State: AOAM53289BRj683gihPzHlN8DbznNZ/0E6MdZ5rfEFe+M1mH7LhrFg1i
	BFZTIox+i31rriNjIcddSvl6L6aVD95BdQ==
X-Google-Smtp-Source: ABdhPJzVsBnAjP13f9Qehrt/bEWZRpF5aPnRJi8wYBEoG3Hxlp/nGr042hcBxpU4qxjh57YGvGNvDQ==
X-Received: by 2002:adf:fcc7:: with SMTP id f7mr8761545wrs.274.1599740778706;
        Thu, 10 Sep 2020 05:26:18 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:17 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 26/41] scripts/run-config: Add extra debug about buildtools to show when active
Date: Thu, 10 Sep 2020 13:25:38 +0100
Message-Id: <20200910122553.2040430-26-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/run-config b/scripts/run-config
index 4d795b9..54d74dc 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -96,6 +96,7 @@ if bttarball:
     btdir = args.builddir + "/../buildtools"
     if not os.path.exists(btdir):
         btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
+        print("Extracting buildtools %s" % bttarball)
         btlock = btdlpath + ".lock"
         if not os.path.exists(os.path.dirname(btdlpath)):
             os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
@@ -116,6 +117,7 @@ if bttarball:
                 pass
         subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
     btenv = glob.glob(btdir + "/environment-setup*")
+    print("Using buildtools %s" % btenv)
     # We either parse or wrap all our execution calls, rock and a hard place :(
     with open(btenv[0], "r") as f:
         for line in f.readlines():
-- 
2.25.1

