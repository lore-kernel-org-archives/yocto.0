Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web12.117.1595088397796669901
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jul 2020 09:06:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@globallogic.com header.s=google header.b=RV6UxwKz;
 spf=pass (domain: globallogic.com, ip: 209.85.167.46, mailfrom: oleksandr.s.popovych@globallogic.com)
Received: by mail-lf1-f46.google.com with SMTP id y18so7633662lfh.11
        for <yocto@lists.yoctoproject.org>; Sat, 18 Jul 2020 09:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=globallogic.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Y4Jd3+qbC9+IqOjUgbtRE0BOF9wHzfLBJUP1w3I2S5w=;
        b=RV6UxwKzIpE+gzGiwBFsxi8O1bHMzRRUjUEgVWhN5CvgOZBb7pUrU7No1ndVS3D+Q7
         FUEupMwu6l1+SVY2j7KUTbEZgleqAPlrsE9xhRiN/NnmH7RwOSynk9PGenSuzW4kX2CE
         s5lY+Anw44hSMKhC0Y9tbqJKBBTJFz/B9JfBqLCXA2Jb+s9bw76SkK7OLKrsKsWOoryX
         FtGgSP6rHYdvGrdfKnTDzAUFlFd/eUIJrwitR8JHI0Cui+5n47fpkRaFh+tPp8YkdcTz
         8wGkWQAdkQx/9VYWWvixILeZxnwE9EmmK87lkl55tSVoxQVYGy23rn4JSFimy1+X5sj4
         6+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y4Jd3+qbC9+IqOjUgbtRE0BOF9wHzfLBJUP1w3I2S5w=;
        b=nM9Qxk0D0tv7tQbjhTF0Kx7Hli6C7G6YVC3LEMhOApbGt3o9QHfO+P88nOwTtyq41g
         cch7IjXhuFmAPh6pK+1kj8/K6eUB2P3u60Qa5k9t19/qh0KFjfPCb54zsyZ9wJPgNUtD
         LelasR1uTviRl5mQ5nCto0ujoF3Jc1ZEtbvyfHfP27qXvkzdRuVhAd+Nn7rIvFdd7wlR
         PrAA+fFOVAC1i3FdQ/kxDaNCLNE5WlsgcZA2SjvSA+gcr0IHHHwPeVvyUpw8iFiYwwWr
         qDAkVbR39chIe8BXc0Yot5Lw2V4Mh3jwOPdd6lbeg3TAbzZ8NSHENGEGoInNf6Xg65wX
         pD2A==
X-Gm-Message-State: AOAM531a0wUHAPxappRezTKR0JXWJ6PWHFC0sgTnSLXnus6/etRNjLM+
	uaCyVdm53N5SLBQPYcKWBuPOOuEjpw0=
X-Google-Smtp-Source: ABdhPJxGuqVc9anE2aLk8tzfhCWFS+rk8V47N6PdQP87hzNfEoft7H0XkDnpCb+KrcCAqsvt0EEV8A==
X-Received: by 2002:a19:48d3:: with SMTP id v202mr7133928lfa.202.1595088395885;
        Sat, 18 Jul 2020 09:06:35 -0700 (PDT)
Return-Path: <oleksandr.s.popovych@globallogic.com>
Received: from localhost.localdomain ([92.60.178.172])
        by smtp.gmail.com with ESMTPSA id m14sm3058550lfp.18.2020.07.18.09.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2020 09:06:35 -0700 (PDT)
From: "Oleksandr" <oleksandr.s.popovych@globallogic.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Oleksandr Popovych <oleksandr.s.popovych@globallogic.com>
Subject: [meta-mingw][PATCH] expat: Switch platform to Windows in CMake toolchain file
Date: Sat, 18 Jul 2020 19:06:30 +0300
Message-Id: <20200718160630.18677-1-oleksandr.s.popovych@globallogic.com>
X-Mailer: git-send-email 2.17.1

GNU Autotools build system is considered in upstream as potentially 
deprecated (https://github.com/libexpat/libexpat/issues/330), and
expat library will be switched to use CMake.

So this patch depends on "expat: Added ptest" patch for 'meta' layer, 
and fixes CMake toolchain file to work correctly with 'meta-mingw' 
layer.
---
 recipes-core/expat/expat_%.bbappend | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/recipes-core/expat/expat_%.bbappend b/recipes-core/expat/expat_%.bbappend
index 626ea5b..0fe3aa0 100644
--- a/recipes-core/expat/expat_%.bbappend
+++ b/recipes-core/expat/expat_%.bbappend
@@ -1,3 +1,9 @@
 
 FILES_${PN}-bin_mingw32 = "${bindir}/*.exe ${sbindir}/*.exe"
 
+cmake_do_generate_toolchain_file_append_mingw32() {
+    cat >> ${WORKDIR}/toolchain.cmake <<EOF
+set( CMAKE_SYSTEM_NAME Windows )
+EOF
+}
+
-- 
2.17.1

