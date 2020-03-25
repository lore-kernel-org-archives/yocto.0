Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
 by mx.groups.io with SMTP id smtpd.web11.9360.1585136665770205676
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 04:44:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vAV6KVU1;
 spf=pass (domain: gmail.com, ip: 209.85.167.68, mailfrom: jonatan.p@gmail.com)
Received: by mail-lf1-f68.google.com with SMTP id t21so1473452lfe.9
        for <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2020 04:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=psPwlFdK6Dc9WeYeOm7uTqnFJd3AWVjS0QpFjemsnGA=;
        b=vAV6KVU1QV30NO8nS2lyA5k0HfaAuw7ZfNKmy2L2iZT+YZK2hp+Oqf8omW9JXGa3kx
         FuN7xqcch6X7vdZWK8DVThMhCYmyfaeMltS7f8dvL4s//QGBUG3DPOC3OeHA4kBgDgSP
         gMLyvARO4MGlmFuiYSVmp2Coq5eCo76/uUYi16RUpoLfoRg8RDVNUlLHlPKypi7y3rel
         qhC3gOcCrCLXM6psz/qSMQExqFz4va/IJR1n1UGzOi3mpqtzz9HGMRsgzSy40YkaK3qj
         dbQlmFkAUCYkS+G1OIWKe4Sn3OfaewGHAejnPdzJ4oZgh7BgK5XHEnhqUbJZcBt60ued
         /p2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=psPwlFdK6Dc9WeYeOm7uTqnFJd3AWVjS0QpFjemsnGA=;
        b=XrjYl1/QpLy2cnVU8f6yK4oD0Ykw3v8WrFRu2z5QqnJUI9pc1vQJp8Jh5JExv07XH9
         IqdwRaZm2kzdiPArjZSEb5un7MTm89aQtezQDDAezjNjiT2lSqcTc5gHMOanX19nFzxT
         qAgUWjEzooY3c6mcVaIx050JacgAvteSDrCGIU+uQrpQdjVdEwAJgY/RE71OfCIU6zF9
         UrZ50AGAMy2bF19DskyiC/LZfs4cQdIio/XGnkFgc8VBWF9OUglbL7ds0/ILBBECVT6x
         b6ZD6QgrfcYgO+uqIxPLnTwhq6ubmmWjGmB01x6uhjHH2Pwa8lbEEmT6elAgCgIorewx
         NRMw==
X-Gm-Message-State: ANhLgQ2/dJT5xDVdbp/TB+ASDpEjZbIWv+I5WX8ezmaH4S1todFKU1cd
	CFgIYDqv2quX8U29X07u6Tw2u1VobuU=
X-Google-Smtp-Source: ADFU+vteI0IplrxI1vDk9Sd68a5zffHltgVF6fmvkdRv1oo/63iQxzRNI1frnjUSV2jdaLT10V7bBw==
X-Received: by 2002:a19:ee18:: with SMTP id g24mr2107868lfb.29.1585136633669;
        Wed, 25 Mar 2020 04:43:53 -0700 (PDT)
Return-Path: <jonatan.p@gmail.com>
Received: from localhost.localdomain (h-217-237.A357.priv.bahnhof.se. [81.170.217.237])
        by smtp.gmail.com with ESMTPSA id c22sm7182729lja.86.2020.03.25.04.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 04:43:53 -0700 (PDT)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH 6/6] sssd: Add infopipe PACKAGECONFIG
Date: Wed, 25 Mar 2020 12:43:19 +0100
Message-Id: <20200325114319.2115155-6-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200325114319.2115155-1-jonatan.p@gmail.com>
References: <20200325114319.2115155-1-jonatan.p@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

infopipe was previously on by default, so add it to the default
PACKAGECONFIG.

The systemd files are only installed when --with-infopipe is passed to
configure, so conditionally add them to SYSTEMD_SERVICE.

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index ff0b580..7ea1586 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -33,7 +33,7 @@ CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
     ac_cv_path_NSUPDATE=${bindir} ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
     "
 
-PACKAGECONFIG ?="nss nscd autofs sudo"
+PACKAGECONFIG ?="nss nscd autofs sudo infopipe"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
@@ -41,6 +41,7 @@ PACKAGECONFIG[autofs] = "--with-autofs, --with-autofs=no"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
 PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl jansson"
 PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
+PACKAGECONFIG[infopipe] = "--with-infopipe, --with-infopipe=no, "
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
 PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
@@ -100,9 +101,9 @@ INITSCRIPT_PARAMS = "start 02 5 3 2 . stop 20 0 1 6 ."
 SYSTEMD_SERVICE_${PN} = " \
     ${@bb.utils.contains('PACKAGECONFIG', 'autofs', 'sssd-autofs.service sssd-autofs.socket', '', d)} \
     ${@bb.utils.contains('PACKAGECONFIG', 'curl', 'sssd-kcm.service sssd-kcm.socket', '', d)} \
+    ${@bb.utils.contains('PACKAGECONFIG', 'infopipe', 'sssd-ifp.service ', '', d)} \
     ${@bb.utils.contains('PACKAGECONFIG', 'ssh', 'sssd-ssh.service sssd-ssh.socket', '', d)} \
     ${@bb.utils.contains('PACKAGECONFIG', 'sudo', 'sssd-sudo.service sssd-sudo.socket', '', d)} \
-    sssd-ifp.service \
     sssd-nss.service \
     sssd-nss.socket \
     sssd-pam-priv.socket \
-- 
2.26.0

