Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.20790.1599740784191911543
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PIHigPh/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id x14so6449603wrl.12
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nlajfdipjMIN9e4x67iPNC0SfFmOV8x2esckIkuF+pA=;
        b=PIHigPh/8W8ao+I7QRI0Z1gODD1/NSjk1CBkm7c/uuW3FRH/C6Mp8MuYGLLWg55ecM
         wYedE68WfrZBwuEEss9LzgqkjoguNo90f38iHJiHX0p4mJ6THp16Yk385uCSm5XV/unp
         0XOGTvFfZAxfzK0rH6rRoJBPTL5zzKUK778+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nlajfdipjMIN9e4x67iPNC0SfFmOV8x2esckIkuF+pA=;
        b=kz+QAPnXR7RMfsYNEIbQUGc9OmerJQMHlcKEnPVRx5cu7KM0i+h+dpwnR4qy38dsyX
         tbF6A2rAFxZM/W1q2dXRjDHDxvBrabagsWfzti+wpjAQ2TC621kznyRABlFs7ToV7db+
         6sfW/7AFYE0wEWGkr4SlJK1F4KID72MPbpClg1otYMnWljblCbID7ECNiC/M99dCsjZt
         Fln1q9Bzv7AjGWT2vRbVsDKaoq6lOYSsuSqmS9cinub9b/Th4GaR0NiosZqftD6Dp4hg
         Vcd7OI3ahTmGThgIuoXuNfUkKPzcfrWIQh8Hyu0Pbk3oTjAkGL28v6DRkWpJp8RthYez
         OInA==
X-Gm-Message-State: AOAM533UmE6HGjUhZL8drnsGWKikRhuqIQCsNg96YCasQXkskEPVFTrN
	zZVbDkhTEps36PB8q+E9WmzgAQuOcRFJMw==
X-Google-Smtp-Source: ABdhPJwX+s7V409VXx5ZT+Gk5+qlR9xQehDJwVFcbRX4P12dKB9zxx1YJ3CHx929zc+rjfOokmNIRw==
X-Received: by 2002:a5d:6cb0:: with SMTP id a16mr3510986wra.88.1599740782371;
        Thu, 10 Sep 2020 05:26:22 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:21 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][warrior 30/41] config.json: Use buildtools from 3.2 M1 to fix bugs in openssl reporting
Date: Thu, 10 Sep 2020 13:25:42 +0100
Message-Id: <20200910122553.2040430-30-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 385fdf2295d514d0b0883957a110825235f9647f)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 70cee81..fbf262b 100644
--- a/config.json
+++ b/config.json
@@ -10,7 +10,7 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200430-14/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1.sh",
+    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1+snapshot-20200617.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.25.1

