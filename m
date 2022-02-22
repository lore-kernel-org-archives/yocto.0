Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EB4AC433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 02:28:52 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web10.8021.1645496930858598606
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 18:28:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fx+kCdgM;
 spf=pass (domain: gmail.com, ip: 209.85.214.180,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id i1so546648plr.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 18:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MLF+wFToptKpnWQ3TlO9g39x482lPlMegMEUAbaHsBE=;
        b=fx+kCdgMCanXZSkN4SuA86lqx5nzngMnNnG78FD9+7S7zSRBsQOh2S5Y0sXDlDtgrB
         +skLmKQztF05aB0Hywd6i+CvlX6lv2adCaXcfRu0QiWrv6Ejw5tG2k8H0R/r8UC7V1U9
         T2RyfLNOxwNd6iMIHsv6lOWdrMZH1CzHiso+9X5WrPjNS1auNDP8a5BZikHDsFlNqWIH
         xqXxSmSn+D6dLc4PiGAKIsG9EQrJrGBnU5FsWANIp+Oaq51uRAFZL/TSOdfwovyfY6AF
         qIxVQaqXGTRC8CBva3KLpFslKa+2RVMYwNSpqulA5n/kO12BJFHP6wRDOgb0FDnP8nUb
         pc0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MLF+wFToptKpnWQ3TlO9g39x482lPlMegMEUAbaHsBE=;
        b=E+qOcCh1xktH3k7L5q3E7ccedac720MwLD0knsI20FY26UOaPVVscg0GeEhVdNa5pd
         JHkvjB1h+ez7+Bj0EmIzk38aXkqlXXRgpMnmUSoltWXC0TieTfMj0qoolIAjMXeZT9g4
         GZzRLp+ty+jTIY1T1+19sGLBbk5y38SOn9H2/0LEGgvSTn8Qy83j3gEUqlZpX0jfe0ps
         Mx2V27RCKtULvBckfEHfQeGfDltECxT/207M8guhn10kjVJloREHOKX/0SoksM6gAicI
         kYamuESqglipe/lnzZcXRg9Uck2bzp2h0ZOEmfH1YYTtDM709JifZuvGjzfkpW3v7k/X
         YVIQ==
X-Gm-Message-State: AOAM533SZ1sk5MXB1wY2OQoyDGJPa2UC39oJ2N592jA3SyRU1SL+c1DZ
	lC82CGBpudRZ6IAh0ud3mPXBxFJAUGigubpt
X-Google-Smtp-Source: 
 ABdhPJyRizlLdq+GlO9WKBueSgt6FHgJgd4UDb1+NYNBg4zoKIMQPq+n45N3OetXSZ72eded+tGEuA==
X-Received: by 2002:a17:90a:800b:b0:1bc:1954:9640 with SMTP id
 b11-20020a17090a800b00b001bc19549640mr1815842pjn.89.1645496930097;
        Mon, 21 Feb 2022 18:28:50 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::fb6e])
        by smtp.gmail.com with ESMTPSA id
 j7sm14781246pfc.144.2022.02.21.18.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 18:28:49 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH] layers: Bump to use kirkstone
Date: Mon, 21 Feb 2022 18:28:47 -0800
Message-Id: <20220222022847.1392656-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 02:28:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56231

its not going to be backward ABI compatible with honister due to variable renaming.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 25b0a99..a2661f9 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "honister"
+LAYERSERIES_COMPAT_rockchip = "kirkstone"
 LAYERDEPENDS_rockchip = "core meta-arm"
 
 BBFILES_DYNAMIC += " \
-- 
2.35.1


