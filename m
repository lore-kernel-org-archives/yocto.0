Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web08.33772.1629998088813240643
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 10:14:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foundries.io header.s=google header.b=QOyhumSl;
 spf=pass (domain: foundries.io, ip: 209.85.219.48, mailfrom: daiane.angolini@foundries.io)
Received: by mail-qv1-f48.google.com with SMTP id gf5so2411472qvb.9
        for <yocto@lists.yoctoproject.org>; Thu, 26 Aug 2021 10:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aY+8EB6/gc/e4SGrYFcgrg2yfQiY1151Fzgc/TBdMxI=;
        b=QOyhumSlehJsM4/0OTDqBkof6Jz3v9YwXCwdW6l6B+o7Q4yU2cbJZD4JAppCp8y0cp
         b9uvPj46+T6RUYSYZVbzyKVwuA8+U4Y9SHQMjKyR+OaywR7lN2Cy5IRR4GRdzQHQS9x2
         Z6V7U6PEa8dy/vj7n3Sbb+lrVmAzBiJYhZ8gHFUkhYmeRPgF4zaikPdBE5jNaveo6TZc
         YXeDNmG9w5hCCeXh3T/zq1HV5dm/LSWhiNfbyGRwaLPnaWzy4+jRvy3UH78G0ap6z3G8
         RASOAEL72uHQdMNwabzCKn8T+ChvFgByUiiRDac8D/r0qbeR+6prQ959LXJOGP0mrmbS
         at6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aY+8EB6/gc/e4SGrYFcgrg2yfQiY1151Fzgc/TBdMxI=;
        b=i11ZuB7OVpI8jzD4W+rjIEubwZ/tT8CzviW0ZXRyZ4D+xU7Gql+gDL0IUMb1sqKA5M
         ogIKqtyxr15YbprHMV5NbRVdjR66Bx+mB2G0WtP3IF2T+cXHGF4285poKYxCZVErXdBI
         1JJA4d2cCmgTQvDtaTzglGZhHHfHhmw/ZsWkVwCcy8tr7qth0Sl9TQOEF8sB5BqJ4/z8
         jDUHXeNYdNKX3oCO3OOK8PgkCE2JuHRsmF6O7Sl38Y5ROR3rIIAwa3IVJVDHAMiRGgJt
         5wWGz2ZaQD8emA5r9IYhHXNWxXpxZNqo7mHoSs2m9tsbnpkrkzwk1Y+sBklvA0/oEOUl
         6O3w==
X-Gm-Message-State: AOAM531kadj5L0A6SM+Fyk5mvsGPEuACFn+QjJkyZ8YoWbl4ZIA5jI7k
	2ZeQG5qkmapmn9pH9XDX+UAxvRn2nE/lzQ==
X-Google-Smtp-Source: ABdhPJz0GSgqfr57ANak91iPN59gg7B/4h0AYVOz+Tnxa1ITGJ8fS+k6JvwqbG34R3JYFxvBgL7vgw==
X-Received: by 2002:a0c:e88e:: with SMTP id b14mr5136420qvo.59.1629998087631;
        Thu, 26 Aug 2021 10:14:47 -0700 (PDT)
Return-Path: <daiane.angolini@foundries.io>
Received: from localhost.localdomain ([2804:14c:3bac:19c0:8faf:3961:6718:ed3e])
        by smtp.gmail.com with ESMTPSA id h2sm3051485qkf.106.2021.08.26.10.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 10:14:47 -0700 (PDT)
From: "Daiane Angolini" <daiane.angolini@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: Daiane Angolini <daiane.angolini@foundries.io>
Subject: [PATCH] meta-integrity: kernel-modsign: Change weak default value
Date: Thu, 26 Aug 2021 14:14:41 -0300
Message-Id: <20210826171441.13246-1-daiane.angolini@foundries.io>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Assign a weak default value for MODSIGN_KEY_DIR so the other layers can
set a default value for them as well.

Signed-off-by: Daiane Angolini <daiane.angolini@foundries.io>
---
 meta-integrity/classes/kernel-modsign.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/classes/kernel-modsign.bbclass b/meta-integrity/classes/kernel-modsign.bbclass
index cf5d3eb..093c358 100644
--- a/meta-integrity/classes/kernel-modsign.bbclass
+++ b/meta-integrity/classes/kernel-modsign.bbclass
@@ -2,7 +2,7 @@
 # set explicitly in a local.conf before activating kernel-modsign.
 # To use the insecure (because public) example keys, use
 # MODSIGN_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
-MODSIGN_KEY_DIR ?= "MODSIGN_KEY_DIR_NOT_SET"
+MODSIGN_KEY_DIR ??= "MODSIGN_KEY_DIR_NOT_SET"
 
 # Private key for modules signing. The default is okay when
 # using the example key directory.
-- 
2.30.2

