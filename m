Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C068CAC5B0
	for <webhook@archiver.kernel.org>; Thu,  2 Oct 2025 16:30:39 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.13248.1759422630411681138
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Oct 2025 09:30:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=tgeMRxps;
 spf=neutral (domain: theyoctojester.info, ip: 209.85.214.179, mailfrom: jester@theyoctojester.info)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-27edcbbe7bfso15773195ad.0
        for <yocto@lists.yoctoproject.org>; Thu, 02 Oct 2025 09:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1759422629; x=1760027429; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FXd+3bmgzFKOxSsARkU947DO5x1ocL+VU1rjRq3EgQM=;
        b=tgeMRxpsNrFEAd3TAtv0Xy6aZ3tk/Eo6/KeHaqGwRB2Y9S5ZnXmMhbrMDM/pD7KIPO
         n19onFOKD/4Eh0N5XGCsoJ602G0X7s3pSTLxQjOazawOeaLzm/sM/h5ewuU/IH6WA2e0
         wvzG1JIQhV685uTC14F8EJQ8K2WO6sBpnoM0tCf5utHYuHqQ8YiV//FgTbr0GHNiiX8n
         iaKV3xy3AGJ5jTGfFPebmYdCpF4uZp54Ku8Qe7fNIir++jUzdUKzIGr6qngIpoQ3soNx
         g1HWZPaw/fNQK5cRJJ+UHC6qMk6/muBvCSoARvA2F3azJIhl9Osu5TPexr8XzpojXSza
         uuZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759422629; x=1760027429;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FXd+3bmgzFKOxSsARkU947DO5x1ocL+VU1rjRq3EgQM=;
        b=lYemBH/kWYFvo1LH7au8fjldbKXfxYY+AfFBeRoITfc5R1WgKNvAJaBhpHSF1yi9qj
         rTAghDGGbLdsq+gxv0aBe3JGg1Mp6Iya1p029QzFeIhsZ7zygWAplfrOTDJQ4KmYSD2x
         eaU7zaQJ9BijhXG03+8wcKe91ulUCBdjJfdiVTB3jLBzVziUGguQTUhFgQcwZSNO9bU7
         +fi0S6wxvc5zqS1k4Vtv+1GOVbq2hmHePowOJseEt6onaGwAugrWbkY4SLT9l2GXfAH4
         C5OD66dwcrLkzmB3pkYZlrYX0tDF9QRy7KxYJGBYsyzo6EnrZ5zJZndW11ACkP+6ApXv
         fuaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWL+RDkvX6UQ2RsUpUvzHKW/0oNMZcyv7TLzmOMllzrs53ijWI3FpfavD0/1Sb/cBx0Zipnyg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz18QslWtjMJ/ts7skPS02GUGJZbfnhy3apizfflC39nkg9IZB6
	bTrayuKK86uSK5PlCPGeUoglh/L+orvj0WSGUFWbTwEfm9pbWcC6ENlx8N0fzGx2rzKNswS3hKD
	4sKE0saoVU/fJoEjJRQVaH5iXL+/B02za+DhRRaUOFQ==
X-Gm-Gg: ASbGncvkXZZiESPSmQgVeHFQ21oMkylyFFKeRW5icJnfH9SlozXCDM0n0knEKxr0GhO
	rJJ6oD24zDUAZPmY09t5MH0OhG2+H+UOyulzKO5TczDNDCrUZK8PNGAOwSOM/1lvZyr1qIV3YEF
	8/AgBgN61E0U8xwZGhX5kbHntwPn8sbXdjTp/p4LY91f4IpJ1Tq/lO3JQZO7KjluxqlyGwSHUMs
	rDijJB4NwicWH23ayJgTLsnnFECFzGTLX3akhEAGrP40eTxRZKYWhnPZtleijrsuTdNhg0lt0Ge
X-Google-Smtp-Source: AGHT+IF0oLXMb5y4l+iqwomp3/f6AbSlTUJJgwgOKRg/ure+4t9JwIHBllhnlntkUlX1vLY1ODQTW5x5tB+U3dXVC20=
X-Received: by 2002:a17:903:fa7:b0:264:ee2:c40f with SMTP id
 d9443c01a7336-28e7f45448dmr91775455ad.52.1759422629498; Thu, 02 Oct 2025
 09:30:29 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 2 Oct 2025 18:30:03 +0200
X-Gm-Features: AS18NWCirtmmLQolD9eh5lHCW3i4_X_96mndztU259OD8IgaRfw068bI4rNroXM
Message-ID: <CAEt6Nwrci00muZsVX0aCyeQcW3GD1aYDntwei4Goxpm3qudnow@mail.gmail.com>
Subject: Shh... RFQ
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	members <members@lists.yoctoproject.org>, members@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Oct 2025 16:30:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65902

Shhhh... have you heard of our opening as Ecosystem and Engineering
Operations Lead? If not, hurry up! Applications will close on October
6th.

https://jobs.smartrecruiters.com/LinuxFoundation/744000080228346-ecosystem-engineering-and-operations-lead-remote-contractor

