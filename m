Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web10.22127.1599744644478860207
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UJfSaJaR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id w5so6697985wrp.8
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=GRvWVGGMPHEp2YFj3eL6thbb3J+ucv5F7fHtdGkK8NM=;
        b=UJfSaJaRCCZRviCIF9uPTjgJRfrdNFQ1Y471U4hyUeI4Ic7QFuYY5INAi5QM4WxEZQ
         fiuE90Nu0sqy5eLKXHcBH7BTjZf3gCCgo3VpIxAU2e7eJQM6UgkoBzyDFDxIy3JBDZ1X
         2+JpWSssocM5IwyzBguhdOeOoyf2siidF+Ms0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GRvWVGGMPHEp2YFj3eL6thbb3J+ucv5F7fHtdGkK8NM=;
        b=Mw/V58qOqAP/YSavuKwW6Vaf4CmyJzHHcRz9QuxTldc4OlXeikHOH+R6yQiaesT+xE
         u3y+DHqGESVJo33fzmrtFH28uyVMMOc+u4WstQp8jR5fml7CQkQ6A5phjcDMBXaYbC5u
         OViyq6mXcH+PP3LlqUKbZcmtSzMkcY1JxBQnFwiVD/DUDTkMfFvXmCWgrc+kpU9Kh1p5
         Aflyv0ZDFGNPCqM5L6i38N2iv0U4FFwhl80Gmzn3Shv6BgMxFN+OhUc3meWYZtuuJarY
         /G++LqTuarFnZjLvnuk3p2U2+6wM4d9Xe1HDi1yS+zxkXdB2lLiLWCXQ+kVGjL0E/IIZ
         M5kw==
X-Gm-Message-State: AOAM531so9Fw39XUll40u9t8KuIF8ThgITjzJ1e1sQHJ/KYQZZCbdEfl
	d2val0731Nvmt2VfcKQxHhEyFTeCxGNStw==
X-Google-Smtp-Source: ABdhPJwdujK8XjdeyNPsSnuuYKXOi5vGt0vWhEE3cLWIrXyTn/F3qPnXkpmyKDmraNqN+j3vN+AC2Q==
X-Received: by 2002:adf:ffc1:: with SMTP id x1mr9376441wrs.54.1599744642720;
        Thu, 10 Sep 2020 06:30:42 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:42 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 08/40] config.json: Hide WARNINGS we don't care about for meta-gplv2 testing
Date: Thu, 10 Sep 2020 14:30:03 +0100
Message-Id: <20200910133035.2044355-8-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We're not interested in these warnings, the license incompatibility is
expected. By hiding these, we'll notice when warnings we do care about
appear.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 180566b..637d416 100644
--- a/config.json
+++ b/config.json
@@ -523,7 +523,8 @@
             "MACHINE" : "qemux86",
             "BBTARGETS" : "core-image-minimal core-image-full-cmdline",
             "extravars" : [
-                "INCOMPATIBLE_LICENSE = '*GPLv3'"
+                "INCOMPATIBLE_LICENSE = '*GPLv3'",
+                "WARN_QA_remove = 'incompatible-license'"
             ],
             "EXTRACMDS" : [
                 "../../yocto-autobuilder-helper/scripts/check-gplv3"
-- 
2.25.1

