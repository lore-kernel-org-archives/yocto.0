Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web10.13887.1601989761002612407
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Oct 2020 06:09:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CYd3VTpP;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id n14so9005465pff.6
        for <yocto@lists.yoctoproject.org>; Tue, 06 Oct 2020 06:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=8oO03yydEL6QfB6HTva+9HBMyX/zf+YjM+Zr3WsQRiU=;
        b=CYd3VTpPZqoQrYLZeVLCOIdCj3BTzy56Gd1W7JOu2qyjCqkuAcl7hOO7ROopgNd7bh
         v5SXIPNksTQ+yNHmA37ymJE3U7XdYU3NhgTeVlSr0qG7SJBfNE3NPTAk3KVZhsxHxOg4
         iDeIaH4eN+9lmZC6Xzlbwc8Vw89pI+xAQCsgb7/gaS0dhMdXwdiJjm42ji/U8WAni1IG
         WcELcvJogE0fbwQb5qJPx7rtfQ5C3lNJO1NzKSjHedG6g4u0buvMoikw1bVrcP/y/tXs
         BQ2m0sWuocPvDKkUqxwgyJkVDiwiXwenHl1WP6uWWFaWFmmZawH4ow/8KZQBd4qNUqtY
         RxUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=8oO03yydEL6QfB6HTva+9HBMyX/zf+YjM+Zr3WsQRiU=;
        b=U3sJ5l7qaIHylCM6ngb49lEZGgQ4cD0SxZQAiHtKmKDHRWfjM3dZTbgqCAv2FG0I1t
         JSqxXv089AYOzZsv9LyjED0P6jkJVo9uIogtQII8AOQD+bqHHy3mbZBc+pv3j3zvyLOB
         3kETwMQDT/oV2BaGGOjG3dlEQJh7SJjZSFSeLX8Lk0cDiuBVYTnnqtsm0HPJQ/c36JhJ
         Wb5dUSo+9Hdqr3WSe8mljO9Ik+GTCGD6PMTNY/ZGCgHIjs+kpsX0AMWMiQONWRX1Cvr8
         hnzSuqyIhZM5AOET5J7ww/bOu8xCP6dO596OBPItwqin1thPqCJzWpQ2WHZu40gd3b47
         t0Bg==
X-Gm-Message-State: AOAM533EFtYkaF1dSM4AgwxdZi1kXDSGIopMUCkxmEZ10QnRhP8c8YXK
	CF26QpyhVDfw4RcuAMJ3to4b6Yu0u/c=
X-Google-Smtp-Source: ABdhPJxw7ijDIaRk7yWE8FCeTpxcCYoj3weD8SIY2YQNIYMY3cuvfAeRzZkug+xawqcuGf8d8b/UyQ==
X-Received: by 2002:a65:6685:: with SMTP id b5mr3960349pgw.385.1601989757250;
        Tue, 06 Oct 2020 06:09:17 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:b0a2:cae9:29e5:459f])
        by smtp.gmail.com with ESMTPSA id h9sm3110357pgk.52.2020.10.06.06.09.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 06:09:16 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] suricata: fix compiling on gcc10
Date: Tue,  6 Oct 2020 06:09:12 -0700
Message-Id: <20201006130912.18105-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201006130912.18105-1-akuster808@gmail.com>
References: <20201006130912.18105-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/suricata_4.1.8.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-ids/suricata/suricata_4.1.8.bb b/recipes-ids/suricata/suricata_4.1.8.bb
index 9b7122b..135871c 100644
--- a/recipes-ids/suricata/suricata_4.1.8.bb
+++ b/recipes-ids/suricata/suricata_4.1.8.bb
@@ -14,7 +14,7 @@ SRC_URI += " \
 
 inherit autotools-brokensep pkgconfig python3-dir systemd ptest
 
-CFLAGS += "-D_DEFAULT_SOURCE"
+CFLAGS += "-D_DEFAULT_SOURCE -fcommon"
 
 CACHED_CONFIGUREVARS = "ac_cv_header_htp_htp_h=yes ac_cv_lib_htp_htp_conn_create=yes \
                         ac_cv_path_HAVE_WGET=no ac_cv_path_HAVE_CURL=no "
-- 
2.17.1

