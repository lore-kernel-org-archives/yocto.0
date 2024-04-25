Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB287C4345F
	for <webhook@archiver.kernel.org>; Thu, 25 Apr 2024 08:16:38 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web11.11963.1714032991622014979
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Apr 2024 01:16:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IdRgo0NE;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-516ef30b16eso751911e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 01:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714032990; x=1714637790; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cv5oQGS7Rr9/VR9ENqDp5sqW6VJLlNFGKdH3S7qg6Ho=;
        b=IdRgo0NEL75NIoFGvhnzV8BnJSTQ+mxUdUvBTtezZXmCVvluve7n3q14zJiqiFPjNB
         yBImEMf8meI8ZQMH9baynZQj+r17+NfSJ2swY/QUN4nREbxIJZTcJcgPeCil66hy6IXk
         4aXDgP/BRAaXsuzpFvWYIeCMw1b+1j9RlNg52L1yfSI3d5mPYm6yDdtob04oUXDVZtX0
         ypBlW6fsPzF6oM5S44FCk1Ge4JOPi+MQlR+y38bG3fPswrkUq463Dmtig+SnP94C+cpq
         eSZyLVbsmX1Olz8Wp1nxNnXB7dhXL6itKPQJjPNI3evW6dwJhrxHINA3uBTw21d8h/zS
         WrXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714032990; x=1714637790;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cv5oQGS7Rr9/VR9ENqDp5sqW6VJLlNFGKdH3S7qg6Ho=;
        b=b2+wd5Y/DtRJMqgA7vW4ROl4NakL1Drg/eQSdR6oPDFDjkRnzP3HNzgIWxS+Sxlqix
         mScyoNTv3QOTdcyUeMhU279FAM+8I3Y67v/ViuHaf5CEFY7ypDQWeLhtGqe6wA2LxI6g
         tguIbKY5YwNJ8DBTVUoS4cwe6/wNpZWwnUcblv9VuTgvczr0HWvrIsU+gvYTceJkM4Dp
         guYGC+lfk/8VUeg7EGHK7DmY2EQSZsPilcpfx3Iy1zVSFuEIIrvmiyINbSAfC4MW2bSE
         xM1RR0RhUmu1dEAbeomZw62o8E613Evn6MR6fJZPbLDE7WoUNDqxwIGEENtm3UPjgjs+
         wpSw==
X-Gm-Message-State: AOJu0YzCvyj6dGizISkiooun78SRcEpk6ocIvNdaoIaPL1WjaJbPO+Ev
	f7+5tua0y66LDhenyqf2xAwNyoSICQL05RL/vFFjGI6Fj/SXlFQTtn41n4sSbcDguG/Qx2kWr4w
	VVrkNZZE3H5S9RtJWSfLHSSqXkh0/uw==
X-Google-Smtp-Source: AGHT+IFxMt1ZrL6wnXR2vN0qDwaqhrLcIqs9z1DHUGguNL0cJjUVmcMBIFOjtIXc4xDbsDp5f18KoqhVzwH+IZSNjV8=
X-Received: by 2002:a19:f614:0:b0:51b:812:3c87 with SMTP id
 x20-20020a19f614000000b0051b08123c87mr3012308lfe.39.1714032989685; Thu, 25
 Apr 2024 01:16:29 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_3QKp67y9R8_iyH_Emq3-gnYN=yEcwmXPABhKCTu_5Xg@mail.gmail.com>
 <3353.1714032625110471937@lists.yoctoproject.org>
In-Reply-To: <3353.1714032625110471937@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 25 Apr 2024 10:16:17 +0200
Message-ID: <CANNYZj9thxdH9hx5V9k_m4qWeaEiFGDzdxvdYce5fvqbR6G51Q@mail.gmail.com>
Subject: Re: [yocto] How I can add/remove libxxxx-dev.ipk to the installed
 yocto SDK? SDK partial update #devtool #kirkstone #sdk #yocto
To: Salahaldeen.Altous@leica-camera.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 08:16:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62999

On Thu, 25 Apr 2024 at 10:10, Altous, Salahaldeen via
Lists.Yoctoproject.Org
<Salahaldeen.Altous=leica-camera.com@lists.yoctoproject.org> wrote:
> The 3rd party is using only The Yocto SDK (not the eSDK), they want to test pre-release for one or two libs which are not included in the machine conf yet.
>
> If I provide a pre-build sstate-cache, which command in the SDK can be used to get the updates?

If they insist on the standard SDK, there's no incremental updates
there. It's just a tarball with the toolchain and sysroots. We have
better options as I said in the first message, but they need to agree
to them first.

Alex

