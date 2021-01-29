Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web08.7955.1611916283932059298
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 02:31:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gQtcSJvM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id c127so6733796wmf.5
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 02:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BY/tccznxfmGk1qpHMRRuCQo9ogFM3EAsUmRQiRLuEQ=;
        b=gQtcSJvMWbx7Dkf8Yu5BELxaXUXMaf/eS6O3rlJHWdKIQmYenwBBqLAs9bIj+ooXjb
         4pGBAmcTl3s8AgR/QNYM+3UbmHc2c6yzDWd5XFgn4+6jhgWWBGT5MmWMP+6DqQnf2uvK
         TelSiHQyBxyKtaeEHMh2ZDCnSSHE8GCduExnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BY/tccznxfmGk1qpHMRRuCQo9ogFM3EAsUmRQiRLuEQ=;
        b=EIoJNahIPghb3MYqpCS3kyuTrD60SXu948aLOMVVcgZ8YHG12ftOMvDx5e2gnkL59M
         XOgW24GzaKSg3nep7mafIeDxI64GOWI5Tci0YHkBdcgN8hLtFvXVhyGVGo1hiPwnV5KE
         mDO7cL+46QSTi4qKozT2y0jAJovyBtbG9CdnOkqaBJj68c94tv9s2RO/86mEdGLFuNnG
         79EHuAbFdoouIG9UnhYS94tYYez1tTYBOJbg56qRjtajAfOONkmtWry96JgdMAdO1P7n
         miT+F2/uKHy6EbU+k3OV4Ips2kBmaFPOqhj4pFYzthBAJYH1J5B4xGDooPyNbSiti7wP
         UaLw==
X-Gm-Message-State: AOAM5317Jl/G58lJsGd/6NF4GgE80Bf5zdKvqUl2NMeP0sC8jmVilizy
	PuYTiIjZcWpydqhTqjGsv0PRjeZnrIbt0w==
X-Google-Smtp-Source: ABdhPJzIHPcrnYpQSKjbjlqZeqheqzKgQ+Sm/BW2TGyXQMk2mTsR5Epdnx6jKWifZ83NTL1sJO12tw==
X-Received: by 2002:a1c:9c01:: with SMTP id f1mr3034501wme.159.1611916282482;
        Fri, 29 Jan 2021 02:31:22 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:93ef:509c:4f16:14ff])
        by smtp.gmail.com with ESMTPSA id l10sm11496016wro.4.2021.01.29.02.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 02:31:22 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH 2/2] README: Add instructions for configuring git repo for sending patches
Date: Fri, 29 Jan 2021 10:31:21 +0000
Message-Id: <20210129103121.1360969-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210129103121.1360969-1-richard.purdie@linuxfoundation.org>
References: <20210129103121.1360969-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 README | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/README b/README
index c17f74a..af3ace9 100644
--- a/README
+++ b/README
@@ -15,3 +15,9 @@ Layer Maintainer: Joshua Watt <jpewhacker@gmail.com>
 
 Please send changes to the yocto mailing list with [meta-mingw] in the subject line,
 cc'ing the maintainer.
+
+This can be configured within the repository with the commands:
+
+git config sendemail.to yocto@lists.yoctoproject.org
+git config sendemail.cc jpewhacker@gmail.com
+git config format.subjectprefix "meta-mingw] [PATCH"
-- 
2.27.0

