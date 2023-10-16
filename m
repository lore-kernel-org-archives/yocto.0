Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E055C41513
	for <webhook@archiver.kernel.org>; Mon, 16 Oct 2023 20:33:53 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web10.179584.1697488430901970399
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 13:33:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=QeCwhJJw;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.174, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6bd73395bceso1354841b3a.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 13:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1697488430; x=1698093230; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=cmGT+/PYGxeX+rxV4esdKWtrv298N0TNu6WP243J+PI=;
        b=QeCwhJJwosyImup9YSGJi8T2RSTaPlW7PXLtCAQ+gQOzLYm28c//mtE4BkrEmJg9Kp
         H4uzgo2GNNkVt9VN8h9nVQWtmrXxFLo5r7+awyQLAH+0s/kPOzEydhQA40ce6Z73oY+L
         fNElznn8HfhTTyh8W57Pmhqi4DeH0vYxoiFHtj6ddjLVh9zZ2xkhdnwbRFQLu0Npgnrj
         nPuUNasAPPEO7Xb+Uj9Ldnx47/9lICYdqKthyYOjkDOvcSJB4bhmVwSbqYGupZzHsm6f
         /U08d/9oC/pRQNXDweCkgMcTJbV5weHzLcgWVNIV0xgkJRvkhomdkyP/AvSK5IUPOSCz
         NkKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697488430; x=1698093230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cmGT+/PYGxeX+rxV4esdKWtrv298N0TNu6WP243J+PI=;
        b=vpJkyYCwhyN52YUT9X4yFm1f3nERO14MEUeiKChVylJeh+vj+PGCxhA1K2eOjcR1P8
         U7q5fyCSPfEBMIgD2dsKS7nMpUU86Gl+BZ9//+GW3rv7slXNgdqB44j43GJ64sV/UTeE
         hxP5BpFuXs+6OUKQ2tcgvI82nOVVDRvNTl2JUsuBTMrAiPu1ndMc9wpAnJit8wZGBk6v
         6SPwHdWTW+su6sqmvOmEAp0mlsDm5Hpvp0WcMO5wbOUaLA1+HzSdnzGq7oGpFYpNMpft
         GDWi0oKaeIoCfQiMBnrfNUYi+uxYQWPx1EP2HG/J9wKsclNcSDWL+3ftdT1Hl/R43wLy
         BPmA==
X-Gm-Message-State: AOJu0YzfxmUIvxFHPa9fQg/aBkVxhCSC2UKFJWLOJqjhZtXOpdQPbyfO
	t73/oUsQpQ4NajKIAZoc+MpdyHconOv/5xZgHco=
X-Google-Smtp-Source: AGHT+IFcP0lgLBk4iuDsk/XJN3zT5tJ4TGab+nLyM0s8mzi1hkUOuDySyDalciWv5c95knivBSBxOg==
X-Received: by 2002:a05:6a20:748d:b0:15d:8366:65b8 with SMTP id p13-20020a056a20748d00b0015d836665b8mr12175131pzd.13.1697488429425;
        Mon, 16 Oct 2023 13:33:49 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id a63-20020a624d42000000b00682868714fdsm350733pfb.95.2023.10.16.13.33.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 13:33:49 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone 0/1] Pull request (cover letter only)
Date: Mon, 16 Oct 2023 10:33:41 -1000
Message-Id: <cover.1697488343.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 20:33:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61348

The following changes since commit 86f7600044816bc1be1eda920f4a726f5e2c4626:

  config.json: Pull using ssh:// instead of git:// (2023-10-08 09:11:04 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/yocto-autobuilder-helper contrib/kirkstone-next
  https://git.yoctoproject.org/yocto-autobuilder-helper/log/?h=contrib/kirkstone-next

Thomas Roos (1):
  config.json: meta-aws add oe meta-multimedia dependency

 config.json | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

-- 
2.34.1


