Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20BA5CEE347
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 20:33:04 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.27587.1728505974502354488
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 13:32:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SkDsdZMT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37cea34cb57so99503f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 13:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1728505972; x=1729110772; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=NSoMxsH3/G1wQGdbU+p3mCx+XVwqvBLuCSDKGH9eGn4=;
        b=SkDsdZMTUrnBbFKDpWgKTNSgkQkGRNd8OCr4c5W0JvgPpX0YMenqQDb89mTBGBu9KR
         /iwuH0KIPjwbEceQs4GaAh9bHTBy83sG9OPwnXLVI8loLA0W3Tv94/HqMuztWXyQMUfp
         9ip/PLNCdAIP6Z0vQUIqM6gADlkmMKe2DwWUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728505972; x=1729110772;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NSoMxsH3/G1wQGdbU+p3mCx+XVwqvBLuCSDKGH9eGn4=;
        b=ccS/PQq/pt201mTarpbEdSuV5Q2n1YBs1BmZeQZRgLD4tIazMtvI4DNivpJogTVXtj
         0Gm/49QBFlXqGyu67oojwCnMAeal1oMsttIK//Lm0ULGGfejOseAFS3DvWyhieRGMkov
         Xj9DD/Bk4kuCYozmRTnNzhLydt4iY4aWW2nEgJSk2iiod8yeoPhMaUqaeiIX6+ZkQA8M
         O61dIHh1B9YPijCyPHhIl6H2B6nZqc0D0hGEF9vzjtUb25tuvp56bkjVMzmQ5PowTcZo
         5T/iqlpsnjlzL+Ir0YaWYz7/z1cR2HFyv9xEpSnuq6LxWNKIJHUi1yVNTecNDrsbzwaJ
         QNdw==
X-Gm-Message-State: AOJu0YyVGMeg5B2eUIur1mlmeGGLukHsJu91uu7+yZ0DGGes4F7gXoNw
	aTCsZLdLrODV7beNUvlJ3gmhSx9PGFT4ltFsGDE1/0Zd713Euhfvj1DPGaSxAhaRMJn0I/FE5dE
	a
X-Google-Smtp-Source: AGHT+IEhsqYMPZJXDEO5Rl5viphfVqKdosKYQ5kK/Rc5OQrcSjepdOO0ovTR+isQWrnVvha1jUrcFQ==
X-Received: by 2002:a5d:5c87:0:b0:37d:43ad:14eb with SMTP id ffacd0b85a97d-37d43ad1534mr1635406f8f.14.1728505972412;
        Wed, 09 Oct 2024 13:32:52 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:fb33:4e5d:4941:5018])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d454ec93fsm1536981f8f.97.2024.10.09.13.32.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 13:32:52 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 1/4] scripts/utils: Use a consistent 'cluster-downloads-cache' location for cache files
Date: Wed,  9 Oct 2024 21:32:48 +0100
Message-ID: <20241009203251.470776-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 20:33:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63989

Cache files were getting spread all over. Use a more consistent directory
name to make it clear they are cache files.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index 370a755..8e6463d 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -465,7 +465,7 @@ def setup_tools_tarball(ourconfig, btdir, bttarball, name="buildtools"):
             bttarball, sha256 = bttarball.split(";")
         btdir = os.path.abspath(btdir)
         if not os.path.exists(btdir):
-            btdlpath = getconfig("BASE_SHAREDDIR", ourconfig) + "/" + name + "/" + os.path.basename(bttarball)
+            btdlpath = getconfig("BASE_SHAREDDIR", ourconfig) + "/cluster-downloads-cache/" + os.path.basename(bttarball)
             print("Extracting %s %s" % (name, bttarball))
             btlock = btdlpath + ".lock"
             if not os.path.exists(os.path.dirname(btdlpath)):

