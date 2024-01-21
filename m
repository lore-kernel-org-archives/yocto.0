Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73284C47258
	for <webhook@archiver.kernel.org>; Sun, 21 Jan 2024 02:41:40 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.39818.1705804898679574073
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 18:41:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gZfN76p8;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-683cabd96ceso12136176d6.3
        for <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 18:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705804898; x=1706409698; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zi07K23CqxaTtEnScsuQw1XOCID2Y6MUBrYuGdaF9KU=;
        b=gZfN76p8xu+BEDGaFkWZBkYltIZilbr4pw6IakWFLjKTZpkRVBUGSkO5o2GDF3Xyh+
         F7hRnx66uNZzaLD7OKspJufACud6eCLHc5hSL3fOtsj+BH3zbInkXDLML9BHsrlPCcM9
         Cgv6QnsGl0TnAlIqbaNf+meda3XMxvgfyCRhtQnMIgcZ+w/gbFE8hxPCoCx/BNAfQ3Cv
         EQT6QmBbOUAxQt/iV8mo3KtGVuFtsAibhCtp2Wm5ZnK8aEskIKcB6QF9VgY6QH/z5/RL
         MMON4OkwbdY95NMpvOn9bgZ5BfwhKoBSauwZW9DxPPvYh1bT+YIxYqixzrEpLyeKH34i
         QSrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705804898; x=1706409698;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zi07K23CqxaTtEnScsuQw1XOCID2Y6MUBrYuGdaF9KU=;
        b=L4BPyNp7lz1LymaTUmgcX0+a8y5ODzRyJYwVYTm7UxJpJ7GbAnVBe+Ol0VVfj+B8PE
         2LIBwtMetaXxGPCdge87oymXBQ3MIJ2t6NVrbqf1AJ3DSZfMJIzDLc9h/7TkDHlawd99
         c96aUJuI3dakrUcvefBE9CFtFB7xmjBbpqLphzSCBFj1zeg3lnnfVbb5A2ogeyvx/dNX
         alp6tYgRv68C0NYZfd2pr/4ImKUtfnPwFxiFQIWu6HMrgPyZBKBFVgnoLkjpAnNzsCAm
         mBY/0RXuSTXseMqF4b+d+jdtJftyHIIE1WiEHQHYBrAyYiAPJd7Ky5pMkC3+aaDGc87n
         rPhg==
X-Gm-Message-State: AOJu0Yz8A+qFk2jFlZMTCmdJxJZ4bqLb8E+RrnrlE5G1Ywrp51EuUMRC
	OKTBc9e9gwktfMpXNkl4x9vxuxYkfT6JK9cNlj5/xhcmgvwNHqnD
X-Google-Smtp-Source: AGHT+IHH0HxskPrcrBvuYm0+YILt/R7wdYfTtk0g3pMozHKg/CQ7ZvBtyFTleSC7r9EYo035ihkJSw==
X-Received: by 2002:a0c:f1c1:0:b0:680:fee5:9b47 with SMTP id u1-20020a0cf1c1000000b00680fee59b47mr2710677qvl.76.1705804897784;
        Sat, 20 Jan 2024 18:41:37 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id md10-20020a056214588a00b006818004d4efsm1131928qvb.126.2024.01.20.18.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jan 2024 18:41:36 -0800 (PST)
Date: Sat, 20 Jan 2024 21:41:34 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: anthony.t.davies@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH v3] rock-3a add
Message-ID: <20240121024134.GA17457@localhost>
References: <20231016104344.401706-1-anthony.t.davies@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231016104344.401706-1-anthony.t.davies@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 02:41:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62207

On Mon 2023-10-16 @ 09:43:45 PM, anthony.t.davies@gmail.com wrote:
> From: Anthony Davies <anthony.t.davies@gmail.com>
> 
> Add support for the Radxa Rock 3A
> https://wiki.radxa.com/Rock3/3a
> 
> The TF-A project does not currently have support for
> the rk3568. Therefore, for the time-being, the only way to supply a
> TPL/DDR-init for the rk3568 is to use the closed-source rkbin binaries
> from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
> switching.
> 
> recipes-bsp/rkbin/rockchip-rkbin_git.bb was modified to allow a machine
> override to allow both rk3568 and rk3588s to use differnet binary blobs
> 
> Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> ---
>  README                                  |  1 +
>  conf/machine/include/rk3568.inc         | 17 +++++++++++++++++
>  conf/machine/rock-3a.conf               | 12 ++++++++++++
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 +++++++++++++++-
>  recipes-bsp/u-boot/u-boot%.bbappend     |  5 +++++
>  5 files changed, 50 insertions(+), 1 deletion(-)
>  create mode 100644 conf/machine/include/rk3568.inc
>  create mode 100644 conf/machine/rock-3a.conf

Applied some form of this patch to meta-rockchip, master branch.
Thanks!

