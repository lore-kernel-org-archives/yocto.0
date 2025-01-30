Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB0BC0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 15:49:30 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.18388.1738252162077684665
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 07:49:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mKGDsmmO;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6d8fd060e27so6300506d6.1;
        Thu, 30 Jan 2025 07:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738252161; x=1738856961; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cKt8Q2sbZHfiHJ51Dz7m0+611eRoULKCcNFrYplKVio=;
        b=mKGDsmmOY/WWgJZMYtSXZG3gX1Sp1VSn2q2OvAk2RyalcSto1pkAQL0yeRX99jUas7
         g6LqsZDRxTUtOzpUzFS5X9QmRTxOJbTyQJ6/Vz9wUk0OxYwApyv1v3Wgiww42N3xNYX4
         WC1UCTHG9Hik8Gu36brDY8G7T7le5oOlWMemAB0LxQbXAvV8WF36pmSuVOMBx5HvsEPZ
         U4r+ILGVD0NP7++olY6PKZwwbq0ZBbr4lGCHm2CmUB92w7FwtrJDTPi4rpEMW5nB/GwB
         vmqTFeflZu3fH4zYS48K0HofdBpWPF7kj6iPxxOgvgo5cwtyVI0kae/Hh0ZHHNVz8FPI
         An3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738252161; x=1738856961;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cKt8Q2sbZHfiHJ51Dz7m0+611eRoULKCcNFrYplKVio=;
        b=dCxS5h2oqXcVJ9DL8aAHPfjtrpERQAI/14VcUXahThp5tBDY4bPzgm42L5wW47JwJn
         hEQb4Hk3QCRIeg026CHZlPmMuRGg3BN0lXGqdNLmoCAKoIwiGLVVUuxWSxmeY7A4xeY5
         f6B9wsIe9SnQujUhDqAvx0irsho+S6j5I0fb4M7AwsaHJr3PT7EnoxrIFYpDie0poRAA
         WlVJKtpCzldD4RRqRUcbNWX53W6cuhd6Ag1TFl/p2oyuIppVDBemb10T009tXk0TI4KW
         I9xItqZHsCfN6AD9F+E68EUNMJmxojY1YvaVdnOMqiZ7JQ2CkfTbg44fdvE9iL15h8eI
         2Wlg==
X-Forwarded-Encrypted: i=1; AJvYcCWAY06Ly6+aZtabuTDXrpfscEptPP9oSIrI9cd659wqPEHWkEasJrBn194GbHeaZ5U837SdeA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzTO8Ak5cuA3z22SsKIMPBRhvJcyk8FH/oVCyuHcALWnM4Y2d3f
	jDw6hkMWaKhncOxEqMMow/UgpLhz3ghzsFOUo2m/kc9mttZH2JeE
X-Gm-Gg: ASbGncs0ZIViOI2zuvLv8farGfDzs6P5Mwor6F9omJXW3q1LkXv+6tlfMXLhnpr0R1u
	nvzs1wQs+RjBq44SVsv9Eiea+amNWiIhXRMafj1SNH0x9hIZEus+gkbUWS27yG1sxu7YdLwrKeG
	K8rShbPr2kmsLL92oBEwwHlQdUltoqG7BFbV0zeHDzlSoL/9z/iwyP7N6JlWB2UfMfllSVLED9i
	MM40H7nvgtC6p6MyTPJ1/z5FLmUFs41BEApaqMYnkQW6g0xapy5+bkmt1mbj2PHWFFmivfldNml
	hJcXpqSiP/6kvzg56fmtrQyd4W7jzL98LOqOxFjwW/7oTwaKwIpnhAUCiz2h/7VDpk3y5A==
X-Google-Smtp-Source: AGHT+IGsE9ivUfcykty8Jt90lnyAMMDpE7zl9phX/gWCbJnakJ60dL7wCjMBekACrRzTGJI87VH/YA==
X-Received: by 2002:a05:6214:588b:b0:6d8:a1fe:7293 with SMTP id 6a1803df08f44-6e243cae1a5mr117040876d6.42.1738252161054;
        Thu, 30 Jan 2025 07:49:21 -0800 (PST)
Received: from gmail.com (pool-174-112-62-108.cpe.net.cable.rogers.com. [174.112.62.108])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e25492254esm7303006d6.90.2025.01.30.07.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 07:49:20 -0800 (PST)
Date: Thu, 30 Jan 2025 10:49:18 -0500
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Linux Yocto <linux-yocto@lists.yoctoproject.org>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: Request to apply patch
Message-ID: <Z5uffus3AOUpBb6B@gmail.com>
References: <CAMKF1so+CuiYgvadZM9APzGZLP=+4ACs_5U-kqCU9VtykP8WLQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMKF1so+CuiYgvadZM9APzGZLP=+4ACs_5U-kqCU9VtykP8WLQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 15:49:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64677

I've merged the patch to 6.12 and have staged it for any
future versions.

SRCREV bumps should be out shortly.

Bruce

In message: Request to apply patch
on 28/01/2025 Khem Raj wrote:

> Hi Bruce,
> 
> With recent, changs in include poisoning patch for GCC, there are new
> latent issues coming to light. one of them was while cross building
> intel-speed-select recipe which is built from kernel sources, and
> kernel makefile hardcodes the paths, I have sent a patch to fix it to
> lkml
> 
> https://lore.kernel.org/lkml/20250129033932.2576077-1-raj.khem@gmail.com/T/#u
> 
> Please consider applying it for linux-yocto kernel 6.12+
> 
> Thanks
> -Khem

