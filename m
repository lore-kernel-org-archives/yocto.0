Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web12.20490.1599740757246143011
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:25:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hRyXj//V;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id z9so5610998wmk.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=PrSTPcRYJWl0Bzy2Isyi/j83gshQo9/uZHSEDaYux7s=;
        b=hRyXj//Vtk5drtGP1Sc+y3cd5YgyrPmaz0EHXdR/5Jv9nMIUFUyjJJ/1QlTLYkIjT5
         yroBl8sfQ/ZSKMQ5FQLvjZj2hYhNAExLk/5JCgBq31cmSQiHrzC5AethXxjfMx6liGIu
         yMCQVeS2+oK6wGxNdddkouN9DibcW+kNYvN6E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PrSTPcRYJWl0Bzy2Isyi/j83gshQo9/uZHSEDaYux7s=;
        b=dO+1vT78AtImz90G7weq4T9Wl3rwQCSy7PFqfLE6HpiT+Uebiu6xb+14++5Gv2Pkko
         KHLtPpcDAZx90ZAZo+8xkkmbL+SzK41qr4HojDUBGBrZ1BP24gjQjqxqT7AM9X/V4IyK
         PtvlcOgeoYrpW0muqyYNt1mwaqhpPJc7INytjp1BQFQCetXL51/+t2xuFEpsdVPVbtEC
         n26A0UjH8esoQG1YzrjjsAWFuLv27wgYJUnIhLRx+9MLNRjoJKA1gAlGDkl5MiHVG1t9
         kP3NZ9Lha0XiNpoJc/GaMbVL8ZSwV2Ixaq4MbgRDRJvuVXKJ8+53Z9nOInFurdqZitAX
         /IpA==
X-Gm-Message-State: AOAM531sZ+x7c6rLahVbBfWXI3O8AsXMbt/qRUJfCgIXooaGcY0G3C3J
	tJ4i7ZPPnVjXekj2knKh5bnatLcwMETmmA==
X-Google-Smtp-Source: ABdhPJxjbnkcfMZfe9qDW8VQPc0lbdkuA+QHxSZMPYT+tnVRlY5w579Z38nSB2AqxilRym5tg1zV/Q==
X-Received: by 2002:a1c:4054:: with SMTP id n81mr7996998wma.81.1599740755343;
        Thu, 10 Sep 2020 05:25:55 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.25.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:25:54 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 02/41] config.json: Hide WARNINGS we don't care about for meta-gplv2 testing
Date: Thu, 10 Sep 2020 13:25:14 +0100
Message-Id: <20200910122553.2040430-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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
index 90b78f3..43526de 100644
--- a/config.json
+++ b/config.json
@@ -553,7 +553,8 @@
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

