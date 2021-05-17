Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web10.13171.1621215310240046792
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 May 2021 18:35:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=alRgWOiJ;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id x188so3871608pfd.7
        for <yocto@lists.yoctoproject.org>; Sun, 16 May 2021 18:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FcYh0hLzt2zmdVb6xGlblCRVcxxVO8h+cXePewVmyn0=;
        b=alRgWOiJ5m5ah9uXx3g3icbia+nfm3+h077EYBuqVMq0Kca1+mWxAkF7Su8A927ZUc
         1/HpNxT3UwfLaFRy0AQJqMmVd78DQW8vMJ5idyYG5cuOddZdy+sfX1ux4QOgaX/rlVIZ
         3D4Pjtp9f6kvvNVhsBW1h8YzlI8DJr0WX9YVnOaFkiwmkyu/UqrmGn4sID3/ZZ6jQewx
         TVuUA0ZBvsg47iHWCXhWKXAn0O3CyLVqYrmWpg5gpaXmryZK4OlYyWn3gQBnS4xSMa5J
         wlWdIfLkNEibi80n0Y48UGpnqdgYDQW3X3uZuJOmtbyXMD1UhvgjF87nR0U2ZiXj6mPC
         cHTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FcYh0hLzt2zmdVb6xGlblCRVcxxVO8h+cXePewVmyn0=;
        b=gRg6JQq5QzwPyfY6YRJGc9cPyj6/JkODKlS/Q+1uhfNEDAoVphOL+m96ABmnuZjAeO
         ilGO/3vXuS75VHoIJdRgS0rW0411NhSPBi2ptsyaA1DqS4oGzFozZUTPFa77ytpt4oiI
         zYCyTK39bDjvYjKcIV7Ve5o+2oJnFOeSNa8CEFoWDF0QScLEa9GE6W7eIFmzSXt5Oz4R
         4nM3Wr0yRY4/p8BsCoi4P0rP4i08O6zgvOc+ry5gv/buvPekBRrGzxOpcNKnZL96dh7g
         YklY9ERoZLKNeF4qz2GSYBDOJ06NW5HwWhluk+vFi2+9mqW6T7Jq4BUdD2s4TdVpI6ea
         rEbA==
X-Gm-Message-State: AOAM532exlz6E25T+t3vWhYa47pqyGDmTavnP/aFI9hS0A565FXDCI1i
	WGXqGQN7O+Vkgd05r8rOSdE9BXa/8rw=
X-Google-Smtp-Source: ABdhPJwnYibdXFLt2B7ybexGrdvgm9Aopt8x5ON+jrAskC1sgrr6UoPmnHV0KCh12NzlCrLuskw5Dg==
X-Received: by 2002:a63:d80f:: with SMTP id b15mr44571279pgh.388.1621215309670;
        Sun, 16 May 2021 18:35:09 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t1sm8910659pjo.33.2021.05.16.18.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 May 2021 18:35:09 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Upgrade Helper <akuster808@gmail.com>
Subject: [meta-security][PATCH 2/4] opendnssec: upgrade 2.1.8 -> 2.1.9
Date: Mon, 17 May 2021 01:35:05 +0000
Message-Id: <20210517013507.4023975-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517013507.4023975-1-akuster808@gmail.com>
References: <20210517013507.4023975-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Upgrade Helper <akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../opendnssec/{opendnssec_2.1.8.bb => opendnssec_2.1.9.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/opendnssec/{opendnssec_2.1.8.bb => opendnssec_2.1.9.bb} (92%)

diff --git a/recipes-security/opendnssec/opendnssec_2.1.8.bb b/recipes-security/opendnssec/opendnssec_2.1.9.bb
similarity index 92%
rename from recipes-security/opendnssec/opendnssec_2.1.8.bb
rename to recipes-security/opendnssec/opendnssec_2.1.9.bb
index cf6bdbd..2b79609 100644
--- a/recipes-security/opendnssec/opendnssec_2.1.8.bb
+++ b/recipes-security/opendnssec/opendnssec_2.1.9.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://dist.opendnssec.org/source/opendnssec-${PV}.tar.gz \
            file://libdns_conf_fix.patch \
            "
 
-SRC_URI[sha256sum] = "900a213103ff19a405e446327fbfcea9ec13e405283d87b6ffc24a10d9a268f5"
+SRC_URI[sha256sum] = "6d1d466c8d7f507f3e665f4bfe4d16a68d6bff9d7c2ab65f852e2b2a821c28b5"
 
 inherit autotools pkgconfig perlnative
 
-- 
2.25.1

