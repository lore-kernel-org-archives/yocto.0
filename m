Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.7497.1584498617646204631
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 19:30:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fPe9EUyV;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id q16so555607pje.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 19:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ZjKcE9PuHXO6N3CNJKAEH9TdU+7VCVql6Gq0G3KoY+M=;
        b=fPe9EUyV60k2x//2UwpcIVM6tVx//0CkTmvHK9En3iDv2h84B6UPV36+4D5Fdb8HBx
         h4YzjQ36H7iBfPYMHBZxEI8Wr7aJumIaUShEh200Q1WnR+LndoayL32Im8RC6KljhCkG
         WY93uSYBWhJpZKmZULrRrjknMQF86PUpzsQD79Rzxkb85FdEAh2ie1eRlx49/E4gFFVR
         Lz3QvE5RbzUqTli26EkYhLfJAlrPrlLSFYDtTzso9GUT6LCwhHcgVmYNKdVqXcWsamP0
         XuU4bExQJF+UAf0VCKooiAa5XCAKl1EsLLbM3PiYIQs1hKTnqHQVxkoYPfUL+FZVPTUF
         m+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=ZjKcE9PuHXO6N3CNJKAEH9TdU+7VCVql6Gq0G3KoY+M=;
        b=Z/AvyWjmqxr3RWNiHm9aSWvpQ5iAyszJS16hiB6TWqBhYUwh1iWByBxXLfkUemlYrX
         3RTtdtHV8CdmGTuuiC9eRhYWRhPFPVl7FuwZ81NEqJSScCNBe/4U0rc4N830bYmn84vy
         qeaLlhKQBouKq6OtRe8jqjdCrWRV9B8o3XsYWj8K/6t6XmYnJ6JkKilzIhetJBj/jYbd
         aGO5EmyJhfYQGcNEEIO7pBom5YQDXAgRyPwqjQUyk+ascYmfrwnI+GPk6AYHb3wexoYk
         DlrUsfRC3cdWsBVJwiKeF0iSc11EVEQumDKw48U3Iail+xJDipSYfp6Tz2EoZxfAjETE
         LWhQ==
X-Gm-Message-State: ANhLgQ14DFlLMLRR8Fpq1e4cIJ3g5lXeKw9bTnltUiZfzT/LGfMjfOSj
	yh3OWhaGDiSxKIu3LcfFhcvqWI8J
X-Google-Smtp-Source: ADFU+vs8j9RwYSyrEsa6JSIZeSlJUSuJEUp9yHgsnpIztIyBi4e7aF8/1LRtWliTxP+5oaMmmJdlpw==
X-Received: by 2002:a17:902:7615:: with SMTP id k21mr1631674pll.160.1584498616898;
        Tue, 17 Mar 2020 19:30:16 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id z3sm4340083pfz.155.2020.03.17.19.30.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 19:30:16 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/7] fail2ban: change hardcoded sysklogd to VIRTUAL-RUNTIME_base-utils-syslog
Date: Wed, 18 Mar 2020 02:30:09 +0000
Message-Id: <20200318023014.31723-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318023014.31723-1-akuster808@gmail.com>
References: <20200318023014.31723-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
index 8673c10..e737f50 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
@@ -46,6 +46,6 @@ INITSCRIPT_PARAMS = "defaults 25"
 
 INSANE_SKIP_${PN}_append = "already-stripped"
 
-RDEPENDS_${PN} = "sysklogd iptables sqlite3 python3-core python3-pyinotify python3-logging python3-fcntl"
-RDEPENDS_${PN} += " python3-json "
+RDEPENDS_${PN} = "${VIRTUAL-RUNTIME_base-utils-syslog} iptables sqlite3 python3-core python3-pyinotify"
+RDEPENDS_${PN} += " python3-logging python3-fcntl python3-json"
 RDEPENDS_${PN}-ptest = "python3-core python3-io python3-modules python3-fail2ban"
-- 
2.17.1

