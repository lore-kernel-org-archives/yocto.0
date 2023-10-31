Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9A4C4332F
	for <webhook@archiver.kernel.org>; Tue, 31 Oct 2023 23:05:05 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web10.9727.1698793500890350660
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 16:05:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mBwjALFa;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: simonkbaby@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6ce291b5df9so3588128a34.2
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 16:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698793500; x=1699398300; darn=lists.yoctoproject.org;
        h=to:message-id:subject:date:mime-version:from
         :content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fPiB3WV4OOwRUU5h0yBOM7XDyG9+YSk1NeqZvaKW+gA=;
        b=mBwjALFaz0F1JhykDOFHOqUsTVGNSw/BmdxuOClPuYuSQJYIYcKUmiY01ZiO4LG1sP
         zKauzTJoeAM0C8N16HqqL9R9HQyitfD6Z9T5rDMXRD89Lx2enL5JTi0k/cYBIOQ/uHn5
         AnpFh4KU8Yt69CGR2QQPD0O3qkCfx/xg2IN2FS+d7dL6Rj2uHR7uwTOJ8I95luYXJN8C
         CXbjtCrUXKwzgozMnjx/pn3fiCmO061jMJMi6MdDFSC0FG5Qu1A3wSaiau3pCzHETjsA
         15lZafTlIYkp8IypkfDWv2BGnNcCd6iwkt25iWkkOv3ZlifbNlC9qP4oONPJxUEjwEjx
         gcaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698793500; x=1699398300;
        h=to:message-id:subject:date:mime-version:from
         :content-transfer-encoding:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fPiB3WV4OOwRUU5h0yBOM7XDyG9+YSk1NeqZvaKW+gA=;
        b=FnM8tw/qjB73xsSDt4eLZ3Y4LoPHl3OznHDgPQunhKv4lrqyVbz93/XviANFpHFwLd
         Lm4qCLgMHb81K00xbKncqTL84T5JDZjbBRuw2peTbX+y9OIXTOA9QhFs9R//JHgqLpC4
         8duWcDsTUcjCxQDQAlccCpBu1/k3mCNGzW1A+IYqgS1j8rHjStAbgcx8X5XgfWupbspG
         0gr6Nf2E48fUdZD8rFuWCvjFFHX300t7d5UyZS7LpWax3D9vB+9cCc2Sh7q/Vc4NqHX6
         l8O8FcWBXg+TZA+52vo1QyFheCdYs+tWkWRSNq4H7OOhh4FhbsilLJ1/aaqPQy+7/QjD
         GFzQ==
X-Gm-Message-State: AOJu0Yxq1XprPt2GJCFk65BsWk5gFfKFbGEBv77PyC8eeg3hJ6CIxq8K
	SXV47CfdnlcStxldkXWPhFk7+eIO5/4=
X-Google-Smtp-Source: AGHT+IEBqk8DsDM6SefVcFzKe/UL1VwctCbWKsULekhRk10tPQLPucNymmBrdJJpO5wK63ONm+Z9xw==
X-Received: by 2002:a05:6830:2642:b0:6ce:40f1:e9f0 with SMTP id f2-20020a056830264200b006ce40f1e9f0mr19458240otu.11.1698793499672;
        Tue, 31 Oct 2023 16:04:59 -0700 (PDT)
Received: from smtpclient.apple ([2600:381:701b:f7e5:69b1:c8b0:5032:982c])
        by smtp.gmail.com with ESMTPSA id p9-20020a05683019c900b006ce2cb3b959sm45128otp.52.2023.10.31.16.04.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 16:04:59 -0700 (PDT)
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
From: SIMON BABY <simonkbaby@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 31 Oct 2023 16:04:48 -0700
Subject: Query on uboot env in binary format 
Message-Id: <0DFCA581-789F-4F7E-A8C4-84BAE2A29D15@gmail.com>
To: Yocto Mailing list <yocto@lists.yoctoproject.org>
X-Mailer: iPhone Mail (20G81)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 23:05:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61537

Hello,

Can I know if I can generate uboot.env in binary format ( uboot-env.bin) usi=
ng yocto build ?=20

Regards
Simon
Sent from my iPhone=

