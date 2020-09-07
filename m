Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.6473.1599511855591416767
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FjWjmun6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id c18so16925132wrm.9
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7oCNrRJuNSvq4mKdCA12im8YHxS1sfiBoNBYZyCVN34=;
        b=FjWjmun63LX4m1PPqmSirS+ryxquD17EG5FBxYtqqq4IOlwGKwRanH4RWj1Whti2Dr
         16Yl8ANL7l9GEzzf8zkC/510WSPonoJ0jqWbFYZIjd4KL2+2NYjvCQRXpO7FCmZbYQBW
         oNwe+nFy1dclBwvNgMQLxNurH7pK8T3zo69uw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7oCNrRJuNSvq4mKdCA12im8YHxS1sfiBoNBYZyCVN34=;
        b=lct2WNgYlsj/RTTRrUhz3g8b/ME50ZRR18Gemovl6Vc8zL9h19esynr2WnXuTlj19t
         KIcg7KhQQvwJe45cZ9SngDPWtDl5Ghx3A1OMcjRnQBTvrf6tRbPGAPDb46EXH2sFt4Ym
         VbW8Y0lwBx0PK+Kd7DO/s/CxZHyKTvwYHD2bX7QEyeWuw8Enx/WlFTbnMBhH35PTfjuT
         lHv8+s0UoyN1YdWb+Sym/Z/cwZuv47cAIVMQuR+y2nz9ODRQYMURxNACqz+W0SpM9hmA
         VNVdeeGwsOizUwv9hhFL/LZf6nSqYVxhrFItUalVWYJTK03hAV1/5pnFQARwbcHntX3Y
         OdSQ==
X-Gm-Message-State: AOAM5311B5io4DReJKG17oxCu4pqiKP9fR1OmYqaGLfHGwoZ81d7yW1S
	Wd7JR8nfUhJvvsGVbyKlmosARfyIAez90A==
X-Google-Smtp-Source: ABdhPJyAkaR0qXmZOJZBcFC9WHspic77k+rB1d7bDH2FVmU/JTEt+/XFmt5dsyDYc/PPNZzKuF2Szg==
X-Received: by 2002:adf:cd05:: with SMTP id w5mr23039967wrm.62.1599511853779;
        Mon, 07 Sep 2020 13:50:53 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:53 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 19/32] config.json: Update to new buildtools tarball
Date: Mon,  7 Sep 2020 21:50:21 +0100
Message-Id: <20200907205034.1941516-20-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index d494679..d3b39fd 100644
--- a/config.json
+++ b/config.json
@@ -10,7 +10,7 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200427-22/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1.sh",
+    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200430-14/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.25.1

