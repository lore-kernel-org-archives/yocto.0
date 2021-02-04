Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web09.2988.1612474357922893742
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 13:32:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W0ia16Xa;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: idadelm@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id p21so6747135lfu.11
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 13:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DmDx/YuKOacXsTotd2mb6ltLr+oO1A3VIUGj99x/9QI=;
        b=W0ia16XaEyM2FodYCyUlQeprz8fQf60NCy9ux8EGrNeTJ8UDbAbmMbz2GQAieN62e1
         2wwhcQ5j8Kl4jYAb4hT8H5Ojr9bTaoTDDytfICF0534gte3z8hdR8V663eqsUr37y+xR
         o089O/i8bIvHvmfC11B1JelRQMHypjsCnWogJFQWxv5peIxOkQ9mdVjl+9VScKqMfMiH
         YsNVigsXnZS8mwUKKes12v9F6c9UKwWGlI4BS1FYFQ82XyzjdhxkEzNUaF2HINgBRpDo
         o6zTAVtNjzKRcyKpRzti+HO4iuxLAIOwWiEnvLEfnys27OkGEjd5J3jPtrCr+yhAWcu3
         Ja7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DmDx/YuKOacXsTotd2mb6ltLr+oO1A3VIUGj99x/9QI=;
        b=SVuyvfx9NsGJLO7YoRcQxuFUKUVapOCimjoWtCnU8219GtRIGhZSwxiCtcgzJtb/iB
         NyD59it1PrCmdlw6EmCteZEAkS3t0a/lsp9C+GqDZmd0q484WBkd6UmH2Cpid/Txtk6y
         mML1gfCse2yDZdKAJz9+MxkSf/SGthQKmWEat/Qz7PUlhoGxRUFHKD1Owhq7ErJnImGW
         uBh0+QcsVPY3i1Q9c94b3FF93y7RJ/yFABpT30VAXmpHJ8snhDuwdzS7LxLZvI2UJLiX
         nbQ0Aw65vjvDaN75qvAle8OsDaAqpBI5Q652jZP+eErGvKwAJ+wuqi7CXrExjgV/K/qt
         IghA==
X-Gm-Message-State: AOAM530jkcDtQPBXhFMsPSLnfXq0WbRuhYxizBGMrEekvdyNfOjg72hC
	FkO1w75UtkPLdxwEirJemq5SMfBcDz4/i5lH
X-Google-Smtp-Source: ABdhPJwSA62EGxALZq1Xkic7sPNrt4BR2FkVj895ieMHjF6RMkEGhsuip3vWzGaW/J5c07uZzGNRRA==
X-Received: by 2002:a19:6a13:: with SMTP id u19mr676536lfu.405.1612474355817;
        Thu, 04 Feb 2021 13:32:35 -0800 (PST)
Return-Path: <idadelm@gmail.com>
Received: from ida-pc.lan ([129.0.101.30])
        by smtp.gmail.com with ESMTPSA id f9sm743813lft.114.2021.02.04.13.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 13:32:35 -0800 (PST)
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: mark.hatle@kernel.crashing.org
Subject: [prelink-cross][PATCH 2/3] Updated email addresses
Date: Thu,  4 Feb 2021 22:32:17 +0100
Message-Id: <20210204213218.12781-2-idadelm@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210204213218.12781-1-idadelm@gmail.com>
References: <20210204213218.12781-1-idadelm@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Ida Delphine <idadelm@gmail.com>
---
 README | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/README b/README
index 2d8893b..7c4918a 100644
--- a/README
+++ b/README
@@ -1,4 +1,4 @@
-Please contact <mark.hatle@windriver.com> if you have a question about this
+Please contact <mark.hatle@kernel.crashing.org> if you have a question about this
 version.  The original author is not responsible for the modified version!
 
 Compilation
@@ -13,8 +13,8 @@ Patch submission
 When submitting patches to the cross-prelink project, please do the
 following:
 
-To: mark.hatle@windriver.com
-Cc: yocto@yoctoproject.org
+To: mark.hatle@kernel.crashing.org
+Cc: yocto@lists.yoctoproject.org
 
 Subject: [prelink-cross] ....
 
-- 
2.25.1

