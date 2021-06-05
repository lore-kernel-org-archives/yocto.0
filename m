Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web08.17240.1622930583451806428
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jun 2021 15:03:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VwAL6Vob;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id t9so10794679pgn.4
        for <yocto@lists.yoctoproject.org>; Sat, 05 Jun 2021 15:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jwyG8aPDh+2hIn8oyCmQxK+w3qw9gCdW4+4ZMcZmbuE=;
        b=VwAL6Vob8PSoa3fN9qt85lcCKYJio2n2bKMs/G4hZOdMU2fNw81WEaCUeAQ8ewit4c
         rCPodbYOifY7ALyISBko1FuqaFUHPPYpN9Lu2pFLWTqSc/G8cnUilCPB5/EgwwvWUNoi
         cV/1K8rAqcpxY/VkMdFy28DXoEYYvGrGzl30b/mxHFRAeH+7sZeESbYWWVwd3Dot91rk
         j2E97gAG9amYz374xS9Ior28tXQ4FB+1p++8930LRpAIkAGAz16Q1k3xqkLiptnK+K0a
         5P+9AzyscGsbW7wEotKywKEYRU2O2e9OMwshD92A+cTOp61RoqexHRjY+LIvD3QqpNot
         ykQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jwyG8aPDh+2hIn8oyCmQxK+w3qw9gCdW4+4ZMcZmbuE=;
        b=O04BNaJ1YN1cyv7XlrGibFzftLjIHLwFKS7gllYLdGjYuQDGHpn12FGW2Xj5xkSjTa
         QsuuZAn3tUHoiVBqz7VKr92EvTsx/+oLr2G8dKS9NVF3UsHyG+FQckT7+ZTZTN3GuqXe
         64bSd3u9WZFInldh+rX1V/nvdJACIy6jpJ9HiFizsRrMCh3JE3+fy24NCuOrpvuFitOv
         q/Gb4LxhpSeeTsc566S1TJqLRRlFRb5MRPesFtfZ2w24KttXT6ZDff9NZVmMDnBYc+T0
         xpa37fU59NqbwtjsOL/Jn5iw4XUis9GzqdKaVNqjMbrOZZ4E0dA4yid8OuplNtTkaCY8
         cltQ==
X-Gm-Message-State: AOAM531L1hhchyKpwe45sqSZs6v4IcKYS/euyuHyB2KyW+3+f3FRhUCY
	PnyIxkVTYjojxc1OO6a6jzk0XhiK8OltAA==
X-Google-Smtp-Source: ABdhPJwD2C3wC3xhxhERI83b+6ygEf6d9g+TRoik1MQwgB1m18adXbMHTaSCacTsjhP+B7R282qw6Q==
X-Received: by 2002:a63:4b59:: with SMTP id k25mr11337703pgl.252.1622930582935;
        Sat, 05 Jun 2021 15:03:02 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t23sm5264678pgj.9.2021.06.05.15.03.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 15:03:02 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/7] linux-yocto-dev: drop bbappend
Date: Sat,  5 Jun 2021 22:02:54 +0000
Message-Id: <20210605220258.414233-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210605220258.414233-1-akuster808@gmail.com>
References: <20210605220258.414233-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-dev.bbappend | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
deleted file mode 100644
index 1d9054f..0000000
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'security', '${BPN}_security.inc', '', d)}
-- 
2.25.1

