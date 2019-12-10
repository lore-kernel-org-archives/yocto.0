Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
 by mx.groups.io with SMTP id smtpd.web12.5092.1575947611577848781
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 19:13:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nE7oHCbH;
 spf=pass (domain: gmail.com, ip: 209.85.166.68, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f68.google.com with SMTP id z23so17144056iog.11
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2019 19:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X+bilqYKZlb/gfpbNTP1r89XA3aKdgKRRelzHh4NzfA=;
        b=nE7oHCbHRGg8fuht1fFsMvHf0wU2VNVpzyuu41x7jAa2EQtHQL9PusrmB9ACtrUtaC
         G0YtqUK6uAl+9zEE9P9MaJRgTafYHb3Gv5GCgBlGc+vRgesi2Jc0Ue5e/J3bHCR9jpjp
         3X4V93e9oAYPwwg8ta43JmPR0R0RBLkgClz3ngrRUKo5Yi/F5ign1oodlq+uYDJlNSxB
         NGza7msfWgq+akyFkvLnER7+IPswQI7E5Gw7+cXuHL+ADJiFQGh/hQaWFFMOs6WOHm4+
         Hsv5knSsKbIiPw+uLK3n2UQy00ga+tgyrxX1QvByEUTZwbJR2rXAVRcm4k5+F8iuGcir
         3HNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X+bilqYKZlb/gfpbNTP1r89XA3aKdgKRRelzHh4NzfA=;
        b=J8rZlw+R75m14H1ApwTuQfAd66/6iv58Y2k7wsuMEJhJax35tcFUtf6UWnLVxnLOub
         e8DDMPa1V/0K8iN9wRyNkmnH7BF2fbOwK+xU3TIDZxULfBvJtikRU0i7+t5SubW+Okc2
         rQUraZ0tCchTPZsv69BjyGKLin6JLOLZAT/4/Jw83D6BKCenkReLEsTpGzRvXOFHDerq
         vDDht9ETOosPaHn/sy0niBrHRSyg1h2WHn+DE561bOK0rwsGW/+Cg6bP8GUCG+VW1K+Q
         +g7lof7FFcirP7B0M5xKslKc+vRTHERPwbfij6GdvQyUq2YL59C6IriNKc0v1NAu72hk
         PR5w==
X-Gm-Message-State: APjAAAX934LYbclShy1FzNrsDpPS6wt3h8VLxbLGNpaFTexcfKy6w/jh
	YDD9iBwN0pKdQezuoyyIYaWSJ07uAkQ=
X-Google-Smtp-Source: APXvYqxQwXqlMvyOsMWczkdvEumn+IQ0vrDXv3HPb8rKEFYBJwoeAHGW4MajeaBMJ86WLHicFkO9zQ==
X-Received: by 2002:a6b:e703:: with SMTP id b3mr22590688ioh.307.1575947610690;
        Mon, 09 Dec 2019 19:13:30 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id c23sm366638ioi.5.2019.12.09.19.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 19:13:30 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH v2] mesa: Enable panfrost for rk3288 SOC
Date: Mon,  9 Dec 2019 21:13:26 -0600
Message-Id: <20191210031326.712142-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191204151505.2289576-1-JPEWhacker@gmail.com>
References: <20191204151505.2289576-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Configures mesa to build in the panfrost and render-only KMS driver
when building for the rk3288 SOC. The panfrost kernel module is already
compiled as a module by default for armv7.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-graphics/mesa/mesa_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
new file mode 100644
index 0000000..5856c71
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -0,0 +1 @@
+PACKAGECONFIG_append_rk3288 = " kmsro panfrost"
-- 
2.23.0

