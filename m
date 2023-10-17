Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DC77CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 22:38:32 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
 by mx.groups.io with SMTP id smtpd.web10.269802.1697582306358640087
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 15:38:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=mWMfy0de;
 spf=softfail (domain: sakoman.com, ip: 209.85.161.46, mailfrom: steve@sakoman.com)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-57bce354d94so3197102eaf.2
        for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 15:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1697582305; x=1698187105; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hnmKyn0Vqn1zHn/2Hut3CaQNnUMu0Wp58i3FHmZmOko=;
        b=mWMfy0deE9g0EnI1O1xW7mVp8r5PGLPA2O5LAAVeobt4KhqNfwPPyl1vPKx0qdhfO9
         qnj0qZoLxa91L/WNEdyBRWYxCGf4ElZVz4BkI0wK6KTZcs2ndXr9AvGcPEjKncgCXXj+
         b02SyWDu9kUXrJF0g6eFy35maNIJD7u5rr/b4PQZSUkkkXS/lfiWysWwXFMlC75mTm9t
         0E77g9ur5KcP4WIft18ZoZiPNOrH/u07HYibgPhL6Qh+VCpn5KfpLnzg1AZVNyKfTqC+
         +q4JLABDWqccXoJbPwJhUXSpMX9DXeBVB6quY/jGNV3Sr+uHU8a/JnVyX4XK4uDTQSko
         n3Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697582305; x=1698187105;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hnmKyn0Vqn1zHn/2Hut3CaQNnUMu0Wp58i3FHmZmOko=;
        b=bBtfN20eD7PZiH7CsY0I7BE7ZzxC9pA+X06twwLidVU7LeCSKQpRdpbIqSfpbwYie0
         zRQQEKgAdf+FtwEsIvxHYBGp1P7lnQ0N2T1uPEGziKvtUDIiUPoqE5XBOt05aP9PkCGJ
         Ybw6jHQHNEMV1SfISMrBQzDz7ULcDQCs+opvcvawiuOQkH46ESjbCSLdAHMstRHeWHiR
         qgut2jlQcOMEibGTf8cso5Q6RSdU85Erexf/jYJYAmDAuVCNMA/q6yMTsLQbjrX9RN37
         ScgAhoU+5yU152+kiCENui6mXLcbJxxrsDAVFy4SDM9NdFWRXI/gUY5JCDbryF8kG+mO
         JZRA==
X-Gm-Message-State: AOJu0YwvhtE/BHwzb9vwpBeXjffVKroSnVEARbikYQ0LJtHfBR1tOoh6
	lscalJhiwcJWqCM8xRXjc4S3GOoPkoTBfuBAQ1U=
X-Google-Smtp-Source: AGHT+IEvFvzeYLiZHNO3J81niTurbESlJIFdZofuRI/soseLSSBV6neknk11jDBg00CXQhMVFzYrrA==
X-Received: by 2002:a05:6358:519d:b0:143:63ae:cc76 with SMTP id 29-20020a056358519d00b0014363aecc76mr3060633rwk.11.1697582305017;
        Tue, 17 Oct 2023 15:38:25 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id d6-20020aa797a6000000b00690d1269691sm1970420pfq.22.2023.10.17.15.38.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 15:38:24 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: update to latest buildtools tarball
Date: Tue, 17 Oct 2023 12:38:17 -1000
Message-Id: <cc33a04bc6bb9c1bf5efea35ef1dfadfde4807cf.1697582213.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1697582213.git.steve@sakoman.com>
References: <cover.1697582213.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 22:38:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61382

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 03ea262..7ed8259 100644
--- a/config.json
+++ b/config.json
@@ -10,7 +10,7 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-3.4/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.4.sh",
+    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20230223-18/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.1+snapshot-9c07de0f20042c81496185293857284048d7912c.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.34.1


