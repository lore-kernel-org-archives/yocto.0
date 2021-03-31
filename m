Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web08.2128.1617162688713062610
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 20:51:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ONtvFcRR;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id f10so13200970pgl.9
        for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 20:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=xED1gA9V2UXCZtF/ZT7K7nNw326orM1X1u8PZNQsOYU=;
        b=ONtvFcRRzuxACY8q40ZYNkuZwjAwaw2a8EI2jJFZV4hP8g4nCAVd7ueKi1YC85Nf7n
         dPuUPmm4EoMj1WAo5Y2xMlaZykjrqVn0dmbZE+VlUnWJiDuQnPLtIFWjdpDZPlQEmtti
         QwW7IuhNLgx3s7co3V0lstvD4Kce40OhPW9szf8rCrU8KxQHHa8WD5oWLvtTbWpe2B2x
         GSfuBrP0O8JBT2PJK4y01tNPrzfKDmI04N/ttHK9uBelSVTBOmT6u/ECjqNy2FLEQFqZ
         2fbkpzyqwB6tHjwSYK2kg5c0F9PUqeyYDlwEeICdi89XebHx4I3wNtscpKKaTMfre6RW
         z9/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=xED1gA9V2UXCZtF/ZT7K7nNw326orM1X1u8PZNQsOYU=;
        b=mkG62Asly2f/X3w31ZuJ99dJDKWyfiwySMPvxI0G8BOCssqWOqKkIJ4P6E6v6nis8b
         UQFrcYHHJy5K2rqe4n+Rw6Jbxa/G7P2Ej3ApsnskR4eUIh/lNR9Mc1hn5/2XTiGdcp3H
         lie97Bhjveuocfq9oyNPEUsDtoc6JRfcpbVY5bM9lHxFAOpf7HJFh8txXWeJVdCqlY1t
         ynhbhSm0bFsG5hpsGWr41uN71xXo44/f7oFQl3b9DqzcMfGVq9mdcGiZFP0IcS2FMfdz
         xu2BKIpUzkR6tFEVI6dgqSZ28PiDuRplthOQDTZqi/EQVnu7+NBWfNAfRxWSHTRkrdmh
         YkQA==
X-Gm-Message-State: AOAM5307xxyjjl0T3pRil8h2GQXhxi2My6CSHN5CZX6U/kbwFCgcAbAk
	BTEE/gssxcWOUrUkMUOq7sbY/Ezrgio=
X-Google-Smtp-Source: ABdhPJz+5yZbxQcqLntFAN2RPVAy626lQEVEOl0vEHdUp2/aYpMwmlSiIu5/uwrnvPY4Ebf6aPCeKA==
X-Received: by 2002:a63:508:: with SMTP id 8mr1291461pgf.220.1617162688139;
        Tue, 30 Mar 2021 20:51:28 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:20e0:2ff7:e997:1a04])
        by smtp.gmail.com with ESMTPSA id s8sm500713pjg.29.2021.03.30.20.51.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 20:51:27 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] swtpm: file pip3 issue
Date: Tue, 30 Mar 2021 20:51:23 -0700
Message-Id: <20210331035123.15205-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210331035123.15205-1-akuster808@gmail.com>
References: <20210331035123.15205-1-akuster808@gmail.com>

need native pip3, was using host's

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
index b7ff2ad..c0bd35e 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
@@ -7,7 +7,7 @@ DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libt
 
 # configure checks for the tools already during compilation and
 # then swtpm_setup needs them at runtime
-DEPENDS += "tpm-tools-native expect-native socat-native"
+DEPENDS += "tpm-tools-native expect-native socat-native python3-pip-native"
 
 SRCREV = "e59c0c1a7b4c8d652dbb280fd6126895a7057464"
 SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.5 \
@@ -18,7 +18,6 @@ PE = "1"
 S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig python3-dir
-PARALLEL_MAKE = ""
 
 TSS_USER="tss"
 TSS_GROUP="tss"
-- 
2.17.1

