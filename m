Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16045C41513
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 05:52:59 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.8596.1716443571805238419
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 May 2024 22:52:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RXGNv1gQ;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51ffff16400so11668025e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 22:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716443570; x=1717048370; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AzPXHLlYYfA5FvF+7C2LEhsSmIKmsmiSinkM54u9dMs=;
        b=RXGNv1gQFTNJG9UukbZ8MRH/N+lW8Ni7UjTpHr9q2kyzak1nDZseo7tHgSRcnvMNpp
         bLBM+Lwt0xSVZDFXw+KLpsSRHspfl7zgAdM7PC2OitFgTJrD3xfjd09N9M6WtP9KYpVU
         N4bsK5dLCUDhwczl9Zhejv/OSp00lLQmBS7HcB9+B7Hsf0TwGZdMdz3jDC0tmAVxruhn
         4HfGMqloIzu56OgSmO20sDAapJpC0RczCgGDN2Q1JThXAFYyJa0ICSFv4ZoU1mtlhLDA
         wMyp8UBeZ8H5ahYDy3bHiQMLQcLIJQvTDOV1BBXO9Dzwd8DWIxNJBE0P+WmtjHu7U0ap
         iQDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716443570; x=1717048370;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AzPXHLlYYfA5FvF+7C2LEhsSmIKmsmiSinkM54u9dMs=;
        b=Ab6tbnp+zQ9hOpNGoK7C3WAKRB+RBtfq+gngZ5W8xkdu8GdGFLyWtX+Ykz06V1gwi1
         HRYMw0fIpPAFtAoSTBeal5GYRG0tDWGS1xmJXPaciXGyOxwr/WdKH8UYhhHZl5B6IIJ4
         RsxZejEcr44pFc901f8VnWVKYh9PS1RsyJzyPJijld+djg+gdAjeAQGm7TZf+GkZXcT9
         Yxg7vM+lZEM1k198ZlU4w6inM0/vQT8AO9gzNp3IXqW5qPHPVdoh45XYJwwswyrZNVjC
         8pFhOVm+r2QTnp1Gr6xo4HG/rmLnfc7uV5C0jWL7DIbcnsj3VfjJv7yztXmR9pAxpy49
         s/kg==
X-Gm-Message-State: AOJu0Yw1Tv36a2hYoPz8OUXhQe3oufKHvciq+Yi5IVP/yfsJFdamIycM
	pnbX3pQ79Fr1niJvGyCyCj9hccPL4nQbMeidf/PuVvTfrEZbZg914/zLgg==
X-Google-Smtp-Source: AGHT+IEmreIjRndZ66cdwN1BV+mlg7z9fdh0bsWjSlOsE9rbZgHHpGkc3rgeU/PKcQ4aZJka0z03ig==
X-Received: by 2002:a19:6410:0:b0:522:8352:ff29 with SMTP id 2adb3069b0e04-526c0b5d646mr2923204e87.42.1716443569577;
        Wed, 22 May 2024 22:52:49 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b17cc5sm1872220466b.205.2024.05.22.22.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 22:52:49 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <martin.jansa@gmail.com>
Subject: [meta-security][PATCH 1/2] {tcp,udp}-smack-test: fix implicit-function-declaration issues fatal with gcc-14
Date: Thu, 23 May 2024 07:52:39 +0200
Message-ID: <20240523055240.593564-1-martin.jansa@gmail.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 05:52:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63171

tcp-smack-test:
http://errors.yoctoproject.org/Errors/Details/766925/
  tcp_client.c:55:16: error: implicit declaration of function 'atoi' [-Wimplicit-function-declaration]

udp-client-tests:
http://errors.yoctoproject.org/Errors/Details/766927/
  udp_client.c:41:16: error: implicit declaration of function 'atoi' [-Wimplicit-function-declaration]
  udp_client.c:51:12: error: implicit declaration of function 'fsetxattr' [-Wimplicit-function-declaration]
  udp_client.c:66:9: error: implicit declaration of function 'close'; did you mean 'pclose'? [-Wimplicit-function-declaration]

Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
---
 recipes-mac/smack/tcp-smack-test/tcp_client.c | 1 +
 recipes-mac/smack/udp-smack-test/udp_client.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/recipes-mac/smack/tcp-smack-test/tcp_client.c b/recipes-mac/smack/tcp-smack-test/tcp_client.c
index 6c0a474..b82b575 100644
--- a/recipes-mac/smack/tcp-smack-test/tcp_client.c
+++ b/recipes-mac/smack/tcp-smack-test/tcp_client.c
@@ -18,6 +18,7 @@
 // OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 // THE SOFTWARE.
 #include <stdio.h>
+#include <stdlib.h>
 #include <sys/socket.h>
 #include <sys/types.h>
 #include <errno.h>
diff --git a/recipes-mac/smack/udp-smack-test/udp_client.c b/recipes-mac/smack/udp-smack-test/udp_client.c
index 23f3e00..976cbdc 100644
--- a/recipes-mac/smack/udp-smack-test/udp_client.c
+++ b/recipes-mac/smack/udp-smack-test/udp_client.c
@@ -18,6 +18,7 @@
 // OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 // THE SOFTWARE.
 #include <sys/socket.h>
+#include <stdlib.h>
 #include <stdio.h>
 #include <netinet/in.h>
 #include <netdb.h>
-- 
2.45.1


