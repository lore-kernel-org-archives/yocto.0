Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F4222D65552
	for <webhook@archiver.kernel.org>; Tue, 26 Nov 2024 19:27:34 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web11.55221.1732649250935034650
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2024 11:27:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=c7xuYT9C;
 spf=pass (domain: konsulko.com, ip: 209.85.222.179, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7b673aacf13so9433085a.0
        for <yocto@lists.yoctoproject.org>; Tue, 26 Nov 2024 11:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1732649249; x=1733254049; darn=lists.yoctoproject.org;
        h=mime-version:message-id:subject:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=v+Qw8Hs8pQoolTfVn4IAWFue5/B3lvUUzc1wyAJgP+0=;
        b=c7xuYT9CE7yCp158WuUBOwOWG4X8tlSrrkLQNCYNp/oq6Z1Et8xjOEBgi17VgbLwwh
         t0ZOhTbAQmG4H21nRxPddIobwmvYtlz3gAqE85s1spWmX0UKXeitD+QLir5k9zr+aDm7
         oywQ2Lqi+NNoTNUdS97JK6cLgrp4KhA5N8774=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732649249; x=1733254049;
        h=mime-version:message-id:subject:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v+Qw8Hs8pQoolTfVn4IAWFue5/B3lvUUzc1wyAJgP+0=;
        b=DtyZbEXt3h46bJhiS+ymc4U2FSIlGyndCcdR3FEjPOUhfag1ejTzNSPFjImjLZ1U1B
         nfWDtfNJHXv48U29Pz3aRG5nO743C6q10g1x9bLOS0Bf/YRmJLS70a3OprCMuTY/bPFE
         mJ5MNrnqW6xW6LFxQ+Wp8DSF4JVdYVCPNESVeg1VB/ZMsDjN09JBSp4HRozObBUqq61w
         H2s8RYCRSUew5J3q6cwj1K1JOx8yCYvjF8fW9MnZSOQIMw3DT1Uk2qxf9wO2E1hZslWF
         Rmqu6BZpp85Ef2E/1QCR64Flvi+gVWYx1y1btZdUTRwQw6FZl1xsRCKbt9DhXHjE0RkS
         KPRQ==
X-Gm-Message-State: AOJu0YyAQWa3jdZ/L4ZklHLRsODluUTWeYisdKwj+bRw7HeuoQOPqzYU
	TQDpYzWbus0nHTzeFsFVAM80KggwuoR+qMcg/e9EYMz2FxJ/SErIbWNu7H90UOXuJVbU6+Mivn5
	A
X-Gm-Gg: ASbGncthVsJU0/KoW6j+yZpBBMCTwX111rbofoV5q38iYi1H0/jjfaDBWjOk63Todc7
	u0N6pvz6eEdrS0dPxs3tQjrFFP3GkTTPq1H57lR/gOMRlaubUAg3FvEH38GPx2U6O7ZkBp1Gd6i
	K5zGP5T8dT1eKfYzzBF+QGsSP6H9JRsPzJNAZK6FTa4H2huLCCIv+LAVdA5o428cNgKoZNlCqio
	Axt/6pDNjeZqb+XKAgdDyIi6Di1TUtxAKUOUwUWeGBgHmpK4M9S8q/qYz54UOZwk0HjEY1dQEwA
	jdqYPWmq
X-Google-Smtp-Source: AGHT+IFPHaZtM3TS3jxtwjMPF/N/SkS21nbDHvnt2amRm6SKfd4peFBYkqLM9cs3lgyBoFxXOizMkg==
X-Received: by 2002:a05:6214:1c09:b0:6d4:1f7f:c4e5 with SMTP id 6a1803df08f44-6d864653709mr7253076d6.21.1732649249422;
        Tue, 26 Nov 2024 11:27:29 -0800 (PST)
Received: from godzilla (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d451b23efdsm58751636d6.88.2024.11.26.11.27.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 11:27:29 -0800 (PST)
Date: Tue, 26 Nov 2024 14:27:28 -0500 (EST)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][kirkstone/rust-1.75] Announcement
Message-ID: <fcf22792-052e-de8f-5ce4-f29cb46d2cc3@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Nov 2024 19:27:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64349

I have just done the initial push of a kirkstone/rust-1.75 branch
to meta-lts-mixins.  The intent of this mixin is to track the ongoing
support for Rust 1.75 in the scarthgap LTS release, allowing a common
Rust toolchain for folks needing to target both kirkstone and scarthgap.

Note that the while the branch is derived from kirkstone/rust, their
common history differs a bit, as I discovered a few newer commits that
were out  of order with respect to oe-core history that needed to be
removed.  I have updated my backporting workflow to hopefully avoid that
from happening again in kirkstone/rust.

Please drop me a note if you use the mixin and hit an issue.

Scott

