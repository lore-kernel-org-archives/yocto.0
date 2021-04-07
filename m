Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web08.2652.1617769357829498520
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 21:22:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rMALlLcd;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id e10so4321359pls.6
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 21:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=J7fbepVoBLbAKcUqJBYyqhZ4MXQQ1KQktVuRPEuDoyY=;
        b=rMALlLcdWuHrQ4CJVDghd5YUp8qIzjMScLfXLSUaszFmTmdElXT+H+41Qd1PK5QwL8
         URjXdwa5O1jPHeCF4N1Sdvxlu78OQ5oLDINYosePvXkIPs6nVWaT7KAa5hhjoqlzaqlt
         +rnA3NvG5sXt5e4tnZfV5iPk7RNkiPMTxvvPwNDPaMUYVvjj6DTOjZkBj/LbUPzCerO6
         Sth+wo7WKWgTQmaZ7lBqNUURVWhB346MWGkgtPXISixK/M1wBYi/8oVIwtPAMRdCgXYM
         7/4lp2ZBrnHXV2sjOoCudObdFHJ38d+KYgA7a7iuq9Nh3dMTIdM2j4zetpihDL3LZHcq
         wW5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J7fbepVoBLbAKcUqJBYyqhZ4MXQQ1KQktVuRPEuDoyY=;
        b=SExCF6mXj098ObZwvSD55cguIboIBMmQriI93T6NoSIyGWcIU8oeI8dDu8FCkODyBC
         8zAfd/qZ+ktwkIyX7grUCt5UHywSVzCwJGOJEBBKqrmQNWZACoWVUhGwZ8oMeQ0KnPuE
         H0UOX76C0DOCVsQjCJp7ReVERFrwCKCM/gB7urtOug1f3bQee0lpuqQpM0L/s+LOCzhw
         muooLiu/k9EYvQvBIBKK4etuSWufXWVSZNScQg1lzo14KrzDz7Iv6UQLYdwhD83Atj1v
         b7sdseeziq/WLKYApSA523dYbt/fH0LfJn10KqTdykdabFWEvtaXBI6kFvqnIdK/4HXW
         0EtQ==
X-Gm-Message-State: AOAM531UR5PdOxVull6nd3LBX4uDn9J+goj/Bgx5dYaztJWXARFJuBxO
	8L+500MHCGV1qfgOhf7MYuISISWLCC8=
X-Google-Smtp-Source: ABdhPJzgGbvjELKqw7je5foBN3HShldkvniWpedM1WDAzfvL93DgFctv7cnvuoVI9GHJJdtYcd9YuQ==
X-Received: by 2002:a17:90a:28a1:: with SMTP id f30mr1458093pjd.198.1617769357252;
        Tue, 06 Apr 2021 21:22:37 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v134sm19722791pfc.182.2021.04.06.21.22.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 21:22:36 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/5] layer.conf: add dynamic-layer for rust pkg
Date: Wed,  7 Apr 2021 04:22:31 +0000
Message-Id: <20210407042232.3373253-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210407042232.3373253-1-akuster808@gmail.com>
References: <20210407042232.3373253-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index fd21da1..906e024 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,3 +12,7 @@ BBFILE_PRIORITY_security = "8"
 LAYERSERIES_COMPAT_security = "hardknott"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
+
+BBFILES_DYNAMIC += " \
+rust-layer:${LAYERDIR}/dynamic-layers/meta-rust/recipes-*/*/*.bb  \
+"
-- 
2.25.1

