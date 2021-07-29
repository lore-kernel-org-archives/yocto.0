Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.16895.1627599970350237755
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jul 2021 16:06:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eHwYrvZV;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id d8so8791559wrm.4
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jul 2021 16:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5PGrnv7V265TcGKPP7VISJxnY7BTIdGkP5+bAg3NhrQ=;
        b=eHwYrvZVdbqXxoXZD6/3QkaJyazohzBScKwr/WCQLucwN2cuBEWi/JSTp8ytpRj7A1
         9O4fG3yxLDTL3143VLRr3iCPnf06EnjJEmDsjBuspQBWKskerbjvvbZ2wfAi3OD98X25
         x2fPWW0PDrFNmJKKIqeoug8Dy5yfZeNDcbf+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5PGrnv7V265TcGKPP7VISJxnY7BTIdGkP5+bAg3NhrQ=;
        b=XVfeKPq3g4JV7AUz6jBirJpuKfyr19geRkiqa3qve7xmZAnWITVC16eTuIt2YGQe6N
         ZXGliGWiwOZ2TEiOzOc8vha5vXqHkeFeahGXokksK8XPqeEVIC/XK5hBewrakPZSBqE5
         2r2jiYGABZyaECUn6D8YFtI/ui4pcySWt0CRnWu7mi/SMGsrB6msD7Rt98Y6G/dFELIf
         x6mzFmQfq47bCuzSde34zs9pbzJuG8zZq3vHsZItSryJKW5EeZpWMn/p+HnxZd3Drn3q
         5yitz1W4fW9dKxKuSAvLqWEt+EsRJW5UtTk/yQKI+psWyOKQZBl7+Cwhax7qBugUK8nv
         y3hw==
X-Gm-Message-State: AOAM53075t9HmThlGTgMqiVJEd+z10fFglhxEld6px9szd/PhMfNxzyL
	3kNU2mGyy/e8PgsPFAWWVGXEemUqLCmIiQ==
X-Google-Smtp-Source: ABdhPJx9gOELStWD5fFi0NPxAiGZltSCSC2lYcb6/6EVH8mYzddRg2aYimXQnhpiJOo0I8zIZvc82w==
X-Received: by 2002:a5d:4b4e:: with SMTP id w14mr7092717wrs.341.1627599968611;
        Thu, 29 Jul 2021 16:06:08 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:47e7:2d3d:e4c2:218b])
        by smtp.gmail.com with ESMTPSA id j1sm5200411wrm.86.2021.07.29.16.06.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 16:06:08 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 3/3] layer.conf: Update to honister
Date: Fri, 30 Jul 2021 00:06:06 +0100
Message-Id: <20210729230606.3337718-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210729230606.3337718-1-richard.purdie@linuxfoundation.org>
References: <20210729230606.3337718-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This marks the layers as compatible with honister now they use the new override
syntax.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 9fc797a..3abe6b5 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ LAYERVERSION_gplv2 = "1"
 
 LAYERDEPENDS_gplv2 = "core"
 
-LAYERSERIES_COMPAT_gplv2 = "hardknott"
+LAYERSERIES_COMPAT_gplv2 = "honister"
 
 LICENSE_PATH += "${LAYERDIR}/licenses"
 
-- 
2.30.2

