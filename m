Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.22137.1599744649727711750
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NNc55syo;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id s13so48699wmh.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=3hORpMkrLCvxUEMxvhhqtvsm+lIY23cHeJgzTVjPsKU=;
        b=NNc55syobvApy51YCG9EJ13jVh0I3oagyAmQrG88DDS3DbyX+kkkaAnoD31VuoM27l
         TTNkcjyY8MglzkdEMcN0iBTPTlKxVQbcfObNHN0/7o9R+AsA2LsAD941Vf3PkM9yBDv7
         2Z7Reqsfwoe+YXuMdcaAJD0Pbu+HOQPb527Xg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3hORpMkrLCvxUEMxvhhqtvsm+lIY23cHeJgzTVjPsKU=;
        b=ng67jJAwCpAV8YYeFK5hX6kTXefy2UxPzKoCz9CTAUhzo+DCJq+95N39d4DdMfUdlG
         rQ6Ex5z7beenFw8e/Jl7foxqGA/iDm0lU390u3MHupRAFcZ+pA/qFWaOIVwRFDq1rcJL
         hNpYu4RTauHyPg6Eu2DWunXYV7uuf2UfKXdZsUPGV+Ba+SahDqthMzhAOC/8y1lnYcem
         33byYyMmFlaz4YggUvs8HxOE/kW0n55IHf3Wy1GzC2v24geiWdhTjSRTFGrdZ6+k7j1R
         XjxnniPLZuo9ElbM/aEZfakDXuIVh4PJELzfIl8CD+JLWEoeLUKWj3/B7sa7Rws9rx8o
         iY6w==
X-Gm-Message-State: AOAM5336IFWpSDf98fz38/3AIs3gIp0JxS3Y4Y0vXMwXw+sAG3UFj2Ib
	YDoUYU6YLeFWAAX9KYNfHvufA3h8Momypw==
X-Google-Smtp-Source: ABdhPJx6EyHxiMbTJMJCVvMU41vlQ302UrY6BRdr0tYMHW9gOoC4T2kE87AR/cH5CJXKM+x5Ota56g==
X-Received: by 2002:a7b:c384:: with SMTP id s4mr9534wmj.138.1599744647978;
        Thu, 10 Sep 2020 06:30:47 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:47 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 13/40] prepare-shared-repos: UAllow shell globing to fix failure
Date: Thu, 10 Sep 2020 14:30:08 +0100
Message-Id: <20200910133035.2044355-13-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/prepare-shared-repos | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index 9ed0772..2a2b343 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -39,4 +39,4 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/tmp") as temp
         if args.publish_dir:
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
-    subprocess.check_call(["rsync", "-a", tempdir + "/*", args.sharedsrcdir])
+    subprocess.check_call(["rsync", "-a", tempdir + "/*", args.sharedsrcdir], shell=True)
-- 
2.25.1

