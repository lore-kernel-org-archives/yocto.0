Return-Path: <alessio.bogani@elettra.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D29C021AD
	for <webhook@archiver.kernel.org>; Thu, 20 Feb 2025 07:44:10 +0000 (UTC)
Received: from eggs.elettra.eu (eggs.elettra.eu [140.105.207.10])
 by mx.groups.io with SMTP id smtpd.web10.44545.1740037439886525157
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2025 23:44:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@elettra.eu header.s=esgkey1 header.b=l+WpsQ8R;
 spf=pass (domain: elettra.eu, ip: 140.105.207.10, mailfrom: alessio.bogani@elettra.eu)
X-Envelope-From: <alessio.bogani@elettra.eu>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elettra.eu;
	s=esgkey1; t=1740037434;
	bh=FSOhW2Uj1X8XCGpLpBmRTrhx3Ilwntdrcg6QFxTFpdM=;
	h=From:Date:Subject:To:From;
	b=l+WpsQ8RBqPC129s0VhKX+5tocfncsN072+u9PCr013IlJOB2TD/3vjlS2cBQB6Yf
	 cgAIk3yusBYQRk2ovVF21Kl3EbYDpAszjGePCqOpIufz46Z+EaZ1hcY43pcK3omPRJ
	 Q0DOE0cFO1F0x8F2Vp6VTVlaWvyV8C9jaoCswgjU=
Received: from zmp.elettra.eu (zmp.elettra.trieste.it [140.105.206.204])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by eggs.elettra.eu (Postfix) with ESMTPS id 4Yz4yL2vtWzCbGj
	for <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2025 08:43:54 +0100 (CET)
Received: from zmp.elettra.eu (localhost [127.0.0.1])
	by zmp.elettra.eu (Postfix) with ESMTPS id 5C1EE145EC69
	for <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2025 08:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zmp.elettra.eu (Postfix) with ESMTP id 4B77D145EC70
	for <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2025 08:43:54 +0100 (CET)
X-Virus-Scanned: amavis at zmp.elettra.eu
Received: from zmp.elettra.eu ([127.0.0.1])
 by localhost (zmp.elettra.eu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id Mu7jAuM_Numm for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2025 08:43:54 +0100 (CET)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by zmp.elettra.eu (Postfix) with ESMTPSA id 2D7E1145EC69
	for <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2025 08:43:54 +0100 (CET)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2fbffe0254fso1279476a91.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2025 23:43:54 -0800 (PST)
X-Gm-Message-State: AOJu0YzBdEqijBLkCYUqmFEvpJA/hSQP/E1GLsMIApDJa8D+LvV9eahS
	/cHfVzPLorar+I0RZXCxwcql4IbKZO6G1vQSlLJeIU4EigGdOdM50cOo1Cn6oba22Ts5EQm+IM+
	+hzXuG26VHUMOdNagdxlKrdlYGtc=
X-Google-Smtp-Source: AGHT+IFTftKbBS3W71vfjq9CVuE9eYJHK5540neF8uPGoworLsGEYgW2oui/BzHaOI7nzWz04r4W41mROij3QtQUxXU=
X-Received: by 2002:a17:90a:da87:b0:2ee:fa0c:cebc with SMTP id
 98e67ed59e1d1-2fcb5a39ed8mr10425996a91.20.1740037432149; Wed, 19 Feb 2025
 23:43:52 -0800 (PST)
MIME-Version: 1.0
From: Alessio Igor Bogani <alessio.bogani@elettra.eu>
Date: Thu, 20 Feb 2025 08:43:16 +0100
X-Gmail-Original-Message-ID: <CAPk1OjFNyhk_CUEwv7UXvWQv94cPcH2q1CEPw3MN=sHcNG+KeA@mail.gmail.com>
X-Gm-Features: AWEUYZnjGE4tnEZCwfuu6mCfDLPesiKsy823THpPpCoxvgmBr0Wl_htMw4XejgM
Message-ID: <CAPk1OjFNyhk_CUEwv7UXvWQv94cPcH2q1CEPw3MN=sHcNG+KeA@mail.gmail.com>
Subject: How create a copy of /etc
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
X-elettra-Libra-ESVA-Information: Please contact elettra for more information
X-elettra-Libra-ESVA-ID: 4Yz4yL2vtWzCbGj
X-elettra-Libra-ESVA: No virus found
X-elettra-Libra-ESVA-From: alessio.bogani@elettra.eu
X-elettra-Libra-ESVA-Watermark: 1740642234.64705@pr9FsKV41rLmM3tNhguKhg
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2025 07:44:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64845

Hi all,

Sorry for my very bad English.

I would like to generate a read-only image that contains a copy of the
/etc directory. Is it possible? What would be the best way to achieve
this?

Thank you very much!

Ciao,
Alessio

