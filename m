Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.42798.1593975491591035803
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 11:58:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fNR4omQo;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id gc9so9355947pjb.2
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 11:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=N9H582qVRZgRpjFqZoGQlfrTAHUpBTtrDxhpoEJHoXw=;
        b=fNR4omQoLR7Y1SdUeFQgzds5QX9PEUQbXOtv14k+91lsn4EHiatCG44KLWdeounJsN
         EUYT8PI9O9j8knszdguCSZwPk6jzQzgxXTBtzCUEbVs8aZSLZ4x4+iJn6VdjcSKVf2ca
         u+74Xhjy07divBETu5THQoDOjC4lDS/g/59AYJvRwqgLyU2kcY7Zefxhgj58ljSVdj0H
         8eV+uJSIemm3e52d68MKIwcIWNfWrm6jVGLrRk58tB/3Xtmw4w9rn8y0PDS8nQoJwijI
         euXJd95yr1YpuUpIEqScZEDmiiwgPElYgJHaUteumnsdGskFqb3hDb5LDqtCn8V0ZW/8
         7b7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=N9H582qVRZgRpjFqZoGQlfrTAHUpBTtrDxhpoEJHoXw=;
        b=e63y0TvXcXqwHw0LCK8C7440bJm7IcKcrRCY+0DJbOqF8mXrqlxvlydNBOODT+6Dv7
         FkUZxg3KTrxO59POpaeyxmZXkA5JCF/t3e/rMQpMjJf+qao2QeI3Gk0/atxF79gYi6aM
         XgbgS5pNNtCFaFLNDz68thO4GpqTNmct5F5wzjnn55uhkKan4+GSHPpar+WMbVTk7ml8
         E+KvMVKQwKrB0pT3PtFFiHqxjTT0Ys40r+pC+SQlWYtILHCDI++h6OX73bXtrYkK6vc/
         QAeR4RObOj3kTkxQO7cBZwDf1l/67CVZLBDTEuUmtpisnwBGqFv4KS7ZZCe2wIjxq0Sh
         J3pA==
X-Gm-Message-State: AOAM533FD96gX/9+X4D3Vm5WhdFxlazw4+JBzFqn8JH8QROZdBr97tDh
	mnICfKL1rXUHIJxJZKAL0zHtMRzXgBw=
X-Google-Smtp-Source: ABdhPJw2N59drJW0FkljfVjL+lTkY/Ese5R46C3citZqlu61UtKJWQHwKYpqulQ/gXMbyV9UUAUkwA==
X-Received: by 2002:a17:90a:d3cf:: with SMTP id d15mr8930944pjw.202.1593975490963;
        Sun, 05 Jul 2020 11:58:10 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:4da7:8833:1925:8aef])
        by smtp.gmail.com with ESMTPSA id d5sm15464534pjo.20.2020.07.05.11.58.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2020 11:58:10 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/5] python3-qrcode: add recipe
Date: Sun,  5 Jul 2020 11:58:05 -0700
Message-Id: <20200705185808.3912-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200705185808.3912-1-akuster808@gmail.com>
References: <20200705185808.3912-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-python/python/python3-qrcode_6.1.bb | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 recipes-python/python/python3-qrcode_6.1.bb

diff --git a/recipes-python/python/python3-qrcode_6.1.bb b/recipes-python/python/python3-qrcode_6.1.bb
new file mode 100644
index 0000000..bd50e6f
--- /dev/null
+++ b/recipes-python/python/python3-qrcode_6.1.bb
@@ -0,0 +1,9 @@
+SUMMARY = "QR Code image generator"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=4b802d2a65df4626623c79757f486af9"
+
+PYPI_PACKAGE = "qrcode"
+SRC_URI[sha256sum] = "505253854f607f2abf4d16092c61d4e9d511a3b4392e60bff957a68592b04369"
+
+inherit pypi setuptools3
-- 
2.17.1

