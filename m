Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.133717.1598016364943076317
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 06:26:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gvFmqHce;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id f7so1964155wrw.1
        for <yocto@lists.yoctoproject.org>; Fri, 21 Aug 2020 06:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p2Oqmsat6x+p3JBZr4KVQlhGJrODihUYF6xtOoTdfDs=;
        b=gvFmqHceELBZxsDbtavJ2y2OgbG8485U4rT1WXUFgTXXSjYsYql9TLDJ7m4nJpyPRi
         1jhNCrEeWJZ7RVdTQznyWtC5zkqrmCGIfAhIwnjOPxCOdnjrmtkXIRWbK8QSYBsbBqxE
         Hu+TbX8zOdfGiyy6XTPcht+bAMXI14LTxD+fc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p2Oqmsat6x+p3JBZr4KVQlhGJrODihUYF6xtOoTdfDs=;
        b=FKEyvvgKt4SzSPRVgLEtKMZDrJfsqyPAbqjo3WrLvQGa6Yi4BZcuZPGDtCRK7a3Brg
         8AYubNT2jwy1GjQ/0EKc7Ss/GPM+M2ltpfkiY4jq3fb+nqYiCpQX+vClXrE3vSkN+9X2
         ZqAYBBgWClD07w9dv8SoGzbZZUsMtezrEJpkZ9T3dnU2haFddzQoTaZ9nCd+1rzRi6L/
         aQA3jtk6vrc2DHnC8fFyqVkQdrzVxU8yHgxfY45IlNpeyjirK7+pxldBhkFKUZQV7Hxt
         8KtbKVBZBUKJGofkMhp8N0Nri5m8R9XeUIvlzio8sfHYBl7aWpazE19TLXy+R7op8A3g
         WmvA==
X-Gm-Message-State: AOAM533jox7fOjBerjsmTbQeiDzysnDaH9pvZdpSiIxdWH2LLWhFOdpQ
	n1kaWeB1xFFamsMrRTOBMdVBpx6CRawl1Fyi
X-Google-Smtp-Source: ABdhPJwx4Ti1j7WCjTTk1Qmiaee1bGwv5FHFQTMjYx1rBWnOu3Xws2st7N9p2mmZehKjKt24dc3T2g==
X-Received: by 2002:adf:ee8e:: with SMTP id b14mr2949559wro.213.1598016363079;
        Fri, 21 Aug 2020 06:26:03 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (d.d.0.9.8.0.3.8.5.d.6.d.5.a.5.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:45a5:d6d5:8308:90dd])
        by smtp.gmail.com with ESMTPSA id t4sm890223wre.30.2020.08.21.06.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 06:26:02 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <jpewhacker@gmail.com>
Subject: [PATCH] [meta-mingw] nativesdk-packagegroup-sdk-host: Update to match oe-core default providers handling
Date: Fri, 21 Aug 2020 14:26:01 +0100
Message-Id: <20200821132601.1273935-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This was repsonsible for some strange differences in behaviour between
other OE-Core recipes and this one. Its assumed this package is present
in any SDK build.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../packagegroups/nativesdk-packagegroup-sdk-host.bbappend       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
index a9a51a6..b3ffb82 100644
--- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
+++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
@@ -1,4 +1,5 @@
 RDEPENDS_${PN}_mingw32 = "\
+    nativesdk-sdk-provides-dummy \
     nativesdk-pkgconfig \
     nativesdk-libtool \
     nativesdk-qemu \
-- 
2.25.1

