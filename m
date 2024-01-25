Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DE4C46CD2
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 02:00:41 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web10.6709.1706148036631407987
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 18:00:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=i/SkYa3Z;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-686b7f2c535so2349156d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 18:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706148034; x=1706752834; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OYAbNzo1z8gXvnuGY20Ahk5ANkZLfFLroqQnXvlaUz4=;
        b=i/SkYa3ZlNRCPIK+8CfwQHNWFFnEN7W7Tag/6YvsgQyg/ZJap6Wr1wwtdBlqevGQ+K
         a2rGHF2a4DmToCPpcNKJ6fytQsH+731UqpYVCXzidKmre0Al+DGPE0S5PA0PITcrNkPZ
         OBYa6RAl6b+Bwpqrhxkb+ipyhPCr5Nl9QHjbrW6AlCEV9fmL3PCdxIO0a2y0wfWm83VI
         91Z+L2/3/7aW7jM/6JQd02EsKZ+OWYtQAcAkW6vyYx3W/QeWDja0XHp4pLHwfP6Oc6D8
         dvIwiwOkqxcqxV2aJsL0yGaPB/QiqQhis/wCiiUkIwQ5PpJ70xAWKHvvJRyLOaZ3fIBd
         rzJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706148034; x=1706752834;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OYAbNzo1z8gXvnuGY20Ahk5ANkZLfFLroqQnXvlaUz4=;
        b=gN88E7cB6Fj4PbKfx+VpfzUj6Vbeg5eZF4oppyzU+9Iae7OBUA5OXVUki1Zn2A1cQ3
         8fjMhtJ14dDCqXJBqsf+5HIlGFYHbIbME2MjIIbUMRY8AVWZErANbzSiOJ2lvsFY09rk
         L9eUtBiYcy7lv/FKkpkYGbarZ33T4k4TpOreGXVzMPGrP6ZIw1ZPqC84B2rmPjHmyqaO
         9pwdgkUQLap03TALNZ9QFkwQyA2iuqUGUhce53d8Ap6cxeEeci3FI6SY/VqIKCTxihle
         0B64kA8ZT2J9N2KJPfrjQvrn/gkW/2crZv0n70qC3FQyvwL5hCAeGXSjcGdJp9m7DkTN
         V++A==
X-Gm-Message-State: AOJu0Yzn+YzH7Dx9i2u6y+3N/l867D5pwvCnJr6fK8lICvGYUo/8hqRy
	RGGHw1S02qlprTaLiMbUNApACYk5aIwVJcbXyS9eFpBa27cKK1OIMQz1imIW
X-Google-Smtp-Source: AGHT+IGecvzTCS2xlrfzAZbIjaEDbZy1Htt2w5mwHH+HR6guOLfRdxe0THSrsPuQA0RD50m8eCjp0A==
X-Received: by 2002:a0c:8e8a:0:b0:681:98b8:3f55 with SMTP id x10-20020a0c8e8a000000b0068198b83f55mr754733qvb.49.1706148034454;
        Wed, 24 Jan 2024 18:00:34 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id lb25-20020a056214319900b00685ba831e4bsm4789281qvb.118.2024.01.24.18.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 18:00:33 -0800 (PST)
Date: Wed, 24 Jan 2024 21:00:31 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Stephen Chen <stephen@radxa.com>
Subject: Re: [yocto] [meta-rockchip][PATCH v2] KERNEL_DEVICETREE: 32-bit
 re-org
Message-ID: <20240125020031.GA23074@localhost>
References: <17AD2A9866FF5389.23445@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17AD2A9866FF5389.23445@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 02:00:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62279

On Tue 2024-01-23 @ 10:24:16 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> The upstream kernel reorganized the 32-bit arch/arm device-tree directory
> structure to separate out the device-trees by manufacturer (similar to the
> organization of the arch/arm64 device-trees). Update the references to
> 32-bit arm device-trees to match.
> 
> This patch can now be applied since all pre-6.5-rc1 kernels have been
> removed from oe-core.
> 
> NOTE: trying to build a post-6.5-rc1 32-bit kernel with this patch applied
>       will fail
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> Signed-off-by: Stephen Chen <stephen@radxa.com>
> ---
>  classes/rockchip-gpt-img.bbclass      | 2 +-
>  conf/machine/firefly-rk3288.conf      | 2 +-
>  conf/machine/include/rockchip-wic.inc | 6 +++++-
>  conf/machine/marsboard-rk3066.conf    | 2 +-
>  conf/machine/radxarock.conf           | 2 +-
>  conf/machine/rock2-square.conf        | 2 +-
>  conf/machine/tinker-board-s.conf      | 2 +-
>  conf/machine/tinker-board.conf        | 2 +-
>  conf/machine/vyasa-rk3288.conf        | 2 +-
>  9 files changed, 13 insertions(+), 9 deletions(-)

Applied to meta-rockchip, master branch.

