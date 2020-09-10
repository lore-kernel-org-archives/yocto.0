Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.21898.1599744657469884343
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WJA03GTP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id w5so6698785wrp.8
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/9piNuP7xL5GMEVIXNMTim1fbtYPSHomLnEM0tp7/aU=;
        b=WJA03GTP/9rqJWgi4AXwV6gbFSq1RYjF23KK4lDH6oC4VnB8ibIJy2Pbw+ypju3i6s
         xp27+JwLAZNFxFTEAdzuvFcYA2sOtjLVVOS3vftBsbCH721dvhnqq/JS+E+pVkpvrUrL
         fE1cBUBSkEkzL5R47k7ye1coD1eeH//z1NVkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/9piNuP7xL5GMEVIXNMTim1fbtYPSHomLnEM0tp7/aU=;
        b=OVnlA0WUTT9hRn7TY+79nNim68jR+VQERILJM7MbL6B+ExpfizyVJF09bf1lR6n76j
         CME3PBY3ysWCRqHje3g1m4msl5lE46KynZ1/Ts1106Nu8aLzQ/Nwnm5X2G3QrjD0bx3j
         CpAeCPMdxydSm8hLVRY36sC4IShUnKvnUoeQsCwxKgGPQKucR/YziaQkrw5tq75BdM4F
         phe39MqFnZt0F9apkyFHfSTjbo+eoP2xIZjaR9TuYsn5SSb+ElMia7zFLAT+0W0hB669
         PhZNOxqUGME3m9Cz3PSRAuN4E9IGu+PddrZIyUD/2LvKtEdk2T33QBiUFi7tvsg9RzOT
         kqxw==
X-Gm-Message-State: AOAM533xNo6B4adGMVShYC92sT+7qnSBB49z4Ztxf8Y6YRlOXXAlBRqq
	NEEGPNa6XXx3rLvx98sEMPZt4+ohpPWd5w==
X-Google-Smtp-Source: ABdhPJyWt88R72uYXII5UiElSclTBlUC0SGjLp8gcGIPpLnUdBp6vRRZ0Y6oLWqtdVHaeLxCTylDQw==
X-Received: by 2002:adf:c64e:: with SMTP id u14mr8717386wrg.373.1599744655748;
        Thu, 10 Sep 2020 06:30:55 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:54 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 19/40] scripts/run-config: Fix buildtools path
Date: Thu, 10 Sep 2020 14:30:14 +0100
Message-Id: <20200910133035.2044355-19-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index e946e90..cbfe073 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -92,7 +92,7 @@ if "buildtools" in ourconfig and args.workername:
 
 btenv = None
 if bttarball:
-    btdir = args.builddir + "../buildtools"
+    btdir = args.builddir + "/../buildtools"
     if not os.path.exists(btdir):
         btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
         if not os.path.exists(btdlpath):
-- 
2.25.1

