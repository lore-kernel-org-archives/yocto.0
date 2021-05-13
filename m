Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web09.7793.1620872713586845173
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 19:25:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MclYLrpI;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id m37so19900933pgb.8
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 19:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=s1wE8PsUT87LWozRIEm0h5taHSUK4OZOZqP34S8xShM=;
        b=MclYLrpI/Y1fsCfB55ydt/NpAHjL3ZQYsdJamVVm17Sv4FhYB+U+ZJanBD02j2jVA5
         wtgDV8M4k0liO3IEjqOj7fBtBUGGOk+2hMz3tw3v0gO4p0ve4X8buOh4Ib3xWvnEeFqb
         9iMCh/CYddppWScYrvt59LzDb6304lbyROHQMp6X7OFO5LVN42DODQRXGqmEfIa0IGMz
         vv7araFbxnEiLx3YYt5NGW/S4rmvK/IolUMP3n+5t6i+2aPeCLR/JPruQ8SSxmk253yF
         ziI7ymXPHJDff3HdG5kBLZBnwdnkbIA3ePXfk4LEhCJNOnwTIvQoKr2Tmgo+h7NxNSvB
         Lk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=s1wE8PsUT87LWozRIEm0h5taHSUK4OZOZqP34S8xShM=;
        b=aC1o54dF2Mr8GGAceINpwldUgzgOWtAEbzlvKlpLbLyX0p9UYgYigjwOifbYbLxFjC
         uREvWFIJKzW7+19uj2M0chdkYqy4RAAqLd8fwzQcaMjMSBuAXPJ5MnV/QQz5SqHiG04u
         vRJLg6366kz+vN0pNIBsleEUbbxXBoC8ri76gAZvAIEP4Ubqvtx97p63pY3g26VMZ64J
         Ss7alT3QlgWG1c078yytsbB6XM3lKCpMIVH3CgySr8jxn/DC3tkcYDwi26r1EOjk3va3
         3lDvyKfQtU0Pkiub0YObV+Tw1PGRtOZDeDHCgb5QZeeezlPjXqKxm18Ql6FxllfoOJuW
         p6IQ==
X-Gm-Message-State: AOAM530bdYIrdZBqiAG7ROIjJkbaUeO2ovvnwcltZXnenc2exluz87D8
	anMkQh/ug38wdb1SB+enpwnbgEcoFCs=
X-Google-Smtp-Source: ABdhPJydnO8AwiL/TIj0+8tOdhED0XBpc1jwRhcJL+VhdoZpZ/ypyM5S/MUFkdlhrji+yhq1BeGKlA==
X-Received: by 2002:a17:90b:34a:: with SMTP id fh10mr1932504pjb.123.1620872712880;
        Wed, 12 May 2021 19:25:12 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v12sm870777pgi.44.2021.05.12.19.25.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 19:25:12 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/6] ibmtpm2tss: update to tip
Date: Thu, 13 May 2021 02:25:06 +0000
Message-Id: <20210513022510.3370797-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513022510.3370797-1-akuster808@gmail.com>
References: <20210513022510.3370797-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
index 4d9b554..ae8974b 100644
--- a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
@@ -17,11 +17,13 @@ DEPENDS = "openssl ibmswtpm2"
 
 inherit autotools pkgconfig
 
-SRCREV = "3e736f712ba53c8f06e66751f60fae428fd2e20f"
+SRCREV = "c4e131e34ec0ed09411aa3bc76f76129ef881573"
 SRC_URI = " git://git.code.sf.net/p/ibmtpm20tss/tss;nobranch=1 \
            file://0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch \
            "
 
+UPSTREAM_CHECK_COMMITS = "1"
+
 EXTRA_OECONF = "--disable-tpm-1.2"
 
 S = "${WORKDIR}/git"
-- 
2.25.1

