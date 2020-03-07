Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.20301.1583616368254469859
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Mar 2020 13:26:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VyF65m4r;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id w12so2359366pll.13
        for <yocto@lists.yoctoproject.org>; Sat, 07 Mar 2020 13:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=YdjZQg15Wuy565V+Tk9nmXRU4/JOVqA8PyX20MBB+Gk=;
        b=VyF65m4rZ2U7uZQFVVRLOJIb1wNUnKhf/KnOfz0lxrjBsygjh9PVHK7GIJeLeLUPTR
         mBBNyTWJJoSRtcMtAEkTOTwAc8suo37/8aXKZvlH2kQ2jsTJ89YTa3zwaK+i+JsLjCFS
         khmdlVX0qwTyfYgYFmHkn/Y7iEP1XqbzFqVhSUhHAZGxzGS2FnZMFWCYRfLX6fqURoff
         d41xXaXfVJ/kxyD1Yv6b80eGh3cRCBFpmU7n78NPgGfsFkZ7ebu2PIZr47rKOyQu53P9
         DVt5jSbq4H+S8UG9bj4wlmh0bNjyQB67F04kAr1I26SKWeqcqQ9ApLlorzWBgwYlb5kv
         Wlig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=YdjZQg15Wuy565V+Tk9nmXRU4/JOVqA8PyX20MBB+Gk=;
        b=gx29eWPd1Ij1wbx8fD2FYsCTvrR25s9n5TBCzu9hh7kMBtCv9yD9mvLlyEHc/DipD4
         AObNlbulUN93i1ZV39Tt3DMyjjH1Sa0qwlWC1YA1jOfl5ZNzpvZoJqSdoqo/BUs72fuE
         O2blkqT9DjJ0o40QiusnaSkWfLGJlxtk4Fs+SHheGKksLgQgzM8BrunSU8EtHDNDfNE1
         Jzw4mSZtwYAMSGnYJJcp2DxfqAA8bDcTRbaz9UNagFuB/AUtPiXyOltnT6K08jYybdVZ
         /fiEgsWGjxs/GM5nd/EmO3rMWewC4uJ2TcnpYaXhI2hw65qN0gOGQEd6FJWwfzcyoPCb
         Hyrg==
X-Gm-Message-State: ANhLgQ0uiEiJehxn+hjZ3BeF0qOigsatbeT+6LXlrlHxulSWISzWQSu8
	vModzdeOmyaSrSM84NMmBXerlNp3
X-Google-Smtp-Source: ADFU+vs0K1e6/85ypXBlxtUpk6MIhQ+5H/8+kz955xwCMH6c0Ps8wiyqyLB4FDijJorr0RJKsaohkQ==
X-Received: by 2002:a17:902:b590:: with SMTP id a16mr9023480pls.176.1583616367211;
        Sat, 07 Mar 2020 13:26:07 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:6c62:7a1c:e667:70])
        by smtp.gmail.com with ESMTPSA id s21sm31637242pfm.186.2020.03.07.13.26.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2020 13:26:06 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] sssd: python2 not supported
Date: Sat,  7 Mar 2020 13:26:05 -0800
Message-Id: <20200307212605.29093-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index d42a455..c5ddd5c 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -41,7 +41,6 @@ PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
 PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
 PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
-PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings, python, python"
 PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
 PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
@@ -57,6 +56,7 @@ EXTRA_OECONF += " \
     --without-ipa-getkeytab \
     --without-python2-bindings \
     --enable-pammoddir=${base_libdir}/security \
+    --without-python2-bindings \
 "
 
 do_configure_prepend() {
-- 
2.17.1

