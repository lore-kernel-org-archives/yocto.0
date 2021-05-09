Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web09.20288.1620575264873630089
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 May 2021 08:47:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BujoZW+A;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id s22so11541651pgk.6
        for <yocto@lists.yoctoproject.org>; Sun, 09 May 2021 08:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=KMEH2njjcO4JV3sM80IbZSKZ/X2Wh4tQJ4Zd8/XLhOc=;
        b=BujoZW+AxpRoeqHhfozcpXlpkE17bxS9geJTCmxn2TuZhdqqROAOi2J4DBkZyZ8u8V
         j5UiZVUIOKAnKsmRFg99VWne3zsOYKA9WFHPC13vKmYpZVMl2FPW6FON3+rNeuYvVKJz
         bHpya8JJ1BehkqWOLrRsD1Y/V+FUEDyphjykQB0Ek23ZrqG2YtMk49EOGZrNbQuu0JUQ
         kLAKuYG3uN34UJTIWz3nWyJAzM4+z/Fa9ZFIk54yxgRiM6cyC928nQReegX+9IVACaLa
         Dkat8hFhxtWlt3qAupEWMZw1iOjr53pkZ/+f9M1eLoqel31FeC4ybI/Kl5O06r3l612d
         wEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KMEH2njjcO4JV3sM80IbZSKZ/X2Wh4tQJ4Zd8/XLhOc=;
        b=pIGo8bwWlV5FRiWt1tRGa7c7Zx2AACSLJMHA/AZtO9s4dLiDEOlZLTNrdNygg0lfCL
         DE4NKFu0DfbQJwCsNh2X7e+ufsjq0o4Eu/leHNyHn/6UOwsCwto3UCWxMFSnvYAscrtg
         flC03pIWnVna55IN70d8PrfTBfhugzA6XXOgy56c7YsnOb0sibbh9P1yhZ3kMqQDZKZI
         eIcE4n+SkZOUR6OtUUqPYFzpBad6dDHywa7AqdDiLzdwSk13VQb0TqE2cpTsFnc6VMTd
         bw/8Hl4KDKsbMCQJAhoOLsuEpHnGUKJNPu9WImcLepZsMwQAHUNhgmuOTrnceh889I/U
         qYWQ==
X-Gm-Message-State: AOAM531e33j9yqCmLf4v5odlEi3L8EExqdVm6vAs77zGRACXYpsctvLG
	k3WpN8ptWgpa5OgbhPkRKBBBqvReGyLQoQ==
X-Google-Smtp-Source: ABdhPJzxzn4m+V48poAqWorW/Wns4TnxvnZTygmTpvC//zSoxHkxBxSflULaP1Ho/FQE2bTEKmEeEg==
X-Received: by 2002:a05:6a00:198f:b029:2a9:7589:e78a with SMTP id d15-20020a056a00198fb02902a97589e78amr12582762pfl.35.1620575264118;
        Sun, 09 May 2021 08:47:44 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id in16sm9428165pjb.14.2021.05.09.08.47.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 08:47:43 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/6] suricata: 4.1.x add UPSTREAM_CHECK_REGEX
Date: Sun,  9 May 2021 15:47:38 +0000
Message-Id: <20210509154740.1628375-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210509154740.1628375-1-akuster808@gmail.com>
References: <20210509154740.1628375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/suricata_4.1.10.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-ids/suricata/suricata_4.1.10.bb b/recipes-ids/suricata/suricata_4.1.10.bb
index 3f7beaa..bf08843 100644
--- a/recipes-ids/suricata/suricata_4.1.10.bb
+++ b/recipes-ids/suricata/suricata_4.1.10.bb
@@ -12,6 +12,8 @@ SRC_URI += " \
     file://run-ptest \
     "
 
+UPSTREAM_CHECK_URI = "www.openinfosecfoundation.org/download"
+
 inherit autotools-brokensep pkgconfig python3-dir systemd ptest
 
 CFLAGS += "-D_DEFAULT_SOURCE -fcommon"
-- 
2.25.1

