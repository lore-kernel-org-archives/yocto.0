Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.6490.1599511867607445162
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OmxhnL/t;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id t10so17000130wrv.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=kyhwZ+pWaEVMKG4VgvIcgvuT6HXdBwoFIi85c9bvamk=;
        b=OmxhnL/tzVXIZVzju+RJPULb9lUB2pMbv3vSy75jPBSE4xryBbBTXiL4aCLc7w9GIu
         N0IhhY7nkCVd5e3fM1YtVPA2rntghbX0YcgDaqvBKhEbwMHtc9G6Oyxe/1gcfd7RRwP7
         g6UMJ4FflqBSnAH9oEFYwCjqke1bojS8tc2Jo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kyhwZ+pWaEVMKG4VgvIcgvuT6HXdBwoFIi85c9bvamk=;
        b=giL3jIiOyJntuRhZqcmlSr9DngxwJ9Mbz8G3aTyhRw1Vm0wWSVvaWx0Zjb5QOWFAce
         qsE8Z2Edl5vzFbHPO6aB6y7B0yWt3YuaCMPN7e5DXs1Ki+8MF2ytv76CNrYtDqK/TJCj
         LJ2LPaCgJPIzyB0iPVuwCV4l5lcMfnlG86psoAzPpDol5Vuj07yhwVKoMrR8rhotXNHT
         /raZhIVf/XdISicN0KjoKBllr9v9516t5h7379Z1uVveN4RdWzQ/fDncs43QksLx0IXP
         Ttjyqzs9JEJKlhwh9KRL01HGFd6z835uV5MeDIH+0gGi8JPf+oHDkms5NWokvDxyo5k7
         UGow==
X-Gm-Message-State: AOAM531isWlrlGkT5zEdowx01N/uz4nAhv/fS6DjZukBFCdHgNIsYfQm
	tJzGukkAj1GGijN0DlkEQaggUDYnmhtWlw==
X-Google-Smtp-Source: ABdhPJwqHUQv50sntkLg1waD/du0dAjtL+nsahnr6NZbijR6Tj6GgaCJZO/1VQCtrOZmuoDeA7YZAA==
X-Received: by 2002:adf:8342:: with SMTP id 60mr25512026wrd.158.1599511865931;
        Mon, 07 Sep 2020 13:51:05 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.51.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:51:05 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 30/32] scripts/utils: Add more logging for fetchgitrepo
Date: Mon,  7 Sep 2020 21:50:32 +0100
Message-Id: <20200907205034.1941516-31-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index ec43832..1dfc9a2 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -232,13 +232,17 @@ def fetchgitrepo(clonedir, repo, params, stashdir):
     sharedrepo = "%s/%s" % (clonedir, repo)
     branch = params["branch"]
     revision = params["revision"]
+    print("Checking for stash at: " + stashdir + "/" + repo)
     if os.path.exists(stashdir + "/" + repo):
+        print("Cloning from stash to %s..." % sharedrepo)
         subprocess.check_call(["git", "clone", "file://%s/%s" % (stashdir, repo), "%s/%s" % (clonedir, repo)])
         subprocess.check_call(["git", "remote", "rm", "origin"], cwd=sharedrepo)
         subprocess.check_call(["git", "remote", "add", "origin", params["url"]], cwd=sharedrepo)
+        print("Updating from origin...")
         subprocess.check_call(["git", "fetch", "origin"], cwd=sharedrepo)
         subprocess.check_call(["git", "fetch", "origin", "-t"], cwd=sharedrepo)
     else:
+        print("Cloning from origin to %s..." % sharedrepo)
         subprocess.check_call(["git", "clone", params["url"], sharedrepo])
 
     subprocess.check_call(["git", "checkout", branch], cwd=sharedrepo)
-- 
2.25.1

