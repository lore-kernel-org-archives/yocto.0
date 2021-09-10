Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web12.14120.1631302894151012646
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Sep 2021 12:41:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BVXVxwL6;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id 22so3276766qkg.2
        for <yocto@lists.yoctoproject.org>; Fri, 10 Sep 2021 12:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uCv99E7V7UfG0hRjpszvbAsAz17WqI7SKN2JeSmF4x4=;
        b=BVXVxwL6ggQEH8Wikd7DHkF+uxvqgPgTfQcMCdGsyNf5232scKqMte40eIIH5Wm808
         RdNCQEKv34mGmpZEnzyRP06t/0sS7fWD3cS/y039HADbQEP5jbmxZZL6EhLxXxNJ6JIj
         53tXxZclZGxW1A0RjetBScCOIfW6gq5Tdy7imep2sezHTBs14giNZ3nKRYqlUQkmEjfb
         I0lbEmMTfmGj9fM8YtDgc+hVX6T++p1tpbSAAD/xWA1H5YCM1dwEgu5B6SkqjAV9Tb7O
         BetPnh9y10eDp9RejE2O/zFt5mUdkaPSg6L1wdwkWlFVNLnLtNSw6iZMCt018+IcEwI7
         KIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uCv99E7V7UfG0hRjpszvbAsAz17WqI7SKN2JeSmF4x4=;
        b=eHaOiVg0NqRbhGIRFqSI727JDiwRXL60Ed/FtNvjjeiBFev+5S6Vxl+mekNalY6r1X
         twUxjer8ZI22xzM4S9NnALimaCw9XGxGNqpy6LgLzP2qTXuljXSVuSIcIMKy+gD1CXpZ
         RIkwsc5lbPMTRX6OOyoaKz+o4zroXOf5acJULp8kMeSXhhsd3LxS5BezKklwoG6I0IP9
         leEHIPFiSG8rpV3lGdJJtqEUDdznKXTC66k06lJ0dzGOgvLX/oCsG1Ddjx4UsOju1uVf
         4hRss44f65ct8+R+zEW67II5aD/JaQNCFRjRrGi8NFCHa2lrUl8EKksgauz0GfKQOsL7
         VkJQ==
X-Gm-Message-State: AOAM530NknuUIt/jS9WNxXogKU0H8UiIITPy4osf2KfjWxWbweZGbt+d
	lDoqqtw7D6SMaClHcZrXLxY=
X-Google-Smtp-Source: ABdhPJz5dcdlQhKmdHl9FzdpEw+04oLXwPhe6rLYkV5HZn6aaOtuM+oo/xd0M1egVUWXsJGvZpn/0A==
X-Received: by 2002:a05:620a:bd4:: with SMTP id s20mr9292206qki.485.1631302893178;
        Fri, 10 Sep 2021 12:41:33 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id t64sm4373589qkd.71.2021.09.10.12.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 12:41:32 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/2] yocto-bsp/5.10: update to v5.10.63
Date: Fri, 10 Sep 2021 15:41:30 -0400
Message-Id: <20210910194131.55917-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating the reference platforms to match the latest 5.10 -stable in
oe-core.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 1e14229c23..a7ef143dc9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "c274623910704eefcc98380a17649889ac7e9408"
-SRCREV_machine:genericx86-64 ?= "c274623910704eefcc98380a17649889ac7e9408"
-SRCREV_machine:edgerouter ?= "ac089d661362ba857e235c5630242039b150ae26"
-SRCREV_machine:beaglebone-yocto ?= "a6df693a45f5787d4254e0998f52b4465b2a5efe"
+SRCREV_machine:genericx86 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
+SRCREV_machine:genericx86-64 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
+SRCREV_machine:edgerouter ?= "4ab94e777d8b41ee1ee4c279259e9733bc8049b1"
+SRCREV_machine:beaglebone-yocto ?= "941cc9c3849f96f7eaf109b1e35e05ba366aca56"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.55"
-LINUX_VERSION:genericx86-64 = "5.10.55"
-LINUX_VERSION:edgerouter = "5.10.55"
-LINUX_VERSION:beaglebone-yocto = "5.10.55"
+LINUX_VERSION:genericx86 = "5.10.63"
+LINUX_VERSION:genericx86-64 = "5.10.63"
+LINUX_VERSION:edgerouter = "5.10.63"
+LINUX_VERSION:beaglebone-yocto = "5.10.63"
-- 
2.19.1

