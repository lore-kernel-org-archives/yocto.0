Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web09.7942.1613570986298746190
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 06:09:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NaPF+qpW;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: liu.ming50@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id e7so4630237lft.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 06:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LIB/KFat2slcmUz/BnFDwuAB6S+FBqbJflvX16VXrYA=;
        b=NaPF+qpWjogjSKk8S9DyOjZQ4bqVt0zrTtbeNAOejfN/DZJqMAYApVsNl5kCvcU1P+
         Ne052bI+oUbpbr5/Cn68oZVcGYKPCW/rQfvgs+qLUL2oxVovniIUbOajcTip4V+e3Cu7
         d0atBO+5NaZSipUmVFpRwCd37RuJCrOlJ8SO8/O33XY0qxQTlIW/PZMfqQm3A3h1+GmY
         789ViDhVkhr4Zv3sws61hXhv/woPijhz90L6Somz79109ak5HZdWzp/Jw4lrEvJfkZCk
         e3tZwQJjyNBvtZeSJljvp/pCI/dZp2QWv/rQhLfonsyJmiNIjyI3IFyLBXCLwJ5r0zG8
         2/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LIB/KFat2slcmUz/BnFDwuAB6S+FBqbJflvX16VXrYA=;
        b=dtJkUQQoMREzNh313K0Wt+jnQ8dghfF5PbrkTP7UaelxFOx9npDMOelT0/dfBBQPgg
         JPRTg0zi+KsUJJ0dwGYjVsSLvKFngqjfr/E8WY1BmmauydaPnlntnYG3JVJo11SPFkEL
         +sm1HMvww2lf0Rc+OM0NX5zNDNJRg+34zSur4Q9biW73g6oMQpUwRAcP4mgZAE2KBs4X
         YuBOh8PeC6PjHFkMt3CcpCA/uFzkB9CpmZWqRrd4VZxNXzObD9b8o7c1btdXzB+/eqrv
         3o3s0+a5JnGjDrM9MliuJOSFqlPQOwxdEEgS2uEyQ2QSnoNLlF8Vd0AX0fkNTVn7ewjm
         Z1hg==
X-Gm-Message-State: AOAM532uGXfPuTICM3aASlQfG0sf7QpU8KzDBJ3MKgJ99FyvOHPrx20B
	VICibeJQh4/9XasnFWkiIy+a0MThGTD7iQ==
X-Google-Smtp-Source: ABdhPJyeJ8+lLS1BGA+P1vdAnLXTV62oPlgIwabv4MTkAk/Xe/sJle9JOlnbY5fMdu9tEURFaDsVnQ==
X-Received: by 2002:a05:6512:558:: with SMTP id h24mr14281040lfl.531.1613570984384;
        Wed, 17 Feb 2021 06:09:44 -0800 (PST)
Return-Path: <liu.ming50@gmail.com>
Received: from localhost.localdomain ([90.129.215.157])
        by smtp.gmail.com with ESMTPSA id q26sm253363lfc.254.2021.02.17.06.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 06:09:44 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@lists.yoctoproject.org,
	openembedded-devel@lists.openembedded.org
Cc: akuster808@gmail.com,
	sergio.prado@toradex.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH 4/5] initramfs-framework-ima: let ima_enabled return 0
Date: Wed, 17 Feb 2021 15:09:28 +0100
Message-Id: <20210217140929.987752-5-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210217140929.987752-1-liu.ming50@gmail.com>
References: <20210217140929.987752-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ming Liu <liu.ming50@gmail.com>

Otherwise, ima script would not run as intended.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima/ima       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima
index 16ed53f..cff26a3 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima
@@ -6,6 +6,7 @@ ima_enabled() {
     if [ "$bootparam_no_ima" = "true" ]; then
         return 1
     fi
+    return 0
 }
 
 ima_run() {
-- 
2.29.0

