Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15CE8C433EF
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 18:03:06 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web08.637.1635184984892432467
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 11:03:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dSaR3DHr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.216.42,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pj1-f42.google.com with SMTP id oa4so8908997pjb.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 11:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OkReHyX2qmepzMSdQmmbeARrv68PbYITP8eYNH24Ht8=;
        b=dSaR3DHrcTG5DWpEnmvNRxkXRJklAwlaa/+3eyu48V5Q75dSWH/Kt8KecjPXf+PgI1
         U+1QVterCMDXEY4Sk+nTlsez/oSnk9t10vOOfMwcfodsZNCgp/12/KEAnjs6YVYInkEx
         anb6wHHURl9byZIeN5s9O1DwO68ev5L1bZ7jg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OkReHyX2qmepzMSdQmmbeARrv68PbYITP8eYNH24Ht8=;
        b=jE92vi5DrfnloBtEO4VWChecnVbrmEztYBd5ct/rVuZPtgeh6vXtkObZKRuid/J/D0
         F0AfcFkBXSK0E1NIhsPkp3rzrueRtPe+wdSF4vmVhtTftgq0a/G0NaV/KSisJoLLgrD0
         Updd/xenmH2JzSJU/285iwKIVrDPsj5fmVl6TEBjCl+fDD90ELgJyrj3/wvG85gvTk+o
         LWV8DfvAT51Yrp+fHvQ1LFtaT+EUSJVAR3RhvhrtLc2OH2ZIQ+8/eZhevBogDJt573ob
         bNq+OXeA/Ws5cRQV/6wuL1l+tFE7q51FBlXrPSYq7KEjRhc9qzf7cZXaxh/F+SK5LfLP
         c++g==
X-Gm-Message-State: AOAM532CFm1ObEbcDSNE8PSurwh0wKQJq8gIGqGH8tgzIeWmJ919GCOk
	21iSkZfq1ADjiQ3i/9/Q4nPRmr6DG0A65IVG
X-Google-Smtp-Source: 
 ABdhPJwrUVw1IX/XZFUU10svWmh3G4ISYspKBSLst6fDFiSrnS7Fx4fV6rOl2lHCTbfmrEV4OrXIbQ==
X-Received: by 2002:a17:90b:228b:: with SMTP id
 kx11mr11922584pjb.126.1635184983734;
        Mon, 25 Oct 2021 11:03:03 -0700 (PDT)
Received: from fedora.pdx.yoctoproject.org
 (c-67-160-160-127.hsd1.or.comcast.net. [67.160.160.127])
        by smtp.gmail.com with ESMTPSA id
 d13sm21131124pfu.196.2021.10.25.11.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 11:03:02 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH yocto-autobuilder-helper] auh: update the from address to
 valid domain
Date: Mon, 25 Oct 2021 11:02:27 -0700
Message-Id: <20211025180227.435283-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 18:03:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55152

The auh.yoctoproject.org domain is no longer used and cannot be
validated.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 scripts/auh-config/upgrade-helper.conf | 2 +-
 scripts/setup-auh                      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/auh-config/upgrade-helper.conf b/scripts/auh-config/upgrade-helper.conf
index 5284b4a..6255f3f 100644
--- a/scripts/auh-config/upgrade-helper.conf
+++ b/scripts/auh-config/upgrade-helper.conf
@@ -11,7 +11,7 @@ blacklist=linux-libc-headers linux-yocto alsa-utils-scripts build-appliance-imag
 # SMTP server
 smtp=mail.yoctoproject.org:25
 # from whom should the mails arrive
-from=auh@auh.yoctoproject.org
+from=auh@yoctoproject.org
 # who should get the status mail with statistics, at the end
 status_recipients=openembedded-core@lists.openembedded.org
 # who should be CCd with upgrade emails
diff --git a/scripts/setup-auh b/scripts/setup-auh
index 23f3d44..5f49e38 100755
--- a/scripts/setup-auh
+++ b/scripts/setup-auh
@@ -14,7 +14,7 @@ pushd $1
 
 git clone git://git.yoctoproject.org/poky
 pushd poky
-git config user.email auh@auh.yoctoproject.org
+git config user.email auh@yoctoproject.org
 git config user.name "Auto Upgrade Helper"
 popd
 git clone git://git.yoctoproject.org/auto-upgrade-helper
-- 
2.31.1


