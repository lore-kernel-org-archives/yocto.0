Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web10.1180.1595354231651274794
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 10:57:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mEh7epcg;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id p205so22344710iod.8
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2020 10:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8/i/7qUZts4A9v3VS6cI48p04IP32xqk2bByBj1Olx4=;
        b=mEh7epcgom3iDJzEQfnJEycQz1FykBuuAsuWsmhJYkqGbZwjb9/nB2wpU2z95Z4uDW
         hIHQF51rLWEHULn8zpdgQV99doQAoJGrHpNUQFTPX/sceROHNmlXmKG3V2J1k2mkC0vk
         2WBZQtTIpy0WNNp5J0SMuXfAS9CJr+rGPgC6ZSrVvjgBs0vNOI2uUwGrBi5kIwmaDDh9
         5hdqdnbcOF38t4vQm57rllxaNhFIfcoi3drvPWzrotvF4NcxrRM7ACkfBlXyen+pQKCT
         XNRURAbzVGM9hAGeqxRRwEcrY/lb+i+n0R8R7fJhEgt0A2JU/higAZi2WcJm80rxNsg5
         HRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8/i/7qUZts4A9v3VS6cI48p04IP32xqk2bByBj1Olx4=;
        b=blEufFZQrgCWT6sHHjMhQ+wVbdKlXDudElCcPIFismrbGdM7NgpnRYwBoZK2/uyL8h
         A5KnvelIcsGtfzwGZWv15alGnTJTo4RUMQ+PaUg363Ei1c8l7HDrpY0IIVOZ6u3PHRBQ
         gCsWhi90umA3695/uIfntx/nXYB3zUIDRAiAMayWFTX4rC/dD8PAKejZA0m2mWlngpdU
         eqfXvIExfY9j2M26+oAGU5X5oO6TYQ/Zi6iB5eN9ywwlr6XQdTnkNnK7PseMCxyd1FS0
         OJ7kYCKjsz5f4f8kuHA0hNSV/xbDFfoxMbhYDn7n3rttD9RKrLOE61SbmQlJpAhkdL58
         aKvA==
X-Gm-Message-State: AOAM530Tnhdr6sjNuDF3qrKRTbQUkUaSSHQbdZv5XlfC3z9x44aSBPG6
	y+SXP4RKMmP8JQrOM7zusQfH66XIx84=
X-Google-Smtp-Source: ABdhPJzOA6Oe3K0yLJD3lGXd2GpONbt4RtsnyStFn36VZyiPQhM+mP1VqKRSJco1DvFBO8IdorkcvA==
X-Received: by 2002:a6b:c903:: with SMTP id z3mr721947iof.172.1595354230346;
        Tue, 21 Jul 2020 10:57:10 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:c183:1b34:3163:7b15])
        by smtp.gmail.com with ESMTPSA id m16sm10648945ili.26.2020.07.21.10.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 10:57:09 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] gdb-cross-canadian: Stop statically linking
Date: Tue, 21 Jul 2020 12:57:08 -0500
Message-Id: <20200721175708.11718-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

gdb was configured to statically link, presumably so it could find the
static libexpat library. Since libexpat has been updated, it no longer
builds a static library, so remove the flag to make GDB look for one.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-devtools/gdb/gdb-cross-canadian_%.bbappend | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
index 067b614..c33a9ce 100644
--- a/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
+++ b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
@@ -1,4 +1,3 @@
-LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 EXEEXT_sdkmingw32 = ".exe"
 DEPENDS_remove_sdkmingw32 = "nativesdk-ncurses nativesdk-readline nativesdk-python"
 RDEPENDS_${PN}_remove_sdkmingw32 = "nativesdk-python-core nativesdk-python-lang nativesdk-python-re nativesdk-python-codecs nativesdk-python-netclient"
-- 
2.27.0

