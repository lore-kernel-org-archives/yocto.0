Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1E9C433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 15:20:29 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web12.13827.1645543229158385353
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:20:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=G27jr2Mb;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.44,
 mailfrom: steve@sakoman.com)
Received: by mail-pj1-f44.google.com with SMTP id
 cp23-20020a17090afb9700b001bbfe0fbe94so2969989pjb.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=32YOcb7ettdBysa/MTBsL/T0Hgdmcp8kIEKpySYDfNc=;
        b=G27jr2MbBCrmg+Wjq/yHED+Ye0uGy7RTPdF0+JxX0xZ4LsGl/N5vs8p3Udi3FOQoON
         jnyDfNGCwBvoELI0sFlJ/CXaB24YmTfKcZBT74FyYi5UP9UVUDPjWPU/1vfe9rDNiMXe
         EhOK+hIptOF34cpzvPT+SBKiHiSVpeNd6j3gTEBCl/v+G9yiDhbLVXRmm3MaQjS2NDKe
         ZtDWWPBH5quLQ0cNBW3BPJ8C8tSUpOdEi2hirYdQhZ3A+xLQNkeFPrn4A/zDcHtk613W
         rCnqhyLSt5TFUPFnpowEKJ4YcJLJDhUodjMWuiKiqPUTfZygl7ktzu/Q4tpwna3Vk7E2
         bz1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=32YOcb7ettdBysa/MTBsL/T0Hgdmcp8kIEKpySYDfNc=;
        b=su2Q62uEQxK+hY5vPSYeLNOJeqEiUOjNzUXBRgzDXjLeXPxdrYC1+q7uPK5RPLOtdb
         YIIkwxJ2NOBm2vw2CzuESckLdl9DW681bE/pTKDD0OruJFrmfw4fJG0BkITOjfEGiKRC
         Ed9jJXPcI9FYuYK5J+cDdv3niRI1s0fIbbRQd8R/teBcdCQ1R+jyX8t/4arGBCZNPqjt
         X4ptZ3iYZxF8a+CuSkuQ4x094QjYMKhYq2DjE8zpGxSd3zA4IuAxUF6RUu+rwfoZnY7g
         oXzh04tU38NRM0JR5a5lpfeMXBXuC6+y+d3paZ14v3+ow6+GrKzaeeSVF7+AgKBA3EjO
         lb+Q==
X-Gm-Message-State: AOAM533SuBBQZWDdMkKgHjsnQ1AcAZ+eVpo32uGm6qMOfDdlqFYQ0dH5
	vt9L3A5GGRdvdMdOiBU4Jz9u5+qLV1rFjbuy
X-Google-Smtp-Source: 
 ABdhPJzTIUaWx4iDLpA9wtkNOIbJDNlnu4ejwUgyKF+JH9cIcNW+83cnpEkOchjoiF20lmLTdOo1QQ==
X-Received: by 2002:a17:90b:28d:b0:1bc:6db:5eb8 with SMTP id
 az13-20020a17090b028d00b001bc06db5eb8mr4617045pjb.155.1645543228262;
        Tue, 22 Feb 2022 07:20:28 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 i9sm3118160pjd.11.2022.02.22.07.20.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 07:20:27 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 1/3] scripts/prepare-shared-repos:
 Use tmpfs for speed
Date: Tue, 22 Feb 2022 05:20:12 -1000
Message-Id: 
 <92e0019207d59a8b04f340e4b8c17efc430ef83c.1645543004.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1645543004.git.steve@sakoman.com>
References: <cover.1645543004.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 15:20:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56242

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 298a10575851d501204fe1ee0d1dcbcec37a66cd)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/prepare-shared-repos | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index 8400d09..1573f85 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -32,7 +32,7 @@ with open(args.repojson) as f:
 
 stashdir = utils.getconfig("REPO_STASH_DIR", ourconfig)
 
-with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/tmp") as tempdir:
+with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuild/tmp") as tempdir:
     for repo in sorted(repos.keys()):
         utils.printheader("Intially fetching repo %s" % repo)
         utils.fetchgitrepo(tempdir, repo, repos[repo], stashdir)
-- 
2.25.1


