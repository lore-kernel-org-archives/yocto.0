Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D28E7C54798
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 22:06:12 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.6529.1709849164164358302
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 14:06:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kltUuqqk;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-78822adc835so80669485a.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 14:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709849162; x=1710453962; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1pQKlz8GNyIU7iezgxcc+NE+uN1It6MW/MohdJdAiqU=;
        b=kltUuqqk1kpdng8bYjnNgbwPiaMFoOPTJEPOXQoVKUVTXlwatyYp/7OUW2yn7P4Ckz
         LUTSuF2llKPT6ki86wmSQdz0RpkqWpMdZgcgC3SSYWkEJ1JrWN4UqW/wzvYgY4nmOVeY
         udcU+kHUcuAxfV/HdpKuUweWtu2mnnBxhGDV19qvydjdbQNhBB1R1XB8V0g/cYC8Uzb8
         Pfzf4r1rcyuaaY3UZsqo5Vx09SJ3+8b4jICLlKgqDT3K8XBepNDpD+75EsFlQNbq60gx
         AlHTBKzVJzrjZKHZiQk7/zSo73sW2A9MQ47bAzX6cOe1pKnHMQc1KDKBGYrfmCpr+7jE
         YccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709849162; x=1710453962;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1pQKlz8GNyIU7iezgxcc+NE+uN1It6MW/MohdJdAiqU=;
        b=iGuIO4E7GpoA4sTZCFiegf/++CL91jlD8vvYi6i0WdHkF4+6MiaCKz5YfvL827o0dJ
         YnAmOARUeWC0+8vJuhSS05UiCzNAoWjXkkyoTsZrmYGUHIwUoaEEUxQv9qm0I578PdKq
         KhBcouURNnONHYJUcWDf/rSDkI/0e3Tj43xpUZjALoQJq7xqpnt/bD2VDUkGspfuix4Q
         w1Rxxw9sWSDwUEfiefKZNi+UzFiyHxHYHH6+BT4OAzXpD0jtP6mPu1t5LTC5iuK6xedf
         5auZ/fEginNJTWprqWBOkMkQdjVPS9oq+v4+chXNdrlyFi7kYVNbxouPSgcP+KVhb3c6
         N8tg==
X-Gm-Message-State: AOJu0Yy5FW9mC9GC6gomOVkO69OC7KzcjFsC1pFn94FdVn5XAklXzl/r
	AhtmkIiXsmGkFbL/gYZgT4GTTI+zTqTBe3xgOttdtleWpjnIvsG81GtcWoecdOA=
X-Google-Smtp-Source: AGHT+IHBIcfw9Muyul78jVlRdFucQxxr4wkL4i8OGepC0pVxtnNLp5iMPnhznzTI9MrYR5mJ6SdcXQ==
X-Received: by 2002:a05:620a:3906:b0:788:1a86:5428 with SMTP id qr6-20020a05620a390600b007881a865428mr11633116qkn.58.1709849162080;
        Thu, 07 Mar 2024 14:06:02 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id az17-20020a05620a171100b007882b4cecf8sm4398733qkb.57.2024.03.07.14.06.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 14:06:01 -0800 (PST)
Date: Thu, 7 Mar 2024 17:05:59 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] rock-5[ab]: use regular yocto kernel
Message-ID: <20240307220559.GA12121@localhost>
References: <20240303231309.33027-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240303231309.33027-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 22:06:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62699

On Sun 2024-03-03 @ 06:13:09 PM, Trevor Woerner wrote:
> Upstream kernel support for both the rock-5a and rock-5b landed in version
> 6.5. Nanbield contained linux-yocto recipes for both 6.1 and 6.5 so it
> was best to simply have these MACHINEs use linux-yocto-dev. Post-nanbield
> oecore master only has a recipe for 6.6 (so far), therefore these two
> MACHINEs can use linux-yocto by default, instead of linux-yocto-dev.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/rock-5a.conf                     | 1 -
>  conf/machine/rock-5b.conf                     | 1 -
>  recipes-kernel/linux/linux-yocto-dev.bbappend | 4 ----
>  recipes-kernel/linux/linux-yocto_%.bbappend   | 2 ++
>  4 files changed, 2 insertions(+), 6 deletions(-)

Applied to meta-rockchip, master branch.

