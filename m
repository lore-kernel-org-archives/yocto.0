Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.3015.1602957846654156492
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mKITSCWB;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id b19so2920231pld.0
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=mCjnOFkzepBwMyQKRv4Vi/JwErWA6Av875eAKnQHTjw=;
        b=mKITSCWBjjlUNcVlCv0qXH4jRBD9SPZHV2OK82o9qyPEl+yQsvSQT6vwfYTIDGXbjs
         suExdqZY3LSGFCBSzA8COzLuFtKGtURabwyIGWCb9jA+h3QLOhPaGSIPXb/ZRtjWe+AJ
         sDExsLXVGRgI0zbzZX9aaW1y8HOfJiW7zsf8OMTtIlqpr7rTZBy8XHwP8aBn/CAZok+a
         5wl5MT/HFUfUjNJQUqS0h/chL7lZjYpmmq9w3+D3ApknKUIZ2wk4GXulsKMD51i22Kx6
         4YVVvJ0NmX8lb+Tw1ifuPhPOADxVGeX/zLy6nor9hAp0CBTBvZKgx67iadTMYDUCT2Rc
         Vo1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=mCjnOFkzepBwMyQKRv4Vi/JwErWA6Av875eAKnQHTjw=;
        b=MIymj3ZUWRj+yyeD7NxOzZU10yY1K8glnbLY5LK4wCjVsklYz6EC0YKGE3X00Y+o5n
         Xh9UXzCz9WeR1KP3uteCEbBb2ZH1IHnU478wHlTYqazVjyN8iJYrg95jsLu0JqiEn5Gj
         XKAqjm+wrC2Q715kPaUIxd7kK2U7OH1VtGVaCz3pYyuO/iCBnprgs3LaXCWKjRFliPzB
         gUJOYKZfaOCz4dIzZ1QiX5vowO34yfChygw+1F628ZcoN7m4DMBnTgvopabJ9UGNf/i2
         oGhIuAVl4DH77jUTOeTVBw9WXu9OThAcMmSo3n2qasqB7oRKPa1QHdGZVdHliH96t0bJ
         a2NA==
X-Gm-Message-State: AOAM5329iI8h0I0TVxJfFrYuAzqekX5HdcQZXcoNjgkm+7S0vmJcxat4
	g3UIOxdq0DauSxhAYQLOU2LnZe5djW4=
X-Google-Smtp-Source: ABdhPJyHt2jBvBMcPsUVSJ3l+kbLWvMMiAovc9uiQk0ADmTmRqRb69/4WrbrIQ75jcN/H8ICf5x4Zg==
X-Received: by 2002:a17:90a:ee87:: with SMTP id i7mr9495253pjz.25.1602957846037;
        Sat, 17 Oct 2020 11:04:06 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.04.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:04:05 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 29/32] ibmswtpm2: fix QA warning
Date: Sat, 17 Oct 2020 11:03:26 -0700
Message-Id: <16b5bdec29cdb1f281007ad7e087b88235a4e1a9.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

ibmswtpm2 doesn't have GNU_HASH (didn't pass LDFLAGS?) [ldflags

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
index 8054226..a892761 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
@@ -16,6 +16,8 @@ SRC_URI[sha512sum] = "ff0b9e5f0d0070eb572b23641f7a0e70a8bc65cbf4b59dca1778be3bb0
 
 S = "${WORKDIR}/src"
 
+INSANE_SKIP_${PN} += "ldflags"
+
 do_compile () {
    make CC='${CC}'
 }
@@ -24,4 +26,3 @@ do_install () {
    install -d ${D}/${bindir}
    install -m 0755 tpm_server  ${D}/${bindir}
 }
-
-- 
2.17.1

