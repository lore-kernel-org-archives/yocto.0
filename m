Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web12.1445.1616688191898386938
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=HyZ54090;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id c204so2528437pfc.4
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+oKSnLGehpmOyMXAyE2KjTyyKjMFZPssS1TmeTdxmzo=;
        b=HyZ54090aE9jwGjbV6cSc7LcpQRu/2nw+CXtfhursGhaDQMdxW98banTR3Z3FUo0aD
         QlzNfYz9QEhQaHUiEUJ6+ZqZV4VeUd52ARqxige1HBYShk23HI+BfcKMIbZjodySafuV
         AHhqhB89FIhmX99fzId4pWdzmySROrqajngUmZBknsjVMROhsv4/4oYJARBaiSrgxLOX
         3p+DopikAoGOeN5QmqObvsrbV0t5ioh7dpkhLWxuY54IF3JRDzIfX20NIwIT2ruH8DMt
         2MAjDv+bbpfO456YiWRA9S1wC3m5wGc2w6N7d4pphDUfVM4+M9FCO+EqD48qlY098lkv
         R0Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+oKSnLGehpmOyMXAyE2KjTyyKjMFZPssS1TmeTdxmzo=;
        b=Jm5R5U8YB5XLeX/KpI25S0p+InhVeiAVYZYh3jqJSd1iLXXs/N+cVywDrQvMsVG11h
         ccA3wL8i/3f/vOIcx/kNl3mGm3HpWwX5yCk+22N7r/GwcD+0OZ0eNu+J5dlrgwrQPU7R
         YfHnHdLGeZu718+OMunD63njv/60hfSjkkJVrx5AjTVpzc070irNBU/rz3Mbd0KyQNAC
         BNlEV8icvlx0bdecg3FTXFdabJFj3O3P1Za4VdP4aJtF2KnwPJQNDJp+rcQM8V6g8oAK
         mzJ49j5imwdiaenGPxt7z9iGU7NbAc4TSGD60EkPltpKThhArGdmS/0pcFeTcjonFJWr
         id0Q==
X-Gm-Message-State: AOAM530lB8LSXMTAPRABK07mQBy2H380NenCJ9QL4l4LFbwVW6gcuzke
	DI5Dku/EhZn5VMCEcPbQNdj27kEQUmGNzShN
X-Google-Smtp-Source: ABdhPJzztaNYXH6uCP0t87zhkVaswuT84W75YcUKA0HG1y3XnTA7j/0NcetUOYSgBz/gPPYGDrR9Tw==
X-Received: by 2002:a17:902:8c92:b029:e6:60ad:6924 with SMTP id t18-20020a1709028c92b02900e660ad6924mr10395401plo.16.1616688190985;
        Thu, 25 Mar 2021 09:03:10 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:10 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 03/15] scripts/run-config: If target is present default to 1 step
Date: Thu, 25 Mar 2021 06:02:09 -1000
Message-Id: <95f21ce67182e2f2388716845afb27187a07e07c.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit e183db413f3b67e0d45a2a9a697aa36b6c90601f)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/run-config b/scripts/run-config
index e600bf9..0b663df 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -84,6 +84,7 @@ elif args.build_type == "full":
 maxsteps = 0
 stepnum = 0
 if args.target in ourconfig['overrides']:
+    maxsteps = 1
     for v in ourconfig['overrides'][args.target]:
         if v.startswith("step"):
             n = int(v[4:])
-- 
2.25.1

