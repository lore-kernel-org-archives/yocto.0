Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.20816.1599740769867351823
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GE9teqhb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id j2so6485722wrx.7
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/a/xLr053Ldy6HkYuGt9MlPrFd4yDBFwHgI9AoFKDJE=;
        b=GE9teqhbQDkmEAQGrb/78Er0FN6ivl2p/urcTK/7KZb2VkAWm6h4Q0juMYvfeCB8lN
         xhVoGybOVzxWTpiSV0259tt0DdLpLrYobEgN+Dxhmcw00C5HzXRzGCbELKrHrC5eh82/
         VoDmHrsNasAO6zqBealncwiVOjXW75TQnEiO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/a/xLr053Ldy6HkYuGt9MlPrFd4yDBFwHgI9AoFKDJE=;
        b=X0HmF6QXY2uZzdpqiArp2iURVVSb4atc3slooz2C/y3tjknMnBD7M0w9K9uAY8Mdhb
         haVEepGi/l9w3LNPXAMIF6cMALAuTH4XhK3A76gJiyLYd451hz4Q4m5fw6Vu/Ac2Q2hG
         B0oE3NiCqeZuAt98gkSLxEJ8sGv/DsgMuxuVa37R3OueqfirEOg9WQAeKXlHpmHYkfaS
         tjv14n1jlErPWVQIDhwXc0FZVkap6PA11JVn4IdeHhQ26KMIeFc3oeiz7AoxgqlAasLn
         HYdWPw9dOv/XfFVZ8EtjHL/++FUHhakibL8zTP4F/WkqrxxBqwqvDAA5IhBMI9+WsClH
         Ahag==
X-Gm-Message-State: AOAM530nweMarJx4zk+KStfg1Atw5qFQBeGYibYy5i3GgVVeQi75IdsI
	cuX8ke4GDdqFkeKefg1qiBoWU573/Cp46Q==
X-Google-Smtp-Source: ABdhPJzo7F70TcfM1TmnF66ER3xpgZzSykfmIl/xx7glfAfO0bjvgSD2AoOVzC6J8NUzI1nf4bU77A==
X-Received: by 2002:adf:ebc5:: with SMTP id v5mr3858087wrn.380.1599740768108;
        Thu, 10 Sep 2020 05:26:08 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:07 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 16/41] send-qa-email: Limit results clone to shallow depth to avoid timeouts
Date: Thu, 10 Sep 2020 13:25:28 +0100
Message-Id: <20200910122553.2040430-16-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

