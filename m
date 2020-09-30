Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web11.478.1601484732655315701
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 09:52:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=I6hkw+Ne;
 spf=pass (domain: gmail.com, ip: 209.85.210.41, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f41.google.com with SMTP id a2so2464151otr.11
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 09:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=OjQ0S/0GRwpYH5MkFr/w/b+9z0pBYSzucGX81lOnW6I=;
        b=I6hkw+NeUCu1lKjKJzfza+3tzZR6DKDicx2QVFSviwAhEnHwXDyho5Vy5VpVYmx4Kj
         4qdPA8wiGldx8MQubdtQLs2seq8228GKBcxMynuN/elQdJOwJIyuoJawrv6KDaFNR59f
         Cz4aO4tjWaZLKFfjQY7vQ+Ok3pfUP/UvWmKKrge2IXyJrLGsyqlxu3LuMd8oJjqYCVFx
         cWRAqmOQQFFkfU9R3OmLp972GIVdWnB3g9HORgNpUmJmdXAO7o++gic2SwHb5PPG+WM6
         1U5K3dZhqGoDgRChzPrJP+W6dwGXpd0wIcmmkzp34cVPVgHojk+5BNbBadL2HuusN3iK
         kF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=OjQ0S/0GRwpYH5MkFr/w/b+9z0pBYSzucGX81lOnW6I=;
        b=aQW1xjKGo4I2d/vZEkSEGjuPoNmrOYrws1SnrQn/b3eeDZ8u5ezaPt2DetBCOX1X+W
         yAqbWlM9nF5WMzrlLE4ZEb2PrPjHxUmlq9i6OR+cUolbkGqb8g04RXnujeQP0XTbcvkt
         1Ll6ro2P8AoazTlj8D/BM4xkXJxDjWNk1FRohkLy5GVVmJQIPYPH/2e4DHB8+85epBSV
         w4OhW/JVnkzKcK6dfdZw9l00j7izQR4Ri1fjgoc+npQ+mc1RXGn2TjoMkjSzMIZfUFOu
         f36bygQZqPRv9u09p0x3NtLyixLAptcSXQx/6MgvfzjAamXEl7EUwY+V6TYNPTWQBYZc
         JRCw==
X-Gm-Message-State: AOAM531M6WNuR4Ov2WHARFVZI0cVuSQL4jyMWcDucnyE7z8i7SJwDiY/
	xwnAH9XZc2nfttb9sigDxsVTZQRtriE=
X-Google-Smtp-Source: ABdhPJxpBKhiJVSHrKUoSQlLsfuvElffLVbHFxSNfqxEVPzxYF7m0IHrtUrWavc5/89pTs112QUXBA==
X-Received: by 2002:a9d:4b99:: with SMTP id k25mr2206994otf.281.1601484731877;
        Wed, 30 Sep 2020 09:52:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e2:552d:b045:4166])
        by smtp.gmail.com with ESMTPSA id p16sm494561otl.17.2020.09.30.09.52.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 09:52:11 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] packagegroup-core-security-ptest: remove keyutils-ptest
Date: Wed, 30 Sep 2020 09:52:06 -0700
Message-Id: <20200930165208.31659-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930165208.31659-1-akuster808@gmail.com>
References: <20200930165208.31659-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security-ptest.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security-ptest.bb b/recipes-core/packagegroup/packagegroup-core-security-ptest.bb
index cf34ded..75b816a 100644
--- a/recipes-core/packagegroup/packagegroup-core-security-ptest.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security-ptest.bb
@@ -17,7 +17,6 @@ SUMMARY_${PN} = "Security packages with ptests"
 RDEPENDS_${PN} = " \
     ptest-runner \
     samhain-standalone-ptest \
-    keyutils-ptest \
     libseccomp-ptest \
     python3-scapy-ptest \
     suricata-ptest \
-- 
2.17.1

