Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15368C25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 05:52:59 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.10067.1716443573364738570
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 May 2024 22:52:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c2m2g08g;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51f45104ef0so7235237e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 22:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716443571; x=1717048371; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nRTdlyKioHSqRTMrVd79LZRP41EtXo4yBFWndkoJf1o=;
        b=c2m2g08gX4yDFSlEQiqVizMWlLZdSDC5qKQGRrU30uFRR2c/RJdCBWkDhVR6BzKkd6
         6ri03Hj54t4oPMkt9NUzdErixPDYrqGiiYy0nPBb1GjCHedz9uK0p7Z/Z83WcWUEyweR
         rMMzjFUERKPk8LfoG4fchF7dHZsnaD7U370CVq2lSTFg8I+iT2wtQYhD79i4DBXkEm70
         16Z7ejr+4d5ZE3idP0vIh5acUFoIxB5bpU+yLstyXZb1/tyslLplR3K5JEI/88Z0z8mq
         PTaugXLUS9LjbVH2qLeaax5iMFMu6q+NBY83Wv5c98czWQZrjRrVUq1iOpI4i2c12CZ5
         XyIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716443571; x=1717048371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nRTdlyKioHSqRTMrVd79LZRP41EtXo4yBFWndkoJf1o=;
        b=m0yTMcrXSHeNkUkRDWDtPPs6xjTqnMUsHpZZcEbazmpbDq/dtTAHFQs5Wnf/aMbhdO
         7HnPG8JxXzTCxaPNHePR3PEqd87xZcNYJDP0lb80EfMRVLzwuopvtl9DNmuULmks3lto
         ju8Xu9xEyoPSLxv6i5+BcZnP5K0nAh2wTn0NNcbZcqZXkfslY6oh3H0G99clx77UHst3
         OjKpI5+WqPTi+jQNM5avHYRVzaa8PGiv0rlI76Oag3EngI5+EvoXiZaHZcn/bVCayc0g
         e/y+FgIDPm4X9m2I/96bSW6k9dBklTul5/bIHz6oiyOaCGEtRyBjHWjO/d8t+Q5l6c0g
         FSEg==
X-Gm-Message-State: AOJu0YxcnFZ3bWghccgHnotYPJSUkSeJ3LjeFkT3WlCZfx7eNBruJWi2
	Jni1aAV4JxS6rEO6mhkdcjN/xtZ3B8tb/Gd1RoYcfs8GDbEfF50W1OUHXg==
X-Google-Smtp-Source: AGHT+IEF9FCzmJUs7hzl57Yu2w5n/TMKdGNGZaFbS0xfXOXdM6aQQs4ykZ3YRPg/32AvlfClbKZFWQ==
X-Received: by 2002:a05:6512:2241:b0:524:3177:8e45 with SMTP id 2adb3069b0e04-526c12158b5mr2130037e87.68.1716443571341;
        Wed, 22 May 2024 22:52:51 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733c2c7e18sm19554689a12.76.2024.05.22.22.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 22:52:50 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <martin.jansa@gmail.com>
Subject: [meta-security][PATCH 2/2] mmap-smack-test, smack-test, tcp-smack-test, udp-smack-test: don't use S = ${WORKDIR}
Date: Thu, 23 May 2024 07:52:40 +0200
Message-ID: <20240523055240.593564-2-martin.jansa@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240523055240.593564-1-martin.jansa@gmail.com>
References: <20240523055240.593564-1-martin.jansa@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 05:52:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63172

* fixes:
  Parsing recipes...
  ERROR: meta-security/recipes-mac/smack/mmap-smack-test_1.0.bb: Using S = ${WORKDIR} is no longer supported
  ERROR: meta-security/recipes-mac/smack/tcp-smack-test_1.0.bb: Using S = ${WORKDIR} is no longer supported
  ERROR: meta-security/recipes-mac/smack/udp-smack-test_1.0.bb: Using S = ${WORKDIR} is no longer supported
  ERROR: meta-security/recipes-mac/smack/smack-test_1.0.bb: Using S = ${WORKDIR} is no longer supported
  ERROR: Parsing halted due to errors, see error messages above

* see:
  https://lists.openembedded.org/g/openembedded-architecture/message/2007

* it's fatal error since:
  https://git.openembedded.org/openembedded-core/commit/?h=master&id=32cba1cc916ad530c5e6630a927e74ca6f06289b

Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
---
 recipes-mac/smack/mmap-smack-test_1.0.bb | 4 +++-
 recipes-mac/smack/smack-test_1.0.bb      | 5 +++--
 recipes-mac/smack/tcp-smack-test_1.0.bb  | 5 +++--
 recipes-mac/smack/udp-smack-test_1.0.bb  | 6 ++++--
 4 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/recipes-mac/smack/mmap-smack-test_1.0.bb b/recipes-mac/smack/mmap-smack-test_1.0.bb
index 9d11509..b11fbf3 100644
--- a/recipes-mac/smack/mmap-smack-test_1.0.bb
+++ b/recipes-mac/smack/mmap-smack-test_1.0.bb
@@ -5,7 +5,9 @@ LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda
 
 SRC_URI = "file://mmap.c" 
 
-S = "${WORKDIR}"
+S = "${WORKDIR}/sources"
+UNPACKDIR = "${S}"
+
 do_compile() {
     ${CC} mmap.c ${LDFLAGS} -o mmap_test
 }
diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smack-test_1.0.bb
index 3ab57c6..0949cd5 100644
--- a/recipes-mac/smack/smack-test_1.0.bb
+++ b/recipes-mac/smack/smack-test_1.0.bb
@@ -8,9 +8,10 @@ SRC_URI = " \
            file://smack_test_file_access.sh \
            file://test_privileged_change_self_label.sh \
            file://test_smack_onlycap.sh \
-" 
+"
 
-S = "${WORKDIR}"
+S = "${WORKDIR}/sources"
+UNPACKDIR = "${S}"
 
 inherit features_check
 
diff --git a/recipes-mac/smack/tcp-smack-test_1.0.bb b/recipes-mac/smack/tcp-smack-test_1.0.bb
index d2b3f6b..370905d 100644
--- a/recipes-mac/smack/tcp-smack-test_1.0.bb
+++ b/recipes-mac/smack/tcp-smack-test_1.0.bb
@@ -6,9 +6,10 @@ LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda
 SRC_URI = "file://tcp_server.c \
            file://tcp_client.c \
            file://test_smack_tcp_sockets.sh \
-" 
+"
 
-S = "${WORKDIR}"
+S = "${WORKDIR}/sources"
+UNPACKDIR = "${S}"
 
 do_compile() {
     ${CC} tcp_client.c ${LDFLAGS} -o tcp_client
diff --git a/recipes-mac/smack/udp-smack-test_1.0.bb b/recipes-mac/smack/udp-smack-test_1.0.bb
index 9193f89..861138d 100644
--- a/recipes-mac/smack/udp-smack-test_1.0.bb
+++ b/recipes-mac/smack/udp-smack-test_1.0.bb
@@ -6,9 +6,11 @@ LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda
 SRC_URI = "file://udp_server.c \
            file://udp_client.c \
            file://test_smack_udp_sockets.sh \
-" 
+"
+
+S = "${WORKDIR}/sources"
+UNPACKDIR = "${S}"
 
-S = "${WORKDIR}"
 do_compile() {
     ${CC} udp_client.c ${LDFLAGS} -o udp_client
     ${CC} udp_server.c ${LDFLAGS} -o udp_server
-- 
2.45.1


