Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web09.3246.1623817948159588605
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 21:32:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FJel1AI8;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: fede.evol@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id ba2so862030edb.2
        for <yocto@lists.yoctoproject.org>; Tue, 15 Jun 2021 21:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5n4e50JH/4Kp10NGn/+v+4Rf6x8JAqyKKfDFm1bIPW4=;
        b=FJel1AI8REMlPgVfPZAixOU4UnoxASLowoNmjdO6nw3AhI6LmG3ieY4mtWBfAITOid
         93nMVjpBVU94lrV6YDfvIXladUa4Uv33kMiltqpPb4LzZY1j/dgp4bIHXTTNyrCjXBBA
         frPnRIfu03AdX14GGQ+wGybICGnI5feAMADQXIbq1l1qyEHC3J/Yb0iuDyQoJqjlmht3
         PL5CC/YZeFTwEu9KXRLiEfN4dsMLQF24zgUf3CW6tIYG6NuZNo7x53+ZdrsxB1yX070U
         VbJcHCdOLxD75t1imndAztv2Dme7A372ej2LGPA5FGC+tbnak0hwtoYYS3TaQKSTKwlc
         Y6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=5n4e50JH/4Kp10NGn/+v+4Rf6x8JAqyKKfDFm1bIPW4=;
        b=OxCHk/erx1lTSDqLfDwLTK2e/uCcOR8+XXHi5KJ/gSK0S/YoIy5tHVCSbwiZTkCPQm
         PgaQWRgnuITvE37ls105XlMBrJRgSPnyWLa929AgP7F4Zrc2UFeE33WbeJWM7pnWmHM4
         b69zMafi5geXD/IRViEg4ui3wU2DMpTzn2GKdWG4w6IRDoxnUu/ohf2vGDAhxWCOoOOM
         lb3RYmeSOdeFQhjQrUfuuLAk3AXHKodi2zJ+/s8gyTP839F6UfUCBTB4d5ZXmucos2HD
         C8t5QDIqZAXKYcRawFPgJNvkfezON4h9EkgiupDzCvwut7r8u60Vj/NSauo6QzQZJOdZ
         RmkA==
X-Gm-Message-State: AOAM532o9urCYvir2jAoCU3hlBpO95fXcGpSymp2YtC/RzQqwKQ6i0HX
	8WBN9T2tLRgjLWKEz2dAiue08M429tPPuA==
X-Google-Smtp-Source: ABdhPJw8sucZYG5p445htQvkc4F0idozWQCiSh8Bj6tvYUNpz47K2xmKfsuF+EvNgpTNhSjj6qdX0Q==
X-Received: by 2002:aa7:c38f:: with SMTP id k15mr1489020edq.156.1623817946342;
        Tue, 15 Jun 2021 21:32:26 -0700 (PDT)
Return-Path: <fede.evol@gmail.com>
Received: from interzone.fritz.box ([2a02:2455:e60:5600:475a:7902:1257:bc69])
        by smtp.gmail.com with ESMTPSA id d17sm671006ejp.90.2021.06.15.21.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 21:32:25 -0700 (PDT)
Sender: Federico Pellegrin <fede.evol@gmail.com>
From: "Federico Pellegrin" <fede@evolware.org>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
Cc: Federico Pellegrin <fede@evolware.org>
Subject: [meta-security][PATCH] aircrack-ng: update to 1.6
Date: Wed, 16 Jun 2021 06:32:11 +0200
Message-Id: <20210616043211.25547-1-fede@evolware.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Federico Pellegrin <fede@evolware.org>
---
 .../{aircrack-ng_1.3.bb => aircrack-ng_1.6.bb}            | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)
 rename recipes-security/aircrack-ng/{aircrack-ng_1.3.bb => aircrack-ng_1.6.bb} (82%)

diff --git a/recipes-security/aircrack-ng/aircrack-ng_1.3.bb b/recipes-security/aircrack-ng/aircrack-ng_1.6.bb
similarity index 82%
rename from recipes-security/aircrack-ng/aircrack-ng_1.3.bb
rename to recipes-security/aircrack-ng/aircrack-ng_1.6.bb
index d739227..8d3b531 100644
--- a/recipes-security/aircrack-ng/aircrack-ng_1.3.bb
+++ b/recipes-security/aircrack-ng/aircrack-ng_1.6.bb
@@ -9,8 +9,8 @@ DEPENDS = "libnl openssl sqlite3 libpcre libpcap"
 
 SRC_URI = "http://download.aircrack-ng.org/${BP}.tar.gz"
 
-SRC_URI[md5sum] = "c7c5b076dee0c25ee580b0f56f455623"
-SRC_URI[sha256sum] = "8ae08a7c28741f6ace2769267112053366550e7f746477081188ad38410383ca"
+SRC_URI[md5sum] = "22ddc85549b51ed0da0931d01ef215e5"
+SRC_URI[sha256sum] = "4f0bfd486efc6ea7229f7fbc54340ff8b2094a0d73e9f617e0a39f878999a247"
 
 inherit autotools-brokensep pkgconfig
 
@@ -29,6 +29,8 @@ do_install () {
     make DESTDIR=${D} ${OEMAKE_EXTRA} ext_scripts=true install
 }
 
-FILES_${PN} += "/usr/local/"
+FILES_${PN} += "${libdir}/*.so"
+FILES_SOLIBSDEV = ""
+INSANE_SKIP_${PN} += "dev-so"
 
 RDEPENDS_${PN} = "libpcap"
-- 
2.31.1

