Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.18027.1583169883790721478
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 09:24:43 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@konsulko.com header.s=google header.b=VzT5hVMs;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: scott.murray@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 535DAE017A7; Mon,  2 Mar 2020 09:24:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5555E0082A
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2020 09:24:40 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id l21so525056qtr.8
        for <yocto@yoctoproject.org>; Mon, 02 Mar 2020 09:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kIm+yMNiZHmwthT7aARvybr1Dsi9yl0JUN3+X/emcgU=;
        b=VzT5hVMsiG/K8t/wMyaisjNzFPQLccKRYGB/L0FRmN0C/XkpkWh1ctuaqTy1YTZceR
         12ywnsiknss5wXsv57eJHs8tADTbi1gKPym9GudWSC7dIeDpyxL3TCMwqoMvMygzQgz+
         EiKKWmG8vTS6TQ5/iMz1HW9BzPNardSVPWFIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kIm+yMNiZHmwthT7aARvybr1Dsi9yl0JUN3+X/emcgU=;
        b=DNN3BSe9otgW/3XAWKCCYLXdTvzCjW61fho6SDuK+tNTdNTtbtOKxeHM/QYAP8Iz+w
         JAfm4DLC/+Zhr+AOCXKaIDPwfYSROdlyyjq1QRgZvAqwdJabQs/F/SCbGHz+KlzSbA2q
         zIGKklspZBFCScpnT6OXP/jM9tSU1gNJq3YZaul1TNEhWx2dZGXF2xVYN1skS/GxE2RD
         L53g4p+ZyhFa2CnL6n4nuVEvR5Xbpp1rhyA3boR/D5Mu1LtRCxogiAuAr4Y6JXLgCVe8
         M/zR7LC9g1+O0fgNL47BjzFoU31ZG5R9Z8Q4SQ1wkY9EmTOJF+y2TlVSCzEvc0FCLlew
         1oWQ==
X-Gm-Message-State: ANhLgQ3GdjzO3uCcEq1Sx5NsshTG8H31BrjQtT4bxmkbF9wf/7Zw7+11
	lEBC9+VQbW0ARsJy/f5j3kdtU4uHV/U=
X-Google-Smtp-Source: ADFU+vscGVXrw/ONKC/BG4zl/OK0+lHg/loAZ51BLcpoT51fZmbVOASQy4s3nfAzw0QrH2Stu3svcg==
X-Received: by 2002:ac8:4581:: with SMTP id l1mr712039qtn.59.1583169879756;
        Mon, 02 Mar 2020 09:24:39 -0800 (PST)
Received: from ghidorah.spiteful.org (198-84-179-103.cpe.teksavvy.com. [198.84.179.103])
        by smtp.gmail.com with ESMTPSA id i64sm8578682qke.56.2020.03.02.09.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2020 09:24:39 -0800 (PST)
From: "Scott Murray" <scott.murray@konsulko.com>
To: yocto@yoctoproject.org
Cc: Scott Murray <scott.murray@konsulko.com>
Subject: [psplash][PATCH 0/2] psplash fixes
Date: Mon,  2 Mar 2020 12:40:37 -0500
Message-Id: <20200302174039.1451551-1-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

A change to hopefully enable a fix for the psplash-systemd FIFO race
(a corresponding change is required to the systemd unit in oe-core),
and some clean up after the recent generated header changes.

Scott Murray (2):
  Remove generated psplash-poky-img.h
  Fix psplash-systemd failures

 Makefile.am        |    2 +
 psplash-poky-img.h | 1026 --------------------------------------------
 psplash.c          |    7 +
 3 files changed, 9 insertions(+), 1026 deletions(-)
 delete mode 100644 psplash-poky-img.h

--=20
2.24.1

