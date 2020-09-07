Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web12.6475.1599511841393931132
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=O/kdyhGE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id b79so15210687wmb.4
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=tKzWLbxW2ZKnfpR21m+PFwl32HzjPRkl6aao66v7nyw=;
        b=O/kdyhGE8NMmxRTXMsf+lMvcHiYjOTFzpyU/QRj+jORa1YNIe0t/rj6VGceDfAJlFh
         ZUJAqYq1dUvKdkix6kmNXwVVAlMDnt0hLa2O05/zkKyxpl4nVyeTAGFhcC4Nc7hWKd/X
         kJbZubFlB0PdDJpLOGjeQDc1xdiZHPSh6aebM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tKzWLbxW2ZKnfpR21m+PFwl32HzjPRkl6aao66v7nyw=;
        b=Hex2JYk3wuDzwnpLpw1Ko1QfJfQNvy/rxNkDxYtn1wMhR+v8Fq4/WEQKmNwHvZwVcM
         kd4f2NLsLsTeLqXIK6yMKUnBZsLyodDbCqB45VpmmvwV/Pe9soMNKNRvrA6n375hMPWd
         VPqediYh+op6kbOxpbYv/ot58DZy1BxMQ6IQbDg/uj0IIpYmSQ+YEXnPxDxnDVATs9p1
         eRWkrQX74OYLJAbkJ9zpBDm21j90KcOboXeTq8FvN42gLL1RYwj6uYTkDjuDJedwq8uz
         5Xow9n/jVtjM987ILg5Rg+h6oyO0TJXL0MvJWItfs7GCDzNFAIC4VTdnCbw3vioDfewi
         RtDw==
X-Gm-Message-State: AOAM5318PeY+5j8ZHnhIXGssihwXqdNcZvcHB3rBSlqgvxYIOBDdJUC3
	7/tA4n4AQv58gVnRYoJHmhc2fnLTt8dlUA==
X-Google-Smtp-Source: ABdhPJwYWEiNYMvqjvu8CqDK4VPyJRrU4c/3eK2/Mof85cd8n5Vp8n8DLXbvh8N3THu2aIuvpJTmGA==
X-Received: by 2002:a1c:3284:: with SMTP id y126mr1042142wmy.146.1599511839649;
        Mon, 07 Sep 2020 13:50:39 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:39 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 05/32] scripts/run-config: Fix buildtools path
Date: Mon,  7 Sep 2020 21:50:07 +0100
Message-Id: <20200907205034.1941516-6-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index 161cca4..8e175d0 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -104,7 +104,7 @@ if "buildtools" in ourconfig and args.workername:
 
 btenv = None
 if bttarball:
-    btdir = args.builddir + "../buildtools"
+    btdir = args.builddir + "/../buildtools"
     if not os.path.exists(btdir):
         btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
         if not os.path.exists(btdlpath):
-- 
2.25.1

