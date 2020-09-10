Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.20825.1599740783392038464
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Mc1kJPs2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id a17so6486175wrn.6
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IK5jJnbOKs5z4oYZ7fW+zi4G74Gfg+nLZgsyhAsqASM=;
        b=Mc1kJPs2T5qNt/Dq2k9+7ksSKDeRZ1fHh3gYWCzh9VDy17wypTRfaXsyzXjoPD9JUG
         vOP5Lym6wlhmYIPTtfo2SwU/LRW41UtfOqSqbj9pUZho1h+EzPM83eRNR7Gt5U535t3v
         RTMo3XQ8vUd7OcQRv3/6z0HrjsyopD6M7cgmw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IK5jJnbOKs5z4oYZ7fW+zi4G74Gfg+nLZgsyhAsqASM=;
        b=amaA+y6KQp5osAYC3c5UTKRk38Yqgvho3MknQyy+/UkW9DAQhsLygTBmYKmMIIyH6U
         paWLlUW5yunLxRFCKqFhnnoQT/0BZDyi8lYSUi1LvD/K9Y4uTsV88cSZZ50xGYZwhlN1
         rSBlZJhttDREvu2CXfedl/gQF8AW5fz+10xFQ/qYKGzrwnGEfjqzUezVBLLWhlQ/8fHz
         PDaz00xpw8l+D7aR9VjepdRMUgzYt4FG6Wmwl8yWs+nLBndfWqKXv2tJywsX+7HaH31i
         JgFExgMzUl3R2+a2ozA6yYi4G9w+mMKKhjO9CTBR6fbWI2rTMoIERLOgafANygDRxLBr
         QuxA==
X-Gm-Message-State: AOAM530ZY/Qju9aSYWCnDFd/3PBIE6RKxpXfXR4ojIn3ozFFzgEUPq4U
	R0oaLhUKgWhPrBsnn7C5HXWuexC7DlzK9Q==
X-Google-Smtp-Source: ABdhPJyqP0ouxd3eg+HbIKzRV2wuNsk8WTUFlhFear7YzWxO5EIzs85kkhZvv9yzt/LPfQp+VcXAmQ==
X-Received: by 2002:a5d:518b:: with SMTP id k11mr8484437wrv.369.1599740781315;
        Thu, 10 Sep 2020 05:26:21 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:20 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 29/41] config.json: Update to new buildtools tarball
Date: Thu, 10 Sep 2020 13:25:41 +0100
Message-Id: <20200910122553.2040430-29-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index c94605b..70cee81 100644
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

