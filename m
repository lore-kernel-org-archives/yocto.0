Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web12.184.1631637551698019186
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 09:39:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KdjVxJA6;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id q22so12846043pfu.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 Sep 2021 09:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=VxLqCbx9WBifo1Xi4B57cTS+iBDbgX/AE8wjP2myHcE=;
        b=KdjVxJA6GC0/AZgKm243LCt0LPM9+lcPfNdO4jV+q5oiFosIQLvSakSN/bC3edeOVq
         hHRnRmEtb7yCzCqMi4Utx329+9OLL1+SkZPHdUKWXEo7bWrq5xzAPPOstKV5KtdAZpDu
         qiFLbisqtJGwb47ioZNy783PBX4f+reGQKNylAEF6O6I304dCumpXBG8AT75orcSh43U
         bwcMOzoQPoMHle6Ri4jC49JMXSuwU821HnHHXjYbB7Hk5z7LCM9fd+iW67rwQBaaNriX
         2N9Sbkq/2pjNfoPd4IwUmai9Nts57ryHUVMjXSb291Gr596sp9QJoT128Nm5cfSHaSbD
         KRKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VxLqCbx9WBifo1Xi4B57cTS+iBDbgX/AE8wjP2myHcE=;
        b=OLzr6HZxpaSZ+yroWn23fiWH/Arwoz3mAjuyRVVsmwdjU2k6zZTbjRAa7HpUo9OvQ0
         M0cYBpiagiSWJ1BWvQzNjO0LIFGyPidqMptpTpXEUXPaWQfP8RfK/Okc5bCknVm2YohP
         h07P0trzDTW3mtnsR3sIYauYPgUlmbK0D3idmVqWq2m2o0+IETk69RTOZ5N/Vfs9vhFA
         2feGGLK+IGnWxKZ8X/XhVWGjDrx+FTJ9eTQ1OlaAQcDQGKNGayO0wY4lYeJs6Nb2FJYH
         +0MJ0Bpn5kAIgB1khRroQiKQz+Ui8SMnkD26BzWIJPkuTWIqXoUGyjQqgT7T6ANHTWRz
         RZrg==
X-Gm-Message-State: AOAM531+za8aPKtgLUIupgXJQ+ZYRO8G6ZaNecVgvBqsJQBTLC+2aKoY
	hkt7YeUFkBWMRrUCjall13LPCZAfnTg=
X-Google-Smtp-Source: ABdhPJx3U6iN2kIFLWgWuCqlWze4bAZf4qJb1Br6GD5Q1cs7C7agnjdkuwFQ6IyX4iBykOtOO+ZmIg==
X-Received: by 2002:a63:5902:: with SMTP id n2mr16432145pgb.305.1631637551039;
        Tue, 14 Sep 2021 09:39:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:35e:ec78:cef4:300f])
        by smtp.gmail.com with ESMTPSA id b7sm10591600pfl.195.2021.09.14.09.39.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:39:10 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/6] checksec: set precise BSD license
Date: Tue, 14 Sep 2021 09:39:05 -0700
Message-Id: <20210914163906.126666-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210914163906.126666-1-akuster808@gmail.com>
References: <20210914163906.126666-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"BSD" is ambiguous, use the precise licenses BSD-3-Clause

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/checksec/checksec_2.4.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/checksec/checksec_2.4.0.bb b/recipes-scanners/checksec/checksec_2.4.0.bb
index 000e3bb..12c9bce 100644
--- a/recipes-scanners/checksec/checksec_2.4.0.bb
+++ b/recipes-scanners/checksec/checksec_2.4.0.bb
@@ -1,7 +1,7 @@
 SUMMARY = "Linux system security checks"
 DESCRIPTION = "The checksec script is designed to test what standard Linux OS and PaX security features are being used."
 SECTION = "security"
-LICENSE = "BSD"
+LICENSE = "BSD-3-Clause"
 HOMEPAGE="https://github.com/slimm609/checksec.sh"
 
 LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=8d90285f711cf1f378e2c024457066d8"
-- 
2.25.1

