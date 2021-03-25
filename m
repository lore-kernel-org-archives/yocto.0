Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web12.1473.1616688246817948812
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:04:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=sixqfKDO;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.177, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f177.google.com with SMTP id y200so2523421pfb.5
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=AQ/IOuSNJ2icXnAz/9np8qbd41/XAPNnBAS1LvofxKk=;
        b=sixqfKDOzivxJ5VZFfh426h0v8BIZjHv5+cpTGboXE+az2+7vBjraBrRdxy3Aty2n9
         NhD5CDG+zRaaxssFnhtRtS7JjXLEvLDSPVro87pI1L8KoSZQnacOk9eNT82QD2/b2MDX
         /2MSxJngGepGjqjapC6M8pbb7UjjRgBMaDXqVNjNnx4ccNE+byl1e5K3kc+2DW2Ka4aK
         nHCDn1PWu5pOT6+4eFDALiUDnErW1Nx1WSH+R5SItMmzgFPPxz1vrt3xBfu5wGw7j5WY
         1hxNpaBnPDj+2P88EDCl06J3Tohrusx/EFHrUc5eQxs7F+UhCvOKw+itvEbdTsq4M+Rj
         kb9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AQ/IOuSNJ2icXnAz/9np8qbd41/XAPNnBAS1LvofxKk=;
        b=MaDowjfX02z31wx3Ui7IQ4F4NceMxaZ/vHGuNHKMnhVsnCcFjsn8wor3iTMlLZ332x
         g+yqt48lfaPCU10L3GsuKXHgDxOODB9DrIhVAIHFdq0HCwUb0Jx5lUYN0ZTk5X1peQwx
         K/6PlFJO0SXsavJR51gkHgWMEFAo5CJf+9Y0suInNoeGb2G5dvG2onsw1CWA35GPUe36
         00cxqucDyrvkdg3F435ManzWeaeHj+Jj0kMNsATzAY+w9htjqW1Y86BKCYx3nt1W6Fvl
         Xirjp59hgHCsGOV898RMsJMsFzWJ5F6r8D5by1YUcbxD5a4CjZ4bhSYUch9bKHhmvViO
         wUhQ==
X-Gm-Message-State: AOAM531ZJG35A4vN21L3dJrnOyt6wgBtcj0A0D40mH03qWFpda/LlhIB
	dkjgPOehaG4eQ2zK9y6X9ju5ekabYclcS4Oh
X-Google-Smtp-Source: ABdhPJwp+QSlm9O2PCLo/TE+FlzICE0n0/VgoHqxf2QNV3d+mj2LB5h2lBjdRcQQdP8Oqmz8ywT/Og==
X-Received: by 2002:a62:7f45:0:b029:205:9617:a819 with SMTP id a66-20020a627f450000b02902059617a819mr8502101pfd.17.1616688245830;
        Thu, 25 Mar 2021 09:04:05 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.04.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:04:05 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 13/15] scripts/run-config: Disable output buffering
Date: Thu, 25 Mar 2021 06:02:19 -1000
Message-Id: <c4868e1ba55a6e2feeedcf2a3e512341c1db809f.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Line buffering (bufsize=1) is unavailable with binary mode so use unbuffered
mode instead. This fixes python runtime warnings.

[YOCTO #14093]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit c21732937c89f7b13a4f8a9a02d7fcb15a4bad2d)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index aab52c1..8ed88cf 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -193,7 +193,7 @@ def bitbakecmd(builddir, cmd, report, stepnum, stepname, oeenv=True):
 
     flush()
 
-    with subprocess.Popen(cmd, shell=True, cwd=builddir + "/..", stdout=subprocess.PIPE, stderr=subprocess.STDOUT, bufsize=1) as p, open(log, 'ab') as f:
+    with subprocess.Popen(cmd, shell=True, cwd=builddir + "/..", stdout=subprocess.PIPE, stderr=subprocess.STDOUT, bufsize=0) as p, open(log, 'ab') as f:
         for line in p.stdout:
             writelog(line, f, sys.stdout.buffer)
             sys.stdout.flush()
-- 
2.25.1

