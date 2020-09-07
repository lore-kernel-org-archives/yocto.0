Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web12.6476.1599511842081011693
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PZ4KN8Q7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id x23so5454431wmi.3
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/a/xLr053Ldy6HkYuGt9MlPrFd4yDBFwHgI9AoFKDJE=;
        b=PZ4KN8Q7JhHbqe/BAvXMS/7GhC8nR7VFFv8slOiY8Px9qE3rKMLaxN8hgWiFwNbcNI
         B7WZhK4OwlQCjHBE5dE1K51obuNDywvlyC3k0slNs540iKyWNa5P0WtdSQK5zfPqHZZo
         jBRm3jkNZw5J/qz6KAgEXRZcPfwymVzzx1BmQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/a/xLr053Ldy6HkYuGt9MlPrFd4yDBFwHgI9AoFKDJE=;
        b=CEXSH6uMAaDJQsGWGjpQHS/S7MPY7wDMmW9+RfTgLv0rowMv6tTdR2O8rjqJUSlBfF
         Y4wWI+eRBue0mIFFWZLVPppIreNmeN0+FTqFq5IwMiQqNOu1n9icZPrYWA1MQV91Cubf
         3W/es7z39D/RLng+jL6zJ4MwfTndfGG2LNuyXhUhnl/esAUPVqLddSvMi2Gg2c6+qUuc
         byNVMKbEBqxZ9jDj+nVHBoVr0o3+MePI+L6qbOHbTBnAehNpzZMVElOmL5moiePYfFkX
         ZkJ8lTftIzWrZCbdRPnjTJ0ajf8sHDXPVZdw0MFyWrFQu8U5iAomGt9EUkCoGQBfZErK
         5Aiw==
X-Gm-Message-State: AOAM531xK2b9HG4AtUwL3WXvP0HSVtwvUYpiREfRURW/MBD8oUFpHW+7
	eYtxyRcO2DRGRbKOxBNbb/tow66y93EHAA==
X-Google-Smtp-Source: ABdhPJzTqz7ew57ZTYpZzQTxH4cU04vfhh91VNzzQqGrqUq4PIey0nS/qyybt5b7mN5Pvrm4EkNYQA==
X-Received: by 2002:a1c:4e02:: with SMTP id g2mr987266wmh.3.1599511840350;
        Mon, 07 Sep 2020 13:50:40 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:39 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 06/32] send-qa-email: Limit results clone to shallow depth to avoid timeouts
Date: Mon,  7 Sep 2020 21:50:08 +0100
Message-Id: <20200907205034.1941516-7-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send-qa-email | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index d2f4574..7dbc290 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -61,7 +61,7 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
 
     tempdir = tempfile.mkdtemp(prefix='sendqaemail.')
     try:
-        subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir])
+        subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
 
         # If the base comparision branch isn't present regression comparision won't work
         # at least until we can tell the tool to ignore internal branch information
-- 
2.25.1

