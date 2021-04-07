Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web11.2611.1617769359193369712
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 21:22:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pUUEKqkx;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id a12so11986449pfc.7
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 21:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=q2uW15Gf7vwPhBigFRdYg54CI4VVG7q2lQvIksXFGz4=;
        b=pUUEKqkxBNkuuqDVyW/Aq8qGx15VVi7mcLHA2fhZU/rFi4zov4jBYl+Jrmt7oBKizC
         N6knGBhJf0DORbGMHhFvI4USkVU59PvWvCJ8kwBAuaw31RZwfjvjq1qsQt3SoUqQj0nJ
         n80Uzy7Q1yQ1CVroi4hxJwOf9L+ZImbofNZQz0HaLGDrl+HFwCuHBtlqwE8Hqq2p4Q6O
         h+3YnECulKP6R9Oy1QZilAAlmiH2wOV5BudWjvpOxUuU+ppkSbtZfjaCbFeTgJ+xZxP6
         WPq9nK6clCFTKML05Nb9TjVL48/uTspvR/19PFr8wbSHvIV9beWjrDMi+dQEUa8l5jxn
         pMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q2uW15Gf7vwPhBigFRdYg54CI4VVG7q2lQvIksXFGz4=;
        b=kVxG2qibJNBG+m44B3tlx3uOtH1oUZmCvfTf1QmmrmWvTyqIu2Sem3UpTJbTJUSJoJ
         iqQ3NqA8CRbS3qKmS9YYHlAzfTkoyqeXwh5WncXaEf3R8ULUaYU4usmpPJoaawCBIk0U
         5eNLJwkuIM2if7/Nrk3KjM/ip6lnOoDJHYSLCro/8Win1l8lJqjNa/pIEI7BrTKVFC3h
         ZCUslCxGKBsgJ21v50U8h5iZusSi7scS2ctsD7iz/Pn9bYIXyoTF1hjG8B4K7pr/AHSn
         KMQ7aQWcYoZSNkgpeox67UC3/c/xKMWZW6Hf+8U2KBq18ehe0am/LmqQxFJ1yLY0v+4a
         r39w==
X-Gm-Message-State: AOAM530OU+CoHu/Afmy2+VdNGwSLF6GqrcrGFjjsv5fz0g0k35K01uku
	BJk0cDpOch0L+jH+A0UIMRw2BGukGyw=
X-Google-Smtp-Source: ABdhPJyea5i6xQ9npLusAJr6UYJ9Es2Y5Gu97WqOBzXgQc5AtAXJAv00ifY7JzwA0lOOIfs1N3QdmA==
X-Received: by 2002:a62:e20b:0:b029:23d:f634:e70e with SMTP id a11-20020a62e20b0000b029023df634e70emr1236466pfi.70.1617769358460;
        Tue, 06 Apr 2021 21:22:38 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v134sm19722791pfc.182.2021.04.06.21.22.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 21:22:37 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/5] README: cleanup
Date: Wed,  7 Apr 2021 04:22:32 +0000
Message-Id: <20210407042232.3373253-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210407042232.3373253-1-akuster808@gmail.com>
References: <20210407042232.3373253-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add note about rust.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README | 27 +++++++++++++++------------
 1 file changed, 15 insertions(+), 12 deletions(-)

diff --git a/README b/README
index f223fee..eb15366 100644
--- a/README
+++ b/README
@@ -11,28 +11,19 @@ This layer depends on:
 
   URI: git://git.openembedded.org/openembedded-core
   branch: master
-  revision: HEAD
-  prio: default
 
   URI: git://git.openembedded.org/meta-openembedded/meta-oe
   branch: master
-  revision: HEAD
-  prio: default
 
   URI: git://git.openembedded.org/meta-openembedded/meta-perl
   branch: master
-  revision: HEAD
-  prio: default
 
   URI: git://git.openembedded.org/meta-openembedded/meta-python
   branch: master
-  revision: HEAD
-  prio: default
 
   URI: git://git.openembedded.org/meta-openembedded/meta-networking
   branch: master
-  revision: HEAD
-  prio: default
+
 
 Adding the security layer to your build
 ========================================
@@ -51,11 +42,23 @@ other layers needed. e.g.:
     /path/to/meta-openembedded/meta-perl \
     /path/to/meta-openembedded/meta-python \
     /path/to/meta-openembedded/meta-networking \
-    /path/to/layer/meta-security \
+    /path/to/layer/meta-security "
+
+Optional Rust dependancy
+======================================
+If you want to use the latest Suricata that needs rust, you will need to clone
+
+  URI: https://github.com/meta-rust/meta-rust.git
+  branch: master
+
+  BBLAYERS += "/path/to/layer/meta-rust"
+
+This will activate the dynamic-layer mechanism and pull in the newer suricata
+
 
 
 Maintenance
------------
+======================================
 
 Send pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
 
-- 
2.25.1

