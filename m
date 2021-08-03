Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.1271.1628010155371420859
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 10:02:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o1ZoTVsk;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id c16so24469396plh.7
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 10:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wO9wYj1y0agRCHTIxYjgrs/d+ZDx7r8wUr1gup51Lyo=;
        b=o1ZoTVskcPGTOszcPcCyze/UwNGdmSw4HLcnAg6HgN7TkvlUhF6LmIvFs4ZajnhKC4
         BJa7tFk5t1ERNC/We1+BBOOOqK0OjlPz8kMWrWMhxWVHSJ3BxNKoW4HzJdaALQrOudRy
         o6bVKnT2VspMpWXKCQ5/UjHtbP50wKfhfkVr7D5XSFe/quxkDzd8WGgtWiTq1xlidOAQ
         ZVYonkMMlA+/aj+5GbPZudbAWfM3pfcROqqzyrMSBkaqp1SWlw8OuYRKtLxRAwPRo3iy
         k7mQdAHh9B/v1OC9b7Mw2IU8/eWBNRLsVsuGAVeZZySaX9asJ1iJT0B3oTLB2PGNRWBi
         TReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wO9wYj1y0agRCHTIxYjgrs/d+ZDx7r8wUr1gup51Lyo=;
        b=C7MPCRcIHlq+3f9HBPNo9cC3wfsfYWrHjXMnlWZggikoYfaDdsefBdfnCO5TIwk9R+
         ev12tbPppGdatHehCQRs3UxHAy1B+tsjbNvtyxg5Dh6WzxWF+JlyuPVYGfEGyyfaAVtR
         sH9KUqAsRT0I+XcAtMOP+JLQMgu7KIrG+E9sHTiwcZkr3NZyHfXeaoOFAX2RDh3be2pr
         mUcLcwqH4bspXn/fxGxNXbuxXPdnYnqk/xFIE7LEEkM4L370D/YVUOWl2tRmi/0vIUMk
         QV6ZjCiRCXLcBf9/laE6RhW4YyhbZyPtjq8fQjtjpDsy3pLHS1npHoFbgBFyUEVaYfLW
         T68A==
X-Gm-Message-State: AOAM533gqw1osJNAaixoDi8GzcaB1IXQzTktwY+gn+0ttMJDU+PHezqv
	7DIM/p74JzdpEgscUExjSFPg4x+TTWiBGA==
X-Google-Smtp-Source: ABdhPJw7UKK8OIwrVXUWxU3UfIjkPJjA5X69m2Hi9LmbhCFxO245yHFXTm+ECFJApF7+BbgYGWa0CA==
X-Received: by 2002:a63:70b:: with SMTP id 11mr546845pgh.75.1628010154590;
        Tue, 03 Aug 2021 10:02:34 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0:db81:2f56:60e4:2c64])
        by smtp.gmail.com with ESMTPSA id u13sm6526069pfi.51.2021.08.03.10.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 10:02:34 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH 2/2] layer.conf: Drop compatibility with older than hardknott releases
Date: Tue,  3 Aug 2021 10:02:30 -0700
Message-Id: <20210803170230.2647035-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210803170230.2647035-1-raj.khem@gmail.com>
References: <20210803170230.2647035-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

New override syntax requires it

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
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

