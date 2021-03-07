Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.22586.1615131325882367145
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 07:35:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z0Ex8c3c;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id x7-20020a17090a2b07b02900c0ea793940so1624254pjc.2
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 07:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=l4TQpPZB2kBs88MFCF10h3fc0uYEw/x+yMwOsbp9IQc=;
        b=Z0Ex8c3cXGmNvSvpsEo7zFwzs3V687rCbmrkXHiDFQcc1cSHX9+78LucK8un4uupcp
         Obx3FRZkZ+FCqfHQKraaDWnYjCaqiD6e1TXjZPkn/QiuFHH8RnPbTusHPAs4LjXhMiTd
         6v0HjH3o4a9C5PY9yNa/2Q80anyPF6Oja3r5FUerzJYI5G5A7WWqchkedSA+5EWwWt1o
         Efyas0sR+V4LJiEQmrvWffZ7i59PagaiGj1Qt809elU8AVUTswSk2iS3kJmxVZylJ08n
         RVqOjeSPp/0wpXtQv/6A4z0d11mHw4ws1iZsnzyzfsqzQAmeaYVUM3sUBU8y/XeVVYK/
         FElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=l4TQpPZB2kBs88MFCF10h3fc0uYEw/x+yMwOsbp9IQc=;
        b=Ehukrms6aLe+At4NVa+m7VwX2kueY6/krV9lkkJSE7Rye5tF7MJya65XBNSoKQHm74
         00+9Pai0kE2SXlsCHsshnTvrXy8QZLYYLSEwi8KxIDA1AQV0czZRBVaLdeIN6hHo4fBA
         ByHVJUJzeKd6qyfLJmbXMY7tryDix8W9wmaRTBpRAHjElIn+lXD+GJ/1+oUADu3IznR8
         4767Bmm4/9SXCNG9b1C8IjtH1rk14tKwiI7NB5AhX9GSaa1z7Pzqw80XKIajDK3eL/Dz
         g4IgVm8vdSW8zIqlr/Apl63BMrh++jsBezmuM2U+BD5tokpZJg1lQ0OYGy+4ZvjV04a+
         lkVA==
X-Gm-Message-State: AOAM533xCm7H84qf4mJu92Sw07PEGrB0DyfQkj3cc38ruj5uwY02fITA
	8lSnp+WORy8DuLLtx0it01lu+SHDkts=
X-Google-Smtp-Source: ABdhPJzS4fi3ure+20ZtKLbW+8gotc8Y20QLXS6jt0mnaQXVHhqnlOMwTUPkYhs5mvgdLwzhnJF9bA==
X-Received: by 2002:a17:902:b7c5:b029:e6:1a9f:5f55 with SMTP id v5-20020a170902b7c5b02900e61a9f5f55mr2582109plz.57.1615131325239;
        Sun, 07 Mar 2021 07:35:25 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4de0:7e40:32a3:ab29])
        by smtp.gmail.com with ESMTPSA id w26sm4745997pfn.33.2021.03.07.07.35.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 07:35:24 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 7/8] tpm2-topt: update 0.3.0
Date: Sun,  7 Mar 2021 07:35:16 -0800
Message-Id: <20210307153517.5761-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210307153517.5761-1-akuster808@gmail.com>
References: <20210307153517.5761-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-totp/{tpm2-totp_0.2.1.bb => tpm2-totp_0.3.0.bb}      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-totp/{tpm2-totp_0.2.1.bb => tpm2-totp_0.3.0.bb} (74%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.1.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb
similarity index 74%
rename from meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb
index 264484f..dfebc07 100644
--- a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb
@@ -9,8 +9,8 @@ DEPENDS = "autoconf-archive libtss2-dev qrencode"
 
 PE = "1"
 
-SRCREV = "bfd581986353edc1058604e77cac804bd8b0d30a"
-SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=v0.2.x"
+SRCREV = "96a1448753a48974149003bc90ea3990ae8e8d0b"
+SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git"
 
 inherit autotools-brokensep pkgconfig
 
-- 
2.17.1

