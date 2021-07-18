Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.20544.1626649678368659448
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pCBeeh1k;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id y17so17124261pgf.12
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zfAr3WBnb3ihkMCqwRMtuyfBIbQaL7wrWQAFMZndyIU=;
        b=pCBeeh1kdoMWd+fNLQq2eDGUylu07rAatkWdl3oycg+cgT+rxoaMKJaPP4SmNoPNRV
         Khyv9ZZwkgXzz8kSMaakyW31D2okzIC0Ia5DV7n/yBcKTGah5fxSmCds8viPgUxlBguW
         /9ajnJg7RwWk9Rg0oWEmCPGQoJBz0i8qrx+Ni2CL8Ae1MZF/F6+w65l6uMDnqe2zbmOv
         HpEygO0LbWX9Qx9dMsK+mn2QI1Z8pLdcELX+bdXG9HUy5tDxfCbcBhSwlj8RpMKRZnG2
         h/IKz8Fh+9MM3FJpsCMnJz3zqDgrubyCbco2PjLiI6YsRijeNyxyq5wx8axox3c0VxlB
         SxFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zfAr3WBnb3ihkMCqwRMtuyfBIbQaL7wrWQAFMZndyIU=;
        b=RjPxhEy0Rrz3L3qJL5oSTwc2ePE6GQ0tAXVWTeINJj8W20fuggDE9l5Joq7ATrRKGA
         WnY02IKI5iZQiEiWy4XPJ2Yh4A2zqnwKpN2f7KI+3RQ+GTqtWeM1Yrt+zlzZiylRZG7F
         cynIqt5mLjAL2bCYMlbHmW/G0N1mkXVDqeAZvpW5MCOMMqJ4/ierZgZe9F/mhEXjRhfV
         /hkokNKQ4uHErD7LXkbXRmVPbSGIKy5xtuotU61JhI6bVw/sr8YYpuKl382nfqd1laTo
         W0Q0Ol+Pfa6W0HQRTA2Dh2L9TXkiMxNRda2hwpazkV/Zc7cY7ygb9TI2aaQRqyUW1huY
         scmg==
X-Gm-Message-State: AOAM533mZHwNdbjgW0xQfmzC1UY3DlTrSS92nk3p6d3OwtKVMLSf8Vt4
	wwwkmTFwFhCDu1j2Ih2ZbfclPfJceI0MfA==
X-Google-Smtp-Source: ABdhPJz9E5obfIE02fu4LNU8cSQf8tCposenaFf1uVgtouKIjvCQZqFRO5eQZeWgYEAJuF5Or/hDGw==
X-Received: by 2002:a63:381:: with SMTP id 123mr22551228pgd.395.1626649677830;
        Sun, 18 Jul 2021 16:07:57 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:57 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 11/15] about.html: update contributors
Date: Sun, 18 Jul 2021 16:07:16 -0700
Message-Id: <52b5d31caa15c4992a3b7b2a7a8c1a8ce748a4f7.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

* Add
  - Amber Elliot
  - Tim Orling

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 templates/layerindex/about.html | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/templates/layerindex/about.html b/templates/layerindex/about.html
index b6b461a..f79bf22 100644
--- a/templates/layerindex/about.html
+++ b/templates/layerindex/about.html
@@ -51,6 +51,8 @@
 <li>Marius Avram</li>
 <li>Saul Wold</li>
 <li>Aníbal Limón</li>
+<li>Amber Elliot</li>
+<li>Tim Orling</li>
 </ul>
 
 <p>The code is Open Source and can be found on <a href="http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/">git.yoctoproject.org</a>. Patches welcome!</p>
-- 
2.32.0

