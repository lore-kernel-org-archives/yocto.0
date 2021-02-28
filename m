Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web08.4803.1614552973063654058
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qWvsKO9R;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id j12so10213973pfj.12
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=rkr9fXOTf8Jkkj8eAQMGtg3Repr6PgH+u/Okb4O0taI=;
        b=qWvsKO9RcZUIRngMqHmlCYsgDmmusqqu1+C4GghBXZGafxQgbz2ZVf4LuJV9CQfZ1G
         4tNN4vqiLxZSKVJd800DJ8Cxk5yMIx0MNDzRbkyIB1vV9SJpVbtksghdsQO9V8Y7CPc+
         E7vtOLIoayXMkS+FtPauuf4wAQra+qLBdsNF99UQKEtiBgPtFEv96kGb1jixykoxFLiY
         Es6vhF2fB7Ok3ap1zOSGFSK2JTTdKVvPXtbMzrGm4ueUFR+1GGkEHIxr/Ro2Lyxeeve+
         /Yt99Hp/W1hqWqUUfKj0R+w1hiSw6yVnwy/qdk0WldXLdBnJQtOap4D/9Oe7dQO/Q0A5
         DVuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rkr9fXOTf8Jkkj8eAQMGtg3Repr6PgH+u/Okb4O0taI=;
        b=If63KdjvQy2QMS60hOFjOdi2RtRJGwRFdB1Hx4g/8ANvGQdN7LIEFa6N7JjCQ3FQlk
         vIeB6EiZiFAjmVuHQirwkKnJiAF0gJDgJN5X4TwB/B+v+q04OG+QIjVd9WwgavJIQX2Z
         vVtWoP7kvEsB0c6U5nuwspFYM6deMpNf5cgltsRRZkf5UDjB5HLUMT0+35VP8fSClDSY
         os+BaeseHSoUDXwePifLFY9BC48FWyQBKiLOcT0HVdrdbvS7oboD6J2CfQXg3YWO/a4o
         hGnX6E3Q5qnMOnmQumk5wC+0jjhQyiFS4OIsngaVmuph72tg37i+bmDEFVf756aV7qCR
         6Iew==
X-Gm-Message-State: AOAM532qMU9T4jnj0K1GZzkqupPdgYISVWAZ1MhuMvMvy3G8/lRxomaG
	X2d7jarDtcOB8FHzFVnyd/y+Z9MTKE0=
X-Google-Smtp-Source: ABdhPJwzlTBT17pQCj8ZbkjWqgZxmHQelSR3lec32X4QrZWjfx5K4TojJqm7teI7RpeNabuafg1xyw==
X-Received: by 2002:a65:53ca:: with SMTP id z10mr11236532pgr.271.1614552972457;
        Sun, 28 Feb 2021 14:56:12 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:12 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 08/12] samhain: update to 4.4.3
Date: Sun, 28 Feb 2021 22:56:01 +0000
Message-Id: <20210228225605.3442507-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/samhain/samhain.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 3b4aab9..6a2eb08 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -3,7 +3,7 @@ HOMEPAGE    = "http://www.la-samhna.de/samhain/"
 LICENSE     = "GPLv2"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
-PV = "4.4.2"
+PV = "4.4.3"
 
 SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://${INITSCRIPT_NAME}.init \
@@ -20,7 +20,7 @@ SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://fix-build-with-new-version-attr.patch \
            "
 
-SRC_URI[sha256sum] = "2bb2750b32646be32517d0b2259402559c72b96979800f6c33774fcdea327fff"
+SRC_URI[sha256sum] = "3e57574036d5055e9557ec5095818b419ea6c4365370fc2ccce1e9f87f9fad08"
 
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
-- 
2.25.1

