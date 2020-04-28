Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web10.31.1588104588981654843
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 13:09:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+8ZxTLE;
 spf=pass (domain: gmail.com, ip: 209.85.221.66, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f66.google.com with SMTP id k13so26237110wrw.7
        for <yocto@lists.yoctoproject.org>; Tue, 28 Apr 2020 13:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d3D7ur4WzLXwcCbFrVpr4jKIBV94earF1Cjq5//vKd0=;
        b=i+8ZxTLEz+H+463DOL6FyF2SgTsqBEQu1avd5WqZ1OWtGn9koZHjCbfJHG2fB30ilU
         HqfZfGYaMxVKiR18PU4Jow58w4z5Cg0X9yP+RSxHY07rMwggx0jECisrdIOf59Tz/5rg
         fEeEjCT4a5XgZpokhELezLc3i46J6s/G75T1Ump1tfeBUO0MBcQn5Cz1uwCbGNNWVTo6
         NxiMa561hXMcP8NLoridiNTLzluMDPWD06uavwnrekj+MIUmSraz786ffc69GQeJAJgq
         Q/YWjCLQPGGL1y3IhR2thPH7F5ipXI0tu58FhsLD6w7yqN/kuRIMyXN1h9uKcld2N/fh
         nusw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d3D7ur4WzLXwcCbFrVpr4jKIBV94earF1Cjq5//vKd0=;
        b=MCn2IrFwJ3R1PWFf37aHJxJSJUuQWRkY7Datfeuj6yFKQ0Ox/RjEDbAoAYqJuFznKt
         xXbzmFJWDV86CSYCx9xfWlV5VKzXAkJkXSursI14xC+ouvolM2W/kXSH28WE/pTFTvxg
         L3cbbKMBWDCsjXfVGGPbXKGWGtSja4/L56Xl6zz9G7JhZ5uJm+aBMr60N02RV1/jxCQ4
         lJVkMTQKICJOf3j6UoUpWPPOxiv+ngnzk5MKgn3KdqAoa66GC/AE4WStsan+KXtr6zur
         2Tq633Q8X8tHHrziv2vITpOb64xiWqFB52sML6/rqJ+BMK8WZPesgNYN/8LSSUIVLsbS
         GpcQ==
X-Gm-Message-State: AGi0PubheUhu71LZ3bgcB9KmHMtY1VD1fAlD5p7mWY+fS3CBCYd5w22N
	xT7H/wJ5bGXBKF+VY5HDr24iYHo/
X-Google-Smtp-Source: APiQypJSwLYhczlADfw70gku7hjPM6qdHKth7djhF/qOc8Ydpe49kNWezkVjNXO54lkI1VYq9cbuMQ==
X-Received: by 2002:adf:9564:: with SMTP id 91mr36136141wrs.246.1588104586805;
        Tue, 28 Apr 2020 13:09:46 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.box ([5.28.69.65])
        by smtp.gmail.com with ESMTPSA id g15sm27582186wrp.96.2020.04.28.13.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 13:09:46 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org,
	jpewhacker@gmail.com,
	richard.purdie@linuxfoundation.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [meta-mingw][PATCH] libsdl2: do not enable opengl
Date: Tue, 28 Apr 2020 22:09:29 +0200
Message-Id: <20200428200929.31612-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In some configurations this can be switched on in oe-core,
and so needs to be disabled similarly to x11.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 recipes-graphics/libsdl2/libsdl2_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/libsdl2/libsdl2_%.bbappend b/recipes-graphics/libsdl2/libsdl2_%.bbappend
index 5d8ac54..92fa41c 100644
--- a/recipes-graphics/libsdl2/libsdl2_%.bbappend
+++ b/recipes-graphics/libsdl2/libsdl2_%.bbappend
@@ -1,7 +1,7 @@
 # Need to disable X11 explictly as nativesdk-libxdmcp fails:
 # .libs/Fill.o:Fill.c:(.text+0x48): undefined reference to `_imp__recvfrom@24'
 # .libs/Flush.o:Flush.c:(.text+0x36): undefined reference to `_imp__sendto@24'
-PACKAGECONFIG_remove_mingw32_class-nativesdk = "x11"
+PACKAGECONFIG_remove_mingw32_class-nativesdk = "x11 opengl"
 
 # libtool doesn't think it can link windres output (COFF) with libtool objects
 # (COFF) , but it can.  This might be because file misidentifies version.o:
-- 
2.26.1

