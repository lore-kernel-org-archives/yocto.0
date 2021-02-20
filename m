Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5891.1613823527323814742
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 04:18:47 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=NCR2QRjo;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3AED338C08A4
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:18:47 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id c8so40148528ljd.12
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 04:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KEkevCCu9+WsrsbHq0Nyoi8BXUpfM4EbvjUOt8kkyzM=;
        b=NCR2QRjo3k+NAY+DMQOWaZ6Na4vs4L3tjwJZ2V/C1xmFiHb6BqL/k16N2cVqZhBVcf
         imyqle5UJSf97Tz5D6/uRS3dEQZLCZ22dXCFlInCg2TpybcWvZElbZbOCjsnT7PtnuAW
         rlgVvJWeJAyCBJa046Klcd61F67t+drEkdSO2oeBlqNsMQC6iT0sPDKd95u7Uhk8DN3N
         +sPa4NOxrj4p8IHhCKyqK7YD5ncCeVodu6oOA1H5sAjKTCQR3zGBD1cKqsfBgcK5+GJb
         xTURbsEQc6r2Co5peAG8hs2B9ijaw0VyQ+AoN67fb3kWih2FZygRHlVPM34dWCprLT3F
         RheQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KEkevCCu9+WsrsbHq0Nyoi8BXUpfM4EbvjUOt8kkyzM=;
        b=Zk8X1ZMXXclzcBiqQAY04TsmZmoSw7NAzYrB9v5VI6Dfj26dPVsaHzjcm5s6lcZgYq
         CzyUnxZNIrKTSTQ3e2ysWNMEzHWg+A4JKxf7o6J1hZc9vmfHtUFm9ha0yodPrnZkHzzN
         MOx7LpiHO3pvX82Aeo/6nOIREPaqoO/0qTXQwG5VQJ2xrl8BYyzLYEkP17SMWKZrn9ST
         cqHyHbds/VmqZhd1VjNzpiGLyle281QpsJgV9Sv4E18R0SHv3D9Z5Q223iT9awsAVR9c
         fk5xJDzzMDt5xz4uPLApWqPeyoe12bqFK3glamxSw/LSz7oseiJR6XlzRnN4ms/nmk+3
         4BRA==
X-Gm-Message-State: AOAM5301x0ItRykwB0nnb05BF+0iieLe6Y6GUS9IPp2BSWGKATKGosHR
	hA0/hDq5GQ5VfaPk5OGDGZ1g6xSWNyNQ7g==
X-Google-Smtp-Source: ABdhPJxsa0g7zKgwPjP1CWVhS1vJyscJfFCs1KC/nJx/vqtTNDRGQwRUkELCi7K7Z93loxuZO5dKCw==
X-Received: by 2002:a2e:b4da:: with SMTP id r26mr3393965ljm.130.1613823525574;
        Sat, 20 Feb 2021 04:18:45 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id b1sm1234163lfq.187.2021.02.20.04.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 04:18:45 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	dbaryshkov@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH V2 2/8] initramfs-framework-ima: fix a wrong path
Date: Sat, 20 Feb 2021 13:18:16 +0100
Message-Id: <20210220121822.1873572-3-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

/etc/ima-policy > /etc/ima/ima-policy.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima/ima      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framewor=
k-ima/ima b/meta-integrity/recipes-core/initrdscripts/initramfs-framework=
-ima/ima
index 8616f99..16ed53f 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
@@ -46,7 +46,7 @@ ima_run() {
     # ("[Linux-ima-user] IMA policy loading via cat") and we get better =
error reporting when
     # checking the write of each line. To minimize the risk of policy lo=
ading going wrong we
     # also remove comments and blank lines ourselves.
-    if ! (set -e; while read i; do if echo "$i" | grep -q -e '^#' -e '^ =
*$'; then debug "Skipping IMA policy: $i"; else debug "Writing IMA policy=
: $i"; if echo $i; then sleep ${bootparam_ima_delay:-0}; else fatal "Inva=
lid line in IMA policy: $i"; exit 1; fi; fi; done) </etc/ima-policy >/sys=
/kernel/security/ima/policy; then
+    if ! (set -e; while read i; do if echo "$i" | grep -q -e '^#' -e '^ =
*$'; then debug "Skipping IMA policy: $i"; else debug "Writing IMA policy=
: $i"; if echo $i; then sleep ${bootparam_ima_delay:-0}; else fatal "Inva=
lid line in IMA policy: $i"; exit 1; fi; fi; done) </etc/ima/ima-policy >=
/sys/kernel/security/ima/policy; then
         fatal "Could not load IMA policy."
     fi
 }
--=20
2.29.0

