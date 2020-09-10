Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.22165.1599744650397193814
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aq6a0/Dk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id s13so48761wmh.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=9J2k7DsurTUAW2kRaEYPkxzwF1yMRS+lCQuv6qLI3Ds=;
        b=aq6a0/DkE1TOilxZFN66UAnzQz/hqFWmdbXw/yVpzfUo05uozseXVqJrMYHOwHRe6p
         l93zbg12bOYsOouuIj38Lukt4OGaWYkepJLhDJDG1cbIqx7xLgWiBtbKlUlDutc/uKYX
         erlvGCuVj0B2fKpTQbomIXHf7qs7w0NWtYv9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9J2k7DsurTUAW2kRaEYPkxzwF1yMRS+lCQuv6qLI3Ds=;
        b=Ld2jvRAO1lE2ZaCt4r9+osamw03+GzaJtjS9Op8dTl4NM7/K1aTnNNoWHp438zuDYs
         JaJiClNecDRs70ewabh1V41pWZw3UxEu/Noj0Js5DRk9s+1xnXCfsX4ZJLWZiQjx7SdB
         /81sdqnMBYgVnPliNuLLUP9IgYqPhEyuPs1lB6FuN2CP5bBm4NCjDVxvwP69OZdxL59J
         T9nYyyreop7qHPwDHax9tIwG7vLHz4gjNzgB3JvbfO/oryUpw1ipmkD8/c2C0rKcTGYk
         B7fiX/mcyOjlNKOBkbMJO9Q6LMv1Lx7LyCWERZ8yT7peeHSje6/8m34U5LXju918uSuN
         BnXw==
X-Gm-Message-State: AOAM530xAyNE059slOjbiOaXg+uv/ZG8/qiClzDMoZLqcDK0/Jemh1tC
	iD7W18Ry3z+y1a8bFCeecp+vk0g3TvK2qQ==
X-Google-Smtp-Source: ABdhPJwLwVi28qMqofPEDb9GEjFnTvD4rSNRtvR+BY0p3Tim0BlU4k6DyjKjk517oR2bLgTy8a7Lgw==
X-Received: by 2002:a1c:1fcc:: with SMTP id f195mr66844wmf.127.1599744648695;
        Thu, 10 Sep 2020 06:30:48 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:48 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 14/40] prepare-shared-repos: Really fix shell globbing
Date: Thu, 10 Sep 2020 14:30:09 +0100
Message-Id: <20200910133035.2044355-14-richard.purdie@linuxfoundation.org>
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
index 2a2b343..8400d09 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -39,4 +39,4 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/tmp") as temp
         if args.publish_dir:
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
-    subprocess.check_call(["rsync", "-a", tempdir + "/*", args.sharedsrcdir], shell=True)
+    subprocess.check_call("rsync -a " + tempdir + "/* " + args.sharedsrcdir, shell=True)
-- 
2.25.1

