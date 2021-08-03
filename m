Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.4004.1628020296482863465
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 12:51:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cHazh7fV;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id a20so429972plm.0
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 12:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ejUDIN7/YxptHOrEaibGfBN4y2yzmXhTrwu/4GjIzL8=;
        b=cHazh7fVL8TZ8DECri45HwMiIpz4i/WPPnJcQzUy/lPfZSmI/IKVIn46CfZQzXPwbf
         MCDr4NnoxBZFFu03td1V9zii+QGVcETXnil560J8TIkk7Wa89qFtECFop+rschtszp/+
         wkH9llqQRFvRePwOdyIkq7U4vKK9aTsFWoJmpqZc42/knzuu/m2WOmNPHpQuO6zV6KjU
         UJoYASSuhFPP7CTPCnLf86rqP3Gmy2k7PmLfd0chasa5WESWwcq03BuYQ/sfAUgl27CY
         Dy+8tdqo02LeGRvD9tNsdERB5pzY4w5lZ+XPvdOzDmcmd92LhiaZ5Ahtom0Ut89e4y6n
         4RtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ejUDIN7/YxptHOrEaibGfBN4y2yzmXhTrwu/4GjIzL8=;
        b=fa+qByHwclcMgzl5HE6ukLAz+sxhnOOAOcXnwCon52t3rAOxlYHWprat0zYobX1EBY
         ATfklf8B0eDt2KrrKvbn1VrmcGGQiO8KxG+Ggo1YFfwnUiLc7uJdG704D+Fk6wpFhDCK
         ls3izrfGLHEWnSA0Ym6D07YbrUqYincQ9k3ZIf0yXWHfHo/iSIDFmDzjiWJE7wiKfmgI
         17UkSJoVp1kjWdikk/ug0apjQ4fyFsVh6UiyS2IeMOAmP4x5xMBCsnWvhDwGKyrQC4qP
         dKTLalkyFjsi1AbAIU5e3571C7/bcNdJJ2MX92Gri/LQtTAwBIM1deIqW76T8DZ5Dp5/
         cMiw==
X-Gm-Message-State: AOAM5338Mohliar9js5jubyUmVVXwXwSgQ/Q/srNKaEF6cl2psHg9qVn
	pZNF4HtMJd9i5E2ZVHc+hA6MmPfKukYoIw==
X-Google-Smtp-Source: ABdhPJyO11WNqFgPTb1hbZXk0sXNk7xhN/Z0umIJ3rpo8vmjKVIhz/wOX0usyMbHc9wDVQx4PBvQxA==
X-Received: by 2002:a17:902:8a87:b029:12c:7168:d608 with SMTP id p7-20020a1709028a87b029012c7168d608mr19822791plo.25.1628020295866;
        Tue, 03 Aug 2021 12:51:35 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0:db81:2f56:60e4:2c64])
        by smtp.gmail.com with ESMTPSA id d6sm17808430pgq.88.2021.08.03.12.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 12:51:35 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH v2 2/2] layer.conf: Drop compatibility with older than hardknott releases
Date: Tue,  3 Aug 2021 12:51:32 -0700
Message-Id: <20210803195132.2702516-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210803195132.2702516-1-raj.khem@gmail.com>
References: <20210803195132.2702516-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

New override syntax requires it

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
v2: Rebase

 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index f97fb69..25b0a99 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "hardknott"
+LAYERSERIES_COMPAT_rockchip = "honister"
 LAYERDEPENDS_rockchip = "core meta-arm"

 BBFILES_DYNAMIC += " \
--
2.32.0
