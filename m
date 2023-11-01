Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B56C4167B
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 00:06:15 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.10940.1698797170229858480
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 17:06:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=1mIjE4TH;
 spf=pass (domain: smile.fr, ip: 209.85.221.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-313e742a787so193044f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 17:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698797168; x=1699401968; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lhtSAx3khnY/66K4GyKTeXq60yBstBDMo8/4do8qAFM=;
        b=1mIjE4THtU0C0gVQX4ASnYVD5h/Fwzxht//TYE9ba4WDsiqnL5VG624SHOQR5L/TM/
         Go6OFfOsH8ivN7J+ZhSX3OYutsoPwX5TiznnkJyCDtHdcAQLjG1PwDxS2sK+T5ZgjKSS
         oC7aCpL33ecvkktsMQteWdwkw7/06GHz0xH8sie7Yluq14yDZwz54k4benQZAglecU8G
         a08/S7ywLO6PWJFIRIAlAH3prY//DS0H2SdYVPKBzCqCj+/Y3BOYibvdV85+NrY6TSED
         qWX0D84j6mpOc/YOV+e0oGiTfx2b/LDKjRk5nFHek1ir4vFpmwgArGelZD7AlJ6vyv58
         oGzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698797168; x=1699401968;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lhtSAx3khnY/66K4GyKTeXq60yBstBDMo8/4do8qAFM=;
        b=kSrxZ/C5A2bDp0YD8iL9Ac9gQEeObteVEEDrWBWWkFZkFvn+n0IQpSod31TZxC2trq
         ZTmeqHCe0e1UQOKdhgltDskXHvpiKfaWKhpbTDKo0GavSe7rgfjX/wAv1ON/zQiWa+Qt
         wl9JaI31fFrMLiiAB3haCCcV6mF61Ln6PonDk39Usq+BQs8Sv6pPYuqvqqPoBUcoaFq/
         DlwJIeYSWgCWjZv7MIHj4XDRaX12pJGv0rWYY69v9bSjb0mKR/rioNU8aGnKMSPObrdR
         ZQPidZ7h6KZLffssSRVAiU9L1KpMcB0FV9jccD05qouohRbFqZ0GxHIZnbKtUpSNPdIw
         VJ9w==
X-Gm-Message-State: AOJu0YznBBtbxMLGupV/oDMb744O5gnx0P8cS+jD6scBBlajfPSkpika
	/XrRDbwBAuDcS9E3Ic9FiD8/tHIyUNPCvgarlRE=
X-Google-Smtp-Source: AGHT+IFWP3GJrPeOoaQnen5vnYIrYn3Ua45y/2DfEuRGKMYesAMa99zNLLTsDUgQ3Sg+U6b2iC1wpw==
X-Received: by 2002:a5d:50cc:0:b0:32f:64f2:815 with SMTP id f12-20020a5d50cc000000b0032f64f20815mr3919999wrt.33.1698797168007;
        Tue, 31 Oct 2023 17:06:08 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id m5-20020adfe945000000b0032f7cc56509sm2571620wrn.98.2023.10.31.17.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 17:06:07 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [auh][PATCH 0/6] Extend AUH to meta-openembedded
Date: Wed,  1 Nov 2023 01:05:28 +0100
Message-Id: <20231101000534.241551-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 00:06:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61538

v2->v3:
* Split single patch in a series. Previous version was:
     [auh][PATCH v2] upgrade-helper.py: Add layer command line option
* Removed short options
* Refactor code before main patch "upgrade-helper.py: Add layer command line option"
* Folded weeklyjob-oe into weeklyjob

David Pierret (1):
  upgrade-helper.py: Add layer command line option

Yoann Congal (5):
  upgrade-helper.py: simplify a condition
  upgrade-helper.py: refactor _get_packages_to_upgrade to return a dict
  upgrade-helper.py: extract the inner function of
    get_packages_to_upgrade
  upgrade-helper.py: Fix indentation
  weeklyjob.sh: Add options to handle upgrading meta-oe

 upgrade-helper.py | 109 ++++++++++++++++++++++++++++++++--------------
 weeklyjob.sh      |  59 ++++++++++++++++++++++++-
 2 files changed, 134 insertions(+), 34 deletions(-)

-- 
2.30.2


