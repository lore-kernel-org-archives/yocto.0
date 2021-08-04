Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web11.12664.1628099402561888932
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 10:50:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MqNHL4U3;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id h27so1931227qtu.9
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 10:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wBIvXU6x0DxTSlMEL/SrwiA39dlw18d/e7MYJ3+XmN4=;
        b=MqNHL4U3LiTDyp7X1CS49+i1mwP5k1Y5Bf3H81/y0AsM0WXnlAmc8SAdX4R/s3BOpX
         9YD6ruxPMzd1LmXAv4AnEQB+ELd8+3hbAsgZEvCc6t5iOKfOLb6dMbaNcx9Z8y7VonA9
         BUrHX6Zbz73SGqRe+Oi8denz1QmHjvv4uB1sS3k6cp8h2mWIluuDEYQupfOQyyHcTZ53
         9eT+faG8GuJKLhsyxG0fXex528wGwlhsFg5o+2Ld3oZQk2G3vz22U7khkGoiNAc2bRPp
         3fjNzlHsYOsCVjEReeE9ffP2+IiaAXStvelxTaaedvwHbAOQK/H7JihBVK0lmhHllFWZ
         xVtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wBIvXU6x0DxTSlMEL/SrwiA39dlw18d/e7MYJ3+XmN4=;
        b=CAM9RH9HarKlS0/ZA/ZznrnJEE+5Rlgf4pX7qJJJYZU+TPvp0uMzxAPngvUC0XTNSl
         /kVsoFwc6V0QFCxnt991GOj4Al5eNoXz0yGq7lKEb0mSoONayypCMCcy8Ux4lpUQkHhT
         J8fsWBIMFeIkOaLCBdc6Zbp0AqgT+51awboMHVKTPGKXuiTJAPnsaTTXnq2tzoJsu4ri
         j4MkDbPjer510ihd6UL9dA4XcciGPa57iJ4iOibScSqj6qpPSz2rcdcz1gNlGk3qXqya
         qXMklIANE8XEfObVX6Dx/edToR50wO+EEiMXw3UQxoziEDuYDgxPpn9tmHHfF5EXDGUm
         QjgQ==
X-Gm-Message-State: AOAM530bLqMhkZGEfR0OyCz46pimURWijt+Ay82dJI6boZ8yI1kFjNK1
	WheeE1TuETWIWPPbdOtEu861X72d6+c=
X-Google-Smtp-Source: ABdhPJzbO81AeRkKr99mMnk6KRsuJNG2Eng94rxr3cPb8yKyh0RXtBI2uQzkuv1a6oK8PGIWnVf3sg==
X-Received: by 2002:ac8:531a:: with SMTP id t26mr696814qtn.207.1628099401377;
        Wed, 04 Aug 2021 10:50:01 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id h16sm1098436qtx.23.2021.08.04.10.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 10:50:00 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH 1/2] layer.conf: update layer compatibility for honister
Date: Wed,  4 Aug 2021 13:49:52 -0400
Message-Id: <20210804174953.12346-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add honister, remove hardknott.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index f97fb69..25b0a99 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "hardknott"
+LAYERSERIES_COMPAT_rockchip = "honister"
 LAYERDEPENDS_rockchip = "core meta-arm"
 
 BBFILES_DYNAMIC += " \
-- 
2.30.0.rc0

