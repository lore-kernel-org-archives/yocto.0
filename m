Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9B5CC3DA61
	for <webhook@archiver.kernel.org>; Mon, 29 Jul 2024 10:55:45 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.53696.1722250540432628032
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jul 2024 03:55:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TUdIm6IK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4281e3b2f72so5146345e9.1
        for <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 03:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1722250538; x=1722855338; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dHQgTrBLxQQ2wj0FhSo5sGP1nIcWpfQA01XtxK2UwX0=;
        b=TUdIm6IK/rYBya5a2ZAwdzXaSFLgxBrA5U6O2hWFpsujVVGZjsPj56A+nl5tTZVg9M
         8xcejOdt9gNnVt4C6pEDTnzgyPJcezkNEugjtBbX0jsTLVrhxl25kW+DxQNGv9RMa8UZ
         olcNWQ2mCaItS3ZvTFgw/tSaaA24EQeUiyu1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722250538; x=1722855338;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dHQgTrBLxQQ2wj0FhSo5sGP1nIcWpfQA01XtxK2UwX0=;
        b=MtAHzMT8/pBo5xMP+LSd5MRuuTBzWaBqZ7vlLNXP4yUN32PJjdpaGveGbwYygP3saC
         dlaxoURiKLE10QBNwQOy84iWv2P6KlAmjRF/h5UEzNCHMmvSQUC940L4YxXTmItA2P80
         illhQdj8mIBC4QYOnXQqHjph8eN99efQQbbqjgWvkO6BQxp2Sw8bcufDGXUYtVOpjduf
         UiGiEtcdtzYefBdLmzRq7srQo+mwNWGRcCMBPGllyLo/AsKZXo81D+AHMyVlmjS+LC/k
         QPln40Ayd+5xbgUZrdq8loUzKTwAaIO1jbIs1MNO0P/4sbNewF7VVDKCmtqtOswOdhbh
         MBRA==
X-Forwarded-Encrypted: i=1; AJvYcCUCJ6Lb6IVB23VKEIMWIkIwsWBaR+2UKKPvEGQSb6J7U3XfCxPreyqpg7EBkStFiLcLKUzYvVAMoSz6+ssLAm7P3DtHYeTzPokZgwSI
X-Gm-Message-State: AOJu0YyG6Dc41qcCPWzq/jSMpw03ZyZZ9TNLaNtRtsTHh9hAIY+SW938
	BsjenZywVFCLSTWySgr1Pu1nGWkGgzrjnmN5LhcHfXxZCRYRJ5vr6diDGAfYsCs=
X-Google-Smtp-Source: AGHT+IEUylRNqpuONzZnYu1vZ32jDCxQXkRc287BVw9g0P2O5jLsRH6B07seANsf1hNouo5s+ZVfZQ==
X-Received: by 2002:a05:600c:5252:b0:426:5440:854a with SMTP id 5b1f17b1804b1-42811d73ee0mr46088295e9.1.1722250538378;
        Mon, 29 Jul 2024 03:55:38 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:3282:52e6:d708:90b2? ([2001:8b0:aba:5f3c:3282:52e6:d708:90b2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4280573fd83sm174446555e9.19.2024.07.29.03.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 03:55:37 -0700 (PDT)
Message-ID: <62b27867b13f61b8f9a6d5256fa13aaadb817330.camel@linuxfoundation.org>
Subject: Re: [yocto] Tuesday Tech Call - 30 mins on our autobuilder
 infrastructure - 30th July
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yanmei.guo@boeing.com, yocto@lists.yoctoproject.org
Date: Mon, 29 Jul 2024 11:55:37 +0100
In-Reply-To: <974.1722239282989783047@lists.yoctoproject.org>
References: 
	<9882c3d9da920df6d645fd4aceaa9d732bc63424.camel@linuxfoundation.org>
	 <974.1722239282989783047@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 10:55:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63585

On Mon, 2024-07-29 at 00:48 -0700, yanmei.guo via Lists.Yoctoproject.Org wr=
ote:
> Any more details about this tech call?=C2=A0
> Time/meeting links ?=C2=A0

In my email I pointed people at:

"""
https://www.yoctoproject.org/community/get-involved/ has the call
details under "WEEKLY ENGINEERING SYNC".
"""

which says:

"""
WEEKLY ENGINEERING SYNC
Tuesdays at 8:00 PT (Pacific Time)

A technical call to discuss the current status of engineering topics,
including the auto builder, documentation, builds, and releases.

Call Details
Meeting ID: 990 892 712
Passcode: 805990

International numbers available: https://zoom.us/u/abKnJRHtHt
"""

Cheers,

Richard

