Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.6494.1599511868717272110
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Lym1sy1Q;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id c18so16925518wrm.9
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=zbJIrX1PELu/eBcsrWiR+FI9FLX9Imwx+FhdZ3lMAhY=;
        b=Lym1sy1QUNfQ0mS8Vdt8sffPpqyqwsjZeC86UqWwUaRSRfjRV08nJzi1oSDem31PoZ
         nwMV67tVDt3T1sAi+RiOmsuKkA3xdMDzlvf1aq6JvNnipEd+DCEIhmhifnTTNjHcgpru
         qjm8AR0OP+u/c+/JPyKd1RGYkyD+yrUvBnsmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zbJIrX1PELu/eBcsrWiR+FI9FLX9Imwx+FhdZ3lMAhY=;
        b=kLR+XEAvn1IO+nGAjxm4S4BrA4v16SewAi1d0H7lCvBE3J74m9bmVXZ04tetHeiKlT
         Quh5xC35JFIhPWfeet5KQfuqCPFnbV4F4pYb6uDzPe9V/MO7GWd7kqVYY6i+pfHW34sf
         FGA47Ko54FektUfGOIfX0TnIqmPjc1dCV4DDzDIn6jI3xMTIOePRSYwhq2q1IFvaRPvq
         e6wD7+EnYESXxSY6jULxbWRIKPfpNAdtVeXKIWB/NgNG1enSxv+pAG8BMIe6Ya66ZdHe
         lzA14ArIe2E/EJDdon7Akzk4gC7NKmhw7iSphvY00HCLsW0w9SSEZLjv8uEOngUiCRk+
         3wsw==
X-Gm-Message-State: AOAM532lstVMordqUmG+VF5FSl/NNUw73xrfOELYa74NiNNTVu3L7Ks8
	32lcvQdbYMS3XP5ZmVG125ibUgfXYszxQg==
X-Google-Smtp-Source: ABdhPJyDetadyhyPeRNbp7/HmTdLCDirEE4MPga8btFUQhmKB/Y3f050zANbaArDPBul6O3jLpLafQ==
X-Received: by 2002:adf:ded0:: with SMTP id i16mr24957820wrn.372.1599511866983;
        Mon, 07 Sep 2020 13:51:06 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.51.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:51:06 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 31/32] scripts/utils: Ensuring new logging is flushed from buffers
Date: Mon,  7 Sep 2020 21:50:33 +0100
Message-Id: <20200907205034.1941516-32-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
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

