Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web10.6460.1599511840591479128
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KjLUN1Va;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id g4so16969174wrs.5
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=pQG8WVbvyOXtvL1dfQDUUF+cdtQYAqIKLijPrd40JSA=;
        b=KjLUN1VaiE5249H6Quyj+RKz5BIpXXTSw/H7CrqClUVdM+io/EyMrLOHRYfE+7pnBe
         +HGssu1pCV2NaipaHTUFs/FtK0vtqV/NVNNiU/yVuUvuLd3a7t+dpzZBky+O9YPcX8oW
         kqr315VztZRAIst/MXUwG/N4A0XA+A5RjTdDY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pQG8WVbvyOXtvL1dfQDUUF+cdtQYAqIKLijPrd40JSA=;
        b=PlWKaNaDNkHLj9uwHXVpVbqmaxdyFvXSJ5/Rf4ydTLK9BIqfm7sCvFKp6diNG3DXfO
         /R1sbOkdM5Ff1NEIFFYxhWputHvPNAdGdB/DNdi02Sl3b+O6fNdacor4cWmDQ3OM2xn0
         b1EUfKaSIU5w35sZVz39S7oVJ3mnaVeajo3KBNz4cRy7Nv5FS9/okdustwRmn5tgDX9X
         5OoCT1nfOQZ3js6A0ffwjNuvRgFAdVQfeduzWMVy9S/rit55rkbGehRBGxM2hTgjp6TR
         MVGWpR+zysKLauaAk/0NKNXO9FNJ77TcLz65h1WPUqcu+CB098Od+d6Xe4E7Oe+Ho5wK
         121g==
X-Gm-Message-State: AOAM532eZLp/WSLkHl6U6JZ0lF/Lbe1J3zm4/GAhXdD5+6ZWzWsAlSwc
	4fKEZe3KEqrFEkEEM0XWZQSzBxN/LTuoTA==
X-Google-Smtp-Source: ABdhPJy7+m11cI0NNh7bTBA6r3nn8FgtCCO2HzDFoVDdqBxk/5XbFx+3oe9JuKviPi1tBg4NyxX/7w==
X-Received: by 2002:a5d:6311:: with SMTP id i17mr22102883wru.243.1599511838887;
        Mon, 07 Sep 2020 13:50:38 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:38 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 04/32] config.json: Disable buildtools tarball on centos7 as its missing crypt.h
Date: Mon,  7 Sep 2020 21:50:06 +0100
Message-Id: <20200907205034.1941516-5-richard.purdie@linuxfoundation.org>
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
index a251d53..70faf73 100644
--- a/config.json
+++ b/config.json
@@ -959,6 +959,6 @@
 
     },
     "buildtools" : {
-        "centos7*" : "${BUILDTOOLS_URL}"
+        "disabled-centos7*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

