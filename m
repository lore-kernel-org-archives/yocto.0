Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF40AC6FA82
	for <webhook@archiver.kernel.org>; Sat,  3 Sep 2022 22:51:11 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web11.8230.1662245469697630255
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Sep 2022 15:51:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=mRTCOhF/;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.170,
 mailfrom: steve@sakoman.com)
Received: by mail-pf1-f170.google.com with SMTP id q15so5303330pfn.11
        for <yocto@lists.yoctoproject.org>;
 Sat, 03 Sep 2022 15:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=Yz8Sbo3eAaTY6bM8Qz6VmqVuOZzyrZRALwS9JUSAu/E=;
        b=mRTCOhF/K8+21a4+0XA+ha/gRDsSc17j/tiZhRGXNSUevLE2ETLBnxtLnkZhjpS+T9
         ze9fKx0B+EZUTJJa92SiSJbZt7nsA+NZI+9GdH9MNwAuWLUdJ0aRxnwB7R29nMUHgx7q
         9pKkZ3Fd+iEq+cCh8Cw0BVAMJ4VWNROXvBY2OPvIreqmHO6b/G26u5Atj9WLh0ijReN0
         C0u80dNxAC5OIt7h/EiI0RVeutmP2F2OJeKqY4a6vSBMLQW7XGVzyObyRfQSknV5K6ib
         Ys4/tR86IvwtIRgYRgZEJByPEGJVhmYU+blGdkq7KIJBqewHE9WnqZ5MceynP+dOSxXv
         a6dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=Yz8Sbo3eAaTY6bM8Qz6VmqVuOZzyrZRALwS9JUSAu/E=;
        b=wRi0uxiyds3+uGJbdH1CCU/0k3uEd2zQWJHkC07w2IsXZiP3JSq0MrsSMcdSNYaLJ9
         xqIfFTCNC36nKko/Z2iCLCGwXyhasH9BcUT2AqhxfxlIS5MmS8imZyIcTs+fnJRfEerb
         F1OvrIlwqJRSC18HXqtQ8Wwq1N7wwKQvzGEP70PgPjISdutMdbUPsanHrLftvh0yjWPm
         yHOP9EH9LBTH2si+s/8z39sIk8bX8Fat48NgS8/UdpHz36qW4yoNApXytXkBPJIlqRaS
         KWDpYPX/T9ig84rmPF1cy4tXyGoJ/tmo78YJLJzt9fsmm7A4FZ2m9G8/JMbx4rlENuhU
         +BKA==
X-Gm-Message-State: ACgBeo3Uj34NjiKcC1WwJSEtAyTvEnXw+zqiwEn7IMqr2PXgHzaFNP7Z
	qdmBj3lXTRFTEJl7yTEmRtr54MnJJrGol+Nh
X-Google-Smtp-Source: 
 AA6agR6ueYaNGm2l7RoItj+fYPTdPZlbR/aOGI386wWL7kMISk2HiFjxjdIvEU8apCoCIjNmx9uHSQ==
X-Received: by 2002:aa7:8b52:0:b0:537:c6c7:3ef4 with SMTP id
 i18-20020aa78b52000000b00537c6c73ef4mr41288630pfd.48.1662245468485;
        Sat, 03 Sep 2022 15:51:08 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 e8-20020a630f08000000b0042c012adf30sm3689420pgl.2.2022.09.03.15.51.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Sep 2022 15:51:07 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone 0/1] Pull request (cover letter
 only)
Date: Sat,  3 Sep 2022 12:50:59 -1000
Message-Id: <cover.1662245404.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Sep 2022 22:51:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57976

The following changes since commit ff3d1e122233a58799451b0b99779a4d73453679:

  scripts/archive_buildstats: Exit early if buildstats isn't present (2022-08-30 16:19:11 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/kirkstone-next

Ross Burton (1):
  config.json: Set SDKMACHINE to aarch64 for oe-selftest-armhost

 config.json | 1 +
 1 file changed, 1 insertion(+)

-- 
2.25.1


