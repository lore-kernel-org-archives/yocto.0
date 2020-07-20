Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web11.7592.1595286178186169813
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 16:02:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=afgXqvQ9;
 spf=pass (domain: gmail.com, ip: 209.85.160.171, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id w9so2185093qts.6
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 16:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vh4X5mrwGLSpxn+zTFDk/xXKQM8VA4vc3RduUTck5F8=;
        b=afgXqvQ9pSdlFWAHFLxeCg6NN8SveZ+lM3tCn9Q0gA2MYTyCwE2G1wNtOjpdV5raZA
         oknODMth0iPP/Bro/zp5RB+D2yW3vSg9ok34SqaNW3NvVOD6voEQhrHJ59zLY3zWA3vX
         3ZEP5AwuxCFd46f4QoXtdLT5dg56V2dNZfCVBmmdPAToxAGuKfaq4+alRYRkL1YsId5u
         D4P9opfqGGtoP65yr9HjmUqryftK5pEFa2+OoYb043M88eepge4i8O/lU9XQo7/EST7t
         NrIGUujtkr3TFdXMYT8d+I//ZVd1PvYSTyko9oN3iambYSIWRZW7HpfLb6UhH253b76x
         X39w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vh4X5mrwGLSpxn+zTFDk/xXKQM8VA4vc3RduUTck5F8=;
        b=qLR5P8I0Bi9AlgyMerFKTOU3vbHHmtrYcBJ3Da/yNRs85bbXf4ZrfNc5POJ9kscKnk
         BfZ7InlEeShyvYlIHPPqHSc6XJYMj9DLqLNmWQMxjTdtDRw+iwWFDvW3tLuk0esnmhwD
         yMgGa4JsCQOOuWKNcs0EddI5orR+Zg1AXuSa+qAIsq4OzLpC+i5cBpzKOiA5p6HX+KgA
         ESmTm/M2Bca/Iq69ahgcfUbtV0gjyhuRKOJXfaLzH/7NzlEfJ34C4CWSv5/lwvO3tXss
         YECoLcphLA//86cYWiM+bLty0GpR+lmKv9HutCQ3VzYpTqnsTLAb2C21W1yLy+IDuU9b
         nTPg==
X-Gm-Message-State: AOAM532/E/4P+wA7t90tZQF9hG0aWiRAUB/8cH6F6f3gewRoJf0l/ejx
	YNWSELWsCNc4HP2Y6P7+nyyZyuj8
X-Google-Smtp-Source: ABdhPJwxrOuqzgO+ORD6PGH3C5CtyOzIcomvzNNvpUF2WqsOY/eTlmccB7Nn7kla4Vx7KtdFX98WfA==
X-Received: by 2002:aed:3621:: with SMTP id e30mr26354122qtb.190.1595286177019;
        Mon, 20 Jul 2020 16:02:57 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3.suse ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id z72sm897741qka.107.2020.07.20.16.02.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 16:02:56 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][meta-rockchip] update tf-a dependency
Date: Mon, 20 Jul 2020 19:02:53 -0400
Message-Id: <20200720230253.40723-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd637
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Now that we're using meta-arm-toolchain's recipe for arm-none-eabi-gcc, we
need to specify it as a native dependency (since that recipe doesn't assume
this implicitly).

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index ecde25d..2374205 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -1,6 +1,6 @@
 # Rockchip RK3399 compiles some M0 firmware which requires an arm-none-eabi GCC
 # toolchain
-DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc"
+DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc-native"
 
 COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
 
-- 
2.26.0.106.g9fadedd637

