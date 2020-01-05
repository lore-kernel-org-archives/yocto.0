Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web09.4162.1578266312986510777
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:18:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AC7rIBzW;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id 6so26007837pgk.0
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+Eva4i3yTXGsRHncQqeJmBZ2EP1rRSWFpU4QeQ2tuxs=;
        b=AC7rIBzW5O/CSxjyY2KiGaBPixmywSnqW3pxKRLHfh8RV+KJOqRiOY3pNpBUBBb+EN
         O3rOFrgGuta9FVGFJk6T2NsVGase5uPg5McTCdxZA2c3bcSg0/omow/T4xVHwpkHLa4h
         tdDZVboiq1LEvqTzxFODvsu79l38YY2PG0sXHAgvgkzMlKJGvsyKlM/Y7ZdYuJ0eETrT
         2AS0Xrx26FSZLSyNtfuCvPBHEQjFJSSLOzvz1FwkvTfjqbqgjARnaDm9dXOV1XwSQgnp
         R8QqH0zQYj3EOhRmbG3w2SWPp58NnRMFVJ3PunlbrJAkPHilQhbOJMZd7SB0DI8UtlG0
         QrZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+Eva4i3yTXGsRHncQqeJmBZ2EP1rRSWFpU4QeQ2tuxs=;
        b=EdguAll1Z7qZJ7zQi3tr+0dyqg4HB7cC3ObY181krLvvATIvWcgdQWwC/9msZ5bWrU
         VPnpE0l5tmNnAkadyEXLz56jta3fokUD/zvnDKuBJNibMYm7EjNJ+cHMPmCzSBSjuE06
         WVfHE2EvI82H/XtnZGZ/gchNVWcO37ogJMIIMWUWdq4oEsre4goDcPiZSQKd/J8zm9WQ
         T2spDrIQDSxQ+iJKvSYCqk4BKyY7+RvqhouE7mW10SLYpsRIBZElzKZRumEmOZEAzSTb
         Lx2jAzyr214l4qhu3qkhsLKX5Kh5Ytg/W4eBLGts0uAg2HNDhEaJGnpy544Hvzf7/q5f
         Lo7Q==
X-Gm-Message-State: APjAAAXnxM0heDnzt0dphE7DoV/WyJYB0ru+1AnMqBp8aT/zdAoAwLAy
	F9RRGg0/OINeL7HeBCSx/mRY10qp
X-Google-Smtp-Source: APXvYqwNZROi/L7g6UUQ4Js8Qj1Z6EdrWP18iTnlu8DLQRMGPKG4iTEVFSymXrVW8rRl+D9j59XNvA==
X-Received: by 2002:a62:ac08:: with SMTP id v8mr108320418pfe.83.1578266312433;
        Sun, 05 Jan 2020 15:18:32 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id v4sm50705947pff.174.2020.01.05.15.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:18:31 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Christophe PRIOUZEAU <christophe.priouzeau@st.com>
Subject: [meta-security][zeus][PATCH 1/9] cryptsetup tpm incubator: fix installed vs shipped
Date: Sun,  5 Jan 2020 15:18:22 -0800
Message-Id: <20200105231830.5281-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Christophe PRIOUZEAU <christophe.priouzeau@st.com>

Fix [installed-vs-shipped] by adding /usr/lib/tmpfiles.d
on FILES.

Signed-off-by: Christophe Priouzeau <christophe.priouzeau@st.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
index 8385c94..b706d15 100644
--- a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
@@ -32,6 +32,7 @@ RRECOMMENDS_${PN} = "kernel-module-aes-generic \
                      kernel-module-xts \
                     "
 
+FILES_${PN} += "${libdir}/tmpfiles.d"
 RDEPENDS_${PN} += "lvm2 libdevmapper"
 RRECOMMENDS_${PN} += "lvm2-udevrules"
 
-- 
2.17.1

