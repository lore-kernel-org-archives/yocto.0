Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web12.14592.1602252497970742704
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:08:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fIjuGw0X;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id 132so396639pfz.5
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=JA2V3ClFl+t5ElddPzrtTC4UvC8ZhpPtM9qCNu8gHMA=;
        b=fIjuGw0Xe9lXeqIZ5SduZ7FZvBAqL26JzbmaxBC8pnVJe2qeRrHcpQJhIl/FbmcOax
         xwE42aW+ugWei8cqrB0znfwi/mwkl0/tGwwJcT94Ptx6haXrLoCDisGtCeIac25BFKTF
         SB1ZvTt7x90bQTFPRRkLARhuGsv7n8s/ogpUl+BOkyEGDpXZT791SZzDQb31ntV2tRfg
         DzipFx3zpQ/s97lKH9W4vgrLNZ/4Ot2UmXVQqAn8lpGvez2nJj8/uWZlVrJJHc2bZ193
         /BR44AQ+cg1+noTxqhbnABvx8EhcQ3FP8JjofpNrhwRGXsUw4+1xDrsWvgQN5t9V73EM
         JbuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=JA2V3ClFl+t5ElddPzrtTC4UvC8ZhpPtM9qCNu8gHMA=;
        b=e1ZVHlUfX/FcTtygPq71Or3zZTXI4jqGMMYvDbGviFJB0YkoY77DTsnWPa5j+qlCxV
         oFmhRG9VVlUKrI/pOFljw5Y0CZklxuWND8lj4uI4JSfzi04tdqgiiIwcDY7QFAOFd/wt
         QWFoH/3dEjDQ0sS5eMAiWfDMYoOPzsKYdnZXGwVsCR6sqBNbvslZAd/Pxdf4KAuoKnvi
         qljJLGyDoRZX3n7cgyg1mFIvC0IYYEYJb+sgI02Kwwb8lCGELOnBt7BzsIMX3uUGK5fL
         Ujk/mC2hOG2pDYGnis0LMcXgWC7LGR2I0V1tDMM+0eKOup8cV1E1jMT+ar88NTakADoo
         eCNg==
X-Gm-Message-State: AOAM533RZxAaMgqZwO7oPS+SdhXyGAXL0kI9yufX9roGkSX5wqfNTzNe
	1ffs1gfLJn35v1jPdB7EJUNocgCBfSw=
X-Google-Smtp-Source: ABdhPJwQwRCmtTofUi9Oo+bJ5HwRTJgxjPhEpx6SGtCMMAEpPimn4a+tSPDZ3jB1yVmkE3w4VZ8OKQ==
X-Received: by 2002:a63:ef4f:: with SMTP id c15mr3562894pgk.140.1602252497227;
        Fri, 09 Oct 2020 07:08:17 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id k9sm10119710pfc.96.2020.10.09.07.08.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 07:08:16 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/7] libest: fix musl build.
Date: Fri,  9 Oct 2020 07:08:09 -0700
Message-Id: <20201009140812.21765-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201009140812.21765-1-akuster808@gmail.com>
References: <20201009140812.21765-1-akuster808@gmail.com>

fixes
 est.c:38:10: fatal error: execinfo.h: No such file or directory
|    38 | #include <execinfo.h>
|       |          ^~~~~~~~~~~~

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libest/libest_3.2.0.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
index 36ff5ca..f993bd6 100644
--- a/recipes-security/libest/libest_3.2.0.bb
+++ b/recipes-security/libest/libest_3.2.0.bb
@@ -10,11 +10,15 @@ SRC_URI = "git://github.com/cisco/libest"
 
 DEPENDS = "openssl"
 
+#fatal error: execinfo.h: No such file or directory
+DEPENDS_append_libc-musl = " libexecinfo"
+
 inherit autotools-brokensep
 
 EXTRA_OECONF = "--disable-pthreads --with-ssl-dir=${STAGING_LIBDIR}"
 
 CFLAGS += "-fcommon"
+LDFLAGS_append_libc-musl = " -lexecinfo"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

