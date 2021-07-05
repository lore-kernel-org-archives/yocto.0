Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web11.15378.1625514985768215417
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 12:56:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=Ls7o0lOm;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.41, mailfrom: steve@sakoman.com)
Received: by mail-ot1-f41.google.com with SMTP id x22-20020a9d6d960000b0290474a76f8bd4so17743861otp.5
        for <yocto@lists.yoctoproject.org>; Mon, 05 Jul 2021 12:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=qX3gcuumLf9M2I5Q9T8IAVstt5HCWbm5WwSkJ1mvTo4=;
        b=Ls7o0lOmw+AazjOhiof4QTDjUS5oBmkZvm5AtPxmHDz9iMmYOpkwd+ak7Vk57v7Z+K
         92ksoYdbgnK/gpwQcTFEuCBjJoSSqWesm8rjhNvld6wpgMvnQNNcWteIfPWIS2fqXZsp
         PRXT1lYq3Ba3P8dQGUA2psWLoHnLOmd2JNDCZ8ZYwkkQLaOh7Mmw1+bKpqUOKvDuLvV5
         n9oHCOMlc2xnxzFxDsAn3YHps1zg1S/lRujG6478iiOS1ReLF5ntO66ji4UTmHd/SSvs
         UAmApLV3CFTLnBphj3gA+OxHyNp/ig0cslPYI4KHUYV/O8S+tFsQUJwb9czFso9wB/fZ
         +Sdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qX3gcuumLf9M2I5Q9T8IAVstt5HCWbm5WwSkJ1mvTo4=;
        b=WfpHzoX59ofZgQjxXNMWG2aJB2oERZR0qY48ZcyV32mBCyjxCxdFcc/rtkIu/tqTKt
         baVV1ZNr7nH6Vsza3wT9oc9SgQfzuMU2jdL8r5bDuSaQGVksn2TrPby/wOo9AR19ni6g
         jJbGpAOUrxisTHTdG1TCEXc26mhkou/ShcuHLqGBGkQNr4Gp4ATcTNRcPfOju1vxafzn
         y0aijE1L3bjL+BX9kRMIGVs0tqB/86L+TbPJWHc86GWvR9U9A/KIqF4ATHFqQknhrhYC
         fcNYU3+h+pFa+uFPbN0NAbKYL2YL2srJt9Qjp/2ae4VpB8mzTcZvh2TOFKWqr7g4iUeq
         uSRg==
X-Gm-Message-State: AOAM532v6kFRwGb+nujlKpCA2l/mqsj3C5ezp2HrxU/b6sbyqfFL6ZSj
	gKZQ1oNgUHxJcOa7rNdtMkz9HshOyWfVGq/p
X-Google-Smtp-Source: ABdhPJzpLhXg/e5C6h5mbjlDJQ0Z6UNoc9ZrPsy7gGHVh+RM12ziNySM/V+PWM3Yh5Gv8msLqbYYrA==
X-Received: by 2002:a9d:826:: with SMTP id 35mr2574647oty.121.1625514984533;
        Mon, 05 Jul 2021 12:56:24 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id x17sm2884836otp.48.2021.07.05.12.56.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jul 2021 12:56:24 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: Switch to newer buildtools-extended-tarball
Date: Mon,  5 Jul 2021 09:55:50 -1000
Message-Id: <03324adbe8736ef7dcdd116c59968c8534dd88c1.1625514857.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1625514857.git.steve@sakoman.com>
References: <cover.1625514857.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This adds locale information which should fix reproducibility issues with vim.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 345475b99a59ef78a8736e3832c85a07ac7923e2)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 3cff363..e22124d 100644
--- a/config.json
+++ b/config.json
@@ -10,7 +10,7 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200923-11/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1.3.sh;4845f1e119dbd67e214959d5fd4e8fc79772ad38d385fdcc4702d5a6e6ece55c",
+    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.25.1

