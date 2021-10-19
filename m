Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19B2AC433EF
	for <webhook@archiver.kernel.org>; Tue, 19 Oct 2021 20:09:55 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web09.15551.1634674194306473300
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 13:09:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=2Z+fV3Zw;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.170,
 mailfrom: steve@sakoman.com)
Received: by mail-pl1-f170.google.com with SMTP id 21so14468027plo.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 13:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SiPDAQrCJRX3lCVxSuyLDkWirmGpo4zdiBGsCwIXyHE=;
        b=2Z+fV3ZwI9UVZTLyRkXJjQ80zqJ1pU6hEKaKe8HwYlV7mxFNAWzWS1U2ymy2bTe8iZ
         E+XgaA08Rf4RyGf56+dB+KDk4gCr9ojL6UMrAe4XSfP+JkVzolcVg7yec4lO5+38j2i1
         1Xrvr7YHhd/EkLBpeqnG2OsbOAMUrs4st5/lY8zC0ZXk+sqenpaLorjdZt6mMBAUZDm+
         lrmDHqCAqnYN3WA2iu+FF3Ug4SVcwpbRdI8bXkKcEua8HdIl3JHvxLOiLWt7J9rz3d22
         GrVU/x48p3liBQ3AjfczSWLmPNupbxospY5tq5Vzf0IAnZO6Lxzb0ylnU+m5eHP5nGRK
         am7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SiPDAQrCJRX3lCVxSuyLDkWirmGpo4zdiBGsCwIXyHE=;
        b=SJUGbC3HTSmuS8SF7VBpM6GJMwIoPVD34fQlebdCFMNR9y2uUiDLPrN0K0n0/YXVyo
         4bqAkwS7zJbOMHXLpBJuT20vcs1NPHUa2cL9wcmbyVPf093CHWjs4ixiQeJXs53xF173
         8LEdIOpBrRXLFanwbntK9hPEJl/ZZlW/4Fg7P7/UJRmpvZDFvKA07eaDmIh7m/ykFg+V
         beXaehPHW+f+rdMx19mn32UpvYfZWRuxbfVQIJ2jHaPvFXcgpTlIhKf1ZLtlaZSux57a
         MDe3C0+xLpvNNwb/02SxvEi7HUHJ5I0g+FkkxnTlInfyBhKsgVIhN2E950X1b76xLIsI
         pXCQ==
X-Gm-Message-State: AOAM5334Pcpu5nkw7BljWE7SjxfVnpbqhtRJXO9AnHAjO1srXL5JcDva
	6HrnoPR7YtDzesc+dA+ThJF28lSObdl/SJCMPQ8=
X-Google-Smtp-Source: 
 ABdhPJwhjHJxWpjm7bOPhrNfbEoQcRZH4FlEexFDmzMiI0KTL1qx9Rk9fmzmG+sU4fAcJ7j7EdiZhA==
X-Received: by 2002:a17:90b:fd0:: with SMTP id
 gd16mr2056306pjb.157.1634674192986;
        Tue, 19 Oct 2021 13:09:52 -0700 (PDT)
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com.
 [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id z71sm85819pfc.19.2021.10.19.13.09.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 13:09:52 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 0/3] Patch review
Date: Tue, 19 Oct 2021 10:09:26 -1000
Message-Id: <cover.1634674038.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Oct 2021 20:09:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55102

Please review this next set of changes for dunfell and have comments back
by end of day Thursday.

Passed a-full on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/2772

The following changes since commit 1c953db8a72c2330fa192402460a3ecf0a691344:

  config.json: Update check-layer to use --no-auto-dependency after yocto-check-layer changes (2021-08-04 16:24:20 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (2):
  config.json: Add BB_HASHSERVE to SDK_LOCAL_CONF_BLACKLIST
  config.json: Ensure BB_HASHSERVE is set in SDKs to auto

Trevor Gamblin (1):
  config.json: set max load in PARALLEL_MAKE

 config.json | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
2.25.1


