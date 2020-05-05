Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web12.5434.1588676490065424477
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 04:01:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Fg8rrWNP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f65.google.com with SMTP id 188so1798870wmc.2
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2020 04:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hF0BDVjGo+bBsn4riDcW++8EBon3+U8ksla9FB/jA8Q=;
        b=Fg8rrWNPzhUMFoOYf7AlZsR9MS8BuHusnoU1/UBV1vT02P2ag7ApqmSzjZsn0e64X8
         KYzpv7QxU1dtQLjaBKC3ezpiaKC8N2apFyvkOwiaiKRpOt8hb627iMtAEkDoWZWAQaHI
         4pflCbHXgPJmu6tpMz1il6KkZ8jy/9KS/UFB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hF0BDVjGo+bBsn4riDcW++8EBon3+U8ksla9FB/jA8Q=;
        b=ZcQeJtRPer/bst9hRll26bBFNLS5cNBnIOJEAqqQeJIUdeU1MHtphagA02pJf8Be4F
         H2XlU3sU0gEZjevg4gpZ1gq7f4Q5vkLKt90U8gw5/hFUQg8NqiEM1p0NPmPdP1+ZOQQ9
         t/ffTu/vr1IwU9dZXCTM6CM3rYE6RYzX6qyF4EHvsoX4XPpgtkSf74O30cGdh6735m8S
         ICMRWbAljIvwNcIx25Qh0BtBIz1O3lP4nbuDJqWAW1vxx5LniznIBes8Icx/2W8VyEzl
         sTkZ7L/X5Cx/RdUcHw6jTuVTZCvq+KSpr8JUI8gvOHRy+cmJfA2dTRMjHBSoBM6LUt7t
         kOpg==
X-Gm-Message-State: AGi0PuY3OUOmnuP2Ilki20GE3Ax54RjH91Fj0O9ghqVUzUAjjmKKZG9j
	oLV6Dae+KPCFH4RvwJ6xN6zcJkb4m9U=
X-Google-Smtp-Source: APiQypJhR7S9B7N/qd174Sep9p6+S7SowiC1bIx181Vm6Hi1+1p1IsnZupIYMNVu4IdylUsFJfcfog==
X-Received: by 2002:a1c:6405:: with SMTP id y5mr2666821wmb.63.1588676487766;
        Tue, 05 May 2020 04:01:27 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id u127sm3356933wme.8.2020.05.05.04.01.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 04:01:27 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 1/3] conf/distro: Add disable-gplv3.inc
Date: Tue,  5 May 2020 12:01:23 +0100
Message-Id: <20200505110125.3692309-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We're finding meta-gplv2 needs configuration to work as intended. Rather
than teaching this to things like the project autobuilder, collect
the configuration inside an include file in the layer itself which
everyone can either use directly or refer to.

Initial population is from the autobuilder config currently used for
testing meta-gplv2.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/distro/include/disable-gplv3.inc | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 conf/distro/include/disable-gplv3.inc

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
new file mode 100644
index 0000000..45834b7
--- /dev/null
+++ b/conf/distro/include/disable-gplv3.inc
@@ -0,0 +1,2 @@
+INCOMPATIBLE_LICENSE = '*GPLv3'
+WARN_QA_remove = 'incompatible-license'
-- 
2.25.1

