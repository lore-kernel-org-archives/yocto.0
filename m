Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6FD1C47258
	for <webhook@archiver.kernel.org>; Sat, 20 Jan 2024 03:50:43 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.14692.1705722641546464697
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jan 2024 19:50:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OIZyOyeg;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6818a9fe3d4so7380396d6.0
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jan 2024 19:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705722639; x=1706327439; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CJ5Y0NtoP3r+AyNQRj7DI4jI7hw1Ah/VpMdw73Zuv7s=;
        b=OIZyOyeg9U9SSrF48FDQ/RParYxDEwHdoDxRxW3DGKO2x2HW3QoOKadSVfppVfAgnc
         9/5+/3YMiqg0dhvT6cLg2UqWoRhfyItWgL1l6x+ZPtXVcLY6cATROrDnXHFJMPupzDMt
         mucmLU+c0BvDZwBltJlPBDGGwqIawAmMiLuDn1ILb5XbQJ89K8zOR2nBSPHfCTsMGxnJ
         8pccpVSvKqA4DS/hOmrkdI0MCV1WbTUde76Dxm6kjkJo1OZqHuxJFckRMNWFncVR2VpJ
         ugl9zRAfrUCHmgQfwOXez6DnhCx6UMFDC4MjAqdVO/H866eUWjUJkMs+LAoH0OYT4bou
         1xkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705722639; x=1706327439;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CJ5Y0NtoP3r+AyNQRj7DI4jI7hw1Ah/VpMdw73Zuv7s=;
        b=PFv5OBYECwaUbN3tQdM2wdzgLeTrErLPkK5FDDOYPJZ7yo4ELSfS2JtQWLWWqyQ+0Y
         SV9kk2P1M40JO4IpcdOCvUcGPiHD2j2LbiPbPfB3PkNBhZEMIaSmn66gSPbi2EW+i4eR
         Cqj3bIeHlCXgh6Bs0kHg6EF92hfhv4nv59aTGKXFLi44VSVQDKI9lNSoCCA0FUmyW3ym
         nIImW83rpzV5Qq8qW88lfJzC7vr8RhBH+KRHs1/tlk3MCEKs3R2t3IMyzaZyCk8FrwWK
         F1f2++DM470LwmIkPL9VchFyUIkeoydXcn2vPKC/9VRuKdccZ9u/DjUfQoyjsjsBFse4
         5jLQ==
X-Gm-Message-State: AOJu0Yzh73dF1g1H7FiN8+UCbWPE7AznBZGE9yHhkf+Ab1ikejwpFWAp
	5LUml6XLIr1ymMiahaS/D0lyF9oc7dmuzUIxRJ/siXHY1VWt+J7dGFYiYAeR
X-Google-Smtp-Source: AGHT+IGiIJn4SuKvO14jPSAeebbMzh7l4U7qUHFt7I2BwIAgnFc3QSHLG6Q2Cs8K0UtepVYuvS8Y7Q==
X-Received: by 2002:a05:6214:acf:b0:681:2566:a90b with SMTP id g15-20020a0562140acf00b006812566a90bmr870567qvi.47.1705722639543;
        Fri, 19 Jan 2024 19:50:39 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id k3-20020a05621414e300b006819bb31533sm283969qvw.99.2024.01.19.19.50.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 19:50:38 -0800 (PST)
Date: Fri, 19 Jan 2024 22:50:36 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] rock-pi-e: apply upstream PHY fix
Message-ID: <20240120035036.GA36465@localhost>
References: <17ABC8A1B4D8D5DE.11393@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17ABC8A1B4D8D5DE.11393@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 03:50:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62200

On Fri 2024-01-19 @ 10:17:55 AM, Trevor Woerner via lists.yoctoproject.org wrote:
> This patch was submitted to the U-Boot mailing list to fix an issue
> initializing the PHY on the rock-pi-e.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  ...are_Reset_eth_phy_before_phy_connect.patch | 83 +++++++++++++++++++
>  ...-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch | 65 +++++++++++++++
>  recipes-bsp/u-boot/u-boot%.bbappend           |  6 ++
>  3 files changed, 154 insertions(+)
>  create mode 100644 recipes-bsp/u-boot/files/PATCH_1-2_net_designware_Reset_eth_phy_before_phy_connect.patch
>  create mode 100644 recipes-bsp/u-boot/files/PATCH_2-2_rockchip_rk3328-rock-pi-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch

Applied to meta-rockchip, master branch.

