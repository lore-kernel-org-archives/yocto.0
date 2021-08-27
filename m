Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web08.8898.1630074431018384420
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 07:27:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=X0sthIkM;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id q21so4050767plq.3
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 07:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4nq3PLfJ8AwKaeQs5r3KEIqaKb50MPzeGMhAQLmIl7I=;
        b=X0sthIkMk0M4IUS09q6nfZHNDQYcoIDwsFuzYRbM9YTlbLX/ZBWaAkz4ortXljVQvE
         NDBdhbmZDpKaSSzPRUFFJRk2KtKXfxSYIxMMpyDb81Ad+SOyacXCh6W/CJXJNb9xauxY
         LBd4yl/iBLFj+c+fc1VXqbRdCFC1MIA1TpLskDS6adtYNeEotBQlQpCkTO9/kUoiBNQh
         dNL+1td8/LQ+r2xdQMc0qZJ9nTFxdIKKXLhywiL6zKkElNMjF40oyBmkwa2r9g+If3Mf
         hNPjCAjxvFhO8G/Y946kk6hG7XOrUcce5YSqlm3+cIoWwn22nivjNcOqWRgvaeO6uzuq
         RFrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4nq3PLfJ8AwKaeQs5r3KEIqaKb50MPzeGMhAQLmIl7I=;
        b=QUZ6OFf9wldhNaUDkCnxTEMMlxYQ/LrOQo5BsULYZxlx1XVwz1kesfZxvqUqjybonK
         TrIVvbjjC3lqoguYkvgce4uzcqadwcoeun2+IDzmX7wLGRJebXuLVase6EwpD2NGsW3P
         HJdX32entTafyDILOo6lel3zexC1zpibaefsML3rvLPdzsQlRFbQ+8yptFEzXm/i99JR
         pBfcVLiN3FLT86f6cRKqNKyC8oKj+23FXSGJkdY39Jn9SnPUKxmzG41ylq64d8CNxunj
         HN+LUgaL3V/GZaT0IB+TviX34b4bO6nns+xo6pt6SPbsETrgtT8m7QlezDjxRTHBLMhC
         M2Dg==
X-Gm-Message-State: AOAM531oJwgRPg8eV/ygsIa6RL5fEZmzNDRptlLfGNz/9Mhgpi+5UKnw
	XrFPBixclVAxYMzoX/15n05UixjEM4U=
X-Google-Smtp-Source: ABdhPJwVlNBRsZVNi0wD8qPA20T1iVGxTU2XZgXpi0UuTMgsRAByDj6cTsWHpBWnMEdMo/QWg02P7Q==
X-Received: by 2002:a17:902:e891:b0:12d:97bf:b2d8 with SMTP id w17-20020a170902e89100b0012d97bfb2d8mr8966593plg.84.1630074430340;
        Fri, 27 Aug 2021 07:27:10 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:6d42:ed7e:4699:884f])
        by smtp.gmail.com with ESMTPSA id u17sm6512064pfh.184.2021.08.27.07.27.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 07:27:09 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/6] suricata: rust is in core
Date: Fri, 27 Aug 2021 07:27:04 -0700
Message-Id: <20210827142707.3710584-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210827142707.3710584-1-akuster808@gmail.com>
References: <20210827142707.3710584-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

drop dynamic-layer

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-ids => recipes-ids}/suricata/files/fixup.patch        | 0
 .../recipes-ids => recipes-ids}/suricata/files/run-ptest          | 0
 .../recipes-ids => recipes-ids}/suricata/files/suricata.service   | 0
 .../recipes-ids => recipes-ids}/suricata/files/suricata.yaml      | 0
 .../recipes-ids => recipes-ids}/suricata/files/tmpfiles.suricata  | 0
 .../suricata/files/volatiles.03_suricata                          | 0
 .../recipes-ids => recipes-ids}/suricata/libhtp_0.5.38.bb         | 0
 .../meta-rust/recipes-ids => recipes-ids}/suricata/suricata.inc   | 0
 .../recipes-ids => recipes-ids}/suricata/suricata_6.0.3.bb        | 0
 9 files changed, 0 insertions(+), 0 deletions(-)
 rename {dynamic-layers/meta-rust/recipes-ids => recipes-ids}/suricata/files/fixup.patch (100%)
 rename {dynamic-layers/meta-rust/recipes-ids => recipes-ids}/suricata/files/run-ptest (100%)
 rename {dynamic-layers/meta-rust/recipes-ids => recipes-ids}/suricata/files/suricata.service (100%)
 rename {dynamic-layers/meta-rust/recipes-ids => recipes-ids}/suricata/files/suricata.yaml (100%)
 rename {dynamic-layers/meta-rust/recipes-ids => recipes-ids}/suricata/files/tmpfiles.suricata (100%)
 rename {dynamic-layers/meta-rust/recipes-ids => recipes-ids}/suricata/files/volatiles.03_suricata (100%)
 rename {dynamic-layers/meta-rust/recipes-ids => recipes-ids}/suricata/libhtp_0.5.38.bb (100%)
 rename {dynamic-layers/meta-rust/recipes-ids => recipes-ids}/suricata/suricata.inc (100%)
 rename {dynamic-layers/meta-rust/recipes-ids => recipes-ids}/suricata/suricata_6.0.3.bb (100%)

diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/files/fixup.patch b/recipes-ids/suricata/files/fixup.patch
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/files/fixup.patch
rename to recipes-ids/suricata/files/fixup.patch
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/files/run-ptest b/recipes-ids/suricata/files/run-ptest
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/files/run-ptest
rename to recipes-ids/suricata/files/run-ptest
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/files/suricata.service b/recipes-ids/suricata/files/suricata.service
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/files/suricata.service
rename to recipes-ids/suricata/files/suricata.service
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/files/suricata.yaml b/recipes-ids/suricata/files/suricata.yaml
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/files/suricata.yaml
rename to recipes-ids/suricata/files/suricata.yaml
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/files/tmpfiles.suricata b/recipes-ids/suricata/files/tmpfiles.suricata
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/files/tmpfiles.suricata
rename to recipes-ids/suricata/files/tmpfiles.suricata
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/files/volatiles.03_suricata b/recipes-ids/suricata/files/volatiles.03_suricata
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/files/volatiles.03_suricata
rename to recipes-ids/suricata/files/volatiles.03_suricata
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.38.bb b/recipes-ids/suricata/libhtp_0.5.38.bb
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.38.bb
rename to recipes-ids/suricata/libhtp_0.5.38.bb
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc b/recipes-ids/suricata/suricata.inc
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
rename to recipes-ids/suricata/suricata.inc
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.3.bb b/recipes-ids/suricata/suricata_6.0.3.bb
similarity index 100%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.3.bb
rename to recipes-ids/suricata/suricata_6.0.3.bb
-- 
2.25.1

