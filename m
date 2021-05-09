Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.20261.1620575266315771357
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 May 2021 08:47:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=med/6QXe;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id s22so11541670pgk.6
        for <yocto@lists.yoctoproject.org>; Sun, 09 May 2021 08:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=s1wE8PsUT87LWozRIEm0h5taHSUK4OZOZqP34S8xShM=;
        b=med/6QXe6S6X2AOhVVY3jawnM7uV57h6wi3PLfzng2K+P+F9fp28WC1sVE+1eZRl5A
         /Y8R/sGP3oSZLs8zuYRcsOA26gJJ84Vg9TostPymfz2dWW90XuS8sFdfJPaT8LVI8U6y
         Hp7p9kpPq5ZE4hg1S9KhsmHVCuZgyUD6Zry4sUDXQjqzzkM8Cl6uK9eGeAS1SFkd+z55
         RHMyPWJ9UWb+AQNOzIZq+NA4ALC2fXMsX4kRhk3eWmt/zwLzcFH20zmjVzq4LBn4g7eQ
         LMowNhSWqrYwMXbIlmOBvno68zTsJd5mGybGOQByH9QyFTfTmXX4gUHYQTYvcIBAnx2D
         Tz1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=s1wE8PsUT87LWozRIEm0h5taHSUK4OZOZqP34S8xShM=;
        b=Q1ya5QZ6R8ac1k6d42r3eFDDLLC5LJ7FulxQ/368NByfoW+zQkNxhureu2G+ks8+f2
         RdupavuDW9Un+Q26SE/SU1FmiuBhkuyH0W+2kTsif+YY2wMppR2feH7QuUR+nu691dnl
         QtyOclVjTHVZ8p7VWknNvPZ0/zyWSiCLENwuDp/OigC3QrbwqjDy8p9HDnRxDl/8a02b
         NwE0LWQcHfJ7L126anGxhJ8NvUUcWl2YXgE2tg9g84UqAUDlyr32wBfqi1vxA1A2goo2
         cZvBaHuiI9mm+3Chq5nGOZrvNhmN3tJ9R69Ec9BW2hbVW2np9pJ+AgJUu2/AgHJAqynF
         qWBA==
X-Gm-Message-State: AOAM533QCiMCNTx7QoQ7ml9lQLJFIIFADx/Do7sBeOslWbRZgk7KDv4Y
	5VBjegleD6d3D1k1gMals256ajCxF3rWHg==
X-Google-Smtp-Source: ABdhPJwnlvPDc1odRy+O/sbeJdqFt1FYqZrYS2M4M8XtH4mZLEDRjzgAvJvPYfITmYA0BxvLDXxs6A==
X-Received: by 2002:a62:7c4d:0:b029:289:d38:d1be with SMTP id x74-20020a627c4d0000b02902890d38d1bemr20756962pfc.23.1620575265746;
        Sun, 09 May 2021 08:47:45 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id in16sm9428165pjb.14.2021.05.09.08.47.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 08:47:45 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/6] ibmtpm2tss: update to tip
Date: Sun,  9 May 2021 15:47:40 +0000
Message-Id: <20210509154740.1628375-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210509154740.1628375-1-akuster808@gmail.com>
References: <20210509154740.1628375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
index 4d9b554..ae8974b 100644
--- a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
@@ -17,11 +17,13 @@ DEPENDS = "openssl ibmswtpm2"
 
 inherit autotools pkgconfig
 
-SRCREV = "3e736f712ba53c8f06e66751f60fae428fd2e20f"
+SRCREV = "c4e131e34ec0ed09411aa3bc76f76129ef881573"
 SRC_URI = " git://git.code.sf.net/p/ibmtpm20tss/tss;nobranch=1 \
            file://0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch \
            "
 
+UPSTREAM_CHECK_COMMITS = "1"
+
 EXTRA_OECONF = "--disable-tpm-1.2"
 
 S = "${WORKDIR}/git"
-- 
2.25.1

