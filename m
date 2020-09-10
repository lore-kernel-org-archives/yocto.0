Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.22149.1599744660837529400
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WvBNu2Lh;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id x14so6685575wrl.12
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=AJIcCPSgRQaVYUe1WiWAErItLEOEwQW09AablFq87Ds=;
        b=WvBNu2LhTwSE1wF5EYIn0WO5OBNtfvqxZQsqQzNQw7E2b3GRNfLBFyelnqI4GHCjHc
         2Y7A7sEPBNNTZS+UZU6wKy61Xlg87g3lOQP5p5zVezq9Lt5AHjZIwS4OWX4ZkT1HrMFI
         +4HG6zXR1apWGIBl8PlxE7CBIAh15dK6NqjMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AJIcCPSgRQaVYUe1WiWAErItLEOEwQW09AablFq87Ds=;
        b=Zq0EnD089Tj/4ywcR0taBK9Ll0kf8ZmRk/IwwLwl92r6AebhDCYPrJp9xx3gcxGcG0
         zI0tQStybG58ulA7SQ1CU5oUXwyLNdjQ2Xh6BFYbR7+TKSv7UTWaLZIT25S7adt7mirQ
         BQc9nJJxxikMTBxugATCrY2IXctoKAH2kDgUNCobyKYDGcJoA1igTAYJVxz/BwWKatxu
         KYJXotOiKVRZgv3OD0Bem+bqN6513lKX3tP2HUvr/BnLTI5kSrqC0WSMCY2BP/hotKdy
         8t6Sj4zX3VR4GpWXMK6szIooGUvZA8SxAVMR3G6VuXFv9jhIxzjZhuQmMcc2D/qPDOTj
         OqCw==
X-Gm-Message-State: AOAM531ssv5/mpD5xzwcMiSR2Q4vHvMhBMvI3qQk12Lri3+Fsrc0L4ZQ
	fmBhx1P1vNv4pSnELfgldEi1FfxhAF7tog==
X-Google-Smtp-Source: ABdhPJwxbjfUb/pA7N7UgJbbZ/SJhI/AJrGPuCc1ntjX+JoBrh8utW53pLmZCAu6PxkWMVuNbCJ8eA==
X-Received: by 2002:adf:f5c7:: with SMTP id k7mr2731132wrp.246.1599744659154;
        Thu, 10 Sep 2020 06:30:59 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:58 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 22/40] scripts/run-config: Handle quoting issues in buildtools environment files
Date: Thu, 10 Sep 2020 14:30:17 +0100
Message-Id: <20200910133035.2044355-22-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index ce1f36f..b4f1d58 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -111,9 +111,11 @@ if bttarball:
     with open(btenv[0], "r") as f:
         for line in f.readlines():
             if line.startswith("export "):
-                line = line.split(" ", 1)[1].split("=", 1)
+                line = line.strip().split(" ", 1)[1].split("=", 1)
                 if "$PATH" in line[1]:
                     line[1] = line[1].replace("$PATH", os.environ["PATH"])
+                if line[1].startswith(("'", '"')):
+                    line[1] = line[1][1:-1]
                 os.environ[line[0]] = line[1]
 
 finalret = 0
-- 
2.25.1

