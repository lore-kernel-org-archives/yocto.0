Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB493C54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 18:38:31 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web10.31077.1747939110911924330
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 May 2025 11:38:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VfmfQYtf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.177, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-74267c68c11so7255102b3a.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 11:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1747939110; x=1748543910; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ALs1olUPFmjqpy/f/zzEPf+VxDs3y+2hEGxg67cJUDQ=;
        b=VfmfQYtfanwZ6a3lsaFBgBIcWMZRsomwX4m/2nE++/gThDDDYk+amNFiVf3hK7uA9X
         VEU0U2Z3Y790x5+6uEZZpc/AdnvrZPDH/5cp7pm16G3bcGXUwLCn1pRf7NRmF+5N5vaQ
         Bg1MY5Mb4c1/Swtw3I9AtGJRkKsodg+fuyJ8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747939110; x=1748543910;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ALs1olUPFmjqpy/f/zzEPf+VxDs3y+2hEGxg67cJUDQ=;
        b=loda8anXDe9S6NTm+tOtjFwhr9AVAmvJs9A4JcfHbSdPKs8MIwa85e2coROxqBaZrp
         bHAlIG1avaY2oTkeZczSQ/J330e59LzcMTgS83kqE37nNR+9KE7J0XJ1d7rxRzohz4E6
         +T3HQ1bNqrhTEPExE7saxVNZ9Cnq5ZMaQXVZkbLff8HMEhIWrxiXdxHSCs5XsRl/0lL8
         wt8+AsaZ7rn3ctVFxoZXWfgGxvqjAOWR7VeFLZl3bBTKm6KOin8xAezA5iVoV3dBC1FJ
         6cRBfit5cbJVm+j8cjEOs4ZNbaC44j/l3OQPIw3DpLZj5M1OYOROKuTk0h78x/MQfXYu
         30Gw==
X-Gm-Message-State: AOJu0Yw0py/wZjKaAIUknZlzT24QL+XO9Fml+M+FjlOkwOF+v4eHndZE
	GHKdKQl5HECYDu+h4tws4sgryXOvKbsjlOEm7PvfrZiOeQuHB6hZYLRCRXEev1DuIUandnduH/j
	j/4m6
X-Gm-Gg: ASbGncuiVMMYdFlXxWV1tV4bqgdNmoIZ3XTRFbzfG/W7mpqjpdKThPJxTmDBBPO1PEA
	aEbEf5aTD7r+9CxwB9Xqay/GMSan2GQETa7Co7Rcbo6FaJQvtWxoiEJJDqcwJShzhkNq7mtrORM
	VJ9z5EbCMLJVwm8NNRaS6Dqo4rHp7jDQQSBmHDIW52wYOuu7wabQBQjLtH3BQv5ViryzPaRGAUD
	bnZi20nNwk5/6z82jdJOKsQe2H04zFd2aD9MgAkyY6MYJ0nXFe7fTHHFRdYrkW78V9/iWZOsjOn
	6RL84mMzcgdr+V1A5Rr2pJ7vO+vZJE7d0gBwaVtEWW6SdUe3
X-Google-Smtp-Source: AGHT+IHAmLOSUcQ4UFU7zf/g7qERLOkYQRx2b/Ym0ReWWk0xfYX2CRR2hTsTIRlReXDCAznGFWqprQ==
X-Received: by 2002:a17:90b:3b8f:b0:2ee:f677:aa14 with SMTP id 98e67ed59e1d1-30e830ebf2cmr37256994a91.13.1747939109726;
        Thu, 22 May 2025 11:38:29 -0700 (PDT)
Received: from yoctolap.chateau ([2001:470:b:487::627])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f365c4eb2sm5849532a91.15.2025.05.22.11.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 11:38:28 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org,
	yocto-patches@lists.yoctoproject.org
Cc: mathieu.dubois-briand@bootlin.com,
	richard.purdie@linuxfoundation.org,
	Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [yocto-autobuilder-helper][PATCH] janitor/ab-janitor: attempt initial clones until success
Date: Thu, 22 May 2025 11:38:25 -0700
Message-ID: <20250522183825.15315-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 18:38:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65406

If the git clone operations don't succeed the mirror_processor thread
will spin updating nothing and index builds will fail. Instead the
thread will attempt the clones as many times as needed logging each
failure.

These are bare mirrors so look for the refs dir instead of .git.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 janitor/ab-janitor | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/janitor/ab-janitor b/janitor/ab-janitor
index bb58390..57749d6 100755
--- a/janitor/ab-janitor
+++ b/janitor/ab-janitor
@@ -65,8 +65,12 @@ def mirror_processor(mirrordir):
         mirror = ourconfig["repo-defaults"][repo]["url"]
         mirrorpath = os.path.join(mirrordir, repo)
         mirrorpaths.append(mirrorpath)
-        if not os.path.exists(mirrorpaths[-1] + "/.git/"):
-            os.system("git clone --bare --mirror %s %s" % (mirror, mirrorpaths[-1]))
+        while not os.path.exists(mirrorpath + "/refs"):
+            exit_code = os.system("git clone --bare --mirror %s %s" % (mirror, mirrorpath))
+            if exit_code == 0:
+                break
+            print("Failed to clone %s. Retrying in 30 seconds..." % mirror)
+            time.sleep(30)
     while True:
         for path in mirrorpaths:
             os.chdir(path)
-- 
2.49.0


