Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web12.6059.1602739598557253286
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Oct 2020 22:26:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EkgyArFh;
 spf=pass (domain: gmail.com, ip: 209.85.210.51, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f51.google.com with SMTP id f37so1803800otf.12
        for <yocto@lists.yoctoproject.org>; Wed, 14 Oct 2020 22:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=j+Sen4gbLHdAhyt+uyWIVB59Oixt9vYWysGS8TlJREU=;
        b=EkgyArFhdlw7gL/jObO2OwBM4OF5IoZb4kEZ5Sk7Q1ATAPQOcrYT4ozzDL7Rg2RCat
         Yf0o856MBP9tgECSKn30WcrI7rKsEu7785G4REVEgKEFhGO1SqL/Du7mNUja7RufqIt8
         DZcvCGikfU8z9i8pW9i3Uy4LYhz9q3kyfMvE0/okiCwjywHfiMHmjZvwZ5oDqOYjLP9q
         g1SnVmuYzab90YClEAh0I5V1FBAVwYGPMaa2zR+xd+K2+HZ6KlGRtjlRZH6tEVGgx2c3
         uIfl8RLLkA9FH0Ed0KQZ5SnfzLSXkiNrxNic7Cn+dBjFtgXb9XiaLhy2wSADVSFHUR0+
         u2+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=j+Sen4gbLHdAhyt+uyWIVB59Oixt9vYWysGS8TlJREU=;
        b=FzazP/2YsZmsnm3Em0A8Zu21Hi1IPRk14DfLxdyg0kygJvbF+h4CZ+CQgCTBY9paKm
         pcm7Y5YC5ROj9dLH157wZDDOVM5/lD2KZZgCOjul0GrX9iiKdsrlLwSzsMKzzoBKLid7
         Cuq1qDvTy3TbAVGDM5seM9HJI/79vEGko80lvyQ+eaUVf5xdrPn9QP+6lLIKh9iLVfpK
         YOO2xInDulhnlWoO+XggrijoeHclbxv/3yh1Ub9XP45JdWyjhA8vlTneFCJvk0bf9A6Z
         GPTFxjB7q7JOzyIyBjHOb9HPf2Qs2z4L5iPaiVq4+yvKLtiWw4n+hng+IhpXejAkOjbv
         ybZw==
X-Gm-Message-State: AOAM530z2/sJ6vbChBTOVopUmp+yEM8zZlC8hyH6ZEUZlhSjFwmfjwz+
	tI3ApQ/ZvF1E6FiRhTe0iZEyE3QakMY=
X-Google-Smtp-Source: ABdhPJzJi4IgfqLOy6/MCivR/L+nAs7p4vKKAmyivjFSeVDz2yquT4iAXtXDSwJ5ktFr0Qul1sOZJw==
X-Received: by 2002:a05:6830:1f51:: with SMTP id u17mr1417735oth.223.1602739597755;
        Wed, 14 Oct 2020 22:26:37 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:20b4:de17:4e9:6126])
        by smtp.gmail.com with ESMTPSA id l3sm679049oth.36.2020.10.14.22.26.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 22:26:37 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/5] tpm2-totp: update to 0.2.1
Date: Wed, 14 Oct 2020 22:26:31 -0700
Message-Id: <20201015052634.23810-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201015052634.23810-1-akuster808@gmail.com>
References: <20201015052634.23810-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-totp/{tpm2-totp_0.2.0.bb => tpm2-totp_0.2.1.bb}     | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-totp/{tpm2-totp_0.2.0.bb => tpm2-totp_0.2.1.bb} (85%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.0.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.1.bb
similarity index 85%
rename from meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.1.bb
index 0dad673..264484f 100644
--- a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.1.bb
@@ -9,9 +9,8 @@ DEPENDS = "autoconf-archive libtss2-dev qrencode"
 
 PE = "1"
 
-SRCREV = "994b4203e4769baefa6e7719915629bc8210e90a"
-SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=v0.2.x \
-          "
+SRCREV = "bfd581986353edc1058604e77cac804bd8b0d30a"
+SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=v0.2.x"
 
 inherit autotools-brokensep pkgconfig
 
-- 
2.17.1

