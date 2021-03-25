Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.1110.1616695963556347405
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 11:12:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=cOU5j51N;
 spf=pass (domain: linaro.org, ip: 209.85.128.51, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-wm1-f51.google.com with SMTP id g25so1725515wmh.0
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 11:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qu98X6V2bnJyYxrdC2DQb918tH9SfghL1RKe/aPubyU=;
        b=cOU5j51Nf9ZBc8zVyEeGkNkeyVs6mF0g72jNyqnHGIA9xFKKNTpk9nI6lKp+oEBzpe
         mAQha+/udZDQGfpnzBi2aE48kSiDXmCjCc5CzsFiEMlV7zEtQl7NbeGoXpK6WfzOik/D
         HfdPfqps3xIT8ynrNsigmKV/nBW1AO9EcPkCYFwLgWBK9OzK3THYdkZF/H1HORS7q2vd
         hS0YknbDLzO7PlAleBovexWeYViu/X1IOFEbgyujrszxwXJ32NXX6B3giC2qh6OnNk4G
         Hb6RsZ1Q6um+utoEzQXtB/DNmcGNHEEj42UW/++bGNMosoXuCWNH6mWopisTRLGH4Pe9
         IkhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qu98X6V2bnJyYxrdC2DQb918tH9SfghL1RKe/aPubyU=;
        b=jCXnlAzbNW0Rr+j1dZvFSbQQEsxkAUvRA6iiRxv3qzOIIDaLb5h/HPkKe/SOllYp2y
         05c2a1jZHjNZ+tb6eusWUZxByl3ZYUO9aMPW8+yT2GvK8Rmzimaot62wI1CZ1hYJh3in
         zKxSH1ac3zYwB4gh/wkO5/IyHvAT75QtQKaQ/EyANF6a/gxeIXkbSK77Lw9CJZWhJb9N
         /iqCC9Rznl4GUg9lWcL76zbfMOkFFqmfl8LsBf3dGD8khyEUFPZNaqIdHbi+onDPzNSn
         5wbdUdE8/wdSUzm9OxAp/9FNzSff/sW2rTQWqyfid2buGpH86QTs5BuQY93ri4ujWa6T
         Jc7A==
X-Gm-Message-State: AOAM530b8bjxVh5lp62E/D4NE/Z0rH67BYUg//pO79i9OM5YsPSfpA+h
	0CG/qOf2vlxQwSQBtg19AAY2AcuTs7oN+SVv
X-Google-Smtp-Source: ABdhPJyCU3P2rzI192K9R5he0J1Ly7SOAd1pNGSuajF65uvJhAYifCtnF0O+KV7HdCC0QThOA6kCzg==
X-Received: by 2002:a1c:a543:: with SMTP id o64mr9324365wme.107.1616695961806;
        Thu, 25 Mar 2021 11:12:41 -0700 (PDT)
Return-Path: <nicolas.dechesne@linaro.org>
Received: from matterhorn.localdomain ([2a01:e0a:1b9:3e10:bf7c:ed85:7b13:75ef])
        by smtp.gmail.com with ESMTPSA id c16sm9383506wrs.81.2021.03.25.11.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 11:12:41 -0700 (PDT)
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
To: yocto@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Cc: docs@lists.yoctoproject.org,
	Nicolas Dechesne <nicolas.dechesne@linaro.org>
Subject: [PATCH 2/2] scripts/run-docs-build: publish docs for 3.1.6 and 3.2.2
Date: Thu, 25 Mar 2021 19:12:11 +0100
Message-Id: <20210325181211.59332-2-nicolas.dechesne@linaro.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210325181211.59332-1-nicolas.dechesne@linaro.org>
References: <20210325181211.59332-1-nicolas.dechesne@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixes: #14308

Signed-off-by: Nicolas Dechesne <nicolas.dechesne@linaro.org>
---
 scripts/run-docs-build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index e8e081c..9c7ec8d 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -77,7 +77,7 @@ for branch in dunfell gatesgarth; do
 done
 
 # Yocto Project releases/tags
-for tag in 3.1.5 3.2 3.2.1; do
+for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2; do
     cd $ypdocs
     git checkout yocto-$tag
     make clean
-- 
2.31.0

