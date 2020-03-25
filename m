Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com [209.85.208.196])
 by mx.groups.io with SMTP id smtpd.web12.9420.1585136634456650214
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 04:44:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="key unavailable" header.i=@gmail.com header.s=20161025 header.b=YX693aWi;
 spf=pass (domain: gmail.com, ip: 209.85.208.196, mailfrom: jonatan.p@gmail.com)
Received: by mail-lj1-f196.google.com with SMTP id r24so2084891ljd.4
        for <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2020 04:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oNKEZERZULSt0WBeqcJM14nn8K2bNK2QJDuLhgs6YDQ=;
        b=YX693aWilKoRThvsXfAuf8DXkHZVtPhot18WMpe3ScaPm5JfhSbZAQbEWhIB5wHThK
         Am/GKQWoEPO/wCMYFqF1RQLLtwh6r0QzQydZMsTVhgSdl0EUUu9MDCTkwzHo0Gtt/IOC
         sfzYr9l+eo6IIdMNHM23vBIU5OGo8KTOZ7OAWsOx8jeAO9rcfuwVHzJRhVWMK0/c1UME
         TjfKzzr4S6ACkNAYh7/dcpnLAIqJk//DomlJAujz1LKYkLTMjt5XN50AZAo3AofUVSKV
         q6/yWu6+5jq95/cRb0xtS8FLbyScKEM1tzC+ytTnXr+pJxtXTIfbXZZ4+uCt3QHVuY93
         RCKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oNKEZERZULSt0WBeqcJM14nn8K2bNK2QJDuLhgs6YDQ=;
        b=orsC0U8qXrIOkd4Hi5I2dNCBP5vNMRBGhEzB20LbTbRKxJPXliIlApFQRk+flijvRW
         XOA/MTeX2a624fgjpKGfURuyf8Dd2UjA4pW6slRmNvqy7dhWnOECYN4V0yeQtC77g05H
         z+1wGZlnAh4OaoZVFycgXGxpn2QvMrXMGO0lqCfSSgCXhHqv2V4SWY6cWQEf6yxsLVk5
         msIqakL50iJ7np5woeGiV/ew5F/0i/up31x0ig9Gp6L+plTkpfMJ0KHEDNCsj5GFj+hf
         0zN6v+4ybKx7UHl0EBjsJMt9OG30Eq+pvoeD/jPdSv66jzH/yITsOBrE0PFGCATnv40Z
         o+NA==
X-Gm-Message-State: ANhLgQ2QHP7rcqIsoj4A8haS1hKEBzFHEBtbTRaToGmYbDWBAdx1egH9
	8I5Yipxdbl3E6jPD8KTB5dJCHcevrsg=
X-Google-Smtp-Source: APiQypJSNn3t1LfLER3STjDqifkQM+JV80uv6mK6lXwl6TaJbD9ndHp5fnPUhPYYFnsdiStdt0wACw==
X-Received: by 2002:a2e:b00c:: with SMTP id y12mr1677693ljk.167.1585136632481;
        Wed, 25 Mar 2020 04:43:52 -0700 (PDT)
Return-Path: <jonatan.p@gmail.com>
Received: from localhost.localdomain (h-217-237.A357.priv.bahnhof.se. [81.170.217.237])
        by smtp.gmail.com with ESMTPSA id c22sm7182729lja.86.2020.03.25.04.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 04:43:51 -0700 (PDT)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH 5/6] sssd: Add missing DEPENDS on jansson
Date: Wed, 25 Mar 2020 12:43:18 +0100
Message-Id: <20200325114319.2115155-5-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200325114319.2115155-1-jonatan.p@gmail.com>
References: <20200325114319.2115155-1-jonatan.p@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When building with the curl PACKAGECONFIG, sssd will depend on the
jansson library.

Fixes the following error:
    | checking for JANSSON... no
    | checking jansson.h usability... no
    | checking jansson.h presence... no
    | checking for jansson.h... no
    | configure: error:
    | You must have the header file jansson.h installed to build sssd
    | with secrets and KCM responder. If you want to build sssd without
    these
    | responders then specify --without-secrets --without-kcm when running
    configure.

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 9bfcb75..ff0b580 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -39,7 +39,7 @@ PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd',
 
 PACKAGECONFIG[autofs] = "--with-autofs, --with-autofs=no"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
-PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
+PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl jansson"
 PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
-- 
2.26.0

