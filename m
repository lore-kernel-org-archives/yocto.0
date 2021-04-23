Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web12.68.1619200993816755724
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 11:03:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sncQV7kL;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id u21so75148552ejo.13
        for <yocto@lists.yoctoproject.org>; Fri, 23 Apr 2021 11:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MxSbDGq2T6ZcjKggUD27N/CxZgvWhjSKtrwe4eJy6W4=;
        b=sncQV7kLetTSIZDTv3hDkHOufTfoOR3vzlF17lZJaBjqoNhBVcnrme//AN+ysXPLxg
         Ijs7lL9HrWBoA5WCOnL0+j7y4nuKzpFSbS0H9gwhlojcysEpEIACu5scafGjUR+UprFM
         VyY4eqxdN/1EfKDzPMWKJ2+m5oPVoBMGJL5kIKae/fJAD3rsr7K0M5Lh5Cw1bKYfv3oX
         w0z7aq8qr+IJZezmrqpM1EV2lziKecqpw2iP8NZxSctf/fPK2JoTxMB5iRJu6DbtiD7/
         E52SfHG9NIVM9mihiarkejokTDM/1y6KZBAg9qV/7ZAMS0yIFW5eMpj/34WrzZ6lpOIU
         Y5bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MxSbDGq2T6ZcjKggUD27N/CxZgvWhjSKtrwe4eJy6W4=;
        b=QJ3tmf74mUtHTZNjkwiw16ZqXThdL4lMy7kz+pBiN4cEgZQCkcw0c0Pn717eerqN7z
         kOjZXjrVGyA3KWXcASapUZPko6MkO5Lc1YqCy31yemHXIwdqxvD284edG9YwO3BCxNDT
         MZnKXt4j9Z74pKaulJuSA1Db9p10HOg/yp64dCUMJsaM5V20ZVFia1Hg+vnmTJn592LG
         XoPv6Y9EYawG5q3h0MpqY1sIS/HPOvXJdicRz8xBDiZTqmVLZAV3SfDe2jgosXuxAnQN
         TawsY3luljPIfzDFmXH8AVZkRjQr1zjYMJBvPPS8NR9fX2mN6zJ54oOhFy4AlF6S435/
         AMNA==
X-Gm-Message-State: AOAM530Y/DVDCI5gzSY6cJwS8oWEen3Dz+8TmJ5ivCDzn358CBwhOid1
	k3QL9m3ShovR7XIptUp+jE5lIuX5oU+1HQ==
X-Google-Smtp-Source: ABdhPJxEjqx0zsccAs4dT1iSy7eZ8YPXRRQrIRuNHnKKIbQlChCT/8XKl0ldK5x8U3LVghYP1kk5HA==
X-Received: by 2002:a17:906:fb81:: with SMTP id lr1mr5302976ejb.62.1619200992495;
        Fri, 23 Apr 2021 11:03:12 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id bm13sm4604142ejb.75.2021.04.23.11.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 11:03:12 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 3/4] config.json: pam is required when weston starts under systemd
Date: Fri, 23 Apr 2021 20:02:45 +0200
Message-Id: <20210423180246.706715-3-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423180246.706715-1-alex.kanavin@gmail.com>
References: <20210423180246.706715-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 8e0f0ac..6de85a4 100644
--- a/config.json
+++ b/config.json
@@ -976,7 +976,7 @@
                 "BBTARGETS" : "core-image-weston",
                 "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES_append = ' pam systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                     "TEST_SUITES_append = ' systemd'"
                 ]
@@ -996,7 +996,7 @@
                 "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' systemd'",
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES_append = ' pam systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                     "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
                 ]
-- 
2.30.2

