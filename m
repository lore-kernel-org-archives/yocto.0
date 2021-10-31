Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF187C433EF
	for <webhook@archiver.kernel.org>; Sun, 31 Oct 2021 13:09:32 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.30664.1635685772078258353
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 Oct 2021 06:09:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bkXcG5RM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id d27so6229007wrb.6
        for <yocto@lists.yoctoproject.org>;
 Sun, 31 Oct 2021 06:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eGf3cHW1PWwyU/TtgQ1ypUIBsOOThuWMNd778lmMMes=;
        b=bkXcG5RM4X2uxeECBgKCv9yL29Ym6wmBNOUIjETqvgDsNgEoniJal+gWvIHMHLtFJm
         mP8OHA2/2EiI7oNZF6OiiphaYaCC9nAK4fK8+jCbSQzknL6ksquAmjd70hatxFLdmrU0
         YvefSdXbZJ/E65sLRi/YRX4AWWAIjR9QL6RI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eGf3cHW1PWwyU/TtgQ1ypUIBsOOThuWMNd778lmMMes=;
        b=QyiLOUSji/VGNkNpXe9MskSnURndUcY7+Us0tLyYAbz+Jp0ni5oER/a2ncjjXcYy09
         uah9tzOJrOEtqXXoZWU2iHI4TSdma8bIpCXDTFQKPC4rqqbGMn11B8G1xo1mgjBwntUU
         iHMyWGQRV3X1yErt6saVW6jlZ4bRxh4E1i8Sdmqt7O7ZjqBJi4+BaHYW1HFbpqZAjxvt
         ha3saAUNmItH+uC66VMT13Qp4VKzVkdVtaBApKabiSkUlkmYZy3cZyvUors7sCAmxhym
         RYfQ8beTBVAYpK/LJUggXNKTujlUsMDwKZEDS4trWtRE9bZ9d+gm3TNUzkgOn0q5XpCI
         Jz4A==
X-Gm-Message-State: AOAM530EEfzmpQmc5lFF6W7ND2wgC9MFi85q7wvC/uhbLMth+n8spXKl
	A5gvdwnsq4D+9M+bcS9iKUvsKpstXujk2Q==
X-Google-Smtp-Source: 
 ABdhPJw5LJkLwjWvOOC64hXfS/mS2kG4KOpqpJBsbZTLpFA7cfED7MK8uXmNuuQXvTdRDTKtcc1MdA==
X-Received: by 2002:a5d:5092:: with SMTP id
 a18mr30866649wrt.421.1635685770235;
        Sun, 31 Oct 2021 06:09:30 -0700 (PDT)
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:b85c:77c5:c945:ad1c])
        by smtp.gmail.com with ESMTPSA id
 m16sm4518861wmc.46.2021.10.31.06.09.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Oct 2021 06:09:29 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 1/4] scripts/prepare-shared-repos:
 Use tmpfs for speed
Date: Sun, 31 Oct 2021 13:09:26 +0000
Message-Id: <20211031130929.3478176-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Oct 2021 13:09:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55195

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
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
2.32.0


