Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web12.4815.1614552967926068259
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sPUXGq0w;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id i14so8216408pjz.4
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YNvE3RBWpxlKKiqShDP6ya3nHuWRxnZ8+E/GCcD1xMQ=;
        b=sPUXGq0wSzHZwFKLPsk7Dw4Jl1YAo97QM9MEC00zb+AOpXuoz/7Usw1nP/AxEF9X5x
         Xil8gVaTabHaEJMj/6uyMF1mdj3GqZUm+sfKCLHPK/MSieKPKe7fV1dhMzIjLaWdCJgc
         SQN9Z362xI5QNMaXWSe3wa+0HJGwGUdnNrm9D7YEbHVc8fmjMe+eO/KRXhjux48GB2Yw
         V8gkGPr2Kb+2gFWOPPIoUGXM/YGo+KmEdEaaoO6USWNKbSTtV4BvLAZddHaH0EQpGEwb
         0XP6qjv4vpnZrPPQpMYk9aPd8zVBwf8DK+EUWzkYS6sblRl1mlEDCyLoCQbu79sTyCHl
         QCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YNvE3RBWpxlKKiqShDP6ya3nHuWRxnZ8+E/GCcD1xMQ=;
        b=laVF2ffMt1k8XMiUjGM4mgFhWAfiqpPr8eSI3XqVQxW1Mqs0/CuPMQdVn8qu0HmyEl
         t+qR/YOE8QRuMtkNiogecM+1xEj5gn5qFmf2xprhbVeLLUeePC1PWtw/Lo1DFA0emgSr
         +A8l1ul3pfTZOBCSqY8w9t2qeKU9KPSL4o29Cmx/vkh+LVxxxjTnxMXGC3vKc2EeFavD
         EbMPcuNUAD+uJc9f5bVLFgThjzzTT8SteMAz4HEs1bjaBW+4uLfMlJ6LuXQSbWB4TZhr
         Pv/6+ViqjKlMFcw+xAews1xKJgStmOt4oyaSsyVl6Q47dqUU1Psq/QOOA6ZTagLvLKJe
         JK0A==
X-Gm-Message-State: AOAM533CE4NDDIdV7BQqxWuYUhkarpXnq6g2UMNyp5QliAu5l/JMxk0L
	X8fNBALoZhoiPybdquy8VZpoZyzrY3s=
X-Google-Smtp-Source: ABdhPJy563DNL9cKfHnrDgTqFX0KEelpmb84ct/3Q4SQxnIkIWP2UfL+jPquXXFJj0Nsn0LuAUDt/w==
X-Received: by 2002:a17:90b:e01:: with SMTP id ge1mr13077835pjb.117.1614552967282;
        Sun, 28 Feb 2021 14:56:07 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:06 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster808@gmai.com>
Subject: [meta-security][PATCH 01/12] arpwatch: upgrade 3.0 -> 3.1
Date: Sun, 28 Feb 2021 22:55:54 +0000
Message-Id: <20210228225605.3442507-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Armin Kuster <akuster808@gmai.com>

LIC_FILES_CHKSUM update do to yr change
---
 .../arpwatch/{arpwatch_3.0.bb => arpwatch_3.1.bb}             | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-scanners/arpwatch/{arpwatch_3.0.bb => arpwatch_3.1.bb} (93%)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.0.bb b/recipes-scanners/arpwatch/arpwatch_3.1.bb
similarity index 93%
rename from recipes-scanners/arpwatch/arpwatch_3.0.bb
rename to recipes-scanners/arpwatch/arpwatch_3.1.bb
index 9be319a..44aeca0 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.0.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.1.bb
@@ -1,7 +1,7 @@
 SUMARRY = "The ethernet monitor program; for keeping track of ethernet/ip address pairings"
 LICENSE = "BSD-4-Clause"
 HOME_PAGE = "http://ee.lbl.gov/"
-LIC_FILES_CHKSUM = "file://configure;md5=212742e55562cf47527d31c2a492411a"
+LIC_FILES_CHKSUM = "file://configure;md5=74ca964ed34fda7b46c6fe3e50bded9d"
 
 DEPENDS += "libpcap postfix"
 
@@ -12,7 +12,7 @@ SRC_URI = "https://ee.lbl.gov/downloads/arpwatch/${BP}.tar.gz \
            file://postfix_workaround.patch \
            file://host_contam_fix.patch "
 
-SRC_URI[sha256sum] = "82e137e104aca8b1280f5cca0ebe61b978f10eadcbb4c4802c181522ad02b25b"
+SRC_URI[sha256sum] = "ee1d15d9a07952c0c017908b9dbfd5ac988fed0058c3cc4fa6c13e0be36f3a9f"
 
 inherit  autotools-brokensep update-rc.d useradd
 
-- 
2.25.1

