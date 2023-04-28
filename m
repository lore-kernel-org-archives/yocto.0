Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DCA4C77B60
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 13:32:39 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web10.19829.1682688756357019841
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 06:32:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=YDRPctX0;
 spf=pass (domain: baylibre.com, ip: 209.85.160.180, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-3ef5bea20caso37437291cf.3
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 06:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682688755; x=1685280755;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=hYvJOrtBD0KlWtVe2GxIDKJ2pjX/aqCWlnkWGiHwJ6Y=;
        b=YDRPctX0LFxr3TpBTqSI3mOqGBgMSQd0xnpGs0Un2dSNwaakZ2ya+v1Xs2S29+OMRw
         FKoD9Zgp9BzZsRP5SG5ZMgijaGuORJ9kFdfyafeARl58CIIIwlDmerUxqqLRuSATtxR3
         /cV+6/9zZJB6VlS8f4F80Oa7p4QFIcCKcnWIbtK9OX193oiNsaZDhtY8yz0BfDay+O13
         UdF5jR9W1ocwrqWXlb4682huGiVootmyIiK/JwrfPo3nYJesl8xp5FN9PRBnQIb80X/v
         UCNKiDIBFPLJzaMXahM07SjW3ne7p81zakuwBc6AptrV6kOJ9lEgwrDiHnjX0e2EXAz3
         kEHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688755; x=1685280755;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hYvJOrtBD0KlWtVe2GxIDKJ2pjX/aqCWlnkWGiHwJ6Y=;
        b=bwJ+BtH3M//kIBGRU3QhUUJpqJSUpSxqniCRKikzyKwhp1WMnaXbaiOErcqJtyQaDO
         DXXGuorXiyjBrU7glJR+PPOGHOKSMFjM4pAeBoBR/2dW2SJmJLbkTWOWYnAszl9MSeYk
         kxr69g8SSQ1ArcavYSoc/Z71owQbC5XUdRPYX66+JvJBHJPi04oPGzzobOHCPSLjPA6A
         Pm516sQrTDVu5LQhVhiua8a48ctD81qOsqYOzbDdaXASVCJcMaFMtEZsJMThZWKJSg5i
         zExOBWyURu9PrQBmacHP86/g6zZMDJZX+pEpC8GZudIuzp0nu++7h4kjh1inNQKL9n3M
         8laQ==
X-Gm-Message-State: AC+VfDz35CzJWUmzlqX/0qX+WfC+f1XFZJD7DjhRshtsJM0VjHGAWgsj
	zmVr0jCm3DaEHPqS4mTNeLIRdzVOXEpvpN0BdVI=
X-Google-Smtp-Source: ACHHUZ55aReiRsBKPfuD7r8GaFXLp1x7KZf9uRO3pylp9/pzRcK6a1K+QYbEVKiXzr00OsO+Tm8m3w==
X-Received: by 2002:a05:622a:138a:b0:3d2:a192:3da5 with SMTP id o10-20020a05622a138a00b003d2a1923da5mr9236662qtk.39.1682688755103;
        Fri, 28 Apr 2023 06:32:35 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id g7-20020ac84b67000000b003ef231cceeasm7039464qts.23.2023.04.28.06.32.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 06:32:34 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 0/7] patchtest: update to work with latest Yocto changes
Date: Fri, 28 Apr 2023 09:32:26 -0400
Message-Id: <20230428133233.1155096-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 13:32:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59808

This is the first series of patches intended to help get patchtest up
and running again. Specifically, these make core-image-patchtest 
build and run again (although one of the initscripts still shuts the 
image down shortly after boot, so testing it may seem confusing). 
In the longer-term, patchtest may be moved to oe-core, so right now the
focus for this repo is to make sure it's in a working state so that it
can be cleaned up and prepared for that change.There are some other 
additions that will be coming soon, namely updates to the pylint 
version and some updated documentation. 

In order to start core-image-patchtest with runqemu, I had to invoke it
like so:

runqemu kvm nographic qemuparams="-snapshot \
-fsdev local,id=test_dev,path=/workspace/yocto/manual/openembedded-core/build/test_share,security_model=mapped \
-device virtio-9p-pci,fsdev=test_dev,mount_tag=test_mount -m 2048"

which is similar to the contents of the patchtest/scripts/guest script
(but in this case I created the share directory "test_share" inside my
build directory). The PACKAGECONFIG for qemu-system-native wasn't being 
set to properly support the required virtio-9p-pci device, hence the 
addition of the .bbappend file for that recipe. I've left the 
corresponding qemu .bbappend in place for now, but it might be removable 
after more testing.

Trevor Gamblin (7):
  python3-pylint: update to use new override syntax
  qemu: update to use new override syntax
  initscripts: update to use new override syntax
  initscripts: use mkdir before mv with patchtest initscript
  linux-yocto: update version, fix override syntax
  qemu-system-native: add virtfs to PACKAGECONFIG
  README: Update maintainer list

 README                                                    | 1 +
 .../recipes-core/initscripts/initscripts/patchtest        | 1 +
 .../recipes-core/initscripts/initscripts_1.0.bbappend     | 8 ++++----
 .../recipes-devtools/python/python3-pylint_1.6.5.bb       | 2 +-
 .../recipes-devtools/qemu/qemu-system-native_%.bbappend   | 1 +
 meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend      | 2 +-
 .../recipes-kernel/linux/linux-yocto_4.%.bbappend         | 2 --
 .../recipes-kernel/linux/linux-yocto_6.%.bbappend         | 2 ++
 8 files changed, 11 insertions(+), 8 deletions(-)
 create mode 100644 meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend
 delete mode 100644 meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend
 create mode 100644 meta-patchtest/recipes-kernel/linux/linux-yocto_6.%.bbappend

-- 
2.40.0


