Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
 by mx.groups.io with SMTP id smtpd.web11.13142.1600341546456657699
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 04:19:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=K+4jaOG7;
 spf=pass (domain: gmail.com, ip: 209.85.218.65, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f65.google.com with SMTP id gr14so2781519ejb.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2020 04:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kpXqztqtqEGizXdtlXGQeIq+BTP1aSBFI+lRuoB2OVg=;
        b=K+4jaOG7fei7yBYarDLL++eKcYp0WP9aL+Qa1izL9ZIm1wKR0I54tkUiBanKownaoL
         4sM8nsCJi1ZmDjJVPv5Cba5zAPtAFSpyiyeKswc35KHiSp2ZRVtfRFwE1LTaupywwQi7
         3eQrRCs47I9cdD9YbZUD2zCyoDnyLR8Z6dM+PUYi4orocatV59OEqJpnXIWJGhar+aeG
         C5f/zdv0MMMYHZCF44NhQQBT59dG6Ws/KdV8pJRIOcZ2cD0f/N9OZvk/2j1yWAY5ueHA
         k1Ex/rzs1rUKT0HO8SC3yBkvpEsymJYXUdR7Mljb7qnuB88JosbX1B8Uor29RWw+dkjG
         BhuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kpXqztqtqEGizXdtlXGQeIq+BTP1aSBFI+lRuoB2OVg=;
        b=V/0snapRApvbvkeMoMhOk6fSKSoevoOa/dA6MFEfQsC4BOwNieC1EAJuT/DrIEnGdX
         LAEHJezCwnX03sLxt7yitBKEz59911a6t7jN9qbR1louGlNCmUPQWcn3dVsLey0abzuR
         oRgwbbsm0LLwMZup8Vv4Yb6aRRRuApjFDrFeMDJne5zsTfTisoslydcuM+1/uqZn7SCF
         beedMAQUVPqmkKqc1AvBbZwMbkHq4g0MZxM7H7lDxqMVNtQeoaDfsrMVk+TOZpsYLTfR
         xZ6TmRlN8EDn1iDIWajpmjvLRBx2BvZbYfdn8sA+WE5demAhXK+0z1rDj6moTOe38BPd
         dV6w==
X-Gm-Message-State: AOAM530U0039J8xtjaRnql5rDW9ggpGIW3zwXK3nARAcSZzOc/wEqEW0
	xo9/IB4nc4KWwlglxOlzSyWZDaASE/u5kQ==
X-Google-Smtp-Source: ABdhPJwsczCcGXbXE49OuuJ9lUsOpKKyRi29FZJkc8N50eyxwmYi5jE5pFNgsOClmR70/JVq+xC/HQ==
X-Received: by 2002:a17:906:1f43:: with SMTP id d3mr28688244ejk.295.1600341544503;
        Thu, 17 Sep 2020 04:19:04 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.box ([95.168.147.4])
        by smtp.gmail.com with ESMTPSA id q1sm10733281ejy.37.2020.09.17.04.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 04:19:03 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] auh: correct the SMTP server in config file
Date: Thu, 17 Sep 2020 13:18:53 +0200
Message-Id: <20200917111853.29449-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Michael Halstead has confirmed this.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/upgrade-helper.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/auh-config/upgrade-helper.conf b/scripts/auh-config/upgrade-helper.conf
index b012600..5284b4a 100644
--- a/scripts/auh-config/upgrade-helper.conf
+++ b/scripts/auh-config/upgrade-helper.conf
@@ -9,7 +9,7 @@ blacklist=linux-libc-headers linux-yocto alsa-utils-scripts build-appliance-imag
 # only recipes belonging to maintainers in whitelist will be attempted
 #maintainers_whitelist=anibal.limon@linux.intel.com
 # SMTP server
-smtp=smtp1.yoctoproject.org:25
+smtp=mail.yoctoproject.org:25
 # from whom should the mails arrive
 from=auh@auh.yoctoproject.org
 # who should get the status mail with statistics, at the end
-- 
2.28.0

