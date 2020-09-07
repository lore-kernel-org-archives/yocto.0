Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web12.6486.1599511856534379994
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VhktgX3B;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id a17so16928987wrn.6
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ipXv4bW7lCeRvtwKU2npyalNn/LRvljnNR6+UPAkAug=;
        b=VhktgX3BS1L04lxsGOwwBFycd4uaDqcX9eVuB9fq7ZygaekKZvH/GM0IoSVCZpuWwV
         p+6rsCN1YZAPC4SlEtT0XjCYf7tOv7+ns+vH2fo24TPKgq+19uK5ZNnefaZ6To7Ofu9p
         +aBoxxIe5/RE0DEfa51SezmV/a2KnYOe4WAiE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ipXv4bW7lCeRvtwKU2npyalNn/LRvljnNR6+UPAkAug=;
        b=aEeL/TSi3FXEakQJH+g+YHIYB126kGrlyQqWsMsBXCxy+AUU6Xa6qK7OQwptlAPV5t
         QnnIT37JSg1RLBKtqXI+nhROe8fsYPvdCafp9UfHd/8na2YOL7qn0IYZEqt6urdqRY8z
         u8TKJfOKOR6gqkp6KYLOocMQF9TZul96AZ3qObjhpNwWWcalgMirHO69d0n7OkAATgjE
         +LvSe6kV0QhKgauEaSNjY9BdFMMmSEBnejspkgSMiNffONUsQ/WGl8ME9H8vyh9T5o7s
         n8tAf7UvHrwLnzhukpynvPJfjQbbnTjq9lOEKSr24SIVWbjfndy7VJXSYIARo/20DCpB
         AGKA==
X-Gm-Message-State: AOAM532o/LEBN6pRD5LG7DvL32lkzeHhjjBzyWjWtBjibsPkQ6XMdi09
	AQf1ZrknbuWr9ju4DtoIaExQZFs2MunV+A==
X-Google-Smtp-Source: ABdhPJyVLelku+KOj+eaXlMHdh7bv8qtqstTzaNV8TdC/8gPitL5CWs1abogMuoae2NUPHlGVX3OTg==
X-Received: by 2002:a5d:6a47:: with SMTP id t7mr23048552wrw.75.1599511854836;
        Mon, 07 Sep 2020 13:50:54 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:54 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 20/32] config.json: ltp QB_MEM parameter was being lost, fix this
Date: Mon,  7 Sep 2020 21:50:22 +0100
Message-Id: <20200907205034.1941516-21-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index d3b39fd..df67545 100644
--- a/config.json
+++ b/config.json
@@ -109,7 +109,7 @@
                 "TEST_SUITES = 'ping ssh ltp ltp_compliance'",
                 "IMAGE_OVERHEAD_FACTOR = '1.0'",
                 "IMAGE_ROOTFS_EXTRA_SPACE = '1324288'",
-                "QB_MEM = '-m 1024'"
+                "QB_MEM_forcevariable = '-m 1024'"
             ]
         },
         "arch-hw" : {
-- 
2.25.1

